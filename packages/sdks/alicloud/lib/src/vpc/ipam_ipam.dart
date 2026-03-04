import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_ipam_args.dart';
import 'ipam_ipam_state.dart';

/// Provides a Vpc Ipam Ipam resource.
///
/// IP Address Management.
///
/// For information about Vpc Ipam Ipam and how to use it, see [What is Ipam](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/CreateIpam).
///
/// &gt; **NOTE:** Available since v1.234.0.
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
/// const defaultIpamIpam = new alicloud.vpc.IpamIpam("default", {
///     ipamDescription: "This is my first Ipam.",
///     ipamName: name,
///     operatingRegionLists: ["cn-hangzhou"],
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
/// default_ipam_ipam = alicloud.vpc.IpamIpam("default",
///     ipam_description="This is my first Ipam.",
///     ipam_name=name,
///     operating_region_lists=["cn-hangzhou"])
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
///     var defaultIpamIpam = new AliCloud.Vpc.IpamIpam("default", new()
///     {
///         IpamDescription = "This is my first Ipam.",
///         IpamName = name,
///         OperatingRegionLists = new[]
///         {
///             "cn-hangzhou",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_, err = vpc.NewIpamIpam(ctx, "default", &vpc.IpamIpamArgs{
/// 			IpamDescription: pulumi.String("This is my first Ipam."),
/// 			IpamName:        pulumi.String(name),
/// 			OperatingRegionLists: pulumi.StringArray{
/// 				pulumi.String("cn-hangzhou"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.IpamIpam;
/// import com.pulumi.alicloud.vpc.IpamIpamArgs;
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
///         var defaultIpamIpam = new IpamIpam("defaultIpamIpam", IpamIpamArgs.builder()
///             .ipamDescription("This is my first Ipam.")
///             .ipamName(name)
///             .operatingRegionLists("cn-hangzhou")
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
///   defaultIpamIpam:
///     type: alicloud:vpc:IpamIpam
///     name: default
///     properties:
///       ipamDescription: This is my first Ipam.
///       ipamName: ${name}
///       operatingRegionLists:
///         - cn-hangzhou
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
/// Vpc Ipam Ipam can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipamIpam:IpamIpam example <id>
/// ```
class IpamIpam extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// The description of IPAM.
  /// It must be 2 to 256 characters in length and must start with an uppercase letter or a Chinese character, but cannot start with 'http: // 'or 'https. If the description is not filled in, it is blank. The default value is blank.
  late final pulumi.Output<String?> ipamDescription;

  /// The name of the resource.
  late final pulumi.Output<String?> ipamName;

  /// List of IPAM effective regions.
  late final pulumi.Output<List<String>> operatingRegionLists;

  /// After an IPAM is created, the scope of the private network IPAM created by the system by default.
  late final pulumi.Output<String> privateDefaultScopeId;

  /// The region ID of the resource.
  late final pulumi.Output<String> regionId;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [IpamIpam].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpamIpam]. {@macro pulumi_vpc_ipam_ipam_ipam_ipam_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpamIpam(
    String name, {
    IpamIpamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/ipamIpam:IpamIpam',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    ipamDescription = registerOutput<String?>('ipamDescription');
    ipamName = registerOutput<String?>('ipamName');
    operatingRegionLists = registerOutput<List<String>>('operatingRegionLists');
    privateDefaultScopeId = registerOutput<String>('privateDefaultScopeId');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [IpamIpam] resource's state with the given [name] and [id].
  static IpamIpam get(
    String name,
    pulumi.Input<String> id, {
    IpamIpamState? state,
  }) {
    return IpamIpam._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpamIpam._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/ipamIpam:IpamIpam',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    ipamDescription = registerOutput<String?>('ipamDescription');
    ipamName = registerOutput<String?>('ipamName');
    operatingRegionLists = registerOutput<List<String>>('operatingRegionLists');
    privateDefaultScopeId = registerOutput<String>('privateDefaultScopeId');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
