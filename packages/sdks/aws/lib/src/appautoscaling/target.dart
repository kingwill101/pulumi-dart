import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_args.dart';
import 'target_state.dart';
import 'target_suspended_state.dart';

/// Provides an Application AutoScaling ScalableTarget resource. To manage policies which get attached to the target, see the `aws.appautoscaling.Policy` resource.
///
/// &gt; **NOTE:** Scalable targets created before 2023-03-20 may not have an assigned `arn`. These resource cannot use `tags` or participate in `default_tags`. To prevent `pulumi preview` showing differences that can never be reconciled, use the `lifecycle.ignore_changes` meta-argument. See the example below.
///
/// &gt; **NOTE:** The [Application Auto Scaling service automatically attempts to manage IAM Service-Linked Roles](https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles) when registering certain service namespaces for the first time. To manually manage this role, see the `aws.iam.ServiceLinkedRole` resource.
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
///     resourceId: `table/${example.name}`,
///     scalableDimension: "dynamodb:table:ReadCapacityUnits",
///     serviceNamespace: "dynamodb",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dynamodb_table_read_target = aws.appautoscaling.Target("dynamodb_table_read_target",
///     max_capacity=100,
///     min_capacity=5,
///     resource_id=f"table/{example['name']}",
///     scalable_dimension="dynamodb:table:ReadCapacityUnits",
///     service_namespace="dynamodb")
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
///         ResourceId = $"table/{example.Name}",
///         ScalableDimension = "dynamodb:table:ReadCapacityUnits",
///         ServiceNamespace = "dynamodb",
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
/// 		_, err := appautoscaling.NewTarget(ctx, "dynamodb_table_read_target", &appautoscaling.TargetArgs{
/// 			MaxCapacity:       pulumi.Int(100),
/// 			MinCapacity:       pulumi.Int(5),
/// 			ResourceId:        pulumi.Sprintf("table/%v", example.Name),
/// 			ScalableDimension: pulumi.String("dynamodb:table:ReadCapacityUnits"),
/// 			ServiceNamespace:  pulumi.String("dynamodb"),
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
///             .resourceId(String.format("table/%s", example.name()))
///             .scalableDimension("dynamodb:table:ReadCapacityUnits")
///             .serviceNamespace("dynamodb")
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
///       resourceId: table/${example.name}
///       scalableDimension: dynamodb:table:ReadCapacityUnits
///       serviceNamespace: dynamodb
/// ```
///
///
/// ### DynamoDB Index Autoscaling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dynamodbIndexReadTarget = new aws.appautoscaling.Target("dynamodb_index_read_target", {
///     maxCapacity: 100,
///     minCapacity: 5,
///     resourceId: `table/${example.name}/index/${indexName}`,
///     scalableDimension: "dynamodb:index:ReadCapacityUnits",
///     serviceNamespace: "dynamodb",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dynamodb_index_read_target = aws.appautoscaling.Target("dynamodb_index_read_target",
///     max_capacity=100,
///     min_capacity=5,
///     resource_id=f"table/{example['name']}/index/{index_name}",
///     scalable_dimension="dynamodb:index:ReadCapacityUnits",
///     service_namespace="dynamodb")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dynamodbIndexReadTarget = new Aws.AppAutoScaling.Target("dynamodb_index_read_target", new()
///     {
///         MaxCapacity = 100,
///         MinCapacity = 5,
///         ResourceId = $"table/{example.Name}/index/{indexName}",
///         ScalableDimension = "dynamodb:index:ReadCapacityUnits",
///         ServiceNamespace = "dynamodb",
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
/// 		_, err := appautoscaling.NewTarget(ctx, "dynamodb_index_read_target", &appautoscaling.TargetArgs{
/// 			MaxCapacity:       pulumi.Int(100),
/// 			MinCapacity:       pulumi.Int(5),
/// 			ResourceId:        pulumi.Sprintf("table/%v/index/%v", example.Name, indexName),
/// 			ScalableDimension: pulumi.String("dynamodb:index:ReadCapacityUnits"),
/// 			ServiceNamespace:  pulumi.String("dynamodb"),
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
///         var dynamodbIndexReadTarget = new Target("dynamodbIndexReadTarget", TargetArgs.builder()
///             .maxCapacity(100)
///             .minCapacity(5)
///             .resourceId(String.format("table/%s/index/%s", example.name(),indexName))
///             .scalableDimension("dynamodb:index:ReadCapacityUnits")
///             .serviceNamespace("dynamodb")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dynamodbIndexReadTarget:
///     type: aws:appautoscaling:Target
///     name: dynamodb_index_read_target
///     properties:
///       maxCapacity: 100
///       minCapacity: 5
///       resourceId: table/${example.name}/index/${indexName}
///       scalableDimension: dynamodb:index:ReadCapacityUnits
///       serviceNamespace: dynamodb
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
///     resourceId: `service/${example.name}/${exampleAwsEcsService.name}`,
///     scalableDimension: "ecs:service:DesiredCount",
///     serviceNamespace: "ecs",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecs_target = aws.appautoscaling.Target("ecs_target",
///     max_capacity=4,
///     min_capacity=1,
///     resource_id=f"service/{example['name']}/{example_aws_ecs_service['name']}",
///     scalable_dimension="ecs:service:DesiredCount",
///     service_namespace="ecs")
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
///         ResourceId = $"service/{example.Name}/{exampleAwsEcsService.Name}",
///         ScalableDimension = "ecs:service:DesiredCount",
///         ServiceNamespace = "ecs",
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
/// 		_, err := appautoscaling.NewTarget(ctx, "ecs_target", &appautoscaling.TargetArgs{
/// 			MaxCapacity:       pulumi.Int(4),
/// 			MinCapacity:       pulumi.Int(1),
/// 			ResourceId:        pulumi.Sprintf("service/%v/%v", example.Name, exampleAwsEcsService.Name),
/// 			ScalableDimension: pulumi.String("ecs:service:DesiredCount"),
/// 			ServiceNamespace:  pulumi.String("ecs"),
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
///             .resourceId(String.format("service/%s/%s", example.name(),exampleAwsEcsService.name()))
///             .scalableDimension("ecs:service:DesiredCount")
///             .serviceNamespace("ecs")
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
///       resourceId: service/${example.name}/${exampleAwsEcsService.name}
///       scalableDimension: ecs:service:DesiredCount
///       serviceNamespace: ecs
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
/// 		_, err := appautoscaling.NewTarget(ctx, "replicas", &appautoscaling.TargetArgs{
/// 			ServiceNamespace:  pulumi.String("rds"),
/// 			ScalableDimension: pulumi.String("rds:cluster:ReadReplicaCount"),
/// 			ResourceId:        pulumi.Sprintf("cluster:%v", example.Id),
/// 			MinCapacity:       pulumi.Int(1),
/// 			MaxCapacity:       pulumi.Int(15),
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
/// ```
///
///
/// ### Suppressing `tags_all` Differences For Older Resources
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ecsTarget = new aws.appautoscaling.Target("ecs_target", {
///     maxCapacity: 4,
///     minCapacity: 1,
///     resourceId: `service/${example.name}/${exampleAwsEcsService.name}`,
///     scalableDimension: "ecs:service:DesiredCount",
///     serviceNamespace: "ecs",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecs_target = aws.appautoscaling.Target("ecs_target",
///     max_capacity=4,
///     min_capacity=1,
///     resource_id=f"service/{example['name']}/{example_aws_ecs_service['name']}",
///     scalable_dimension="ecs:service:DesiredCount",
///     service_namespace="ecs")
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
///         ResourceId = $"service/{example.Name}/{exampleAwsEcsService.Name}",
///         ScalableDimension = "ecs:service:DesiredCount",
///         ServiceNamespace = "ecs",
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
/// 		_, err := appautoscaling.NewTarget(ctx, "ecs_target", &appautoscaling.TargetArgs{
/// 			MaxCapacity:       pulumi.Int(4),
/// 			MinCapacity:       pulumi.Int(1),
/// 			ResourceId:        pulumi.Sprintf("service/%v/%v", example.Name, exampleAwsEcsService.Name),
/// 			ScalableDimension: pulumi.String("ecs:service:DesiredCount"),
/// 			ServiceNamespace:  pulumi.String("ecs"),
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
///             .resourceId(String.format("service/%s/%s", example.name(),exampleAwsEcsService.name()))
///             .scalableDimension("ecs:service:DesiredCount")
///             .serviceNamespace("ecs")
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
///       resourceId: service/${example.name}/${exampleAwsEcsService.name}
///       scalableDimension: ecs:service:DesiredCount
///       serviceNamespace: ecs
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
/// 		_, err := appautoscaling.NewTarget(ctx, "msk_target", &appautoscaling.TargetArgs{
/// 			ServiceNamespace:  pulumi.String("kafka"),
/// 			ScalableDimension: pulumi.String("kafka:broker-storage:VolumeSize"),
/// 			ResourceId:        pulumi.Any(example.Arn),
/// 			MinCapacity:       pulumi.Int(1),
/// 			MaxCapacity:       pulumi.Int(8),
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Application AutoScaling Target using the `service-namespace` , `resource-id` and `scalable-dimension` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:appautoscaling/target:Target test-target service-namespace/resource-id/scalable-dimension
/// ```
class Target extends pulumi.CustomResource {
  /// The ARN of the scalable target.
  late final pulumi.Output<String> arn;

  /// Max capacity of the scalable target.
  late final pulumi.Output<int> maxCapacity;

  /// Min capacity of the scalable target.
  late final pulumi.Output<int> minCapacity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  late final pulumi.Output<String> resourceId;

  /// ARN of the IAM role that allows Application AutoScaling to modify your scalable target on your behalf. This defaults to an IAM Service-Linked Role for most services and custom IAM Roles are ignored by the API for those namespaces. See the [AWS Application Auto Scaling documentation](https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles) for more information about how this service interacts with IAM.
  late final pulumi.Output<String> roleArn;

  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  late final pulumi.Output<String> scalableDimension;

  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  late final pulumi.Output<String> serviceNamespace;

  /// Specifies whether the scaling activities for a scalable target are in a suspended state.
  late final pulumi.Output<TargetSuspendedState> suspendedState;

  /// Map of tags to assign to the scalable target. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Target].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Target]. {@macro pulumi_appautoscaling_target_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Target(String name, {TargetArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:appautoscaling/target:Target',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    maxCapacity = registerOutput<int>('maxCapacity');
    minCapacity = registerOutput<int>('minCapacity');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    roleArn = registerOutput<String>('roleArn');
    scalableDimension = registerOutput<String>('scalableDimension');
    serviceNamespace = registerOutput<String>('serviceNamespace');
    suspendedState = registerOutput<TargetSuspendedState>('suspendedState');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Target] resource's state with the given [name] and [id].
  static Target get(
    String name,
    pulumi.Input<String> id, {
    TargetState? state,
  }) {
    return Target._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Target._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appautoscaling/target:Target',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    maxCapacity = registerOutput<int>('maxCapacity');
    minCapacity = registerOutput<int>('minCapacity');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    roleArn = registerOutput<String>('roleArn');
    scalableDimension = registerOutput<String>('scalableDimension');
    serviceNamespace = registerOutput<String>('serviceNamespace');
    suspendedState = registerOutput<TargetSuspendedState>('suspendedState');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
