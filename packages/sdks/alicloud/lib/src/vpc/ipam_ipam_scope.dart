import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_ipam_scope_args.dart';
import 'ipam_ipam_scope_state.dart';

/// Provides a Vpc Ipam Ipam Scope resource.
///
/// IP Address Management Scope.
///
/// For information about Vpc Ipam Ipam Scope and how to use it, see [What is Ipam Scope](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/CreateIpamScope).
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
/// const defaultIpam = new alicloud.vpc.IpamIpam("defaultIpam", {
///     operatingRegionLists: ["cn-hangzhou"],
///     ipamName: name,
/// });
/// const _default = new alicloud.vpc.IpamIpamScope("default", {
///     ipamScopeName: name,
///     ipamId: defaultIpam.id,
///     ipamScopeDescription: "This is a ipam scope.",
///     ipamScopeType: "private",
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
/// default_ipam = alicloud.vpc.IpamIpam("defaultIpam",
///     operating_region_lists=["cn-hangzhou"],
///     ipam_name=name)
/// default = alicloud.vpc.IpamIpamScope("default",
///     ipam_scope_name=name,
///     ipam_id=default_ipam.id,
///     ipam_scope_description="This is a ipam scope.",
///     ipam_scope_type="private")
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
///         IpamName = name,
///     });
///
///     var @default = new AliCloud.Vpc.IpamIpamScope("default", new()
///     {
///         IpamScopeName = name,
///         IpamId = defaultIpam.Id,
///         IpamScopeDescription = "This is a ipam scope.",
///         IpamScopeType = "private",
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
/// 			IpamName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewIpamIpamScope(ctx, "default", &vpc.IpamIpamScopeArgs{
/// 			IpamScopeName:        pulumi.String(name),
/// 			IpamId:               defaultIpam.ID(),
/// 			IpamScopeDescription: pulumi.String("This is a ipam scope."),
/// 			IpamScopeType:        pulumi.String("private"),
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
/// import com.pulumi.alicloud.vpc.IpamIpamScope;
/// import com.pulumi.alicloud.vpc.IpamIpamScopeArgs;
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
///             .ipamName(name)
///             .build());
///
///         var default_ = new IpamIpamScope("default", IpamIpamScopeArgs.builder()
///             .ipamScopeName(name)
///             .ipamId(defaultIpam.id())
///             .ipamScopeDescription("This is a ipam scope.")
///             .ipamScopeType("private")
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
///       ipamName: ${name}
///   default:
///     type: alicloud:vpc:IpamIpamScope
///     properties:
///       ipamScopeName: ${name}
///       ipamId: ${defaultIpam.id}
///       ipamScopeDescription: This is a ipam scope.
///       ipamScopeType: private
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Vpc Ipam Ipam Scope can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipamIpamScope:IpamIpamScope example <id>
/// ```
class IpamIpamScope extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// The id of the Ipam instance.
  late final pulumi.Output<String> ipamId;

  /// The description of the IPAM's scope of action.
  /// It must be 2 to 256 characters in length and must start with a lowercase letter, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  late final pulumi.Output<String?> ipamScopeDescription;

  /// The name of the resource.
  late final pulumi.Output<String?> ipamScopeName;

  /// IPAM scope of action type:
  /// `private`.
  ///
  ///
  /// &gt; **NOTE:**  Currently, only the role scope of the private network is supported.
  late final pulumi.Output<String?> ipamScopeType;

  /// The region ID of the resource.
  late final pulumi.Output<String> regionId;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [IpamIpamScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpamIpamScope]. {@macro pulumi_vpc_ipam_ipam_scope_ipam_ipam_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpamIpamScope(
    String name, {
    IpamIpamScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/ipamIpamScope:IpamIpamScope',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    ipamId = registerOutput<String>('ipamId');
    ipamScopeDescription = registerOutput<String?>('ipamScopeDescription');
    ipamScopeName = registerOutput<String?>('ipamScopeName');
    ipamScopeType = registerOutput<String?>('ipamScopeType');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [IpamIpamScope] resource's state with the given [name] and [id].
  static IpamIpamScope get(
    String name,
    pulumi.Input<String> id, {
    IpamIpamScopeState? state,
  }) {
    return IpamIpamScope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpamIpamScope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/ipamIpamScope:IpamIpamScope',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    ipamId = registerOutput<String>('ipamId');
    ipamScopeDescription = registerOutput<String?>('ipamScopeDescription');
    ipamScopeName = registerOutput<String?>('ipamScopeName');
    ipamScopeType = registerOutput<String?>('ipamScopeType');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
