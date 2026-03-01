import 'package:pulumi/pulumi.dart' as pulumi;
import 'er_args.dart';

/// Provides a Eflo Er resource.
///
///
///
/// For information about Eflo Er and how to use it, see [What is Er](https://next.api.alibabacloud.com/document/eflo/2022-05-30/CreateEr).
///
/// > **NOTE:** Available since v1.258.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultEr = new alicloud.eflo.Er("default", {
///     erName: "er-example-tf",
///     masterZoneId: "cn-hangzhou-a",
///     description: "example",
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
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_er = alicloud.eflo.Er("default",
///     er_name="er-example-tf",
///     master_zone_id="cn-hangzhou-a",
///     description="example")
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultEr = new AliCloud.Eflo.Er("default", new()
///     {
///         ErName = "er-example-tf",
///         MasterZoneId = "cn-hangzhou-a",
///         Description = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eflo"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eflo.NewEr(ctx, "default", &eflo.ErArgs{
/// 			ErName:       pulumi.String("er-example-tf"),
/// 			MasterZoneId: pulumi.String("cn-hangzhou-a"),
/// 			Description:  pulumi.String("example"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.eflo.Er;
/// import com.pulumi.alicloud.eflo.ErArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultEr = new Er("defaultEr", ErArgs.builder()
///             .erName("er-example-tf")
///             .masterZoneId("cn-hangzhou-a")
///             .description("example")
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
///   defaultEr:
///     type: alicloud:eflo:Er
///     name: default
///     properties:
///       erName: er-example-tf
///       masterZoneId: cn-hangzhou-a
///       description: example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Eflo Er can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/er:Er example <id>
/// ```
class Er extends pulumi.CustomResource {
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Description.
  late final pulumi.Output<String?> description;
  /// Lingjun HUB name
  late final pulumi.Output<String> erName;
  /// Primary zone
  late final pulumi.Output<String> masterZoneId;
  /// region information
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group instance.
  late final pulumi.Output<String> resourceGroupId;
  /// Status
  late final pulumi.Output<String> status;
  /// Label List
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Er].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Er]. {@macro pulumi_eflo_er_er_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Er(
    String name, {
    ErArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/er:Er',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.erName = registerOutput<String>('erName');
    this.masterZoneId = registerOutput<String>('masterZoneId');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
