import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_grant_association_args.dart';
import 'router_grant_association_state.dart';

/// Provides a Express Connect Router Grant Association resource.
///
/// Network instances authorized to the leased line Gateway.
///
/// For information about Express Connect Router Grant Association and how to use it, see [What is Grant Association](https://www.alibabacloud.com/help/en/express-connect/developer-reference/api-expressconnectrouter-2023-09-01-grantinstancetoexpressconnectrouter).
///
/// &gt; **NOTE:** Available since v1.239.0.
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
/// const vpcId = config.get("vpcId") || "vpc-xxx";
/// const ecrOwnerUid = config.get("ecrOwnerUid") || "18xxx";
/// const ecrId = config.get("ecrId") || "ecr-xxx";
/// const region = config.get("region") || "cn-hangzhou";
/// const _default = new alicloud.expressconnect.RouterGrantAssociation("default", {
///     ecrId: ecrId,
///     instanceRegionId: region,
///     instanceId: vpcId,
///     ecrOwnerAliUid: ecrOwnerUid,
///     instanceType: "VPC",
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
/// vpc_id = config.get("vpcId")
/// if vpc_id is None:
///     vpc_id = "vpc-xxx"
/// ecr_owner_uid = config.get("ecrOwnerUid")
/// if ecr_owner_uid is None:
///     ecr_owner_uid = "18xxx"
/// ecr_id = config.get("ecrId")
/// if ecr_id is None:
///     ecr_id = "ecr-xxx"
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// default = alicloud.expressconnect.RouterGrantAssociation("default",
///     ecr_id=ecr_id,
///     instance_region_id=region,
///     instance_id=vpc_id,
///     ecr_owner_ali_uid=ecr_owner_uid,
///     instance_type="VPC")
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
///     var vpcId = config.Get("vpcId") ?? "vpc-xxx";
///     var ecrOwnerUid = config.Get("ecrOwnerUid") ?? "18xxx";
///     var ecrId = config.Get("ecrId") ?? "ecr-xxx";
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var @default = new AliCloud.ExpressConnect.RouterGrantAssociation("default", new()
///     {
///         EcrId = ecrId,
///         InstanceRegionId = region,
///         InstanceId = vpcId,
///         EcrOwnerAliUid = ecrOwnerUid,
///         InstanceType = "VPC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		vpcId := "vpc-xxx"
/// 		if param := cfg.Get("vpcId"); param != "" {
/// 			vpcId = param
/// 		}
/// 		ecrOwnerUid := "18xxx"
/// 		if param := cfg.Get("ecrOwnerUid"); param != "" {
/// 			ecrOwnerUid = param
/// 		}
/// 		ecrId := "ecr-xxx"
/// 		if param := cfg.Get("ecrId"); param != "" {
/// 			ecrId = param
/// 		}
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		_, err := expressconnect.NewRouterGrantAssociation(ctx, "default", &expressconnect.RouterGrantAssociationArgs{
/// 			EcrId:            pulumi.String(ecrId),
/// 			InstanceRegionId: pulumi.String(region),
/// 			InstanceId:       pulumi.String(vpcId),
/// 			EcrOwnerAliUid:   pulumi.String(ecrOwnerUid),
/// 			InstanceType:     pulumi.String("VPC"),
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
/// import com.pulumi.alicloud.expressconnect.RouterGrantAssociation;
/// import com.pulumi.alicloud.expressconnect.RouterGrantAssociationArgs;
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
///         final var vpcId = config.get("vpcId").orElse("vpc-xxx");
///         final var ecrOwnerUid = config.get("ecrOwnerUid").orElse("18xxx");
///         final var ecrId = config.get("ecrId").orElse("ecr-xxx");
///         final var region = config.get("region").orElse("cn-hangzhou");
///         var default_ = new RouterGrantAssociation("default", RouterGrantAssociationArgs.builder()
///             .ecrId(ecrId)
///             .instanceRegionId(region)
///             .instanceId(vpcId)
///             .ecrOwnerAliUid(ecrOwnerUid)
///             .instanceType("VPC")
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
///   vpcId:
///     type: string
///     default: vpc-xxx
///   ecrOwnerUid:
///     type: string
///     default: 18xxx
///   ecrId:
///     type: string
///     default: ecr-xxx
///   region:
///     type: string
///     default: cn-hangzhou
/// resources:
///   default:
///     type: alicloud:expressconnect:RouterGrantAssociation
///     properties:
///       ecrId: ${ecrId}
///       instanceRegionId: ${region}
///       instanceId: ${vpcId}
///       ecrOwnerAliUid: ${ecrOwnerUid}
///       instanceType: VPC
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Express Connect Router Grant Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/routerGrantAssociation:RouterGrantAssociation example <ecr_id>:<instance_id>:<instance_region_id>:<ecr_owner_ali_uid>:<instance_type>
/// ```
class RouterGrantAssociation extends pulumi.CustomResource {
  /// The ID of the associated Leased Line Gateway instance.
  late final pulumi.Output<String> ecrId;
  /// The ID of the Alibaba Cloud account (primary account) to which the leased line gateway instance is authorized.
  late final pulumi.Output<int> ecrOwnerAliUid;
  /// The ID of the network instance.
  late final pulumi.Output<String> instanceId;
  /// The ID of the region where the authorized network instance is located.
  late final pulumi.Output<String> instanceRegionId;
  /// The type of the network instance. Value:
  /// - `VBR`: the VBR instance.
  /// - `VPC`: VPC instance.
  late final pulumi.Output<String> instanceType;
  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [RouterGrantAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterGrantAssociation]. {@macro pulumi_expressconnect_router_grant_association_router_grant_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterGrantAssociation(
    String name, {
    RouterGrantAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/routerGrantAssociation:RouterGrantAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ecrId = registerOutput<String>('ecrId');
    ecrOwnerAliUid = registerOutput<int>('ecrOwnerAliUid');
    instanceId = registerOutput<String>('instanceId');
    instanceRegionId = registerOutput<String>('instanceRegionId');
    instanceType = registerOutput<String>('instanceType');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [RouterGrantAssociation] resource's state with the given [name] and [id].
  static RouterGrantAssociation get(
    String name,
    pulumi.Input<String> id, {
    RouterGrantAssociationState? state,
  }) {
    return RouterGrantAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterGrantAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/routerGrantAssociation:RouterGrantAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ecrId = registerOutput<String>('ecrId');
    ecrOwnerAliUid = registerOutput<int>('ecrOwnerAliUid');
    instanceId = registerOutput<String>('instanceId');
    instanceRegionId = registerOutput<String>('instanceRegionId');
    instanceType = registerOutput<String>('instanceType');
    status = registerOutput<String>('status');
  }
}
