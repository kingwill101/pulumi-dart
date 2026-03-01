import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_ecr_attachment_args.dart';
import 'transit_router_ecr_attachment_state.dart';

/// Provides a CEN Transit Router Ecr Attachment resource.
///
///
///
/// For information about CEN Transit Router Ecr Attachment and how to use it, see [What is Transit Router Ecr Attachment](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-createtransitrouterecrattachment).
///
/// > **NOTE:** Available since v1.235.0.
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
/// const asn = config.get("asn") || "4200000667";
/// const defaultO8Hcfx = new alicloud.expressconnect.RouterExpressConnectRouter("defaultO8Hcfx", {
///     alibabaSideAsn: asn,
///     ecrName: name,
/// });
/// const defaultQKBiay = new alicloud.cen.Instance("defaultQKBiay", {cenInstanceName: name});
/// const defaultQa94Y1 = new alicloud.cen.TransitRouter("defaultQa94Y1", {
///     cenId: defaultQKBiay.id,
///     transitRouterName: name,
/// });
/// const current = alicloud.getAccount({});
/// const defaultedPu6c = new alicloud.expressconnect.RouterTrAssociation("defaultedPu6c", {
///     associationRegionId: "cn-hangzhou",
///     ecrId: defaultO8Hcfx.id,
///     cenId: defaultQKBiay.id,
///     transitRouterId: defaultQa94Y1.transitRouterId,
///     transitRouterOwnerId: current.then(current => current.id),
/// });
/// const _default = new alicloud.cen.TransitRouterEcrAttachment("default", {
///     ecrId: defaultO8Hcfx.id,
///     cenId: defaultedPu6c.cenId,
///     transitRouterEcrAttachmentName: name,
///     transitRouterAttachmentDescription: name,
///     transitRouterId: defaultQa94Y1.transitRouterId,
///     ecrOwnerId: current.then(current => current.id),
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
/// asn = config.get("asn")
/// if asn is None:
///     asn = "4200000667"
/// default_o8_hcfx = alicloud.expressconnect.RouterExpressConnectRouter("defaultO8Hcfx",
///     alibaba_side_asn=asn,
///     ecr_name=name)
/// default_qk_biay = alicloud.cen.Instance("defaultQKBiay", cen_instance_name=name)
/// default_qa94_y1 = alicloud.cen.TransitRouter("defaultQa94Y1",
///     cen_id=default_qk_biay.id,
///     transit_router_name=name)
/// current = alicloud.get_account()
/// defaulted_pu6c = alicloud.expressconnect.RouterTrAssociation("defaultedPu6c",
///     association_region_id="cn-hangzhou",
///     ecr_id=default_o8_hcfx.id,
///     cen_id=default_qk_biay.id,
///     transit_router_id=default_qa94_y1.transit_router_id,
///     transit_router_owner_id=current.id)
/// default = alicloud.cen.TransitRouterEcrAttachment("default",
///     ecr_id=default_o8_hcfx.id,
///     cen_id=defaulted_pu6c.cen_id,
///     transit_router_ecr_attachment_name=name,
///     transit_router_attachment_description=name,
///     transit_router_id=default_qa94_y1.transit_router_id,
///     ecr_owner_id=current.id)
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
///     var asn = config.Get("asn") ?? "4200000667";
///     var defaultO8Hcfx = new AliCloud.ExpressConnect.RouterExpressConnectRouter("defaultO8Hcfx", new()
///     {
///         AlibabaSideAsn = asn,
///         EcrName = name,
///     });
///
///     var defaultQKBiay = new AliCloud.Cen.Instance("defaultQKBiay", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var defaultQa94Y1 = new AliCloud.Cen.TransitRouter("defaultQa94Y1", new()
///     {
///         CenId = defaultQKBiay.Id,
///         TransitRouterName = name,
///     });
///
///     var current = AliCloud.GetAccount.Invoke();
///
///     var defaultedPu6c = new AliCloud.ExpressConnect.RouterTrAssociation("defaultedPu6c", new()
///     {
///         AssociationRegionId = "cn-hangzhou",
///         EcrId = defaultO8Hcfx.Id,
///         CenId = defaultQKBiay.Id,
///         TransitRouterId = defaultQa94Y1.TransitRouterId,
///         TransitRouterOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///     });
///
///     var @default = new AliCloud.Cen.TransitRouterEcrAttachment("default", new()
///     {
///         EcrId = defaultO8Hcfx.Id,
///         CenId = defaultedPu6c.CenId,
///         TransitRouterEcrAttachmentName = name,
///         TransitRouterAttachmentDescription = name,
///         TransitRouterId = defaultQa94Y1.TransitRouterId,
///         EcrOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
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
/// 		asn := "4200000667"
/// 		if param := cfg.Get("asn"); param != "" {
/// 			asn = param
/// 		}
/// 		defaultO8Hcfx, err := expressconnect.NewRouterExpressConnectRouter(ctx, "defaultO8Hcfx", &expressconnect.RouterExpressConnectRouterArgs{
/// 			AlibabaSideAsn: pulumi.String(asn),
/// 			EcrName:        pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultQKBiay, err := cen.NewInstance(ctx, "defaultQKBiay", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultQa94Y1, err := cen.NewTransitRouter(ctx, "defaultQa94Y1", &cen.TransitRouterArgs{
/// 			CenId:             defaultQKBiay.ID(),
/// 			TransitRouterName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultedPu6c, err := expressconnect.NewRouterTrAssociation(ctx, "defaultedPu6c", &expressconnect.RouterTrAssociationArgs{
/// 			AssociationRegionId:  pulumi.String("cn-hangzhou"),
/// 			EcrId:                defaultO8Hcfx.ID(),
/// 			CenId:                defaultQKBiay.ID(),
/// 			TransitRouterId:      defaultQa94Y1.TransitRouterId,
/// 			TransitRouterOwnerId: pulumi.String(current.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterEcrAttachment(ctx, "default", &cen.TransitRouterEcrAttachmentArgs{
/// 			EcrId:                              defaultO8Hcfx.ID(),
/// 			CenId:                              defaultedPu6c.CenId,
/// 			TransitRouterEcrAttachmentName:     pulumi.String(name),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 			TransitRouterId:                    defaultQa94Y1.TransitRouterId,
/// 			EcrOwnerId:                         pulumi.String(current.Id),
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
/// import com.pulumi.alicloud.cen.TransitRouterEcrAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterEcrAttachmentArgs;
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
///         final var asn = config.get("asn").orElse("4200000667");
///         var defaultO8Hcfx = new RouterExpressConnectRouter("defaultO8Hcfx", RouterExpressConnectRouterArgs.builder()
///             .alibabaSideAsn(asn)
///             .ecrName(name)
///             .build());
///
///         var defaultQKBiay = new Instance("defaultQKBiay", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var defaultQa94Y1 = new TransitRouter("defaultQa94Y1", TransitRouterArgs.builder()
///             .cenId(defaultQKBiay.id())
///             .transitRouterName(name)
///             .build());
///
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultedPu6c = new RouterTrAssociation("defaultedPu6c", RouterTrAssociationArgs.builder()
///             .associationRegionId("cn-hangzhou")
///             .ecrId(defaultO8Hcfx.id())
///             .cenId(defaultQKBiay.id())
///             .transitRouterId(defaultQa94Y1.transitRouterId())
///             .transitRouterOwnerId(current.id())
///             .build());
///
///         var default_ = new TransitRouterEcrAttachment("default", TransitRouterEcrAttachmentArgs.builder()
///             .ecrId(defaultO8Hcfx.id())
///             .cenId(defaultedPu6c.cenId())
///             .transitRouterEcrAttachmentName(name)
///             .transitRouterAttachmentDescription(name)
///             .transitRouterId(defaultQa94Y1.transitRouterId())
///             .ecrOwnerId(current.id())
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
///   asn:
///     type: string
///     default: '4200000667'
/// resources:
///   defaultO8Hcfx:
///     type: alicloud:expressconnect:RouterExpressConnectRouter
///     properties:
///       alibabaSideAsn: ${asn}
///       ecrName: ${name}
///   defaultQKBiay:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///   defaultQa94Y1:
///     type: alicloud:cen:TransitRouter
///     properties:
///       cenId: ${defaultQKBiay.id}
///       transitRouterName: ${name}
///   defaultedPu6c:
///     type: alicloud:expressconnect:RouterTrAssociation
///     properties:
///       associationRegionId: cn-hangzhou
///       ecrId: ${defaultO8Hcfx.id}
///       cenId: ${defaultQKBiay.id}
///       transitRouterId: ${defaultQa94Y1.transitRouterId}
///       transitRouterOwnerId: ${current.id}
///   default:
///     type: alicloud:cen:TransitRouterEcrAttachment
///     properties:
///       ecrId: ${defaultO8Hcfx.id}
///       cenId: ${defaultedPu6c.cenId}
///       transitRouterEcrAttachmentName: ${name}
///       transitRouterAttachmentDescription: ${name}
///       transitRouterId: ${defaultQa94Y1.transitRouterId}
///       ecrOwnerId: ${current.id}
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
/// CEN Transit Router Ecr Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterEcrAttachment:TransitRouterEcrAttachment example <id>
/// ```
class TransitRouterEcrAttachment extends pulumi.CustomResource {
  /// CenId
  late final pulumi.Output<String?> cenId;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// EcrId
  late final pulumi.Output<String> ecrId;
  /// EcrOwnerId
  late final pulumi.Output<int?> ecrOwnerId;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// TransitRouterAttachmentDescription
  late final pulumi.Output<String?> transitRouterAttachmentDescription;
  /// TransitRouterAttachmentName
  late final pulumi.Output<String?> transitRouterEcrAttachmentName;
  /// TransitRouterId
  late final pulumi.Output<String?> transitRouterId;

  /// Creates a new [TransitRouterEcrAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterEcrAttachment]. {@macro pulumi_cen_transit_router_ecr_attachment_transit_router_ecr_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterEcrAttachment(
    String name, {
    TransitRouterEcrAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterEcrAttachment:TransitRouterEcrAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String?>('cenId');
    this.createTime = registerOutput<String>('createTime');
    this.ecrId = registerOutput<String>('ecrId');
    this.ecrOwnerId = registerOutput<int?>('ecrOwnerId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transitRouterAttachmentDescription = registerOutput<String?>('transitRouterAttachmentDescription');
    this.transitRouterEcrAttachmentName = registerOutput<String?>('transitRouterEcrAttachmentName');
    this.transitRouterId = registerOutput<String?>('transitRouterId');
  }

  /// Gets an existing [TransitRouterEcrAttachment] resource's state with the given [name] and [id].
  static TransitRouterEcrAttachment get(
    String name,
    pulumi.Input<String> id, {
    TransitRouterEcrAttachmentState? state,
  }) {
    return TransitRouterEcrAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouterEcrAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterEcrAttachment:TransitRouterEcrAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String?>('cenId');
    this.createTime = registerOutput<String>('createTime');
    this.ecrId = registerOutput<String>('ecrId');
    this.ecrOwnerId = registerOutput<int?>('ecrOwnerId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transitRouterAttachmentDescription = registerOutput<String?>('transitRouterAttachmentDescription');
    this.transitRouterEcrAttachmentName = registerOutput<String?>('transitRouterEcrAttachmentName');
    this.transitRouterId = registerOutput<String?>('transitRouterId');
  }
}
