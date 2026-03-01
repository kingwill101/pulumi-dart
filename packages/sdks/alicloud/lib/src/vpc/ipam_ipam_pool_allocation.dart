import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_ipam_pool_allocation_args.dart';
import 'ipam_ipam_pool_allocation_state.dart';

/// Provides a Vpc Ipam Ipam Pool Allocation resource.
///
/// Allocates or reserves a CIDR from an IPAM address pool.
///
/// For information about Vpc Ipam Ipam Pool Allocation and how to use it, see [What is Ipam Pool Allocation](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/CreateIpamPoolAllocation).
///
/// > **NOTE:** Available since v1.238.0.
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
///     poolRegionId: "cn-hangzhou",
/// });
/// const defaultIpamPoolCidr = new alicloud.vpc.IpamIpamPoolCidr("defaultIpamPoolCidr", {
///     cidr: "10.0.0.0/8",
///     ipamPoolId: defaultIpamPool.id,
/// });
/// const _default = new alicloud.vpc.IpamIpamPoolAllocation("default", {
///     ipamPoolAllocationDescription: "init alloc desc",
///     ipamPoolAllocationName: name,
///     cidr: "10.0.0.0/20",
///     ipamPoolId: defaultIpamPoolCidr.ipamPoolId,
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
///     pool_region_id="cn-hangzhou")
/// default_ipam_pool_cidr = alicloud.vpc.IpamIpamPoolCidr("defaultIpamPoolCidr",
///     cidr="10.0.0.0/8",
///     ipam_pool_id=default_ipam_pool.id)
/// default = alicloud.vpc.IpamIpamPoolAllocation("default",
///     ipam_pool_allocation_description="init alloc desc",
///     ipam_pool_allocation_name=name,
///     cidr="10.0.0.0/20",
///     ipam_pool_id=default_ipam_pool_cidr.ipam_pool_id)
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
///         PoolRegionId = "cn-hangzhou",
///     });
///
///     var defaultIpamPoolCidr = new AliCloud.Vpc.IpamIpamPoolCidr("defaultIpamPoolCidr", new()
///     {
///         Cidr = "10.0.0.0/8",
///         IpamPoolId = defaultIpamPool.Id,
///     });
///
///     var @default = new AliCloud.Vpc.IpamIpamPoolAllocation("default", new()
///     {
///         IpamPoolAllocationDescription = "init alloc desc",
///         IpamPoolAllocationName = name,
///         Cidr = "10.0.0.0/20",
///         IpamPoolId = defaultIpamPoolCidr.IpamPoolId,
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
/// 			PoolRegionId: pulumi.String("cn-hangzhou"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpamPoolCidr, err := vpc.NewIpamIpamPoolCidr(ctx, "defaultIpamPoolCidr", &vpc.IpamIpamPoolCidrArgs{
/// 			Cidr:       pulumi.String("10.0.0.0/8"),
/// 			IpamPoolId: defaultIpamPool.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewIpamIpamPoolAllocation(ctx, "default", &vpc.IpamIpamPoolAllocationArgs{
/// 			IpamPoolAllocationDescription: pulumi.String("init alloc desc"),
/// 			IpamPoolAllocationName:        pulumi.String(name),
/// 			Cidr:                          pulumi.String("10.0.0.0/20"),
/// 			IpamPoolId:                    defaultIpamPoolCidr.IpamPoolId,
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
/// import com.pulumi.alicloud.vpc.IpamIpamPoolAllocation;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolAllocationArgs;
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
///             .poolRegionId("cn-hangzhou")
///             .build());
///
///         var defaultIpamPoolCidr = new IpamIpamPoolCidr("defaultIpamPoolCidr", IpamIpamPoolCidrArgs.builder()
///             .cidr("10.0.0.0/8")
///             .ipamPoolId(defaultIpamPool.id())
///             .build());
///
///         var default_ = new IpamIpamPoolAllocation("default", IpamIpamPoolAllocationArgs.builder()
///             .ipamPoolAllocationDescription("init alloc desc")
///             .ipamPoolAllocationName(name)
///             .cidr("10.0.0.0/20")
///             .ipamPoolId(defaultIpamPoolCidr.ipamPoolId())
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
///       poolRegionId: cn-hangzhou
///   defaultIpamPoolCidr:
///     type: alicloud:vpc:IpamIpamPoolCidr
///     properties:
///       cidr: 10.0.0.0/8
///       ipamPoolId: ${defaultIpamPool.id}
///   default:
///     type: alicloud:vpc:IpamIpamPoolAllocation
///     properties:
///       ipamPoolAllocationDescription: init alloc desc
///       ipamPoolAllocationName: ${name}
///       cidr: 10.0.0.0/20
///       ipamPoolId: ${defaultIpamPoolCidr.ipamPoolId}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Vpc Ipam Ipam Pool Allocation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipamIpamPoolAllocation:IpamIpamPoolAllocation example <id>
/// ```
class IpamIpamPoolAllocation extends pulumi.CustomResource {
  /// The allocated address segment.
  late final pulumi.Output<String> cidr;
  /// Create a custom reserved network segment from The IPAM address pool by entering a mask.
  ///
  /// > **NOTE:**  Enter at least one of `Cidr` or **CidrMask.
  late final pulumi.Output<int?> cidrMask;
  /// Instance creation time.
  late final pulumi.Output<String> createTime;
  /// The description of the ipam pool alloctaion.
  /// It must be 1 to 256 characters in length and must start with an English letter or Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  late final pulumi.Output<String?> ipamPoolAllocationDescription;
  /// The name of the ipam pool allocation.
  /// It must be 1 to 128 characters in length and cannot start with 'http:// 'or 'https.
  late final pulumi.Output<String?> ipamPoolAllocationName;
  /// The ID of the IPAM Pool.
  late final pulumi.Output<String> ipamPoolId;
  /// When the IPAM Pool to which CIDR is allocated has the region attribute, this attribute is the IPAM Pool region.
  /// When the IPAM Pool to which CIDR is allocated does not have the region attribute, this attribute is the IPAM region.
  late final pulumi.Output<String> regionId;
  /// The status of the instance. Value:
  late final pulumi.Output<String> status;

  /// Creates a new [IpamIpamPoolAllocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpamIpamPoolAllocation]. {@macro pulumi_vpc_ipam_ipam_pool_allocation_ipam_ipam_pool_allocation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpamIpamPoolAllocation(
    String name, {
    IpamIpamPoolAllocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipamIpamPoolAllocation:IpamIpamPoolAllocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidr = registerOutput<String>('cidr');
    this.cidrMask = registerOutput<int?>('cidrMask');
    this.createTime = registerOutput<String>('createTime');
    this.ipamPoolAllocationDescription = registerOutput<String?>('ipamPoolAllocationDescription');
    this.ipamPoolAllocationName = registerOutput<String?>('ipamPoolAllocationName');
    this.ipamPoolId = registerOutput<String>('ipamPoolId');
    this.regionId = registerOutput<String>('regionId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [IpamIpamPoolAllocation] resource's state with the given [name] and [id].
  static IpamIpamPoolAllocation get(
    String name,
    pulumi.Input<String> id, {
    IpamIpamPoolAllocationState? state,
  }) {
    return IpamIpamPoolAllocation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpamIpamPoolAllocation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipamIpamPoolAllocation:IpamIpamPoolAllocation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidr = registerOutput<String>('cidr');
    this.cidrMask = registerOutput<int?>('cidrMask');
    this.createTime = registerOutput<String>('createTime');
    this.ipamPoolAllocationDescription = registerOutput<String?>('ipamPoolAllocationDescription');
    this.ipamPoolAllocationName = registerOutput<String?>('ipamPoolAllocationName');
    this.ipamPoolId = registerOutput<String>('ipamPoolId');
    this.regionId = registerOutput<String>('regionId');
    this.status = registerOutput<String>('status');
  }
}
