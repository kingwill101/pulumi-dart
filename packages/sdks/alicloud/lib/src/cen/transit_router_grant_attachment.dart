import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_grant_attachment_args.dart';
import 'transit_router_grant_attachment_state.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Router Grant Attachment resource.
///
/// For information about Cloud Enterprise Network (CEN) Transit Router Grant Attachment and how to use it, see [What is Transit Router Grant Attachment](https://www.alibabacloud.com/help/en/cloud-enterprise-network/latest/grantinstancetotransitrouter).
///
/// &gt; **NOTE:** Available since v1.187.0.
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
/// const _default = alicloud.getAccount({});
/// const example = new alicloud.vpc.Network("example", {
///     vpcName: "tf_example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const exampleInstance = new alicloud.cen.Instance("example", {
///     cenInstanceName: "tf_example",
///     description: "an example for cen",
/// });
/// const exampleTransitRouterGrantAttachment = new alicloud.cen.TransitRouterGrantAttachment("example", {
///     cenId: exampleInstance.id,
///     cenOwnerId: _default.then(_default => _default.id),
///     instanceId: example.id,
///     instanceType: "VPC",
///     orderType: "PayByCenOwner",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_account()
/// example = alicloud.vpc.Network("example",
///     vpc_name="tf_example",
///     cidr_block="172.17.3.0/24")
/// example_instance = alicloud.cen.Instance("example",
///     cen_instance_name="tf_example",
///     description="an example for cen")
/// example_transit_router_grant_attachment = alicloud.cen.TransitRouterGrantAttachment("example",
///     cen_id=example_instance.id,
///     cen_owner_id=default.id,
///     instance_id=example.id,
///     instance_type="VPC",
///     order_type="PayByCenOwner")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "tf_example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var exampleInstance = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = "tf_example",
///         Description = "an example for cen",
///     });
///
///     var exampleTransitRouterGrantAttachment = new AliCloud.Cen.TransitRouterGrantAttachment("example", new()
///     {
///         CenId = exampleInstance.Id,
///         CenOwnerId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         InstanceId = example.Id,
///         InstanceType = "VPC",
///         OrderType = "PayByCenOwner",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("tf_example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String("tf_example"),
/// 			Description:     pulumi.String("an example for cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterGrantAttachment(ctx, "example", &cen.TransitRouterGrantAttachmentArgs{
/// 			CenId:        exampleInstance.ID(),
/// 			CenOwnerId:   pulumi.String(_default.Id),
/// 			InstanceId:   example.ID(),
/// 			InstanceType: pulumi.String("VPC"),
/// 			OrderType:    pulumi.String("PayByCenOwner"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouterGrantAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterGrantAttachmentArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Network("example", NetworkArgs.builder()
///             .vpcName("tf_example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .cenInstanceName("tf_example")
///             .description("an example for cen")
///             .build());
///
///         var exampleTransitRouterGrantAttachment = new TransitRouterGrantAttachment("exampleTransitRouterGrantAttachment", TransitRouterGrantAttachmentArgs.builder()
///             .cenId(exampleInstance.id())
///             .cenOwnerId(default_.id())
///             .instanceId(example.id())
///             .instanceType("VPC")
///             .orderType("PayByCenOwner")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: tf_example
///       cidrBlock: 172.17.3.0/24
///   exampleInstance:
///     type: alicloud:cen:Instance
///     name: example
///     properties:
///       cenInstanceName: tf_example
///       description: an example for cen
///   exampleTransitRouterGrantAttachment:
///     type: alicloud:cen:TransitRouterGrantAttachment
///     name: example
///     properties:
///       cenId: ${exampleInstance.id}
///       cenOwnerId: ${default.id}
///       instanceId: ${example.id}
///       instanceType: VPC
///       orderType: PayByCenOwner
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Transit Router Grant Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterGrantAttachment:TransitRouterGrantAttachment example <instance_type>:<instance_id>:<cen_owner_id>:<cen_id>
/// ```
class TransitRouterGrantAttachment extends pulumi.CustomResource {
  /// The ID of the Cloud Enterprise Network (CEN) instance to which the transit router belongs.
  late final pulumi.Output<String> cenId;

  /// The ID of the Alibaba Cloud account to which the CEN instance belongs.
  late final pulumi.Output<String> cenOwnerId;

  /// The ID of the network instance.
  late final pulumi.Output<String> instanceId;

  /// The type of the network instance. Valid values: `VPC`, `ExpressConnect`, `VPN`.
  late final pulumi.Output<String> instanceType;

  /// The entity that pays the fees of the network instance. Valid values: `PayByResourceOwner`, `PayByCenOwner`.
  late final pulumi.Output<String> orderType;

  /// Creates a new [TransitRouterGrantAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterGrantAttachment]. {@macro pulumi_cen_transit_router_grant_attachment_transit_router_grant_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterGrantAttachment(
    String name, {
    TransitRouterGrantAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/transitRouterGrantAttachment:TransitRouterGrantAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cenId = registerOutput<String>('cenId');
    cenOwnerId = registerOutput<String>('cenOwnerId');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    orderType = registerOutput<String>('orderType');
  }

  /// Gets an existing [TransitRouterGrantAttachment] resource's state with the given [name] and [id].
  static TransitRouterGrantAttachment get(
    String name,
    pulumi.Input<String> id, {
    TransitRouterGrantAttachmentState? state,
  }) {
    return TransitRouterGrantAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouterGrantAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/transitRouterGrantAttachment:TransitRouterGrantAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cenId = registerOutput<String>('cenId');
    cenOwnerId = registerOutput<String>('cenOwnerId');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    orderType = registerOutput<String>('orderType');
  }
}
