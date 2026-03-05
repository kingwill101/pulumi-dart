import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_action_args.dart';
import 'scheduled_action_scalable_target_action.dart';
import 'scheduled_action_state.dart';

/// Provides an Application AutoScaling ScheduledAction resource.
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
/// const dynamodb = new aws.appautoscaling.Target("dynamodb", {
///     maxCapacity: 100,
///     minCapacity: 5,
///     resourceId: "table/tableName",
///     scalableDimension: "dynamodb:table:ReadCapacityUnits",
///     serviceNamespace: "dynamodb",
/// });
/// const dynamodbScheduledAction = new aws.appautoscaling.ScheduledAction("dynamodb", {
///     name: "dynamodb",
///     serviceNamespace: dynamodb.serviceNamespace,
///     resourceId: dynamodb.resourceId,
///     scalableDimension: dynamodb.scalableDimension,
///     schedule: "at(2006-01-02T15:04:05)",
///     scalableTargetAction: {
///         minCapacity: 1,
///         maxCapacity: 200,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dynamodb = aws.appautoscaling.Target("dynamodb",
///     max_capacity=100,
///     min_capacity=5,
///     resource_id="table/tableName",
///     scalable_dimension="dynamodb:table:ReadCapacityUnits",
///     service_namespace="dynamodb")
/// dynamodb_scheduled_action = aws.appautoscaling.ScheduledAction("dynamodb",
///     name="dynamodb",
///     service_namespace=dynamodb.service_namespace,
///     resource_id=dynamodb.resource_id,
///     scalable_dimension=dynamodb.scalable_dimension,
///     schedule="at(2006-01-02T15:04:05)",
///     scalable_target_action={
///         "min_capacity": 1,
///         "max_capacity": 200,
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
///     var dynamodb = new Aws.AppAutoScaling.Target("dynamodb", new()
///     {
///         MaxCapacity = 100,
///         MinCapacity = 5,
///         ResourceId = "table/tableName",
///         ScalableDimension = "dynamodb:table:ReadCapacityUnits",
///         ServiceNamespace = "dynamodb",
///     });
///
///     var dynamodbScheduledAction = new Aws.AppAutoScaling.ScheduledAction("dynamodb", new()
///     {
///         Name = "dynamodb",
///         ServiceNamespace = dynamodb.ServiceNamespace,
///         ResourceId = dynamodb.ResourceId,
///         ScalableDimension = dynamodb.ScalableDimension,
///         Schedule = "at(2006-01-02T15:04:05)",
///         ScalableTargetAction = new Aws.AppAutoScaling.Inputs.ScheduledActionScalableTargetActionArgs
///         {
///             MinCapacity = 1,
///             MaxCapacity = 200,
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
/// 		dynamodb, err := appautoscaling.NewTarget(ctx, "dynamodb", &appautoscaling.TargetArgs{
/// 			MaxCapacity:       pulumi.Int(100),
/// 			MinCapacity:       pulumi.Int(5),
/// 			ResourceId:        pulumi.String("table/tableName"),
/// 			ScalableDimension: pulumi.String("dynamodb:table:ReadCapacityUnits"),
/// 			ServiceNamespace:  pulumi.String("dynamodb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appautoscaling.NewScheduledAction(ctx, "dynamodb", &appautoscaling.ScheduledActionArgs{
/// 			Name:              pulumi.String("dynamodb"),
/// 			ServiceNamespace:  dynamodb.ServiceNamespace,
/// 			ResourceId:        dynamodb.ResourceId,
/// 			ScalableDimension: dynamodb.ScalableDimension,
/// 			Schedule:          pulumi.String("at(2006-01-02T15:04:05)"),
/// 			ScalableTargetAction: &appautoscaling.ScheduledActionScalableTargetActionArgs{
/// 				MinCapacity: pulumi.Int(1),
/// 				MaxCapacity: pulumi.Int(200),
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
/// import com.pulumi.aws.appautoscaling.ScheduledAction;
/// import com.pulumi.aws.appautoscaling.ScheduledActionArgs;
/// import com.pulumi.aws.appautoscaling.inputs.ScheduledActionScalableTargetActionArgs;
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
///         var dynamodb = new Target("dynamodb", TargetArgs.builder()
///             .maxCapacity(100)
///             .minCapacity(5)
///             .resourceId("table/tableName")
///             .scalableDimension("dynamodb:table:ReadCapacityUnits")
///             .serviceNamespace("dynamodb")
///             .build());
///
///         var dynamodbScheduledAction = new ScheduledAction("dynamodbScheduledAction", ScheduledActionArgs.builder()
///             .name("dynamodb")
///             .serviceNamespace(dynamodb.serviceNamespace())
///             .resourceId(dynamodb.resourceId())
///             .scalableDimension(dynamodb.scalableDimension())
///             .schedule("at(2006-01-02T15:04:05)")
///             .scalableTargetAction(ScheduledActionScalableTargetActionArgs.builder()
///                 .minCapacity(1)
///                 .maxCapacity(200)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dynamodb:
///     type: aws:appautoscaling:Target
///     properties:
///       maxCapacity: 100
///       minCapacity: 5
///       resourceId: table/tableName
///       scalableDimension: dynamodb:table:ReadCapacityUnits
///       serviceNamespace: dynamodb
///   dynamodbScheduledAction:
///     type: aws:appautoscaling:ScheduledAction
///     name: dynamodb
///     properties:
///       name: dynamodb
///       serviceNamespace: ${dynamodb.serviceNamespace}
///       resourceId: ${dynamodb.resourceId}
///       scalableDimension: ${dynamodb.scalableDimension}
///       schedule: at(2006-01-02T15:04:05)
///       scalableTargetAction:
///         minCapacity: 1
///         maxCapacity: 200
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
/// const ecs = new aws.appautoscaling.Target("ecs", {
///     maxCapacity: 4,
///     minCapacity: 1,
///     resourceId: "service/clusterName/serviceName",
///     scalableDimension: "ecs:service:DesiredCount",
///     serviceNamespace: "ecs",
/// });
/// const ecsScheduledAction = new aws.appautoscaling.ScheduledAction("ecs", {
///     name: "ecs",
///     serviceNamespace: ecs.serviceNamespace,
///     resourceId: ecs.resourceId,
///     scalableDimension: ecs.scalableDimension,
///     schedule: "at(2006-01-02T15:04:05)",
///     scalableTargetAction: {
///         minCapacity: 1,
///         maxCapacity: 10,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecs = aws.appautoscaling.Target("ecs",
///     max_capacity=4,
///     min_capacity=1,
///     resource_id="service/clusterName/serviceName",
///     scalable_dimension="ecs:service:DesiredCount",
///     service_namespace="ecs")
/// ecs_scheduled_action = aws.appautoscaling.ScheduledAction("ecs",
///     name="ecs",
///     service_namespace=ecs.service_namespace,
///     resource_id=ecs.resource_id,
///     scalable_dimension=ecs.scalable_dimension,
///     schedule="at(2006-01-02T15:04:05)",
///     scalable_target_action={
///         "min_capacity": 1,
///         "max_capacity": 10,
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
///     var ecs = new Aws.AppAutoScaling.Target("ecs", new()
///     {
///         MaxCapacity = 4,
///         MinCapacity = 1,
///         ResourceId = "service/clusterName/serviceName",
///         ScalableDimension = "ecs:service:DesiredCount",
///         ServiceNamespace = "ecs",
///     });
///
///     var ecsScheduledAction = new Aws.AppAutoScaling.ScheduledAction("ecs", new()
///     {
///         Name = "ecs",
///         ServiceNamespace = ecs.ServiceNamespace,
///         ResourceId = ecs.ResourceId,
///         ScalableDimension = ecs.ScalableDimension,
///         Schedule = "at(2006-01-02T15:04:05)",
///         ScalableTargetAction = new Aws.AppAutoScaling.Inputs.ScheduledActionScalableTargetActionArgs
///         {
///             MinCapacity = 1,
///             MaxCapacity = 10,
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
/// 		ecs, err := appautoscaling.NewTarget(ctx, "ecs", &appautoscaling.TargetArgs{
/// 			MaxCapacity:       pulumi.Int(4),
/// 			MinCapacity:       pulumi.Int(1),
/// 			ResourceId:        pulumi.String("service/clusterName/serviceName"),
/// 			ScalableDimension: pulumi.String("ecs:service:DesiredCount"),
/// 			ServiceNamespace:  pulumi.String("ecs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appautoscaling.NewScheduledAction(ctx, "ecs", &appautoscaling.ScheduledActionArgs{
/// 			Name:              pulumi.String("ecs"),
/// 			ServiceNamespace:  ecs.ServiceNamespace,
/// 			ResourceId:        ecs.ResourceId,
/// 			ScalableDimension: ecs.ScalableDimension,
/// 			Schedule:          pulumi.String("at(2006-01-02T15:04:05)"),
/// 			ScalableTargetAction: &appautoscaling.ScheduledActionScalableTargetActionArgs{
/// 				MinCapacity: pulumi.Int(1),
/// 				MaxCapacity: pulumi.Int(10),
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
/// import com.pulumi.aws.appautoscaling.ScheduledAction;
/// import com.pulumi.aws.appautoscaling.ScheduledActionArgs;
/// import com.pulumi.aws.appautoscaling.inputs.ScheduledActionScalableTargetActionArgs;
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
///         var ecs = new Target("ecs", TargetArgs.builder()
///             .maxCapacity(4)
///             .minCapacity(1)
///             .resourceId("service/clusterName/serviceName")
///             .scalableDimension("ecs:service:DesiredCount")
///             .serviceNamespace("ecs")
///             .build());
///
///         var ecsScheduledAction = new ScheduledAction("ecsScheduledAction", ScheduledActionArgs.builder()
///             .name("ecs")
///             .serviceNamespace(ecs.serviceNamespace())
///             .resourceId(ecs.resourceId())
///             .scalableDimension(ecs.scalableDimension())
///             .schedule("at(2006-01-02T15:04:05)")
///             .scalableTargetAction(ScheduledActionScalableTargetActionArgs.builder()
///                 .minCapacity(1)
///                 .maxCapacity(10)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ecs:
///     type: aws:appautoscaling:Target
///     properties:
///       maxCapacity: 4
///       minCapacity: 1
///       resourceId: service/clusterName/serviceName
///       scalableDimension: ecs:service:DesiredCount
///       serviceNamespace: ecs
///   ecsScheduledAction:
///     type: aws:appautoscaling:ScheduledAction
///     name: ecs
///     properties:
///       name: ecs
///       serviceNamespace: ${ecs.serviceNamespace}
///       resourceId: ${ecs.resourceId}
///       scalableDimension: ${ecs.scalableDimension}
///       schedule: at(2006-01-02T15:04:05)
///       scalableTargetAction:
///         minCapacity: 1
///         maxCapacity: 10
/// ```
class ScheduledAction extends pulumi.CustomResource {
  /// ARN of the scheduled action.
  late final pulumi.Output<String> arn;

  /// Date and time for the scheduled action to end in RFC 3339 format. The timezone is not affected by the setting of `timezone`.
  late final pulumi.Output<String?> endTime;

  /// Name of the scheduled action.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the resource associated with the scheduled action. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html)
  late final pulumi.Output<String> resourceId;

  /// Scalable dimension. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html) Example: ecs:service:DesiredCount
  late final pulumi.Output<String> scalableDimension;

  /// New minimum and maximum capacity. You can set both values or just one. See below
  late final pulumi.Output<ScheduledActionScalableTargetAction>
  scalableTargetAction;

  /// Schedule for this action. The following formats are supported: At expressions - at(yyyy-mm-ddThh:mm:ss), Rate expressions - rate(valueunit), Cron expressions - cron(fields). Times for at expressions and cron expressions are evaluated using the time zone configured in `timezone`. Documentation can be found in the `Timezone` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html)
  late final pulumi.Output<String> schedule;

  /// Namespace of the AWS service. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html) Example: ecs
  late final pulumi.Output<String> serviceNamespace;

  /// Date and time for the scheduled action to start in RFC 3339 format. The timezone is not affected by the setting of `timezone`.
  late final pulumi.Output<String?> startTime;

  /// Time zone used when setting a scheduled action by using an at or cron expression. Does not affect timezone for `start_time` and `end_time`. Valid values are the [canonical names of the IANA time zones supported by Joda-Time](https://www.joda.org/joda-time/timezones.html), such as `Etc/GMT+9` or `Pacific/Tahiti`. Default is `UTC`.
  late final pulumi.Output<String?> timezone;

  /// Creates a new [ScheduledAction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledAction]. {@macro pulumi_appautoscaling_scheduled_action_scheduled_action_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledAction(
    String name, {
    ScheduledActionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appautoscaling/scheduledAction:ScheduledAction',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    endTime = registerOutput<String?>('endTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    scalableDimension = registerOutput<String>('scalableDimension');
    scalableTargetAction = registerOutput<ScheduledActionScalableTargetAction>(
      'scalableTargetAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ScheduledActionScalableTargetAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    schedule = registerOutput<String>('schedule');
    serviceNamespace = registerOutput<String>('serviceNamespace');
    startTime = registerOutput<String?>('startTime');
    timezone = registerOutput<String?>('timezone');
  }

  /// Gets an existing [ScheduledAction] resource's state with the given [name] and [id].
  static ScheduledAction get(
    String name,
    pulumi.Input<String> id, {
    ScheduledActionState? state,
  }) {
    return ScheduledAction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScheduledAction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appautoscaling/scheduledAction:ScheduledAction',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    endTime = registerOutput<String?>('endTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    scalableDimension = registerOutput<String>('scalableDimension');
    scalableTargetAction = registerOutput<ScheduledActionScalableTargetAction>(
      'scalableTargetAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ScheduledActionScalableTargetAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    schedule = registerOutput<String>('schedule');
    serviceNamespace = registerOutput<String>('serviceNamespace');
    startTime = registerOutput<String?>('startTime');
    timezone = registerOutput<String?>('timezone');
  }
}
