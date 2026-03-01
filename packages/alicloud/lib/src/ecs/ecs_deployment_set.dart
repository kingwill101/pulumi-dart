import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_deployment_set_args.dart';

/// Provides a ECS Deployment Set resource.
///
/// For information about ECS Deployment Set and how to use it, see [What is Deployment Set](https://www.alibabacloud.com/help/en/doc-detail/91269.htm).
///
/// > **NOTE:** Available since v1.140.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.ecs.EcsDeploymentSet("default", {
///     strategy: "Availability",
///     deploymentSetName: name,
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.ecs.EcsDeploymentSet("default",
///     strategy="Availability",
///     deployment_set_name=name,
///     description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Ecs.EcsDeploymentSet("default", new()
///     {
///         Strategy = "Availability",
///         DeploymentSetName = name,
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := ecs.NewEcsDeploymentSet(ctx, "default", &ecs.EcsDeploymentSetArgs{
/// 			Strategy:          pulumi.String("Availability"),
/// 			DeploymentSetName: pulumi.String(name),
/// 			Description:       pulumi.String(name),
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
/// import com.pulumi.alicloud.ecs.EcsDeploymentSet;
/// import com.pulumi.alicloud.ecs.EcsDeploymentSetArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new EcsDeploymentSet("default", EcsDeploymentSetArgs.builder()
///             .strategy("Availability")
///             .deploymentSetName(name)
///             .description(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:ecs:EcsDeploymentSet
///     properties:
///       strategy: Availability
///       deploymentSetName: ${name}
///       description: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Deployment Set can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsDeploymentSet:EcsDeploymentSet example <id>
/// ```
class EcsDeploymentSet extends pulumi.CustomResource {
  /// The name of the deployment set. The name must be `2` to `128` characters in length and can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> deploymentSetName;
  /// The description of the deployment set. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// Field `domain` has been deprecated from provider version 1.243.0.
  late final pulumi.Output<String> domain;
  /// Field `granularity` has been deprecated from provider version 1.243.0.
  late final pulumi.Output<String> granularity;
  /// The emergency solution to use in the situation where instances in the deployment set cannot be evenly distributed to different zones due to resource insufficiency after the instances failover. Valid values:
  /// - `CancelMembershipAndStart` - Removes the instances from the deployment set and starts the instances immediately after they are failed over.
  /// - `KeepStopped`- Leaves the instances in the Stopped state and starts them after resources are replenished.
  late final pulumi.Output<String?> onUnableToRedeployFailedInstance;
  /// The deployment strategy. Default value: `Availability`. Valid values: `Availability`, `AvailabilityGroup`, `LowLatency`.
  late final pulumi.Output<String> strategy;

  /// Creates a new [EcsDeploymentSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsDeploymentSet]. {@macro pulumi_ecs_ecs_deployment_set_ecs_deployment_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsDeploymentSet(
    String name, {
    EcsDeploymentSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsDeploymentSet:EcsDeploymentSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deploymentSetName = registerOutput<String?>('deploymentSetName');
    this.description = registerOutput<String?>('description');
    this.domain = registerOutput<String>('domain');
    this.granularity = registerOutput<String>('granularity');
    this.onUnableToRedeployFailedInstance = registerOutput<String?>('onUnableToRedeployFailedInstance');
    this.strategy = registerOutput<String>('strategy');
  }
}
