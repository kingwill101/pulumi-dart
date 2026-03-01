import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ip_address_pool_args.dart';
import 'public_ip_address_pool_state.dart';

/// Provides a VPC Public Ip Address Pool resource.
///
///
///
/// For information about VPC Public Ip Address Pool and how to use it, see [What is Public Ip Address Pool](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/createpublicipaddresspool).
///
/// > **NOTE:** Available since v1.186.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultPublicIpAddressPool = new alicloud.vpc.PublicIpAddressPool("default", {
///     description: name,
///     publicIpAddressPoolName: name,
///     isp: "BGP",
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_public_ip_address_pool = alicloud.vpc.PublicIpAddressPool("default",
///     description=name,
///     public_ip_address_pool_name=name,
///     isp="BGP",
///     resource_group_id=default.ids[0])
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultPublicIpAddressPool = new AliCloud.Vpc.PublicIpAddressPool("default", new()
///     {
///         Description = name,
///         PublicIpAddressPoolName = name,
///         Isp = "BGP",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewPublicIpAddressPool(ctx, "default", &vpc.PublicIpAddressPoolArgs{
/// 			Description:             pulumi.String(name),
/// 			PublicIpAddressPoolName: pulumi.String(name),
/// 			Isp:                     pulumi.String("BGP"),
/// 			ResourceGroupId:         pulumi.String(_default.Ids[0]),
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
/// import com.pulumi.alicloud.vpc.PublicIpAddressPool;
/// import com.pulumi.alicloud.vpc.PublicIpAddressPoolArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var defaultPublicIpAddressPool = new PublicIpAddressPool("defaultPublicIpAddressPool", PublicIpAddressPoolArgs.builder()
///             .description(name)
///             .publicIpAddressPoolName(name)
///             .isp("BGP")
///             .resourceGroupId(default_.ids()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultPublicIpAddressPool:
///     type: alicloud:vpc:PublicIpAddressPool
///     name: default
///     properties:
///       description: ${name}
///       publicIpAddressPoolName: ${name}
///       isp: BGP
///       resourceGroupId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Public Ip Address Pool can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/publicIpAddressPool:PublicIpAddressPool example <id>
/// ```
class PublicIpAddressPool extends pulumi.CustomResource {
  /// The name of the VPC Public IP address pool.
  late final pulumi.Output<String> bizType;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Description.
  late final pulumi.Output<String?> description;
  /// Whether there is a free IP address.
  late final pulumi.Output<bool> ipAddressRemaining;
  /// The Internet service provider. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`, `BGP_FinanceCloud`. Default Value: `BGP`.
  late final pulumi.Output<String> isp;
  late final pulumi.Output<String> publicIpAddressPoolId;
  /// The name of the VPC Public IP address pool.
  late final pulumi.Output<String?> publicIpAddressPoolName;
  /// The resource group ID of the VPC Public IP address pool.
  late final pulumi.Output<String> resourceGroupId;
  /// Security protection level.
  /// - If the configuration is empty, the default value is DDoS protection (Basic edition).
  /// - `AntiDDoS_Enhanced` indicates DDoS protection (enhanced version).
  late final pulumi.Output<List<String>?> securityProtectionTypes;
  /// The status of the VPC Public IP address pool.
  late final pulumi.Output<String> status;
  /// The tags of PrefixList.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The total number of public IP address pools.
  late final pulumi.Output<int> totalIpNum;
  /// The number of used IP addresses in the public IP address pool.
  late final pulumi.Output<int> usedIpNum;

  /// Creates a new [PublicIpAddressPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicIpAddressPool]. {@macro pulumi_vpc_public_ip_address_pool_public_ip_address_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicIpAddressPool(
    String name, {
    PublicIpAddressPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/publicIpAddressPool:PublicIpAddressPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bizType = registerOutput<String>('bizType');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.ipAddressRemaining = registerOutput<bool>('ipAddressRemaining');
    this.isp = registerOutput<String>('isp');
    this.publicIpAddressPoolId = registerOutput<String>('publicIpAddressPoolId');
    this.publicIpAddressPoolName = registerOutput<String?>('publicIpAddressPoolName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityProtectionTypes = registerOutput<List<String>?>('securityProtectionTypes');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.totalIpNum = registerOutput<int>('totalIpNum');
    this.usedIpNum = registerOutput<int>('usedIpNum');
  }

  /// Gets an existing [PublicIpAddressPool] resource's state with the given [name] and [id].
  static PublicIpAddressPool get(
    String name,
    pulumi.Input<String> id, {
    PublicIpAddressPoolState? state,
  }) {
    return PublicIpAddressPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PublicIpAddressPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/publicIpAddressPool:PublicIpAddressPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bizType = registerOutput<String>('bizType');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.ipAddressRemaining = registerOutput<bool>('ipAddressRemaining');
    this.isp = registerOutput<String>('isp');
    this.publicIpAddressPoolId = registerOutput<String>('publicIpAddressPoolId');
    this.publicIpAddressPoolName = registerOutput<String?>('publicIpAddressPoolName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityProtectionTypes = registerOutput<List<String>?>('securityProtectionTypes');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.totalIpNum = registerOutput<int>('totalIpNum');
    this.usedIpNum = registerOutput<int>('usedIpNum');
  }
}
