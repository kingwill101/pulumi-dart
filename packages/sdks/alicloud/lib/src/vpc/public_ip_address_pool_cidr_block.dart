import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ip_address_pool_cidr_block_args.dart';
import 'public_ip_address_pool_cidr_block_state.dart';

/// Provides a VPC Public Ip Address Pool Cidr Block resource.
/// > **NOTE:** Only users who have the required permissions can use the IP address pool feature of Elastic IP Address (EIP). To apply for the required permissions, [submit a ticket](https://smartservice.console.aliyun.com/service/create-ticket).
///
/// For information about VPC Public Ip Address Pool Cidr Block and how to use it, see [What is Public Ip Address Pool Cidr Block](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/429100).
///
/// > **NOTE:** Available since v1.189.0.
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
/// const defaultPublicIpAddressPoolCidrBlock = new alicloud.vpc.PublicIpAddressPoolCidrBlock("default", {
///     publicIpAddressPoolId: defaultPublicIpAddressPool.id,
///     cidrBlock: "47.118.126.0/25",
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
/// default_public_ip_address_pool_cidr_block = alicloud.vpc.PublicIpAddressPoolCidrBlock("default",
///     public_ip_address_pool_id=default_public_ip_address_pool.id,
///     cidr_block="47.118.126.0/25")
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
///     var defaultPublicIpAddressPoolCidrBlock = new AliCloud.Vpc.PublicIpAddressPoolCidrBlock("default", new()
///     {
///         PublicIpAddressPoolId = defaultPublicIpAddressPool.Id,
///         CidrBlock = "47.118.126.0/25",
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
/// 		defaultPublicIpAddressPool, err := vpc.NewPublicIpAddressPool(ctx, "default", &vpc.PublicIpAddressPoolArgs{
/// 			Description:             pulumi.String(name),
/// 			PublicIpAddressPoolName: pulumi.String(name),
/// 			Isp:                     pulumi.String("BGP"),
/// 			ResourceGroupId:         pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewPublicIpAddressPoolCidrBlock(ctx, "default", &vpc.PublicIpAddressPoolCidrBlockArgs{
/// 			PublicIpAddressPoolId: defaultPublicIpAddressPool.ID(),
/// 			CidrBlock:             pulumi.String("47.118.126.0/25"),
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
/// import com.pulumi.alicloud.vpc.PublicIpAddressPoolCidrBlock;
/// import com.pulumi.alicloud.vpc.PublicIpAddressPoolCidrBlockArgs;
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
///         var defaultPublicIpAddressPoolCidrBlock = new PublicIpAddressPoolCidrBlock("defaultPublicIpAddressPoolCidrBlock", PublicIpAddressPoolCidrBlockArgs.builder()
///             .publicIpAddressPoolId(defaultPublicIpAddressPool.id())
///             .cidrBlock("47.118.126.0/25")
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
///   defaultPublicIpAddressPoolCidrBlock:
///     type: alicloud:vpc:PublicIpAddressPoolCidrBlock
///     name: default
///     properties:
///       publicIpAddressPoolId: ${defaultPublicIpAddressPool.id}
///       cidrBlock: 47.118.126.0/25
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
/// VPC Public Ip Address Pool Cidr Block can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/publicIpAddressPoolCidrBlock:PublicIpAddressPoolCidrBlock example <public_ip_address_pool_id>:<cidr_block>
/// ```
class PublicIpAddressPoolCidrBlock extends pulumi.CustomResource {
  /// The CIDR block.
  late final pulumi.Output<String> cidrBlock;
  /// IP address and network segment mask. After you enter the mask, the system automatically allocates the IP address network segment. Value range: **24** to **28**.
  /// > **NOTE:**  **CidrBlock** and **CidrMask** cannot be configured at the same time. Select one of them to configure.
  late final pulumi.Output<int?> cidrMask;
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// The ID of the VPC Public IP address pool.
  late final pulumi.Output<String> publicIpAddressPoolId;
  /// The status of the VPC Public Ip Address Pool Cidr Block.
  late final pulumi.Output<String> status;

  /// Creates a new [PublicIpAddressPoolCidrBlock].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicIpAddressPoolCidrBlock]. {@macro pulumi_vpc_public_ip_address_pool_cidr_block_public_ip_address_pool_cidr_block_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicIpAddressPoolCidrBlock(
    String name, {
    PublicIpAddressPoolCidrBlockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/publicIpAddressPoolCidrBlock:PublicIpAddressPoolCidrBlock',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.cidrMask = registerOutput<int?>('cidrMask');
    this.createTime = registerOutput<String>('createTime');
    this.publicIpAddressPoolId = registerOutput<String>('publicIpAddressPoolId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [PublicIpAddressPoolCidrBlock] resource's state with the given [name] and [id].
  static PublicIpAddressPoolCidrBlock get(
    String name,
    pulumi.Input<String> id, {
    PublicIpAddressPoolCidrBlockState? state,
  }) {
    return PublicIpAddressPoolCidrBlock._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PublicIpAddressPoolCidrBlock._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/publicIpAddressPoolCidrBlock:PublicIpAddressPoolCidrBlock',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.cidrMask = registerOutput<int?>('cidrMask');
    this.createTime = registerOutput<String>('createTime');
    this.publicIpAddressPoolId = registerOutput<String>('publicIpAddressPoolId');
    this.status = registerOutput<String>('status');
  }
}
