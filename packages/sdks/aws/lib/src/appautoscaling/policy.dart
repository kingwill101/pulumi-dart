import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_predictive_scaling_policy_configuration.dart';
import 'policy_state.dart';
import 'policy_step_scaling_policy_configuration.dart';
import 'policy_target_tracking_scaling_policy_configuration.dart';

/// Provides an Application AutoScaling Policy resource.
///
/// ## Example Usage
///
/// ### DynamoDB Table Autoscaling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dynamodbTableReadTarget = new aws.appautoscaling.Target("dynamodb_table_read_target", {
///     maxCapacity: 100,
///     minCapacity: 5,
///     resourceId: "table/tableName",
///     scalableDimension: "dynamodb:table:ReadCapacityUnits",
///     serviceNamespace: "dynamodb",
/// });
/// const dynamodbTableReadPolicy = new aws.appautoscaling.Policy("dynamodb_table_read_policy", {
///     name: pulumi.interpolate`DynamoDBReadCapacityUtilization:${dynamodbTableReadTarget.resourceId}`,
///     policyType: "TargetTrackingScaling",
///     resourceId: dynamodbTableReadTarget.resourceId,
///     scalableDimension: dynamodbTableReadTarget.scalableDimension,
///     serviceNamespace: dynamodbTableReadTarget.serviceNamespace,
///     targetTrackingScalingPolicyConfiguration: {
///         predefinedMetricSpecification: {
///             predefinedMetricType: "DynamoDBReadCapacityUtilization",
///         },
///         targetValue: 70,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dynamodb_table_read_target = aws.appautoscaling.Target("dynamodb_table_read_target",
///     max_capacity=100,
///     min_capacity=5,
///     resource_id="table/tableName",
///     scalable_dimension="dynamodb:table:ReadCapacityUnits",
///     service_namespace="dynamodb")
/// dynamodb_table_read_policy = aws.appautoscaling.Policy("dynamodb_table_read_policy",
///     name=dynamodb_table_read_target.resource_id.apply(lambda resource_id: f"DynamoDBReadCapacityUtilization:{resource_id}"),
///     policy_type="TargetTrackingScaling",
///     resource_id=dynamodb_table_read_target.resource_id,
///     scalable_dimension=dynamodb_table_read_target.scalable_dimension,
///     service_namespace=dynamodb_table_read_target.service_namespace,
///     target_tracking_scaling_policy_configuration={
///         "predefined_metric_specification": {
///             "predefined_metric_type": "DynamoDBReadCapacityUtilization",
///         },
///         "target_value": 70,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dynamodbTableReadTarget = new Aws.AppAutoScaling.Target("dynamodb_table_read_target", new()
///     {
///         MaxCapacity = 100,
///         MinCapacity = 5,
///         ResourceId = "table/tableName",
///         ScalableDimension = "dynamodb:table:ReadCapacityUnits",
///         ServiceNamespace = "dynamodb",
///     });
///
///     var dynamodbTableReadPolicy = new Aws.AppAutoScaling.Policy("dynamodb_table_read_policy", new()
///     {
///         Name = dynamodbTableReadTarget.ResourceId.Apply(resourceId => $"DynamoDBReadCapacityUtilization:{resourceId}"),
///         PolicyType = "TargetTrackingScaling",
///         ResourceId = dynamodbTableReadTarget.ResourceId,
///         ScalableDimension = dynamodbTableReadTarget.ScalableDimension,
///         ServiceNamespace = dynamodbTableReadTarget.ServiceNamespace,
///         TargetTrackingScalingPolicyConfiguration = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationArgs
///         {
///             PredefinedMetricSpecification = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs
///             {
///                 PredefinedMetricType = "DynamoDBReadCapacityUtilization",
///             },
///             TargetValue = 70,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appautoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dynamodbTableReadTarget, err := appautoscaling.NewTarget(ctx, "dynamodb_table_read_target", &appautoscaling.TargetArgs{
/// 			MaxCapacity:       pulumi.Int(100),
/// 			MinCapacity:       pulumi.Int(5),
/// 			ResourceId:        pulumi.String("table/tableName"),
/// 			ScalableDimension: pulumi.String("dynamodb:table:ReadCapacityUnits"),
/// 			ServiceNamespace:  pulumi.String("dynamodb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appautoscaling.NewPolicy(ctx, "dynamodb_table_read_policy", &appautoscaling.PolicyArgs{
/// 			Name: dynamodbTableReadTarget.ResourceId.ApplyT(func(resourceId string) (string, error) {
/// 				return fmt.Sprintf("DynamoDBReadCapacityUtilization:%v", resourceId), nil
/// 			}).(pulumi.StringOutput),
/// 			PolicyType:        pulumi.String("TargetTrackingScaling"),
/// 			ResourceId:        dynamodbTableReadTarget.ResourceId,
/// 			ScalableDimension: dynamodbTableReadTarget.ScalableDimension,
/// 			ServiceNamespace:  dynamodbTableReadTarget.ServiceNamespace,
/// 			TargetTrackingScalingPolicyConfiguration: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationArgs{
/// 				PredefinedMetricSpecification: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs{
/// 					PredefinedMetricType: pulumi.String("DynamoDBReadCapacityUtilization"),
/// 				},
/// 				TargetValue: pulumi.Float64(70),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appautoscaling.Target;
/// import com.pulumi.aws.appautoscaling.TargetArgs;
/// import com.pulumi.aws.appautoscaling.Policy;
/// import com.pulumi.aws.appautoscaling.PolicyArgs;
/// import com.pulumi.aws.appautoscaling.inputs.PolicyTargetTrackingScalingPolicyConfigurationArgs;
/// import com.pulumi.aws.appautoscaling.inputs.PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var dynamodbTableReadTarget = new Target("dynamodbTableReadTarget", TargetArgs.builder()
///             .maxCapacity(100)
///             .minCapacity(5)
///             .resourceId("table/tableName")
///             .scalableDimension("dynamodb:table:ReadCapacityUnits")
///             .serviceNamespace("dynamodb")
///             .build());
///
///         var dynamodbTableReadPolicy = new Policy("dynamodbTableReadPolicy", PolicyArgs.builder()
///             .name(dynamodbTableReadTarget.resourceId().applyValue(_resourceId -> String.format("DynamoDBReadCapacityUtilization:%s", _resourceId)))
///             .policyType("TargetTrackingScaling")
///             .resourceId(dynamodbTableReadTarget.resourceId())
///             .scalableDimension(dynamodbTableReadTarget.scalableDimension())
///             .serviceNamespace(dynamodbTableReadTarget.serviceNamespace())
///             .targetTrackingScalingPolicyConfiguration(PolicyTargetTrackingScalingPolicyConfigurationArgs.builder()
///                 .predefinedMetricSpecification(PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs.builder()
///                     .predefinedMetricType("DynamoDBReadCapacityUtilization")
///                     .build())
///                 .targetValue(70.0)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dynamodbTableReadTarget:
///     type: aws:appautoscaling:Target
///     name: dynamodb_table_read_target
///     properties:
///       maxCapacity: 100
///       minCapacity: 5
///       resourceId: table/tableName
///       scalableDimension: dynamodb:table:ReadCapacityUnits
///       serviceNamespace: dynamodb
///   dynamodbTableReadPolicy:
///     type: aws:appautoscaling:Policy
///     name: dynamodb_table_read_policy
///     properties:
///       name: DynamoDBReadCapacityUtilization:${dynamodbTableReadTarget.resourceId}
///       policyType: TargetTrackingScaling
///       resourceId: ${dynamodbTableReadTarget.resourceId}
///       scalableDimension: ${dynamodbTableReadTarget.scalableDimension}
///       serviceNamespace: ${dynamodbTableReadTarget.serviceNamespace}
///       targetTrackingScalingPolicyConfiguration:
///         predefinedMetricSpecification:
///           predefinedMetricType: DynamoDBReadCapacityUtilization
///         targetValue: 70
/// ```
///
///
/// ### ECS Service Autoscaling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ecsTarget = new aws.appautoscaling.Target("ecs_target", {
///     maxCapacity: 4,
///     minCapacity: 1,
///     resourceId: "service/clusterName/serviceName",
///     scalableDimension: "ecs:service:DesiredCount",
///     serviceNamespace: "ecs",
/// });
/// const ecsPolicy = new aws.appautoscaling.Policy("ecs_policy", {
///     name: "scale-down",
///     policyType: "StepScaling",
///     resourceId: ecsTarget.resourceId,
///     scalableDimension: ecsTarget.scalableDimension,
///     serviceNamespace: ecsTarget.serviceNamespace,
///     stepScalingPolicyConfiguration: {
///         adjustmentType: "ChangeInCapacity",
///         cooldown: 60,
///         metricAggregationType: "Maximum",
///         stepAdjustments: [{
///             metricIntervalUpperBound: "0",
///             scalingAdjustment: -1,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecs_target = aws.appautoscaling.Target("ecs_target",
///     max_capacity=4,
///     min_capacity=1,
///     resource_id="service/clusterName/serviceName",
///     scalable_dimension="ecs:service:DesiredCount",
///     service_namespace="ecs")
/// ecs_policy = aws.appautoscaling.Policy("ecs_policy",
///     name="scale-down",
///     policy_type="StepScaling",
///     resource_id=ecs_target.resource_id,
///     scalable_dimension=ecs_target.scalable_dimension,
///     service_namespace=ecs_target.service_namespace,
///     step_scaling_policy_configuration={
///         "adjustment_type": "ChangeInCapacity",
///         "cooldown": 60,
///         "metric_aggregation_type": "Maximum",
///         "step_adjustments": [{
///             "metric_interval_upper_bound": "0",
///             "scaling_adjustment": -1,
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecsTarget = new Aws.AppAutoScaling.Target("ecs_target", new()
///     {
///         MaxCapacity = 4,
///         MinCapacity = 1,
///         ResourceId = "service/clusterName/serviceName",
///         ScalableDimension = "ecs:service:DesiredCount",
///         ServiceNamespace = "ecs",
///     });
///
///     var ecsPolicy = new Aws.AppAutoScaling.Policy("ecs_policy", new()
///     {
///         Name = "scale-down",
///         PolicyType = "StepScaling",
///         ResourceId = ecsTarget.ResourceId,
///         ScalableDimension = ecsTarget.ScalableDimension,
///         ServiceNamespace = ecsTarget.ServiceNamespace,
///         StepScalingPolicyConfiguration = new Aws.AppAutoScaling.Inputs.PolicyStepScalingPolicyConfigurationArgs
///         {
///             AdjustmentType = "ChangeInCapacity",
///             Cooldown = 60,
///             MetricAggregationType = "Maximum",
///             StepAdjustments = new[]
///             {
///                 new Aws.AppAutoScaling.Inputs.PolicyStepScalingPolicyConfigurationStepAdjustmentArgs
///                 {
///                     MetricIntervalUpperBound = "0",
///                     ScalingAdjustment = -1,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appautoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ecsTarget, err := appautoscaling.NewTarget(ctx, "ecs_target", &appautoscaling.TargetArgs{
/// 			MaxCapacity:       pulumi.Int(4),
/// 			MinCapacity:       pulumi.Int(1),
/// 			ResourceId:        pulumi.String("service/clusterName/serviceName"),
/// 			ScalableDimension: pulumi.String("ecs:service:DesiredCount"),
/// 			ServiceNamespace:  pulumi.String("ecs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appautoscaling.NewPolicy(ctx, "ecs_policy", &appautoscaling.PolicyArgs{
/// 			Name:              pulumi.String("scale-down"),
/// 			PolicyType:        pulumi.String("StepScaling"),
/// 			ResourceId:        ecsTarget.ResourceId,
/// 			ScalableDimension: ecsTarget.ScalableDimension,
/// 			ServiceNamespace:  ecsTarget.ServiceNamespace,
/// 			StepScalingPolicyConfiguration: &appautoscaling.PolicyStepScalingPolicyConfigurationArgs{
/// 				AdjustmentType:        pulumi.String("ChangeInCapacity"),
/// 				Cooldown:              pulumi.Int(60),
/// 				MetricAggregationType: pulumi.String("Maximum"),
/// 				StepAdjustments: appautoscaling.PolicyStepScalingPolicyConfigurationStepAdjustmentArray{
/// 					&appautoscaling.PolicyStepScalingPolicyConfigurationStepAdjustmentArgs{
/// 						MetricIntervalUpperBound: pulumi.String("0"),
/// 						ScalingAdjustment:        pulumi.Int(-1),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appautoscaling.Target;
/// import com.pulumi.aws.appautoscaling.TargetArgs;
/// import com.pulumi.aws.appautoscaling.Policy;
/// import com.pulumi.aws.appautoscaling.PolicyArgs;
/// import com.pulumi.aws.appautoscaling.inputs.PolicyStepScalingPolicyConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var ecsTarget = new Target("ecsTarget", TargetArgs.builder()
///             .maxCapacity(4)
///             .minCapacity(1)
///             .resourceId("service/clusterName/serviceName")
///             .scalableDimension("ecs:service:DesiredCount")
///             .serviceNamespace("ecs")
///             .build());
///
///         var ecsPolicy = new Policy("ecsPolicy", PolicyArgs.builder()
///             .name("scale-down")
///             .policyType("StepScaling")
///             .resourceId(ecsTarget.resourceId())
///             .scalableDimension(ecsTarget.scalableDimension())
///             .serviceNamespace(ecsTarget.serviceNamespace())
///             .stepScalingPolicyConfiguration(PolicyStepScalingPolicyConfigurationArgs.builder()
///                 .adjustmentType("ChangeInCapacity")
///                 .cooldown(60)
///                 .metricAggregationType("Maximum")
///                 .stepAdjustments(PolicyStepScalingPolicyConfigurationStepAdjustmentArgs.builder()
///                     .metricIntervalUpperBound("0")
///                     .scalingAdjustment(-1)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ecsTarget:
///     type: aws:appautoscaling:Target
///     name: ecs_target
///     properties:
///       maxCapacity: 4
///       minCapacity: 1
///       resourceId: service/clusterName/serviceName
///       scalableDimension: ecs:service:DesiredCount
///       serviceNamespace: ecs
///   ecsPolicy:
///     type: aws:appautoscaling:Policy
///     name: ecs_policy
///     properties:
///       name: scale-down
///       policyType: StepScaling
///       resourceId: ${ecsTarget.resourceId}
///       scalableDimension: ${ecsTarget.scalableDimension}
///       serviceNamespace: ${ecsTarget.serviceNamespace}
///       stepScalingPolicyConfiguration:
///         adjustmentType: ChangeInCapacity
///         cooldown: 60
///         metricAggregationType: Maximum
///         stepAdjustments:
///           - metricIntervalUpperBound: 0
///             scalingAdjustment: -1
/// ```
///
///
/// ### Preserve desired count when updating an autoscaled ECS Service
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ecsService = new aws.ecs.Service("ecs_service", {
///     name: "serviceName",
///     cluster: "clusterName",
///     taskDefinition: "taskDefinitionFamily:1",
///     desiredCount: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecs_service = aws.ecs.Service("ecs_service",
///     name="serviceName",
///     cluster="clusterName",
///     task_definition="taskDefinitionFamily:1",
///     desired_count=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecsService = new Aws.Ecs.Service("ecs_service", new()
///     {
///         Name = "serviceName",
///         Cluster = "clusterName",
///         TaskDefinition = "taskDefinitionFamily:1",
///         DesiredCount = 2,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewService(ctx, "ecs_service", &ecs.ServiceArgs{
/// 			Name:           pulumi.String("serviceName"),
/// 			Cluster:        pulumi.String("clusterName"),
/// 			TaskDefinition: pulumi.String("taskDefinitionFamily:1"),
/// 			DesiredCount:   pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var ecsService = new Service("ecsService", ServiceArgs.builder()
///             .name("serviceName")
///             .cluster("clusterName")
///             .taskDefinition("taskDefinitionFamily:1")
///             .desiredCount(2)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ecsService:
///     type: aws:ecs:Service
///     name: ecs_service
///     properties:
///       name: serviceName
///       cluster: clusterName
///       taskDefinition: taskDefinitionFamily:1
///       desiredCount: 2
/// ```
///
///
/// ### Aurora Read Replica Autoscaling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const replicas = new aws.appautoscaling.Target("replicas", {
///     serviceNamespace: "rds",
///     scalableDimension: "rds:cluster:ReadReplicaCount",
///     resourceId: `cluster:${example.id}`,
///     minCapacity: 1,
///     maxCapacity: 15,
/// });
/// const replicasPolicy = new aws.appautoscaling.Policy("replicas", {
///     name: "cpu-auto-scaling",
///     serviceNamespace: replicas.serviceNamespace,
///     scalableDimension: replicas.scalableDimension,
///     resourceId: replicas.resourceId,
///     policyType: "TargetTrackingScaling",
///     targetTrackingScalingPolicyConfiguration: {
///         predefinedMetricSpecification: {
///             predefinedMetricType: "RDSReaderAverageCPUUtilization",
///         },
///         targetValue: 75,
///         scaleInCooldown: 300,
///         scaleOutCooldown: 300,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// replicas = aws.appautoscaling.Target("replicas",
///     service_namespace="rds",
///     scalable_dimension="rds:cluster:ReadReplicaCount",
///     resource_id=f"cluster:{example['id']}",
///     min_capacity=1,
///     max_capacity=15)
/// replicas_policy = aws.appautoscaling.Policy("replicas",
///     name="cpu-auto-scaling",
///     service_namespace=replicas.service_namespace,
///     scalable_dimension=replicas.scalable_dimension,
///     resource_id=replicas.resource_id,
///     policy_type="TargetTrackingScaling",
///     target_tracking_scaling_policy_configuration={
///         "predefined_metric_specification": {
///             "predefined_metric_type": "RDSReaderAverageCPUUtilization",
///         },
///         "target_value": 75,
///         "scale_in_cooldown": 300,
///         "scale_out_cooldown": 300,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicas = new Aws.AppAutoScaling.Target("replicas", new()
///     {
///         ServiceNamespace = "rds",
///         ScalableDimension = "rds:cluster:ReadReplicaCount",
///         ResourceId = $"cluster:{example.Id}",
///         MinCapacity = 1,
///         MaxCapacity = 15,
///     });
///
///     var replicasPolicy = new Aws.AppAutoScaling.Policy("replicas", new()
///     {
///         Name = "cpu-auto-scaling",
///         ServiceNamespace = replicas.ServiceNamespace,
///         ScalableDimension = replicas.ScalableDimension,
///         ResourceId = replicas.ResourceId,
///         PolicyType = "TargetTrackingScaling",
///         TargetTrackingScalingPolicyConfiguration = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationArgs
///         {
///             PredefinedMetricSpecification = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs
///             {
///                 PredefinedMetricType = "RDSReaderAverageCPUUtilization",
///             },
///             TargetValue = 75,
///             ScaleInCooldown = 300,
///             ScaleOutCooldown = 300,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appautoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		replicas, err := appautoscaling.NewTarget(ctx, "replicas", &appautoscaling.TargetArgs{
/// 			ServiceNamespace:  pulumi.String("rds"),
/// 			ScalableDimension: pulumi.String("rds:cluster:ReadReplicaCount"),
/// 			ResourceId:        pulumi.Sprintf("cluster:%v", example.Id),
/// 			MinCapacity:       pulumi.Int(1),
/// 			MaxCapacity:       pulumi.Int(15),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appautoscaling.NewPolicy(ctx, "replicas", &appautoscaling.PolicyArgs{
/// 			Name:              pulumi.String("cpu-auto-scaling"),
/// 			ServiceNamespace:  replicas.ServiceNamespace,
/// 			ScalableDimension: replicas.ScalableDimension,
/// 			ResourceId:        replicas.ResourceId,
/// 			PolicyType:        pulumi.String("TargetTrackingScaling"),
/// 			TargetTrackingScalingPolicyConfiguration: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationArgs{
/// 				PredefinedMetricSpecification: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs{
/// 					PredefinedMetricType: pulumi.String("RDSReaderAverageCPUUtilization"),
/// 				},
/// 				TargetValue:      pulumi.Float64(75),
/// 				ScaleInCooldown:  pulumi.Int(300),
/// 				ScaleOutCooldown: pulumi.Int(300),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appautoscaling.Target;
/// import com.pulumi.aws.appautoscaling.TargetArgs;
/// import com.pulumi.aws.appautoscaling.Policy;
/// import com.pulumi.aws.appautoscaling.PolicyArgs;
/// import com.pulumi.aws.appautoscaling.inputs.PolicyTargetTrackingScalingPolicyConfigurationArgs;
/// import com.pulumi.aws.appautoscaling.inputs.PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var replicas = new Target("replicas", TargetArgs.builder()
///             .serviceNamespace("rds")
///             .scalableDimension("rds:cluster:ReadReplicaCount")
///             .resourceId(String.format("cluster:%s", example.id()))
///             .minCapacity(1)
///             .maxCapacity(15)
///             .build());
///
///         var replicasPolicy = new Policy("replicasPolicy", PolicyArgs.builder()
///             .name("cpu-auto-scaling")
///             .serviceNamespace(replicas.serviceNamespace())
///             .scalableDimension(replicas.scalableDimension())
///             .resourceId(replicas.resourceId())
///             .policyType("TargetTrackingScaling")
///             .targetTrackingScalingPolicyConfiguration(PolicyTargetTrackingScalingPolicyConfigurationArgs.builder()
///                 .predefinedMetricSpecification(PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs.builder()
///                     .predefinedMetricType("RDSReaderAverageCPUUtilization")
///                     .build())
///                 .targetValue(75.0)
///                 .scaleInCooldown(300)
///                 .scaleOutCooldown(300)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   replicas:
///     type: aws:appautoscaling:Target
///     properties:
///       serviceNamespace: rds
///       scalableDimension: rds:cluster:ReadReplicaCount
///       resourceId: cluster:${example.id}
///       minCapacity: 1
///       maxCapacity: 15
///   replicasPolicy:
///     type: aws:appautoscaling:Policy
///     name: replicas
///     properties:
///       name: cpu-auto-scaling
///       serviceNamespace: ${replicas.serviceNamespace}
///       scalableDimension: ${replicas.scalableDimension}
///       resourceId: ${replicas.resourceId}
///       policyType: TargetTrackingScaling
///       targetTrackingScalingPolicyConfiguration:
///         predefinedMetricSpecification:
///           predefinedMetricType: RDSReaderAverageCPUUtilization
///         targetValue: 75
///         scaleInCooldown: 300
///         scaleOutCooldown: 300
/// ```
///
///
/// ### Create target tracking scaling policy using metric math
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ecsTarget = new aws.appautoscaling.Target("ecs_target", {
///     maxCapacity: 4,
///     minCapacity: 1,
///     resourceId: "service/clusterName/serviceName",
///     scalableDimension: "ecs:service:DesiredCount",
///     serviceNamespace: "ecs",
/// });
/// const example = new aws.appautoscaling.Policy("example", {
///     name: "foo",
///     policyType: "TargetTrackingScaling",
///     resourceId: ecsTarget.resourceId,
///     scalableDimension: ecsTarget.scalableDimension,
///     serviceNamespace: ecsTarget.serviceNamespace,
///     targetTrackingScalingPolicyConfiguration: {
///         targetValue: 100,
///         customizedMetricSpecification: {
///             metrics: [
///                 {
///                     label: "Get the queue size (the number of messages waiting to be processed)",
///                     id: "m1",
///                     metricStat: {
///                         metric: {
///                             metricName: "ApproximateNumberOfMessagesVisible",
///                             namespace: "AWS/SQS",
///                             dimensions: [{
///                                 name: "QueueName",
///                                 value: "my-queue",
///                             }],
///                         },
///                         stat: "Sum",
///                     },
///                     returnData: false,
///                 },
///                 {
///                     label: "Get the ECS running task count (the number of currently running tasks)",
///                     id: "m2",
///                     metricStat: {
///                         metric: {
///                             metricName: "RunningTaskCount",
///                             namespace: "ECS/ContainerInsights",
///                             dimensions: [
///                                 {
///                                     name: "ClusterName",
///                                     value: "default",
///                                 },
///                                 {
///                                     name: "ServiceName",
///                                     value: "web-app",
///                                 },
///                             ],
///                         },
///                         stat: "Average",
///                     },
///                     returnData: false,
///                 },
///                 {
///                     label: "Calculate the backlog per instance",
///                     id: "e1",
///                     expression: "m1 / m2",
///                     returnData: true,
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecs_target = aws.appautoscaling.Target("ecs_target",
///     max_capacity=4,
///     min_capacity=1,
///     resource_id="service/clusterName/serviceName",
///     scalable_dimension="ecs:service:DesiredCount",
///     service_namespace="ecs")
/// example = aws.appautoscaling.Policy("example",
///     name="foo",
///     policy_type="TargetTrackingScaling",
///     resource_id=ecs_target.resource_id,
///     scalable_dimension=ecs_target.scalable_dimension,
///     service_namespace=ecs_target.service_namespace,
///     target_tracking_scaling_policy_configuration={
///         "target_value": 100,
///         "customized_metric_specification": {
///             "metrics": [
///                 {
///                     "label": "Get the queue size (the number of messages waiting to be processed)",
///                     "id": "m1",
///                     "metric_stat": {
///                         "metric": {
///                             "metric_name": "ApproximateNumberOfMessagesVisible",
///                             "namespace": "AWS/SQS",
///                             "dimensions": [{
///                                 "name": "QueueName",
///                                 "value": "my-queue",
///                             }],
///                         },
///                         "stat": "Sum",
///                     },
///                     "return_data": False,
///                 },
///                 {
///                     "label": "Get the ECS running task count (the number of currently running tasks)",
///                     "id": "m2",
///                     "metric_stat": {
///                         "metric": {
///                             "metric_name": "RunningTaskCount",
///                             "namespace": "ECS/ContainerInsights",
///                             "dimensions": [
///                                 {
///                                     "name": "ClusterName",
///                                     "value": "default",
///                                 },
///                                 {
///                                     "name": "ServiceName",
///                                     "value": "web-app",
///                                 },
///                             ],
///                         },
///                         "stat": "Average",
///                     },
///                     "return_data": False,
///                 },
///                 {
///                     "label": "Calculate the backlog per instance",
///                     "id": "e1",
///                     "expression": "m1 / m2",
///                     "return_data": True,
///                 },
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecsTarget = new Aws.AppAutoScaling.Target("ecs_target", new()
///     {
///         MaxCapacity = 4,
///         MinCapacity = 1,
///         ResourceId = "service/clusterName/serviceName",
///         ScalableDimension = "ecs:service:DesiredCount",
///         ServiceNamespace = "ecs",
///     });
///
///     var example = new Aws.AppAutoScaling.Policy("example", new()
///     {
///         Name = "foo",
///         PolicyType = "TargetTrackingScaling",
///         ResourceId = ecsTarget.ResourceId,
///         ScalableDimension = ecsTarget.ScalableDimension,
///         ServiceNamespace = ecsTarget.ServiceNamespace,
///         TargetTrackingScalingPolicyConfiguration = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationArgs
///         {
///             TargetValue = 100,
///             CustomizedMetricSpecification = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationArgs
///             {
///                 Metrics = new[]
///                 {
///                     new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricArgs
///                     {
///                         Label = "Get the queue size (the number of messages waiting to be processed)",
///                         Id = "m1",
///                         MetricStat = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatArgs
///                         {
///                             Metric = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs
///                             {
///                                 MetricName = "ApproximateNumberOfMessagesVisible",
///                                 Namespace = "AWS/SQS",
///                                 Dimensions = new[]
///                                 {
///                                     new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs
///                                     {
///                                         Name = "QueueName",
///                                         Value = "my-queue",
///                                     },
///                                 },
///                             },
///                             Stat = "Sum",
///                         },
///                         ReturnData = false,
///                     },
///                     new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricArgs
///                     {
///                         Label = "Get the ECS running task count (the number of currently running tasks)",
///                         Id = "m2",
///                         MetricStat = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatArgs
///                         {
///                             Metric = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs
///                             {
///                                 MetricName = "RunningTaskCount",
///                                 Namespace = "ECS/ContainerInsights",
///                                 Dimensions = new[]
///                                 {
///                                     new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs
///                                     {
///                                         Name = "ClusterName",
///                                         Value = "default",
///                                     },
///                                     new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs
///                                     {
///                                         Name = "ServiceName",
///                                         Value = "web-app",
///                                     },
///                                 },
///                             },
///                             Stat = "Average",
///                         },
///                         ReturnData = false,
///                     },
///                     new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricArgs
///                     {
///                         Label = "Calculate the backlog per instance",
///                         Id = "e1",
///                         Expression = "m1 / m2",
///                         ReturnData = true,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appautoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ecsTarget, err := appautoscaling.NewTarget(ctx, "ecs_target", &appautoscaling.TargetArgs{
/// 			MaxCapacity:       pulumi.Int(4),
/// 			MinCapacity:       pulumi.Int(1),
/// 			ResourceId:        pulumi.String("service/clusterName/serviceName"),
/// 			ScalableDimension: pulumi.String("ecs:service:DesiredCount"),
/// 			ServiceNamespace:  pulumi.String("ecs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appautoscaling.NewPolicy(ctx, "example", &appautoscaling.PolicyArgs{
/// 			Name:              pulumi.String("foo"),
/// 			PolicyType:        pulumi.String("TargetTrackingScaling"),
/// 			ResourceId:        ecsTarget.ResourceId,
/// 			ScalableDimension: ecsTarget.ScalableDimension,
/// 			ServiceNamespace:  ecsTarget.ServiceNamespace,
/// 			TargetTrackingScalingPolicyConfiguration: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationArgs{
/// 				TargetValue: pulumi.Float64(100),
/// 				CustomizedMetricSpecification: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationArgs{
/// 					Metrics: appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricArray{
/// 						&appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricArgs{
/// 							Label: pulumi.String("Get the queue size (the number of messages waiting to be processed)"),
/// 							Id:    pulumi.String("m1"),
/// 							MetricStat: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatArgs{
/// 								Metric: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs{
/// 									MetricName: pulumi.String("ApproximateNumberOfMessagesVisible"),
/// 									Namespace:  pulumi.String("AWS/SQS"),
/// 									Dimensions: appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArray{
/// 										&appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs{
/// 											Name:  pulumi.String("QueueName"),
/// 											Value: pulumi.String("my-queue"),
/// 										},
/// 									},
/// 								},
/// 								Stat: pulumi.String("Sum"),
/// 							},
/// 							ReturnData: pulumi.Bool(false),
/// 						},
/// 						&appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricArgs{
/// 							Label: pulumi.String("Get the ECS running task count (the number of currently running tasks)"),
/// 							Id:    pulumi.String("m2"),
/// 							MetricStat: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatArgs{
/// 								Metric: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs{
/// 									MetricName: pulumi.String("RunningTaskCount"),
/// 									Namespace:  pulumi.String("ECS/ContainerInsights"),
/// 									Dimensions: appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArray{
/// 										&appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs{
/// 											Name:  pulumi.String("ClusterName"),
/// 											Value: pulumi.String("default"),
/// 										},
/// 										&appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs{
/// 											Name:  pulumi.String("ServiceName"),
/// 											Value: pulumi.String("web-app"),
/// 										},
/// 									},
/// 								},
/// 								Stat: pulumi.String("Average"),
/// 							},
/// 							ReturnData: pulumi.Bool(false),
/// 						},
/// 						&appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricArgs{
/// 							Label:      pulumi.String("Calculate the backlog per instance"),
/// 							Id:         pulumi.String("e1"),
/// 							Expression: pulumi.String("m1 / m2"),
/// 							ReturnData: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appautoscaling.Target;
/// import com.pulumi.aws.appautoscaling.TargetArgs;
/// import com.pulumi.aws.appautoscaling.Policy;
/// import com.pulumi.aws.appautoscaling.PolicyArgs;
/// import com.pulumi.aws.appautoscaling.inputs.PolicyTargetTrackingScalingPolicyConfigurationArgs;
/// import com.pulumi.aws.appautoscaling.inputs.PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var ecsTarget = new Target("ecsTarget", TargetArgs.builder()
///             .maxCapacity(4)
///             .minCapacity(1)
///             .resourceId("service/clusterName/serviceName")
///             .scalableDimension("ecs:service:DesiredCount")
///             .serviceNamespace("ecs")
///             .build());
///
///         var example = new Policy("example", PolicyArgs.builder()
///             .name("foo")
///             .policyType("TargetTrackingScaling")
///             .resourceId(ecsTarget.resourceId())
///             .scalableDimension(ecsTarget.scalableDimension())
///             .serviceNamespace(ecsTarget.serviceNamespace())
///             .targetTrackingScalingPolicyConfiguration(PolicyTargetTrackingScalingPolicyConfigurationArgs.builder()
///                 .targetValue(100.0)
///                 .customizedMetricSpecification(PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationArgs.builder()
///                     .metrics(
///                         PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricArgs.builder()
///                             .label("Get the queue size (the number of messages waiting to be processed)")
///                             .id("m1")
///                             .metricStat(PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatArgs.builder()
///                                 .metric(PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs.builder()
///                                     .metricName("ApproximateNumberOfMessagesVisible")
///                                     .namespace("AWS/SQS")
///                                     .dimensions(PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs.builder()
///                                         .name("QueueName")
///                                         .value("my-queue")
///                                         .build())
///                                     .build())
///                                 .stat("Sum")
///                                 .build())
///                             .returnData(false)
///                             .build(),
///                         PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricArgs.builder()
///                             .label("Get the ECS running task count (the number of currently running tasks)")
///                             .id("m2")
///                             .metricStat(PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatArgs.builder()
///                                 .metric(PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs.builder()
///                                     .metricName("RunningTaskCount")
///                                     .namespace("ECS/ContainerInsights")
///                                     .dimensions(
///                                         PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs.builder()
///                                             .name("ClusterName")
///                                             .value("default")
///                                             .build(),
///                                         PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs.builder()
///                                             .name("ServiceName")
///                                             .value("web-app")
///                                             .build())
///                                     .build())
///                                 .stat("Average")
///                                 .build())
///                             .returnData(false)
///                             .build(),
///                         PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricArgs.builder()
///                             .label("Calculate the backlog per instance")
///                             .id("e1")
///                             .expression("m1 / m2")
///                             .returnData(true)
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ecsTarget:
///     type: aws:appautoscaling:Target
///     name: ecs_target
///     properties:
///       maxCapacity: 4
///       minCapacity: 1
///       resourceId: service/clusterName/serviceName
///       scalableDimension: ecs:service:DesiredCount
///       serviceNamespace: ecs
///   example:
///     type: aws:appautoscaling:Policy
///     properties:
///       name: foo
///       policyType: TargetTrackingScaling
///       resourceId: ${ecsTarget.resourceId}
///       scalableDimension: ${ecsTarget.scalableDimension}
///       serviceNamespace: ${ecsTarget.serviceNamespace}
///       targetTrackingScalingPolicyConfiguration:
///         targetValue: 100
///         customizedMetricSpecification:
///           metrics:
///             - label: Get the queue size (the number of messages waiting to be processed)
///               id: m1
///               metricStat:
///                 metric:
///                   metricName: ApproximateNumberOfMessagesVisible
///                   namespace: AWS/SQS
///                   dimensions:
///                     - name: QueueName
///                       value: my-queue
///                 stat: Sum
///               returnData: false
///             - label: Get the ECS running task count (the number of currently running tasks)
///               id: m2
///               metricStat:
///                 metric:
///                   metricName: RunningTaskCount
///                   namespace: ECS/ContainerInsights
///                   dimensions:
///                     - name: ClusterName
///                       value: default
///                     - name: ServiceName
///                       value: web-app
///                 stat: Average
///               returnData: false
///             - label: Calculate the backlog per instance
///               id: e1
///               expression: m1 / m2
///               returnData: true
/// ```
///
///
/// ### Predictive Scaling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appautoscaling.Policy("example", {
///     name: "example-policy",
///     resourceId: exampleAwsAppautoscalingTarget.resourceId,
///     scalableDimension: exampleAwsAppautoscalingTarget.scalableDimension,
///     serviceNamespace: exampleAwsAppautoscalingTarget.serviceNamespace,
///     policyType: "PredictiveScaling",
///     predictiveScalingPolicyConfiguration: {
///         metricSpecifications: [{
///             targetValue: "40",
///             predefinedMetricPairSpecification: {
///                 predefinedMetricType: "ECSServiceMemoryUtilization",
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appautoscaling.Policy("example",
///     name="example-policy",
///     resource_id=example_aws_appautoscaling_target["resourceId"],
///     scalable_dimension=example_aws_appautoscaling_target["scalableDimension"],
///     service_namespace=example_aws_appautoscaling_target["serviceNamespace"],
///     policy_type="PredictiveScaling",
///     predictive_scaling_policy_configuration={
///         "metric_specifications": [{
///             "target_value": "40",
///             "predefined_metric_pair_specification": {
///                 "predefined_metric_type": "ECSServiceMemoryUtilization",
///             },
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppAutoScaling.Policy("example", new()
///     {
///         Name = "example-policy",
///         ResourceId = exampleAwsAppautoscalingTarget.ResourceId,
///         ScalableDimension = exampleAwsAppautoscalingTarget.ScalableDimension,
///         ServiceNamespace = exampleAwsAppautoscalingTarget.ServiceNamespace,
///         PolicyType = "PredictiveScaling",
///         PredictiveScalingPolicyConfiguration = new Aws.AppAutoScaling.Inputs.PolicyPredictiveScalingPolicyConfigurationArgs
///         {
///             MetricSpecifications = new[]
///             {
///                 new Aws.AppAutoScaling.Inputs.PolicyPredictiveScalingPolicyConfigurationMetricSpecificationArgs
///                 {
///                     TargetValue = "40",
///                     PredefinedMetricPairSpecification = new Aws.AppAutoScaling.Inputs.PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecificationArgs
///                     {
///                         PredefinedMetricType = "ECSServiceMemoryUtilization",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appautoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appautoscaling.NewPolicy(ctx, "example", &appautoscaling.PolicyArgs{
/// 			Name:              pulumi.String("example-policy"),
/// 			ResourceId:        pulumi.Any(exampleAwsAppautoscalingTarget.ResourceId),
/// 			ScalableDimension: pulumi.Any(exampleAwsAppautoscalingTarget.ScalableDimension),
/// 			ServiceNamespace:  pulumi.Any(exampleAwsAppautoscalingTarget.ServiceNamespace),
/// 			PolicyType:        pulumi.String("PredictiveScaling"),
/// 			PredictiveScalingPolicyConfiguration: &appautoscaling.PolicyPredictiveScalingPolicyConfigurationArgs{
/// 				MetricSpecifications: appautoscaling.PolicyPredictiveScalingPolicyConfigurationMetricSpecificationArray{
/// 					&appautoscaling.PolicyPredictiveScalingPolicyConfigurationMetricSpecificationArgs{
/// 						TargetValue: pulumi.String("40"),
/// 						PredefinedMetricPairSpecification: &appautoscaling.PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecificationArgs{
/// 							PredefinedMetricType: pulumi.String("ECSServiceMemoryUtilization"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appautoscaling.Policy;
/// import com.pulumi.aws.appautoscaling.PolicyArgs;
/// import com.pulumi.aws.appautoscaling.inputs.PolicyPredictiveScalingPolicyConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Policy("example", PolicyArgs.builder()
///             .name("example-policy")
///             .resourceId(exampleAwsAppautoscalingTarget.resourceId())
///             .scalableDimension(exampleAwsAppautoscalingTarget.scalableDimension())
///             .serviceNamespace(exampleAwsAppautoscalingTarget.serviceNamespace())
///             .policyType("PredictiveScaling")
///             .predictiveScalingPolicyConfiguration(PolicyPredictiveScalingPolicyConfigurationArgs.builder()
///                 .metricSpecifications(PolicyPredictiveScalingPolicyConfigurationMetricSpecificationArgs.builder()
///                     .targetValue("40")
///                     .predefinedMetricPairSpecification(PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecificationArgs.builder()
///                         .predefinedMetricType("ECSServiceMemoryUtilization")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appautoscaling:Policy
///     properties:
///       name: example-policy
///       resourceId: ${exampleAwsAppautoscalingTarget.resourceId}
///       scalableDimension: ${exampleAwsAppautoscalingTarget.scalableDimension}
///       serviceNamespace: ${exampleAwsAppautoscalingTarget.serviceNamespace}
///       policyType: PredictiveScaling
///       predictiveScalingPolicyConfiguration:
///         metricSpecifications:
///           - targetValue: 40
///             predefinedMetricPairSpecification:
///               predefinedMetricType: ECSServiceMemoryUtilization
/// ```
///
///
/// ### MSK / Kafka Autoscaling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mskTarget = new aws.appautoscaling.Target("msk_target", {
///     serviceNamespace: "kafka",
///     scalableDimension: "kafka:broker-storage:VolumeSize",
///     resourceId: example.arn,
///     minCapacity: 1,
///     maxCapacity: 8,
/// });
/// const targets = new aws.appautoscaling.Policy("targets", {
///     name: "storage-size-auto-scaling",
///     serviceNamespace: mskTarget.serviceNamespace,
///     scalableDimension: mskTarget.scalableDimension,
///     resourceId: mskTarget.resourceId,
///     policyType: "TargetTrackingScaling",
///     targetTrackingScalingPolicyConfiguration: {
///         predefinedMetricSpecification: {
///             predefinedMetricType: "KafkaBrokerStorageUtilization",
///         },
///         targetValue: 55,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// msk_target = aws.appautoscaling.Target("msk_target",
///     service_namespace="kafka",
///     scalable_dimension="kafka:broker-storage:VolumeSize",
///     resource_id=example["arn"],
///     min_capacity=1,
///     max_capacity=8)
/// targets = aws.appautoscaling.Policy("targets",
///     name="storage-size-auto-scaling",
///     service_namespace=msk_target.service_namespace,
///     scalable_dimension=msk_target.scalable_dimension,
///     resource_id=msk_target.resource_id,
///     policy_type="TargetTrackingScaling",
///     target_tracking_scaling_policy_configuration={
///         "predefined_metric_specification": {
///             "predefined_metric_type": "KafkaBrokerStorageUtilization",
///         },
///         "target_value": 55,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mskTarget = new Aws.AppAutoScaling.Target("msk_target", new()
///     {
///         ServiceNamespace = "kafka",
///         ScalableDimension = "kafka:broker-storage:VolumeSize",
///         ResourceId = example.Arn,
///         MinCapacity = 1,
///         MaxCapacity = 8,
///     });
///
///     var targets = new Aws.AppAutoScaling.Policy("targets", new()
///     {
///         Name = "storage-size-auto-scaling",
///         ServiceNamespace = mskTarget.ServiceNamespace,
///         ScalableDimension = mskTarget.ScalableDimension,
///         ResourceId = mskTarget.ResourceId,
///         PolicyType = "TargetTrackingScaling",
///         TargetTrackingScalingPolicyConfiguration = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationArgs
///         {
///             PredefinedMetricSpecification = new Aws.AppAutoScaling.Inputs.PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs
///             {
///                 PredefinedMetricType = "KafkaBrokerStorageUtilization",
///             },
///             TargetValue = 55,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appautoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mskTarget, err := appautoscaling.NewTarget(ctx, "msk_target", &appautoscaling.TargetArgs{
/// 			ServiceNamespace:  pulumi.String("kafka"),
/// 			ScalableDimension: pulumi.String("kafka:broker-storage:VolumeSize"),
/// 			ResourceId:        pulumi.Any(example.Arn),
/// 			MinCapacity:       pulumi.Int(1),
/// 			MaxCapacity:       pulumi.Int(8),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appautoscaling.NewPolicy(ctx, "targets", &appautoscaling.PolicyArgs{
/// 			Name:              pulumi.String("storage-size-auto-scaling"),
/// 			ServiceNamespace:  mskTarget.ServiceNamespace,
/// 			ScalableDimension: mskTarget.ScalableDimension,
/// 			ResourceId:        mskTarget.ResourceId,
/// 			PolicyType:        pulumi.String("TargetTrackingScaling"),
/// 			TargetTrackingScalingPolicyConfiguration: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationArgs{
/// 				PredefinedMetricSpecification: &appautoscaling.PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs{
/// 					PredefinedMetricType: pulumi.String("KafkaBrokerStorageUtilization"),
/// 				},
/// 				TargetValue: pulumi.Float64(55),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appautoscaling.Target;
/// import com.pulumi.aws.appautoscaling.TargetArgs;
/// import com.pulumi.aws.appautoscaling.Policy;
/// import com.pulumi.aws.appautoscaling.PolicyArgs;
/// import com.pulumi.aws.appautoscaling.inputs.PolicyTargetTrackingScalingPolicyConfigurationArgs;
/// import com.pulumi.aws.appautoscaling.inputs.PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var mskTarget = new Target("mskTarget", TargetArgs.builder()
///             .serviceNamespace("kafka")
///             .scalableDimension("kafka:broker-storage:VolumeSize")
///             .resourceId(example.arn())
///             .minCapacity(1)
///             .maxCapacity(8)
///             .build());
///
///         var targets = new Policy("targets", PolicyArgs.builder()
///             .name("storage-size-auto-scaling")
///             .serviceNamespace(mskTarget.serviceNamespace())
///             .scalableDimension(mskTarget.scalableDimension())
///             .resourceId(mskTarget.resourceId())
///             .policyType("TargetTrackingScaling")
///             .targetTrackingScalingPolicyConfiguration(PolicyTargetTrackingScalingPolicyConfigurationArgs.builder()
///                 .predefinedMetricSpecification(PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecificationArgs.builder()
///                     .predefinedMetricType("KafkaBrokerStorageUtilization")
///                     .build())
///                 .targetValue(55.0)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mskTarget:
///     type: aws:appautoscaling:Target
///     name: msk_target
///     properties:
///       serviceNamespace: kafka
///       scalableDimension: kafka:broker-storage:VolumeSize
///       resourceId: ${example.arn}
///       minCapacity: 1
///       maxCapacity: 8
///   targets:
///     type: aws:appautoscaling:Policy
///     properties:
///       name: storage-size-auto-scaling
///       serviceNamespace: ${mskTarget.serviceNamespace}
///       scalableDimension: ${mskTarget.scalableDimension}
///       resourceId: ${mskTarget.resourceId}
///       policyType: TargetTrackingScaling
///       targetTrackingScalingPolicyConfiguration:
///         predefinedMetricSpecification:
///           predefinedMetricType: KafkaBrokerStorageUtilization
///         targetValue: 55
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Application AutoScaling Policy using the `service-namespace` , `resource-id`, `scalable-dimension` and `policy-name` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:appautoscaling/policy:Policy test-policy service-namespace/resource-id/scalable-dimension/policy-name
/// ```
class Policy extends pulumi.CustomResource {
  /// List of CloudWatch alarm ARNs associated with the scaling policy.
  late final pulumi.Output<List<String>> alarmArns;
  /// ARN assigned by AWS to the scaling policy.
  late final pulumi.Output<String> arn;
  /// Name of the policy. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> name;
  /// Policy type. Valid values are `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`. Defaults to `StepScaling`. Certain services only support only one policy type. For more information see the [Target Tracking Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html), [Step Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html), and [Predictive Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-predictive-scaling.html) documentation.
  late final pulumi.Output<String?> policyType;
  /// Predictive scaling policy configuration, requires `policy_type = "PredictiveScaling"`. See supported fields below.
  late final pulumi.Output<PolicyPredictiveScalingPolicyConfiguration?> predictiveScalingPolicyConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  late final pulumi.Output<String> resourceId;
  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  late final pulumi.Output<String> scalableDimension;
  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  late final pulumi.Output<String> serviceNamespace;
  /// Step scaling policy configuration, requires `policy_type = "StepScaling"` (default). See supported fields below.
  late final pulumi.Output<PolicyStepScalingPolicyConfiguration?> stepScalingPolicyConfiguration;
  /// Target tracking policy configuration, requires `policy_type = "TargetTrackingScaling"`. See supported fields below.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alarmArns = registerOutput<List<String>>('alarmArns');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.policyType = registerOutput<String?>('policyType');
    this.predictiveScalingPolicyConfiguration = registerOutput<PolicyPredictiveScalingPolicyConfiguration?>('predictiveScalingPolicyConfiguration');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.scalableDimension = registerOutput<String>('scalableDimension');
    this.serviceNamespace = registerOutput<String>('serviceNamespace');
    this.stepScalingPolicyConfiguration = registerOutput<PolicyStepScalingPolicyConfiguration?>('stepScalingPolicyConfiguration');
    this.targetTrackingScalingPolicyConfiguration = registerOutput<PolicyTargetTrackingScalingPolicyConfiguration?>('targetTrackingScalingPolicyConfiguration');
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.alarmArns = registerOutput<List<String>>('alarmArns');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.policyType = registerOutput<String?>('policyType');
    this.predictiveScalingPolicyConfiguration = registerOutput<PolicyPredictiveScalingPolicyConfiguration?>('predictiveScalingPolicyConfiguration');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.scalableDimension = registerOutput<String>('scalableDimension');
    this.serviceNamespace = registerOutput<String>('serviceNamespace');
    this.stepScalingPolicyConfiguration = registerOutput<PolicyStepScalingPolicyConfiguration?>('stepScalingPolicyConfiguration');
    this.targetTrackingScalingPolicyConfiguration = registerOutput<PolicyTargetTrackingScalingPolicyConfiguration?>('targetTrackingScalingPolicyConfiguration');
  }
}
