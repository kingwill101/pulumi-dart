import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_ipam_pool_args.dart';

/// Provides a Vpc Ipam Ipam Pool resource.
///
/// IP Address Management Pool.
///
/// For information about Vpc Ipam Ipam Pool and how to use it, see [What is Ipam Pool](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/CreateIpamPool).
///
/// > **NOTE:** Available since v1.234.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultIpam = new alicloud.vpc.IpamIpam("defaultIpam", {operatingRegionLists: ["cn-hangzhou"]});
/// const parentIpamPool = new alicloud.vpc.IpamIpamPool("parentIpamPool", {
///     ipamScopeId: defaultIpam.privateDefaultScopeId,
///     ipamPoolName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
///     poolRegionId: defaultIpam.regionId,
/// });
/// const _default = new alicloud.vpc.IpamIpamPool("default", {
///     ipamScopeId: defaultIpam.privateDefaultScopeId,
///     poolRegionId: parentIpamPool.poolRegionId,
///     ipamPoolName: name,
///     sourceIpamPoolId: parentIpamPool.id,
///     ipVersion: "IPv4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_ipam = alicloud.vpc.IpamIpam("defaultIpam", operating_region_lists=["cn-hangzhou"])
/// parent_ipam_pool = alicloud.vpc.IpamIpamPool("parentIpamPool",
///     ipam_scope_id=default_ipam.private_default_scope_id,
///     ipam_pool_name=std.format(input="%s1",
///         args=[name]).result,
///     pool_region_id=default_ipam.region_id)
/// default = alicloud.vpc.IpamIpamPool("default",
///     ipam_scope_id=default_ipam.private_default_scope_id,
///     pool_region_id=parent_ipam_pool.pool_region_id,
///     ipam_pool_name=name,
///     source_ipam_pool_id=parent_ipam_pool.id,
///     ip_version="IPv4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
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
///     var parentIpamPool = new AliCloud.Vpc.IpamIpamPool("parentIpamPool", new()
///     {
///         IpamScopeId = defaultIpam.PrivateDefaultScopeId,
///         IpamPoolName = Std.Format.Invoke(new()
///         {
///             Input = "%s1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         PoolRegionId = defaultIpam.RegionId,
///     });
///
///     var @default = new AliCloud.Vpc.IpamIpamPool("default", new()
///     {
///         IpamScopeId = defaultIpam.PrivateDefaultScopeId,
///         PoolRegionId = parentIpamPool.PoolRegionId,
///         IpamPoolName = name,
///         SourceIpamPoolId = parentIpamPool.Id,
///         IpVersion = "IPv4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		parentIpamPool, err := vpc.NewIpamIpamPool(ctx, "parentIpamPool", &vpc.IpamIpamPoolArgs{
/// 			IpamScopeId:  defaultIpam.PrivateDefaultScopeId,
/// 			IpamPoolName: pulumi.String(invokeFormat.Result),
/// 			PoolRegionId: defaultIpam.RegionId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewIpamIpamPool(ctx, "default", &vpc.IpamIpamPoolArgs{
/// 			IpamScopeId:      defaultIpam.PrivateDefaultScopeId,
/// 			PoolRegionId:     parentIpamPool.PoolRegionId,
/// 			IpamPoolName:     pulumi.String(name),
/// 			SourceIpamPoolId: parentIpamPool.ID(),
/// 			IpVersion:        pulumi.String("IPv4"),
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         var parentIpamPool = new IpamIpamPool("parentIpamPool", IpamIpamPoolArgs.builder()
///             .ipamScopeId(defaultIpam.privateDefaultScopeId())
///             .ipamPoolName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .poolRegionId(defaultIpam.regionId())
///             .build());
///
///         var default_ = new IpamIpamPool("default", IpamIpamPoolArgs.builder()
///             .ipamScopeId(defaultIpam.privateDefaultScopeId())
///             .poolRegionId(parentIpamPool.poolRegionId())
///             .ipamPoolName(name)
///             .sourceIpamPoolId(parentIpamPool.id())
///             .ipVersion("IPv4")
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
///   parentIpamPool:
///     type: alicloud:vpc:IpamIpamPool
///     properties:
///       ipamScopeId: ${defaultIpam.privateDefaultScopeId}
///       ipamPoolName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1'
///             args:
///               - ${name}
///           return: result
///       poolRegionId: ${defaultIpam.regionId}
///   default:
///     type: alicloud:vpc:IpamIpamPool
///     properties:
///       ipamScopeId: ${defaultIpam.privateDefaultScopeId}
///       poolRegionId: ${parentIpamPool.poolRegionId}
///       ipamPoolName: ${name}
///       sourceIpamPoolId: ${parentIpamPool.id}
///       ipVersion: IPv4
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Vpc Ipam Ipam Pool can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipamIpamPool:IpamIpamPool example <id>
/// ```
class IpamIpamPool extends pulumi.CustomResource {
  /// The default network mask assigned by the IPAM address pool.
  /// IPv4 network mask value range: **0 to 32** bits.
  late final pulumi.Output<int?> allocationDefaultCidrMask;
  /// The maximum network mask assigned by the IPAM address pool.
  /// IPv4 network mask value range: **0 to 32** bits.
  late final pulumi.Output<int> allocationMaxCidrMask;
  /// The minimum Network mask assigned by the IPAM address pool.
  /// IPv4 network mask value range: **0 to 32** bits.
  late final pulumi.Output<int?> allocationMinCidrMask;
  /// Whether the automatic import function is enabled for the address pool.
  late final pulumi.Output<bool?> autoImport;
  /// Whether to clear the default network mask of the IPAM address pool. Value:
  late final pulumi.Output<bool?> clearAllocationDefaultCidrMask;
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// The IP protocol version. Currently, only `IPv4` is supported * *.
  late final pulumi.Output<String> ipVersion;
  /// The description of the IPAM address pool.
  /// It must be 2 to 256 characters in length and must start with an English letter or a Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  late final pulumi.Output<String?> ipamPoolDescription;
  /// The name of the resource.
  late final pulumi.Output<String> ipamPoolName;
  /// Ipam scope id.
  late final pulumi.Output<String> ipamScopeId;
  /// The effective region of the IPAM address pool.
  late final pulumi.Output<String?> poolRegionId;
  /// The ID of the IPAM hosting region.
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The instance ID of the source IPAM address pool.
  ///
  /// > **NOTE:**  If this parameter is not entered, the created address pool is the parent address pool.
  late final pulumi.Output<String> sourceIpamPoolId;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [IpamIpamPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpamIpamPool]. {@macro pulumi_vpc_ipam_ipam_pool_ipam_ipam_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpamIpamPool(
    String name, {
    IpamIpamPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipamIpamPool:IpamIpamPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationDefaultCidrMask = registerOutput<int?>('allocationDefaultCidrMask');
    this.allocationMaxCidrMask = registerOutput<int>('allocationMaxCidrMask');
    this.allocationMinCidrMask = registerOutput<int?>('allocationMinCidrMask');
    this.autoImport = registerOutput<bool?>('autoImport');
    this.clearAllocationDefaultCidrMask = registerOutput<bool?>('clearAllocationDefaultCidrMask');
    this.createTime = registerOutput<String>('createTime');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.ipamPoolDescription = registerOutput<String?>('ipamPoolDescription');
    this.ipamPoolName = registerOutput<String>('ipamPoolName');
    this.ipamScopeId = registerOutput<String>('ipamScopeId');
    this.poolRegionId = registerOutput<String?>('poolRegionId');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.sourceIpamPoolId = registerOutput<String>('sourceIpamPoolId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
