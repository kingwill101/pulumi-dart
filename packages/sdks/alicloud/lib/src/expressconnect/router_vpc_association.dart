import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_vpc_association_args.dart';
import 'router_vpc_association_state.dart';

/// Provides a Express Connect Router Express Connect Router Vpc Association resource. Bind relationship object between leased line gateway and VPC.
///
/// For information about Express Connect Router Express Connect Router Vpc Association and how to use it, see [What is Express Connect Router Vpc Association](https://www.alibabacloud.com/help/en/express-connect/developer-reference/api-expressconnectrouter-2023-09-01-createexpressconnectrouterassociation).
///
/// &gt; **NOTE:** Available since v1.224.0.
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
/// const default8qAtD6 = new alicloud.vpc.Network("default8qAtD6", {cidrBlock: "172.16.0.0/16"});
/// const defaultM9YxGW = new alicloud.expressconnect.RouterExpressConnectRouter("defaultM9YxGW", {alibabaSideAsn: 65533});
/// const current = alicloud.getAccount({});
/// const _default = new alicloud.expressconnect.RouterVpcAssociation("default", {
///     ecrId: defaultM9YxGW.id,
///     allowedPrefixes: [
///         "172.16.4.0/24",
///         "172.16.3.0/24",
///         "172.16.2.0/24",
///         "172.16.1.0/24",
///     ],
///     vpcOwnerId: current.then(current => current.id),
///     associationRegionId: "cn-hangzhou",
///     vpcId: default8qAtD6.id,
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
/// default8q_at_d6 = alicloud.vpc.Network("default8qAtD6", cidr_block="172.16.0.0/16")
/// default_m9_yx_gw = alicloud.expressconnect.RouterExpressConnectRouter("defaultM9YxGW", alibaba_side_asn=65533)
/// current = alicloud.get_account()
/// default = alicloud.expressconnect.RouterVpcAssociation("default",
///     ecr_id=default_m9_yx_gw.id,
///     allowed_prefixes=[
///         "172.16.4.0/24",
///         "172.16.3.0/24",
///         "172.16.2.0/24",
///         "172.16.1.0/24",
///     ],
///     vpc_owner_id=current.id,
///     association_region_id="cn-hangzhou",
///     vpc_id=default8q_at_d6.id)
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
///     var default8qAtD6 = new AliCloud.Vpc.Network("default8qAtD6", new()
///     {
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultM9YxGW = new AliCloud.ExpressConnect.RouterExpressConnectRouter("defaultM9YxGW", new()
///     {
///         AlibabaSideAsn = 65533,
///     });
///
///     var current = AliCloud.GetAccount.Invoke();
///
///     var @default = new AliCloud.ExpressConnect.RouterVpcAssociation("default", new()
///     {
///         EcrId = defaultM9YxGW.Id,
///         AllowedPrefixes = new[]
///         {
///             "172.16.4.0/24",
///             "172.16.3.0/24",
///             "172.16.2.0/24",
///             "172.16.1.0/24",
///         },
///         VpcOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///         AssociationRegionId = "cn-hangzhou",
///         VpcId = default8qAtD6.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
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
/// 		default8qAtD6, err := vpc.NewNetwork(ctx, "default8qAtD6", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultM9YxGW, err := expressconnect.NewRouterExpressConnectRouter(ctx, "defaultM9YxGW", &expressconnect.RouterExpressConnectRouterArgs{
/// 			AlibabaSideAsn: pulumi.Int(65533),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewRouterVpcAssociation(ctx, "default", &expressconnect.RouterVpcAssociationArgs{
/// 			EcrId: defaultM9YxGW.ID(),
/// 			AllowedPrefixes: pulumi.StringArray{
/// 				pulumi.String("172.16.4.0/24"),
/// 				pulumi.String("172.16.3.0/24"),
/// 				pulumi.String("172.16.2.0/24"),
/// 				pulumi.String("172.16.1.0/24"),
/// 			},
/// 			VpcOwnerId:          pulumi.String(current.Id),
/// 			AssociationRegionId: pulumi.String("cn-hangzhou"),
/// 			VpcId:               default8qAtD6.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.expressconnect.RouterExpressConnectRouter;
/// import com.pulumi.alicloud.expressconnect.RouterExpressConnectRouterArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.expressconnect.RouterVpcAssociation;
/// import com.pulumi.alicloud.expressconnect.RouterVpcAssociationArgs;
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
///         var default8qAtD6 = new Network("default8qAtD6", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultM9YxGW = new RouterExpressConnectRouter("defaultM9YxGW", RouterExpressConnectRouterArgs.builder()
///             .alibabaSideAsn(65533)
///             .build());
///
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var default_ = new RouterVpcAssociation("default", RouterVpcAssociationArgs.builder()
///             .ecrId(defaultM9YxGW.id())
///             .allowedPrefixes(
///                 "172.16.4.0/24",
///                 "172.16.3.0/24",
///                 "172.16.2.0/24",
///                 "172.16.1.0/24")
///             .vpcOwnerId(current.id())
///             .associationRegionId("cn-hangzhou")
///             .vpcId(default8qAtD6.id())
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
///   default8qAtD6:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/16
///   defaultM9YxGW:
///     type: alicloud:expressconnect:RouterExpressConnectRouter
///     properties:
///       alibabaSideAsn: '65533'
///   default:
///     type: alicloud:expressconnect:RouterVpcAssociation
///     properties:
///       ecrId: ${defaultM9YxGW.id}
///       allowedPrefixes:
///         - 172.16.4.0/24
///         - 172.16.3.0/24
///         - 172.16.2.0/24
///         - 172.16.1.0/24
///       vpcOwnerId: ${current.id}
///       associationRegionId: cn-hangzhou
///       vpcId: ${default8qAtD6.id}
/// variables:
///   current:
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
/// Express Connect Router Express Connect Router Vpc Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/routerVpcAssociation:RouterVpcAssociation example <ecr_id>:<association_id>:<vpc_id>
/// ```
class RouterVpcAssociation extends pulumi.CustomResource {
  /// The list of allowed route prefixes.
  late final pulumi.Output<List<String>?> allowedPrefixes;

  /// The ID of the association between the ECR and the VPC.
  late final pulumi.Output<String> associationId;

  /// The region ID of the resource to be associated.
  late final pulumi.Output<String> associationRegionId;

  /// The time when the association was created.
  late final pulumi.Output<String> createTime;

  /// The ECR ID.
  late final pulumi.Output<String> ecrId;

  /// The deployment state of the associated resource.
  late final pulumi.Output<String> status;

  /// The VPC ID.
  late final pulumi.Output<String> vpcId;

  /// The ID of the Alibaba Cloud account that owns the VPC.
  /// &gt; **NOTE:** If you want to connect to a network instance that belongs to a different account, `vpc_owner_id` is required.
  late final pulumi.Output<int> vpcOwnerId;

  /// Creates a new [RouterVpcAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterVpcAssociation]. {@macro pulumi_expressconnect_router_vpc_association_router_vpc_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterVpcAssociation(
    String name, {
    RouterVpcAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/routerVpcAssociation:RouterVpcAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedPrefixes = registerOutput<List<String>?>('allowedPrefixes');
    associationId = registerOutput<String>('associationId');
    associationRegionId = registerOutput<String>('associationRegionId');
    createTime = registerOutput<String>('createTime');
    ecrId = registerOutput<String>('ecrId');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    vpcOwnerId = registerOutput<int>('vpcOwnerId');
  }

  /// Gets an existing [RouterVpcAssociation] resource's state with the given [name] and [id].
  static RouterVpcAssociation get(
    String name,
    pulumi.Input<String> id, {
    RouterVpcAssociationState? state,
  }) {
    return RouterVpcAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterVpcAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/routerVpcAssociation:RouterVpcAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedPrefixes = registerOutput<List<String>?>('allowedPrefixes');
    associationId = registerOutput<String>('associationId');
    associationRegionId = registerOutput<String>('associationRegionId');
    createTime = registerOutput<String>('createTime');
    ecrId = registerOutput<String>('ecrId');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    vpcOwnerId = registerOutput<int>('vpcOwnerId');
  }
}
