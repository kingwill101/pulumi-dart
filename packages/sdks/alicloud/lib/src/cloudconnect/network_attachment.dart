import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_attachment_args.dart';
import 'network_attachment_state.dart';

/// Provides a Cloud Connect Network Attachment resource. This topic describes how to associate a Smart Access Gateway (SAG) instance with a network instance. You must associate an SAG instance with a network instance if you want to connect the SAG to Alibaba Cloud. You can connect an SAG to Alibaba Cloud through a leased line, the Internet, or the active and standby links.
///
/// For information about Cloud Connect Network Attachment and how to use it, see [What is Cloud Connect Network Attachment](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/bindsmartaccessgateway).
///
/// &gt; **NOTE:** Available since v1.64.0.
///
/// &gt; **NOTE:** Only the following regions support. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// const sagId = config.get("sagId") || "sag-9bifkf***";
/// const _default = new alicloud.cloudconnect.Network("default", {
///     name: name,
///     description: name,
///     cidrBlock: "192.168.0.0/24",
///     isDefault: true,
/// });
/// const defaultNetworkAttachment = new alicloud.cloudconnect.NetworkAttachment("default", {
///     ccnId: _default.id,
///     sagId: sagId,
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
/// sag_id = config.get("sagId")
/// if sag_id is None:
///     sag_id = "sag-9bifkf***"
/// default = alicloud.cloudconnect.Network("default",
///     name=name,
///     description=name,
///     cidr_block="192.168.0.0/24",
///     is_default=True)
/// default_network_attachment = alicloud.cloudconnect.NetworkAttachment("default",
///     ccn_id=default.id,
///     sag_id=sag_id)
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
///     var sagId = config.Get("sagId") ?? "sag-9bifkf***";
///     var @default = new AliCloud.CloudConnect.Network("default", new()
///     {
///         Name = name,
///         Description = name,
///         CidrBlock = "192.168.0.0/24",
///         IsDefault = true,
///     });
///
///     var defaultNetworkAttachment = new AliCloud.CloudConnect.NetworkAttachment("default", new()
///     {
///         CcnId = @default.Id,
///         SagId = sagId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudconnect"
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
/// 		sagId := "sag-9bifkf***"
/// 		if param := cfg.Get("sagId"); param != "" {
/// 			sagId = param
/// 		}
/// 		_default, err := cloudconnect.NewNetwork(ctx, "default", &cloudconnect.NetworkArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.0.0/24"),
/// 			IsDefault:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudconnect.NewNetworkAttachment(ctx, "default", &cloudconnect.NetworkAttachmentArgs{
/// 			CcnId: _default.ID(),
/// 			SagId: pulumi.String(sagId),
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
/// import com.pulumi.alicloud.cloudconnect.Network;
/// import com.pulumi.alicloud.cloudconnect.NetworkArgs;
/// import com.pulumi.alicloud.cloudconnect.NetworkAttachment;
/// import com.pulumi.alicloud.cloudconnect.NetworkAttachmentArgs;
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
///         final var sagId = config.get("sagId").orElse("sag-9bifkf***");
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name(name)
///             .description(name)
///             .cidrBlock("192.168.0.0/24")
///             .isDefault(true)
///             .build());
///
///         var defaultNetworkAttachment = new NetworkAttachment("defaultNetworkAttachment", NetworkAttachmentArgs.builder()
///             .ccnId(default_.id())
///             .sagId(sagId)
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
///   sagId:
///     type: string
///     default: sag-9bifkf***
/// resources:
///   default:
///     type: alicloud:cloudconnect:Network
///     properties:
///       name: ${name}
///       description: ${name}
///       cidrBlock: 192.168.0.0/24
///       isDefault: true
///   defaultNetworkAttachment:
///     type: alicloud:cloudconnect:NetworkAttachment
///     name: default
///     properties:
///       ccnId: ${default.id}
///       sagId: ${sagId}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The Cloud Connect Network Attachment can be imported using the instance_id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudconnect/networkAttachment:NetworkAttachment example ccn-abc123456:sag-abc123456
/// ```
class NetworkAttachment extends pulumi.CustomResource {
  /// The ID of the CCN instance.
  late final pulumi.Output<String> ccnId;

  /// The ID of the Smart Access Gateway instance.
  late final pulumi.Output<String> sagId;

  /// Creates a new [NetworkAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkAttachment]. {@macro pulumi_cloudconnect_network_attachment_network_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkAttachment(
    String name, {
    NetworkAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudconnect/networkAttachment:NetworkAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    ccnId = registerOutput<String>('ccnId');
    sagId = registerOutput<String>('sagId');
  }

  /// Gets an existing [NetworkAttachment] resource's state with the given [name] and [id].
  static NetworkAttachment get(
    String name,
    pulumi.Input<String> id, {
    NetworkAttachmentState? state,
  }) {
    return NetworkAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudconnect/networkAttachment:NetworkAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    ccnId = registerOutput<String>('ccnId');
    sagId = registerOutput<String>('sagId');
  }
}
