import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_ipam_pool_cidr_args.dart';
import 'ipam_ipam_pool_cidr_state.dart';

/// Provides a Vpc Ipam Ipam Pool Cidr resource.
///
/// Ipam address pool preset CIDR.
///
/// For information about Vpc Ipam Ipam Pool Cidr and how to use it, see [What is Ipam Pool Cidr](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/AddIpamPoolCidr).
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
/// const defaultIpam = new alicloud.vpc.IpamIpam("defaultIpam", {operatingRegionLists: ["cn-hangzhou"]});
/// const defaultIpamPool = new alicloud.vpc.IpamIpamPool("defaultIpamPool", {
///     ipamScopeId: defaultIpam.privateDefaultScopeId,
///     poolRegionId: defaultIpam.regionId,
///     ipVersion: "IPv4",
/// });
/// const _default = new alicloud.vpc.IpamIpamPoolCidr("default", {
///     cidr: "10.0.0.0/8",
///     ipamPoolId: defaultIpamPool.id,
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
/// default_ipam = alicloud.vpc.IpamIpam("defaultIpam", operating_region_lists=["cn-hangzhou"])
/// default_ipam_pool = alicloud.vpc.IpamIpamPool("defaultIpamPool",
///     ipam_scope_id=default_ipam.private_default_scope_id,
///     pool_region_id=default_ipam.region_id,
///     ip_version="IPv4")
/// default = alicloud.vpc.IpamIpamPoolCidr("default",
///     cidr="10.0.0.0/8",
///     ipam_pool_id=default_ipam_pool.id)
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
///     var defaultIpam = new AliCloud.Vpc.IpamIpam("defaultIpam", new()
///     {
///         OperatingRegionLists = new[]
///         {
///             "cn-hangzhou",
///         },
///     });
///
///     var defaultIpamPool = new AliCloud.Vpc.IpamIpamPool("defaultIpamPool", new()
///     {
///         IpamScopeId = defaultIpam.PrivateDefaultScopeId,
///         PoolRegionId = defaultIpam.RegionId,
///         IpVersion = "IPv4",
///     });
///
///     var @default = new AliCloud.Vpc.IpamIpamPoolCidr("default", new()
///     {
///         Cidr = "10.0.0.0/8",
///         IpamPoolId = defaultIpamPool.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		defaultIpam, err := vpc.NewIpamIpam(ctx, "defaultIpam", &vpc.IpamIpamArgs{
/// 			OperatingRegionLists: pulumi.StringArray{
/// 				pulumi.String("cn-hangzhou"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpamPool, err := vpc.NewIpamIpamPool(ctx, "defaultIpamPool", &vpc.IpamIpamPoolArgs{
/// 			IpamScopeId:  defaultIpam.PrivateDefaultScopeId,
/// 			PoolRegionId: defaultIpam.RegionId,
/// 			IpVersion:    pulumi.String("IPv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewIpamIpamPoolCidr(ctx, "default", &vpc.IpamIpamPoolCidrArgs{
/// 			Cidr:       pulumi.String("10.0.0.0/8"),
/// 			IpamPoolId: defaultIpamPool.ID(),
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
/// import com.pulumi.alicloud.vpc.IpamIpam;
/// import com.pulumi.alicloud.vpc.IpamIpamArgs;
/// import com.pulumi.alicloud.vpc.IpamIpamPool;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolArgs;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolCidr;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolCidrArgs;
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
///         var defaultIpam = new IpamIpam("defaultIpam", IpamIpamArgs.builder()
///             .operatingRegionLists("cn-hangzhou")
///             .build());
///
///         var defaultIpamPool = new IpamIpamPool("defaultIpamPool", IpamIpamPoolArgs.builder()
///             .ipamScopeId(defaultIpam.privateDefaultScopeId())
///             .poolRegionId(defaultIpam.regionId())
///             .ipVersion("IPv4")
///             .build());
///
///         var default_ = new IpamIpamPoolCidr("default", IpamIpamPoolCidrArgs.builder()
///             .cidr("10.0.0.0/8")
///             .ipamPoolId(defaultIpamPool.id())
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
///   defaultIpam:
///     type: alicloud:vpc:IpamIpam
///     properties:
///       operatingRegionLists:
///         - cn-hangzhou
///   defaultIpamPool:
///     type: alicloud:vpc:IpamIpamPool
///     properties:
///       ipamScopeId: ${defaultIpam.privateDefaultScopeId}
///       poolRegionId: ${defaultIpam.regionId}
///       ipVersion: IPv4
///   default:
///     type: alicloud:vpc:IpamIpamPoolCidr
///     properties:
///       cidr: 10.0.0.0/8
///       ipamPoolId: ${defaultIpamPool.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Vpc Ipam Ipam Pool Cidr can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipamIpamPoolCidr:IpamIpamPoolCidr example <ipam_pool_id>:<cidr>
/// ```
class IpamIpamPoolCidr extends pulumi.CustomResource {
  /// The CIDR address segment to be preset.
  ///
  /// &gt; **NOTE:**  currently, only IPv4 address segments are supported.
  late final pulumi.Output<String> cidr;

  /// The ID of the IPAM pool instance.
  late final pulumi.Output<String> ipamPoolId;

  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [IpamIpamPoolCidr].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpamIpamPoolCidr]. {@macro pulumi_vpc_ipam_ipam_pool_cidr_ipam_ipam_pool_cidr_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpamIpamPoolCidr(
    String name, {
    IpamIpamPoolCidrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/ipamIpamPoolCidr:IpamIpamPoolCidr',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cidr = registerOutput<String>('cidr');
    ipamPoolId = registerOutput<String>('ipamPoolId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [IpamIpamPoolCidr] resource's state with the given [name] and [id].
  static IpamIpamPoolCidr get(
    String name,
    pulumi.Input<String> id, {
    IpamIpamPoolCidrState? state,
  }) {
    return IpamIpamPoolCidr._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpamIpamPoolCidr._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/ipamIpamPoolCidr:IpamIpamPoolCidr',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cidr = registerOutput<String>('cidr');
    ipamPoolId = registerOutput<String>('ipamPoolId');
    status = registerOutput<String>('status');
  }
}
