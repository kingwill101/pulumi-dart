import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpd_args.dart';
import 'vpd_state.dart';

/// Provides a Eflo Vpd resource.
///
/// Lingjun Network Segment.
///
/// For information about Eflo Vpd and how to use it, see [What is Vpd](https://next.api.alibabacloud.com/document/eflo/2022-05-30/CreateVpd).
///
/// &gt; **NOTE:** Available since v1.201.0.
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
/// const defaultVpd = new alicloud.eflo.Vpd("default", {
///     cidr: "10.0.0.0/8",
///     vpdName: name,
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
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
/// default_vpd = alicloud.eflo.Vpd("default",
///     cidr="10.0.0.0/8",
///     vpd_name=name,
///     resource_group_id=default.groups[0].id)
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
///     var defaultVpd = new AliCloud.Eflo.Vpd("default", new()
///     {
///         Cidr = "10.0.0.0/8",
///         VpdName = name,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eflo.NewVpd(ctx, "default", &eflo.VpdArgs{
/// 			Cidr:            pulumi.String("10.0.0.0/8"),
/// 			VpdName:         pulumi.String(name),
/// 			ResourceGroupId: pulumi.String(_default.Groups[0].Id),
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
/// import com.pulumi.alicloud.eflo.Vpd;
/// import com.pulumi.alicloud.eflo.VpdArgs;
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
///         var defaultVpd = new Vpd("defaultVpd", VpdArgs.builder()
///             .cidr("10.0.0.0/8")
///             .vpdName(name)
///             .resourceGroupId(default_.groups()[0].id())
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
///   defaultVpd:
///     type: alicloud:eflo:Vpd
///     name: default
///     properties:
///       cidr: 10.0.0.0/8
///       vpdName: ${name}
///       resourceGroupId: ${default.groups[0].id}
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
/// Eflo Vpd can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/vpd:Vpd example <id>
/// ```
class Vpd extends pulumi.CustomResource {
  /// The CIDR block of the VPD.
  late final pulumi.Output<String> cidr;
  /// The time when the activation code was created.
  late final pulumi.Output<String> createTime;
  /// The time when the O&M task was modified.
  late final pulumi.Output<String> gmtModified;
  /// (Available since v1.263.0) The region ID.
  late final pulumi.Output<String> regionId;
  /// The Resource group ID. **NOTE:** From version 1.263.0, `resource_group_id` can be modified.
  late final pulumi.Output<String> resourceGroupId;
  /// The additional CIDR block.
  late final pulumi.Output<List<String>?> secondaryCidrBlocks;
  /// The current state of the instance.
  late final pulumi.Output<String> status;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The name of the VPD instance.
  late final pulumi.Output<String> vpdName;

  /// Creates a new [Vpd].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vpd]. {@macro pulumi_eflo_vpd_vpd_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vpd(
    String name, {
    VpdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/vpd:Vpd',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidr = registerOutput<String>('cidr');
    createTime = registerOutput<String>('createTime');
    gmtModified = registerOutput<String>('gmtModified');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    secondaryCidrBlocks = registerOutput<List<String>?>('secondaryCidrBlocks');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpdName = registerOutput<String>('vpdName');
  }

  /// Gets an existing [Vpd] resource's state with the given [name] and [id].
  static Vpd get(
    String name,
    pulumi.Input<String> id, {
    VpdState? state,
  }) {
    return Vpd._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Vpd._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/vpd:Vpd',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidr = registerOutput<String>('cidr');
    createTime = registerOutput<String>('createTime');
    gmtModified = registerOutput<String>('gmtModified');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    secondaryCidrBlocks = registerOutput<List<String>?>('secondaryCidrBlocks');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpdName = registerOutput<String>('vpdName');
  }
}
