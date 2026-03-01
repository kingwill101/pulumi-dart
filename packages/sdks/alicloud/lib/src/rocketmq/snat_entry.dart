import 'package:pulumi/pulumi.dart' as pulumi;
import 'snat_entry_args.dart';
import 'snat_entry_state.dart';

/// Provides a Sag SnatEntry resource. This topic describes how to add a SNAT entry to enable the SNAT function. The SNAT function can hide internal IP addresses and resolve private IP address conflicts. With this function, on-premises sites can access internal IP addresses, but cannot be accessed by internal IP addresses. If you do not add a SNAT entry, on-premises sites can access each other only when all related IP addresses do not conflict.
///
/// For information about Sag SnatEntry and how to use it, see [What is Sag SnatEntry](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/addsnatentry).
///
/// > **NOTE:** Available since v1.61.0.
///
/// > **NOTE:** Only the following regions support. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// const sagId = config.get("sagId") || "sag-9bifk***";
/// const _default = new alicloud.sag.SnatEntry("default", {
///     sagId: sagId,
///     cidrBlock: "192.168.7.0/24",
///     snatIp: "192.0.0.2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// sag_id = config.get("sagId")
/// if sag_id is None:
///     sag_id = "sag-9bifk***"
/// default = alicloud.sag.SnatEntry("default",
///     sag_id=sag_id,
///     cidr_block="192.168.7.0/24",
///     snat_ip="192.0.0.2")
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
///     var sagId = config.Get("sagId") ?? "sag-9bifk***";
///     var @default = new AliCloud.Sag.SnatEntry("default", new()
///     {
///         SagId = sagId,
///         CidrBlock = "192.168.7.0/24",
///         SnatIp = "192.0.0.2",
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
/// 		sagId := "sag-9bifk***"
/// 		if param := cfg.Get("sagId"); param != "" {
/// 			sagId = param
/// 		}
/// 		_, err := sag.NewSnatEntry(ctx, "default", &sag.SnatEntryArgs{
/// 			SagId:     pulumi.String(sagId),
/// 			CidrBlock: pulumi.String("192.168.7.0/24"),
/// 			SnatIp:    pulumi.String("192.0.0.2"),
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
/// import com.pulumi.alicloud.sag.SnatEntry;
/// import com.pulumi.alicloud.sag.SnatEntryArgs;
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
///         final var sagId = config.get("sagId").orElse("sag-9bifk***");
///         var default_ = new SnatEntry("default", SnatEntryArgs.builder()
///             .sagId(sagId)
///             .cidrBlock("192.168.7.0/24")
///             .snatIp("192.0.0.2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   sagId:
///     type: string
///     default: sag-9bifk***
/// resources:
///   default:
///     type: alicloud:sag:SnatEntry
///     properties:
///       sagId: ${sagId}
///       cidrBlock: 192.168.7.0/24
///       snatIp: 192.0.0.2
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The Sag SnatEntry can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/snatEntry:SnatEntry example sag-abc123456:snat-abc123456
/// ```
class SnatEntry extends pulumi.CustomResource {
  /// The destination CIDR block.
  late final pulumi.Output<String> cidrBlock;
  /// The ID of the SAG instance.
  late final pulumi.Output<String> sagId;
  /// The public IP address.
  late final pulumi.Output<String> snatIp;

  /// Creates a new [SnatEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnatEntry]. {@macro pulumi_rocketmq_snat_entry_snat_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnatEntry(
    String name, {
    SnatEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rocketmq/snatEntry:SnatEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.sagId = registerOutput<String>('sagId');
    this.snatIp = registerOutput<String>('snatIp');
  }

  /// Gets an existing [SnatEntry] resource's state with the given [name] and [id].
  static SnatEntry get(
    String name,
    pulumi.Input<String> id, {
    SnatEntryState? state,
  }) {
    return SnatEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SnatEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rocketmq/snatEntry:SnatEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.sagId = registerOutput<String>('sagId');
    this.snatIp = registerOutput<String>('snatIp');
  }
}
