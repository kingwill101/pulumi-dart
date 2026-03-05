import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_tr_association_args.dart';
import 'router_tr_association_state.dart';

/// Provides a Express Connect Router Express Connect Router Tr Association resource. Leased line gateway and TR binding relationship object.
///
/// For information about Express Connect Router Express Connect Router Tr Association and how to use it, see [What is Express Connect Router Tr Association](https://next.api.alibabacloud.com/api/ExpressConnectRouter/2023-09-01/CreateExpressConnectRouterAssociation).
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
/// const alowprefix1 = config.get("alowprefix1") || "10.0.0.0/24";
/// const allowprefix2 = config.get("allowprefix2") || "10.0.1.0/24";
/// const allowprefix3 = config.get("allowprefix3") || "10.0.2.0/24";
/// const allowprefix4 = config.get("allowprefix4") || "10.0.3.0/24";
/// const asn = config.get("asn") || "4200001003";
/// const defaultpX0KlC = new alicloud.expressconnect.RouterExpressConnectRouter("defaultpX0KlC", {alibabaSideAsn: asn});
/// const default418DC9 = new alicloud.cen.Instance("default418DC9", {cenInstanceName: name});
/// const defaultRYcjsc = new alicloud.cen.TransitRouter("defaultRYcjsc", {cenId: default418DC9.id});
/// const current = alicloud.getAccount({});
/// const _default = new alicloud.expressconnect.RouterTrAssociation("default", {
///     ecrId: defaultpX0KlC.id,
///     cenId: default418DC9.id,
///     transitRouterOwnerId: current.then(current => current.id),
///     allowedPrefixes: [
///         alowprefix1,
///         allowprefix3,
///         allowprefix2,
///     ],
///     transitRouterId: defaultRYcjsc.transitRouterId,
///     associationRegionId: "cn-hangzhou",
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
/// alowprefix1 = config.get("alowprefix1")
/// if alowprefix1 is None:
///     alowprefix1 = "10.0.0.0/24"
/// allowprefix2 = config.get("allowprefix2")
/// if allowprefix2 is None:
///     allowprefix2 = "10.0.1.0/24"
/// allowprefix3 = config.get("allowprefix3")
/// if allowprefix3 is None:
///     allowprefix3 = "10.0.2.0/24"
/// allowprefix4 = config.get("allowprefix4")
/// if allowprefix4 is None:
///     allowprefix4 = "10.0.3.0/24"
/// asn = config.get("asn")
/// if asn is None:
///     asn = "4200001003"
/// defaultp_x0_kl_c = alicloud.expressconnect.RouterExpressConnectRouter("defaultpX0KlC", alibaba_side_asn=asn)
/// default418_dc9 = alicloud.cen.Instance("default418DC9", cen_instance_name=name)
/// default_r_ycjsc = alicloud.cen.TransitRouter("defaultRYcjsc", cen_id=default418_dc9.id)
/// current = alicloud.get_account()
/// default = alicloud.expressconnect.RouterTrAssociation("default",
///     ecr_id=defaultp_x0_kl_c.id,
///     cen_id=default418_dc9.id,
///     transit_router_owner_id=current.id,
///     allowed_prefixes=[
///         alowprefix1,
///         allowprefix3,
///         allowprefix2,
///     ],
///     transit_router_id=default_r_ycjsc.transit_router_id,
///     association_region_id="cn-hangzhou")
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
///     var alowprefix1 = config.Get("alowprefix1") ?? "10.0.0.0/24";
///     var allowprefix2 = config.Get("allowprefix2") ?? "10.0.1.0/24";
///     var allowprefix3 = config.Get("allowprefix3") ?? "10.0.2.0/24";
///     var allowprefix4 = config.Get("allowprefix4") ?? "10.0.3.0/24";
///     var asn = config.Get("asn") ?? "4200001003";
///     var defaultpX0KlC = new AliCloud.ExpressConnect.RouterExpressConnectRouter("defaultpX0KlC", new()
///     {
///         AlibabaSideAsn = asn,
///     });
///
///     var default418DC9 = new AliCloud.Cen.Instance("default418DC9", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var defaultRYcjsc = new AliCloud.Cen.TransitRouter("defaultRYcjsc", new()
///     {
///         CenId = default418DC9.Id,
///     });
///
///     var current = AliCloud.GetAccount.Invoke();
///
///     var @default = new AliCloud.ExpressConnect.RouterTrAssociation("default", new()
///     {
///         EcrId = defaultpX0KlC.Id,
///         CenId = default418DC9.Id,
///         TransitRouterOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///         AllowedPrefixes = new[]
///         {
///             alowprefix1,
///             allowprefix3,
///             allowprefix2,
///         },
///         TransitRouterId = defaultRYcjsc.TransitRouterId,
///         AssociationRegionId = "cn-hangzhou",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
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
/// 		alowprefix1 := "10.0.0.0/24"
/// 		if param := cfg.Get("alowprefix1"); param != "" {
/// 			alowprefix1 = param
/// 		}
/// 		allowprefix2 := "10.0.1.0/24"
/// 		if param := cfg.Get("allowprefix2"); param != "" {
/// 			allowprefix2 = param
/// 		}
/// 		allowprefix3 := "10.0.2.0/24"
/// 		if param := cfg.Get("allowprefix3"); param != "" {
/// 			allowprefix3 = param
/// 		}
/// 		allowprefix4 := "10.0.3.0/24"
/// 		if param := cfg.Get("allowprefix4"); param != "" {
/// 			allowprefix4 = param
/// 		}
/// 		asn := "4200001003"
/// 		if param := cfg.Get("asn"); param != "" {
/// 			asn = param
/// 		}
/// 		defaultpX0KlC, err := expressconnect.NewRouterExpressConnectRouter(ctx, "defaultpX0KlC", &expressconnect.RouterExpressConnectRouterArgs{
/// 			AlibabaSideAsn: pulumi.String(asn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default418DC9, err := cen.NewInstance(ctx, "default418DC9", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRYcjsc, err := cen.NewTransitRouter(ctx, "defaultRYcjsc", &cen.TransitRouterArgs{
/// 			CenId: default418DC9.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewRouterTrAssociation(ctx, "default", &expressconnect.RouterTrAssociationArgs{
/// 			EcrId:                defaultpX0KlC.ID(),
/// 			CenId:                default418DC9.ID(),
/// 			TransitRouterOwnerId: pulumi.String(current.Id),
/// 			AllowedPrefixes: pulumi.StringArray{
/// 				pulumi.String(alowprefix1),
/// 				pulumi.String(allowprefix3),
/// 				pulumi.String(allowprefix2),
/// 			},
/// 			TransitRouterId:     defaultRYcjsc.TransitRouterId,
/// 			AssociationRegionId: pulumi.String("cn-hangzhou"),
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
/// import com.pulumi.alicloud.expressconnect.RouterExpressConnectRouter;
/// import com.pulumi.alicloud.expressconnect.RouterExpressConnectRouterArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.expressconnect.RouterTrAssociation;
/// import com.pulumi.alicloud.expressconnect.RouterTrAssociationArgs;
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
///         final var alowprefix1 = config.get("alowprefix1").orElse("10.0.0.0/24");
///         final var allowprefix2 = config.get("allowprefix2").orElse("10.0.1.0/24");
///         final var allowprefix3 = config.get("allowprefix3").orElse("10.0.2.0/24");
///         final var allowprefix4 = config.get("allowprefix4").orElse("10.0.3.0/24");
///         final var asn = config.get("asn").orElse("4200001003");
///         var defaultpX0KlC = new RouterExpressConnectRouter("defaultpX0KlC", RouterExpressConnectRouterArgs.builder()
///             .alibabaSideAsn(asn)
///             .build());
///
///         var default418DC9 = new Instance("default418DC9", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var defaultRYcjsc = new TransitRouter("defaultRYcjsc", TransitRouterArgs.builder()
///             .cenId(default418DC9.id())
///             .build());
///
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var default_ = new RouterTrAssociation("default", RouterTrAssociationArgs.builder()
///             .ecrId(defaultpX0KlC.id())
///             .cenId(default418DC9.id())
///             .transitRouterOwnerId(current.id())
///             .allowedPrefixes(
///                 alowprefix1,
///                 allowprefix3,
///                 allowprefix2)
///             .transitRouterId(defaultRYcjsc.transitRouterId())
///             .associationRegionId("cn-hangzhou")
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
///   alowprefix1:
///     type: string
///     default: 10.0.0.0/24
///   allowprefix2:
///     type: string
///     default: 10.0.1.0/24
///   allowprefix3:
///     type: string
///     default: 10.0.2.0/24
///   allowprefix4:
///     type: string
///     default: 10.0.3.0/24
///   asn:
///     type: string
///     default: '4200001003'
/// resources:
///   defaultpX0KlC:
///     type: alicloud:expressconnect:RouterExpressConnectRouter
///     properties:
///       alibabaSideAsn: ${asn}
///   default418DC9:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///   defaultRYcjsc:
///     type: alicloud:cen:TransitRouter
///     properties:
///       cenId: ${default418DC9.id}
///   default:
///     type: alicloud:expressconnect:RouterTrAssociation
///     properties:
///       ecrId: ${defaultpX0KlC.id}
///       cenId: ${default418DC9.id}
///       transitRouterOwnerId: ${current.id}
///       allowedPrefixes:
///         - ${alowprefix1}
///         - ${allowprefix3}
///         - ${allowprefix2}
///       transitRouterId: ${defaultRYcjsc.transitRouterId}
///       associationRegionId: cn-hangzhou
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
/// Express Connect Router Express Connect Router Tr Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/routerTrAssociation:RouterTrAssociation example <ecr_id>:<association_id>:<transit_router_id>
/// ```
class RouterTrAssociation extends pulumi.CustomResource {
  /// List of allowed route prefixes.
  late final pulumi.Output<List<String>?> allowedPrefixes;
  /// The first ID of the resource.
  late final pulumi.Output<String> associationId;
  /// The region to which the VPC or TR belongs.
  late final pulumi.Output<String> associationRegionId;
  /// The ID of the CEN instance.
  late final pulumi.Output<String?> cenId;
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// The ID of the leased line gateway instance.
  late final pulumi.Output<String> ecrId;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The ID of the forwarding router instance.
  late final pulumi.Output<String> transitRouterId;
  /// The ID of the Alibaba Cloud account to which the forwarding router belongs.
  late final pulumi.Output<int?> transitRouterOwnerId;

  /// Creates a new [RouterTrAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterTrAssociation]. {@macro pulumi_expressconnect_router_tr_association_router_tr_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterTrAssociation(
    String name, {
    RouterTrAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/routerTrAssociation:RouterTrAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedPrefixes = registerOutput<List<String>?>('allowedPrefixes');
    associationId = registerOutput<String>('associationId');
    associationRegionId = registerOutput<String>('associationRegionId');
    cenId = registerOutput<String?>('cenId');
    createTime = registerOutput<String>('createTime');
    ecrId = registerOutput<String>('ecrId');
    status = registerOutput<String>('status');
    transitRouterId = registerOutput<String>('transitRouterId');
    transitRouterOwnerId = registerOutput<int?>('transitRouterOwnerId');
  }

  /// Gets an existing [RouterTrAssociation] resource's state with the given [name] and [id].
  static RouterTrAssociation get(
    String name,
    pulumi.Input<String> id, {
    RouterTrAssociationState? state,
  }) {
    return RouterTrAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterTrAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/routerTrAssociation:RouterTrAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedPrefixes = registerOutput<List<String>?>('allowedPrefixes');
    associationId = registerOutput<String>('associationId');
    associationRegionId = registerOutput<String>('associationRegionId');
    cenId = registerOutput<String?>('cenId');
    createTime = registerOutput<String>('createTime');
    ecrId = registerOutput<String>('ecrId');
    status = registerOutput<String>('status');
    transitRouterId = registerOutput<String>('transitRouterId');
    transitRouterOwnerId = registerOutput<int?>('transitRouterOwnerId');
  }
}
