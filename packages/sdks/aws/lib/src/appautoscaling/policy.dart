import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_predictive_scaling_policy_configuration.dart';
import 'policy_state.dart';
import 'policy_step_scaling_policy_configuration.dart';
import 'policy_target_tracking_scaling_policy_configuration.dart';

/// Provides an Application AutoScaling Policy resource.
///
/// {{% examples %}}
/// ## Example Usage
///
/// ### DynamoDB Table Autoscaling
///
/// ```terraform
/// resource "aws_appautoscaling_target" "dynamodb_table_read_target" {
///   max_capacity       = 100
///   min_capacity       = 5
///   resource_id        = "table/tableName"
///   scalable_dimension = "dynamodb:table:ReadCapacityUnits"
///   service_namespace  = "dynamodb"
/// }
///
/// resource "aws_appautoscaling_policy" "dynamodb_table_read_policy" {
///   name               = "DynamoDBReadCapacityUtilization:${aws_appautoscaling_target.dynamodb_table_read_target.resource_id}"
///   policy_type        = "TargetTrackingScaling"
///   resource_id        = aws_appautoscaling_target.dynamodb_table_read_target.resource_id
///   scalable_dimension = aws_appautoscaling_target.dynamodb_table_read_target.scalable_dimension
///   service_namespace  = aws_appautoscaling_target.dynamodb_table_read_target.service_namespace
///
///   target_tracking_scaling_policy_configuration {
///     predefined_metric_specification {
///       predefined_metric_type = "DynamoDBReadCapacityUtilization"
///     }
///
///     target_value = 70
///   }
/// }
/// ```
///
/// ### ECS Service Autoscaling
///
/// ```terraform
/// resource "aws_appautoscaling_target" "ecs_target" {
///   max_capacity       = 4
///   min_capacity       = 1
///   resource_id        = "service/clusterName/serviceName"
///   scalable_dimension = "ecs:service:DesiredCount"
///   service_namespace  = "ecs"
/// }
///
/// resource "aws_appautoscaling_policy" "ecs_policy" {
///   name               = "scale-down"
///   policy_type        = "StepScaling"
///   resource_id        = aws_appautoscaling_target.ecs_target.resource_id
///   scalable_dimension = aws_appautoscaling_target.ecs_target.scalable_dimension
///   service_namespace  = aws_appautoscaling_target.ecs_target.service_namespace
///
///   step_scaling_policy_configuration {
///     adjustment_type         = "ChangeInCapacity"
///     cooldown                = 60
///     metric_aggregation_type = "Maximum"
///
///     step_adjustment {
///       metric_interval_upper_bound = 0
///       scaling_adjustment          = -1
///     }
///   }
/// }
/// ```
///
/// ### Preserve desired count when updating an autoscaled ECS Service
///
/// &gt; To preserve the `desiredCount` of an autoscaled ECS Service during updates, use the [`ignoreChanges` resource option](https://www.pulumi.com/docs/concepts/options/ignorechanges/). This prevents Pulumi from resetting the count that autoscaling has set:
/// &gt;
/// &gt; ```typescript
/// &gt; const ecsService = new aws.ecs.Service("ecsService", {
/// &gt;     name: "serviceName",
/// &gt;     cluster: "clusterName",
/// &gt;     taskDefinition: "taskDefinitionFamily:1",
/// &gt;     desiredCount: 2,
/// &gt; }, {
/// &gt;     ignoreChanges: ["desiredCount"],
/// &gt; });
/// &gt; ```
///
/// ### Aurora Read Replica Autoscaling
///
/// ```terraform
/// resource "aws_appautoscaling_target" "replicas" {
///   service_namespace  = "rds"
///   scalable_dimension = "rds:cluster:ReadReplicaCount"
///   resource_id        = "cluster:${aws_rds_cluster.example.id}"
///   min_capacity       = 1
///   max_capacity       = 15
/// }
///
/// resource "aws_appautoscaling_policy" "replicas" {
///   name               = "cpu-auto-scaling"
///   service_namespace  = aws_appautoscaling_target.replicas.service_namespace
///   scalable_dimension = aws_appautoscaling_target.replicas.scalable_dimension
///   resource_id        = aws_appautoscaling_target.replicas.resource_id
///   policy_type        = "TargetTrackingScaling"
///
///   target_tracking_scaling_policy_configuration {
///     predefined_metric_specification {
///       predefined_metric_type = "RDSReaderAverageCPUUtilization"
///     }
///
///     target_value       = 75
///     scale_in_cooldown  = 300
///     scale_out_cooldown = 300
///   }
/// }
/// ```
///
/// ### Create target tracking scaling policy using metric math
///
/// ```terraform
/// resource "aws_appautoscaling_target" "ecs_target" {
///   max_capacity       = 4
///   min_capacity       = 1
///   resource_id        = "service/clusterName/serviceName"
///   scalable_dimension = "ecs:service:DesiredCount"
///   service_namespace  = "ecs"
/// }
///
/// resource "aws_appautoscaling_policy" "example" {
///   name               = "foo"
///   policy_type        = "TargetTrackingScaling"
///   resource_id        = aws_appautoscaling_target.ecs_target.resource_id
///   scalable_dimension = aws_appautoscaling_target.ecs_target.scalable_dimension
///   service_namespace  = aws_appautoscaling_target.ecs_target.service_namespace
///
///   target_tracking_scaling_policy_configuration {
///     target_value = 100
///
///     customized_metric_specification {
///       metrics {
///         label = "Get the queue size (the number of messages waiting to be processed)"
///         id    = "m1"
///
///         metric_stat {
///           metric {
///             metric_name = "ApproximateNumberOfMessagesVisible"
///             namespace   = "AWS/SQS"
///
///             dimensions {
///               name  = "QueueName"
///               value = "my-queue"
///             }
///           }
///
///           stat = "Sum"
///         }
///
///         return_data = false
///       }
///
///       metrics {
///         label = "Get the ECS running task count (the number of currently running tasks)"
///         id    = "m2"
///
///         metric_stat {
///           metric {
///             metric_name = "RunningTaskCount"
///             namespace   = "ECS/ContainerInsights"
///
///             dimensions {
///               name  = "ClusterName"
///               value = "default"
///             }
///
///             dimensions {
///               name  = "ServiceName"
///               value = "web-app"
///             }
///           }
///
///           stat = "Average"
///         }
///
///         return_data = false
///       }
///
///       metrics {
///         label       = "Calculate the backlog per instance"
///         id          = "e1"
///         expression  = "m1 / m2"
///         return_data = true
///       }
///     }
///   }
/// }
/// ```
///
/// ### Predictive Scaling
///
/// ```terraform
/// resource "aws_appautoscaling_policy" "example" {
///   name               = "example-policy"
///   resource_id        = aws_appautoscaling_target.example.resource_id
///   scalable_dimension = aws_appautoscaling_target.example.scalable_dimension
///   service_namespace  = aws_appautoscaling_target.example.service_namespace
///   policy_type        = "PredictiveScaling"
///
///   predictive_scaling_policy_configuration {
///     metric_specification {
///       target_value = 40
///
///       predefined_metric_pair_specification {
///         predefined_metric_type = "ECSServiceMemoryUtilization"
///       }
///     }
///   }
/// }
/// ```
///
/// ### MSK / Kafka Autoscaling
///
/// ```hcl
/// resource "aws_appautoscaling_target" "msk_target" {
///   service_namespace  = "kafka"
///   scalable_dimension = "kafka:broker-storage:VolumeSize"
///   resource_id        = "${aws_msk_cluster.example.arn}"
///   min_capacity       = 1
///   max_capacity       = 8
/// }
///
/// resource "aws_appautoscaling_policy" "targets" {
///   name               = "storage-size-auto-scaling"
///   service_namespace  = aws_appautoscaling_target.msk_target.service_namespace
///   scalable_dimension = aws_appautoscaling_target.msk_target.scalable_dimension
///   resource_id        = aws_appautoscaling_target.msk_target.resource_id
///   policy_type        = "TargetTrackingScaling"
///
///   target_tracking_scaling_policy_configuration {
///     predefined_metric_specification {
///       predefined_metric_type = "KafkaBrokerStorageUtilization"
///     }
///
///     target_value = 55
///   }
/// }
/// ```
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` - (String) Name of the scaling policy.
/// * `resourceId` - (String) Resource type and unique identifier string for the resource associated with the scaling policy.
/// * `scalableDimension` - (String) Scalable dimension of the scalable target.
/// * `serviceNamespace` - (String) AWS service namespace of the scalable target.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Application AutoScaling Policy using the `service-namespace` , `resource-id`, `scalable-dimension` and `policy-name` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:appautoscaling/policy:Policy test-policy service-namespace/resource-id/scalable-dimension/policy-name
/// ```
///
///
/// {{% /examples %}}
class Policy extends pulumi.CustomResource {
  /// List of CloudWatch alarm ARNs associated with the scaling policy.
  late final pulumi.Output<List<String>> alarmArns;
  /// ARN assigned by AWS to the scaling policy.
  late final pulumi.Output<String> arn;
  /// Name of the policy. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> name;
  /// Policy type. Valid values are `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`. Defaults to `StepScaling`. Certain services only support only one policy type. For more information see the [Target Tracking Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html), [Step Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html), and [Predictive Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-predictive-scaling.html) documentation.
  late final pulumi.Output<String?> policyType;
  /// Predictive scaling policy configuration, requires `policyType = "PredictiveScaling"`. See supported fields below.
  late final pulumi.Output<PolicyPredictiveScalingPolicyConfiguration?> predictiveScalingPolicyConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  late final pulumi.Output<String> resourceId;
  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  late final pulumi.Output<String> scalableDimension;
  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  late final pulumi.Output<String> serviceNamespace;
  /// Step scaling policy configuration, requires `policyType = "StepScaling"` (default). See supported fields below.
  late final pulumi.Output<PolicyStepScalingPolicyConfiguration?> stepScalingPolicyConfiguration;
  /// Target tracking policy configuration, requires `policyType = "TargetTrackingScaling"`. See supported fields below.
  late final pulumi.Output<PolicyTargetTrackingScalingPolicyConfiguration?> targetTrackingScalingPolicyConfiguration;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_appautoscaling_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appautoscaling/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    alarmArns = registerOutput<List<String>>('alarmArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    policyType = registerOutput<String?>('policyType');
    predictiveScalingPolicyConfiguration = registerOutput<PolicyPredictiveScalingPolicyConfiguration?>('predictiveScalingPolicyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPredictiveScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    scalableDimension = registerOutput<String>('scalableDimension');
    serviceNamespace = registerOutput<String>('serviceNamespace');
    stepScalingPolicyConfiguration = registerOutput<PolicyStepScalingPolicyConfiguration?>('stepScalingPolicyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyStepScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetTrackingScalingPolicyConfiguration = registerOutput<PolicyTargetTrackingScalingPolicyConfiguration?>('targetTrackingScalingPolicyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyTargetTrackingScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appautoscaling/policy:Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alarmArns = registerOutput<List<String>>('alarmArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    policyType = registerOutput<String?>('policyType');
    predictiveScalingPolicyConfiguration = registerOutput<PolicyPredictiveScalingPolicyConfiguration?>('predictiveScalingPolicyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPredictiveScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    scalableDimension = registerOutput<String>('scalableDimension');
    serviceNamespace = registerOutput<String>('serviceNamespace');
    stepScalingPolicyConfiguration = registerOutput<PolicyStepScalingPolicyConfiguration?>('stepScalingPolicyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyStepScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetTrackingScalingPolicyConfiguration = registerOutput<PolicyTargetTrackingScalingPolicyConfiguration?>('targetTrackingScalingPolicyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyTargetTrackingScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Policy] resource.
  Policy.reference(String urn)
    : super(
        'aws:appautoscaling/policy:Policy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alarmArns = registerOutput<List<String>>('alarmArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    policyType = registerOutput<String?>('policyType');
    predictiveScalingPolicyConfiguration = registerOutput<PolicyPredictiveScalingPolicyConfiguration?>('predictiveScalingPolicyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPredictiveScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    scalableDimension = registerOutput<String>('scalableDimension');
    serviceNamespace = registerOutput<String>('serviceNamespace');
    stepScalingPolicyConfiguration = registerOutput<PolicyStepScalingPolicyConfiguration?>('stepScalingPolicyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyStepScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetTrackingScalingPolicyConfiguration = registerOutput<PolicyTargetTrackingScalingPolicyConfiguration?>('targetTrackingScalingPolicyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyTargetTrackingScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
