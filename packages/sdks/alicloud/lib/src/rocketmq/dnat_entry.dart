import 'package:pulumi/pulumi.dart' as pulumi;
import 'dnat_entry_args.dart';
import 'dnat_entry_state.dart';

/// Provides a Sag DnatEntry resource. This topic describes how to add a DNAT entry to a Smart Access Gateway (SAG) instance to enable the DNAT function. By using the DNAT function, you can forward requests received by public IP addresses to Alibaba Cloud instances according to custom mapping rules.
///
/// For information about Sag DnatEntry and how to use it, see [What is Sag DnatEntry](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/adddnatentry).
///
/// > **NOTE:** Available since v1.63.0.
///
/// > **NOTE:** Only the following regions suppor. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// const sagId = config.get("sagId") || "sag-9bifkfaz***";
/// const _default = new alicloud.sag.DnatEntry("default", {
///     sagId: sagId,
///     type: "Intranet",
///     ipProtocol: "any",
///     externalIp: "172.32.0.2",
///     externalPort: "any",
///     internalIp: "172.16.0.4",
///     internalPort: "any",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// sag_id = config.get("sagId")
/// if sag_id is None:
///     sag_id = "sag-9bifkfaz***"
/// default = alicloud.sag.DnatEntry("default",
///     sag_id=sag_id,
///     type="Intranet",
///     ip_protocol="any",
///     external_ip="172.32.0.2",
///     external_port="any",
///     internal_ip="172.16.0.4",
///     internal_port="any")
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
///     var sagId = config.Get("sagId") ?? "sag-9bifkfaz***";
///     var @default = new AliCloud.Sag.DnatEntry("default", new()
///     {
///         SagId = sagId,
///         Type = "Intranet",
///         IpProtocol = "any",
///         ExternalIp = "172.32.0.2",
///         ExternalPort = "any",
///         InternalIp = "172.16.0.4",
///         InternalPort = "any",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sag"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		sagId := "sag-9bifkfaz***"
/// 		if param := cfg.Get("sagId"); param != "" {
/// 			sagId = param
/// 		}
/// 		_, err := sag.NewDnatEntry(ctx, "default", &sag.DnatEntryArgs{
/// 			SagId:        pulumi.String(sagId),
/// 			Type:         pulumi.String("Intranet"),
/// 			IpProtocol:   pulumi.String("any"),
/// 			ExternalIp:   pulumi.String("172.32.0.2"),
/// 			ExternalPort: pulumi.String("any"),
/// 			InternalIp:   pulumi.String("172.16.0.4"),
/// 			InternalPort: pulumi.String("any"),
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
/// import com.pulumi.alicloud.sag.DnatEntry;
/// import com.pulumi.alicloud.sag.DnatEntryArgs;
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
///         final var sagId = config.get("sagId").orElse("sag-9bifkfaz***");
///         var default_ = new DnatEntry("default", DnatEntryArgs.builder()
///             .sagId(sagId)
///             .type("Intranet")
///             .ipProtocol("any")
///             .externalIp("172.32.0.2")
///             .externalPort("any")
///             .internalIp("172.16.0.4")
///             .internalPort("any")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   sagId:
///     type: string
///     default: sag-9bifkfaz***
/// resources:
///   default:
///     type: alicloud:sag:DnatEntry
///     properties:
///       sagId: ${sagId}
///       type: Intranet
///       ipProtocol: any
///       externalIp: 172.32.0.2
///       externalPort: any
///       internalIp: 172.16.0.4
///       internalPort: any
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The Sag DnatEntry can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/dnatEntry:DnatEntry example sag-abc123456:dnat-abc123456
/// ```
class DnatEntry extends pulumi.CustomResource {
  /// The external public IP address.when "type" is "Internet",automatically identify the external ip.
  late final pulumi.Output<String?> externalIp;
  /// The public port.Value range: 1 to 65535 or "any".
  late final pulumi.Output<String> externalPort;
  /// The destination private IP address.
  late final pulumi.Output<String> internalIp;
  /// The destination private port.Value range: 1 to 65535 or "any".
  late final pulumi.Output<String> internalPort;
  /// The protocol type. Valid values: TCP: Forwards packets of the TCP protocol. UDP: Forwards packets of the UDP protocol. Any: Forwards packets of all protocols.
  late final pulumi.Output<String> ipProtocol;
  /// The ID of the SAG instance.
  late final pulumi.Output<String> sagId;
  /// The DNAT type. Valid values: Intranet: DNAT of private IP addresses. Internet: DNAT of public IP addresses
  late final pulumi.Output<String> type;

  /// Creates a new [DnatEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnatEntry]. {@macro pulumi_rocketmq_dnat_entry_dnat_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnatEntry(
    String name, {
    DnatEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rocketmq/dnatEntry:DnatEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.externalIp = registerOutput<String?>('externalIp');
    this.externalPort = registerOutput<String>('externalPort');
    this.internalIp = registerOutput<String>('internalIp');
    this.internalPort = registerOutput<String>('internalPort');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.sagId = registerOutput<String>('sagId');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [DnatEntry] resource's state with the given [name] and [id].
  static DnatEntry get(
    String name,
    pulumi.Input<String> id, {
    DnatEntryState? state,
  }) {
    return DnatEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DnatEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rocketmq/dnatEntry:DnatEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.externalIp = registerOutput<String?>('externalIp');
    this.externalPort = registerOutput<String>('externalPort');
    this.internalIp = registerOutput<String>('internalIp');
    this.internalPort = registerOutput<String>('internalPort');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.sagId = registerOutput<String>('sagId');
    this.type = registerOutput<String>('type');
  }
}
