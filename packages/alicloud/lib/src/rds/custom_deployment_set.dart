import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_deployment_set_args.dart';

/// Provides a RDS Custom Deployment Set resource.
///
/// Custom Deployment set.
///
/// For information about RDS Custom Deployment Set and how to use it, see [What is Custom Deployment Set](https://www.alibabacloud.com/help/en/).
///
/// > **NOTE:** Available since v1.235.0.
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
/// const _default = new alicloud.rds.CustomDeploymentSet("default", {
///     onUnableToRedeployFailedInstance: "CancelMembershipAndStart",
///     customDeploymentSetName: name,
///     description: "2024:11:19 1010:1111:0808",
///     groupCount: 3,
///     strategy: "Availability",
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
/// default = alicloud.rds.CustomDeploymentSet("default",
///     on_unable_to_redeploy_failed_instance="CancelMembershipAndStart",
///     custom_deployment_set_name=name,
///     description="2024:11:19 1010:1111:0808",
///     group_count=3,
///     strategy="Availability")
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
///     var @default = new AliCloud.Rds.CustomDeploymentSet("default", new()
///     {
///         OnUnableToRedeployFailedInstance = "CancelMembershipAndStart",
///         CustomDeploymentSetName = name,
///         Description = "2024:11:19 1010:1111:0808",
///         GroupCount = 3,
///         Strategy = "Availability",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
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
/// 		_, err := rds.NewCustomDeploymentSet(ctx, "default", &rds.CustomDeploymentSetArgs{
/// 			OnUnableToRedeployFailedInstance: pulumi.String("CancelMembershipAndStart"),
/// 			CustomDeploymentSetName:          pulumi.String(name),
/// 			Description:                      pulumi.String("2024:11:19 1010:1111:0808"),
/// 			GroupCount:                       pulumi.Int(3),
/// 			Strategy:                         pulumi.String("Availability"),
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
/// import com.pulumi.alicloud.rds.CustomDeploymentSet;
/// import com.pulumi.alicloud.rds.CustomDeploymentSetArgs;
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
///         var default_ = new CustomDeploymentSet("default", CustomDeploymentSetArgs.builder()
///             .onUnableToRedeployFailedInstance("CancelMembershipAndStart")
///             .customDeploymentSetName(name)
///             .description("2024:11:19 1010:1111:0808")
///             .groupCount(3)
///             .strategy("Availability")
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
///     type: alicloud:rds:CustomDeploymentSet
///     properties:
///       onUnableToRedeployFailedInstance: CancelMembershipAndStart
///       customDeploymentSetName: ${name}
///       description: 2024:11:19 1010:1111:0808
///       groupCount: '3'
///       strategy: Availability
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS Custom Deployment Set can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/customDeploymentSet:CustomDeploymentSet example <id>
/// ```
class CustomDeploymentSet extends pulumi.CustomResource {
  /// The name of the resource
  late final pulumi.Output<String?> customDeploymentSetName;
  /// Deployment set description information. It must be 2 to 256 characters in length and cannot start with http:// or https.
  late final pulumi.Output<String?> description;
  /// Set the number of groups for the deployment set group high availability policy. Value range: 1~7.
  ///
  /// Default value: 3
  ///
  /// > **NOTE:**  This parameter takes effect only when 'Strategy = AvailabilityGroup.
  late final pulumi.Output<int?> groupCount;
  /// After the instance in the deployment set is down and migrated, there is no emergency solution for the scattered instance inventory. Value range:
  /// - `CancelMembershipAndStart`: removes the instance from the deployment set and starts the instance immediately after the instance is down and migrated.
  /// - `KeepStopped`: The deployment set of the instance is maintained. The instance remains in the stopped state.
  ///
  /// Default value: CancelMembershipAndStart.
  late final pulumi.Output<String?> onUnableToRedeployFailedInstance;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// Deployment strategy. Value range:
  /// - `Availability`: High Availability policy.
  /// - `AvailabilityGroup`: the high availability policy of the deployment set group.
  /// - `LowLatency`: Network low latency policy.
  ///
  /// Default value: Availability.
  late final pulumi.Output<String> strategy;

  /// Creates a new [CustomDeploymentSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDeploymentSet]. {@macro pulumi_rds_custom_deployment_set_custom_deployment_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDeploymentSet(
    String name, {
    CustomDeploymentSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/customDeploymentSet:CustomDeploymentSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customDeploymentSetName = registerOutput<String?>('customDeploymentSetName');
    this.description = registerOutput<String?>('description');
    this.groupCount = registerOutput<int?>('groupCount');
    this.onUnableToRedeployFailedInstance = registerOutput<String?>('onUnableToRedeployFailedInstance');
    this.status = registerOutput<String>('status');
    this.strategy = registerOutput<String>('strategy');
  }
}
