import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_grant_args.dart';
import 'instance_grant_state.dart';

/// Provides a CEN child instance grant resource, which allow you to authorize a VPC or VBR to a CEN of a different account.
///
/// For more information about how to use it, see [Attach a network in a different account](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-attachcenchildinstance).
///
/// &gt; **NOTE:** Deprecated since v1.241.0. The resource have been deprecated and new resource type alicloud.cen.TransitRouterGrantAttachment is recommended.
///
/// &gt; **NOTE:** Available since v1.37.0.
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
/// const anotherUid = config.get("anotherUid") || "xxxx";
/// const yourAccount = alicloud.getAccount({});
/// const childAccount = alicloud.getAccount({});
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const example = new alicloud.cen.Instance("example", {
///     cenInstanceName: "tf_example",
///     description: "an example for cen",
/// });
/// const childAccountNetwork = new alicloud.vpc.Network("child_account", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const childAccountInstanceGrant = new alicloud.cen.InstanceGrant("child_account", {
///     cenId: example.id,
///     childInstanceId: childAccountNetwork.id,
///     cenOwnerId: yourAccount.then(yourAccount => yourAccount.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// another_uid = config.get("anotherUid")
/// if another_uid is None:
///     another_uid = "xxxx"
/// your_account = alicloud.get_account()
/// child_account = alicloud.get_account()
/// default = alicloud.get_regions(current=True)
/// example = alicloud.cen.Instance("example",
///     cen_instance_name="tf_example",
///     description="an example for cen")
/// child_account_network = alicloud.vpc.Network("child_account",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// child_account_instance_grant = alicloud.cen.InstanceGrant("child_account",
///     cen_id=example.id,
///     child_instance_id=child_account_network.id,
///     cen_owner_id=your_account.id)
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
///     var anotherUid = config.Get("anotherUid") ?? "xxxx";
///     var yourAccount = AliCloud.GetAccount.Invoke();
///
///     var childAccount = AliCloud.GetAccount.Invoke();
///
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var example = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = "tf_example",
///         Description = "an example for cen",
///     });
///
///     var childAccountNetwork = new AliCloud.Vpc.Network("child_account", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var childAccountInstanceGrant = new AliCloud.Cen.InstanceGrant("child_account", new()
///     {
///         CenId = example.Id,
///         ChildInstanceId = childAccountNetwork.Id,
///         CenOwnerId = yourAccount.Apply(getAccountResult => getAccountResult.Id),
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		anotherUid := "xxxx"
/// 		if param := cfg.Get("anotherUid"); param != "" {
/// 			anotherUid = param
/// 		}
/// 		yourAccount, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String("tf_example"),
/// 			Description:     pulumi.String("an example for cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		childAccountNetwork, err := vpc.NewNetwork(ctx, "child_account", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewInstanceGrant(ctx, "child_account", &cen.InstanceGrantArgs{
/// 			CenId:           example.ID(),
/// 			ChildInstanceId: childAccountNetwork.ID(),
/// 			CenOwnerId:      pulumi.String(yourAccount.Id),
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
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.cen.InstanceGrant;
/// import com.pulumi.alicloud.cen.InstanceGrantArgs;
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
///         final var anotherUid = config.get("anotherUid").orElse("xxxx");
///         final var yourAccount = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var childAccount = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var example = new Instance("example", InstanceArgs.builder()
///             .cenInstanceName("tf_example")
///             .description("an example for cen")
///             .build());
///
///         var childAccountNetwork = new Network("childAccountNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var childAccountInstanceGrant = new InstanceGrant("childAccountInstanceGrant", InstanceGrantArgs.builder()
///             .cenId(example.id())
///             .childInstanceId(childAccountNetwork.id())
///             .cenOwnerId(yourAccount.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   anotherUid:
///     type: string
///     default: xxxx
/// resources:
///   example:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: tf_example
///       description: an example for cen
///   childAccountNetwork:
///     type: alicloud:vpc:Network
///     name: child_account
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   childAccountInstanceGrant:
///     type: alicloud:cen:InstanceGrant
///     name: child_account
///     properties:
///       cenId: ${example.id}
///       childInstanceId: ${childAccountNetwork.id}
///       cenOwnerId: ${yourAccount.id}
/// variables:
///   yourAccount:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   childAccount:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CEN instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/instanceGrant:InstanceGrant example cen-abc123456:vpc-abc123456:uid123456
/// ```
class InstanceGrant extends pulumi.CustomResource {
  /// The ID of the CEN.
  late final pulumi.Output<String> cenId;

  /// The owner UID of the  CEN which the child instance granted to.
  late final pulumi.Output<String> cenOwnerId;

  /// The ID of the child instance to grant.
  late final pulumi.Output<String> childInstanceId;

  /// Creates a new [InstanceGrant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceGrant]. {@macro pulumi_cen_instance_grant_instance_grant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceGrant(
    String name, {
    InstanceGrantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/instanceGrant:InstanceGrant',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cenId = registerOutput<String>('cenId');
    cenOwnerId = registerOutput<String>('cenOwnerId');
    childInstanceId = registerOutput<String>('childInstanceId');
  }

  /// Gets an existing [InstanceGrant] resource's state with the given [name] and [id].
  static InstanceGrant get(
    String name,
    pulumi.Input<String> id, {
    InstanceGrantState? state,
  }) {
    return InstanceGrant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceGrant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/instanceGrant:InstanceGrant',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cenId = registerOutput<String>('cenId');
    cenOwnerId = registerOutput<String>('cenOwnerId');
    childInstanceId = registerOutput<String>('childInstanceId');
  }
}
