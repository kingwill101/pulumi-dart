import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_ipam_resource_discovery_args.dart';
import 'ipam_ipam_resource_discovery_state.dart';

/// Provides a Vpc Ipam Ipam Resource Discovery resource.
///
/// IP Address Management Resource Discovery.
///
/// For information about Vpc Ipam Ipam Resource Discovery and how to use it, see [What is Ipam Resource Discovery](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/CreateIpamResourceDiscovery).
///
/// > **NOTE:** Available since v1.243.0.
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
/// const defaultIpamIpamResourceDiscovery = new alicloud.vpc.IpamIpamResourceDiscovery("default", {
///     operatingRegionLists: ["cn-hangzhou"],
///     ipamResourceDiscoveryDescription: "This is a custom IPAM resource discovery.",
///     ipamResourceDiscoveryName: "example_resource_discovery",
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
/// default_ipam_ipam_resource_discovery = alicloud.vpc.IpamIpamResourceDiscovery("default",
///     operating_region_lists=["cn-hangzhou"],
///     ipam_resource_discovery_description="This is a custom IPAM resource discovery.",
///     ipam_resource_discovery_name="example_resource_discovery")
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
///     var defaultIpamIpamResourceDiscovery = new AliCloud.Vpc.IpamIpamResourceDiscovery("default", new()
///     {
///         OperatingRegionLists = new[]
///         {
///             "cn-hangzhou",
///         },
///         IpamResourceDiscoveryDescription = "This is a custom IPAM resource discovery.",
///         IpamResourceDiscoveryName = "example_resource_discovery",
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
/// 		_, err = vpc.NewIpamIpamResourceDiscovery(ctx, "default", &vpc.IpamIpamResourceDiscoveryArgs{
/// 			OperatingRegionLists: pulumi.StringArray{
/// 				pulumi.String("cn-hangzhou"),
/// 			},
/// 			IpamResourceDiscoveryDescription: pulumi.String("This is a custom IPAM resource discovery."),
/// 			IpamResourceDiscoveryName:        pulumi.String("example_resource_discovery"),
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
/// import com.pulumi.alicloud.vpc.IpamIpamResourceDiscovery;
/// import com.pulumi.alicloud.vpc.IpamIpamResourceDiscoveryArgs;
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
///         var defaultIpamIpamResourceDiscovery = new IpamIpamResourceDiscovery("defaultIpamIpamResourceDiscovery", IpamIpamResourceDiscoveryArgs.builder()
///             .operatingRegionLists("cn-hangzhou")
///             .ipamResourceDiscoveryDescription("This is a custom IPAM resource discovery.")
///             .ipamResourceDiscoveryName("example_resource_discovery")
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
///   defaultIpamIpamResourceDiscovery:
///     type: alicloud:vpc:IpamIpamResourceDiscovery
///     name: default
///     properties:
///       operatingRegionLists:
///         - cn-hangzhou
///       ipamResourceDiscoveryDescription: This is a custom IPAM resource discovery.
///       ipamResourceDiscoveryName: example_resource_discovery
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
/// Vpc Ipam Ipam Resource Discovery can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipamIpamResourceDiscovery:IpamIpamResourceDiscovery example <id>
/// ```
class IpamIpamResourceDiscovery extends pulumi.CustomResource {
  /// The time when the resource discovery was created.
  late final pulumi.Output<String> createTime;
  /// The description of resource discovery.
  late final pulumi.Output<String?> ipamResourceDiscoveryDescription;
  /// The name of the resource
  late final pulumi.Output<String?> ipamResourceDiscoveryName;
  /// The list of operating regions for resource discovery.
  late final pulumi.Output<List<String>> operatingRegionLists;
  /// The region ID of the resource
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the resource discovery instance. Value:
  late final pulumi.Output<String> status;
  /// Label list information.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [IpamIpamResourceDiscovery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpamIpamResourceDiscovery]. {@macro pulumi_vpc_ipam_ipam_resource_discovery_ipam_ipam_resource_discovery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpamIpamResourceDiscovery(
    String name, {
    IpamIpamResourceDiscoveryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipamIpamResourceDiscovery:IpamIpamResourceDiscovery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.ipamResourceDiscoveryDescription = registerOutput<String?>('ipamResourceDiscoveryDescription');
    this.ipamResourceDiscoveryName = registerOutput<String?>('ipamResourceDiscoveryName');
    this.operatingRegionLists = registerOutput<List<String>>('operatingRegionLists');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [IpamIpamResourceDiscovery] resource's state with the given [name] and [id].
  static IpamIpamResourceDiscovery get(
    String name,
    pulumi.Input<String> id, {
    IpamIpamResourceDiscoveryState? state,
  }) {
    return IpamIpamResourceDiscovery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpamIpamResourceDiscovery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipamIpamResourceDiscovery:IpamIpamResourceDiscovery',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.ipamResourceDiscoveryDescription = registerOutput<String?>('ipamResourceDiscoveryDescription');
    this.ipamResourceDiscoveryName = registerOutput<String?>('ipamResourceDiscoveryName');
    this.operatingRegionLists = registerOutput<List<String>>('operatingRegionLists');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
