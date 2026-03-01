import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_state.dart';

/// Provides a ENS Network resource.
///
/// For information about ENS Network and how to use it, see [What is Network](https://www.alibabacloud.com/help/en/ens/developer-reference/api-createnetwork-1).
///
/// > **NOTE:** Available since v1.213.0.
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
/// const _default = new alicloud.ens.Network("default", {
///     networkName: name,
///     description: name,
///     cidrBlock: "192.168.2.0/24",
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
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
/// default = alicloud.ens.Network("default",
///     network_name=name,
///     description=name,
///     cidr_block="192.168.2.0/24",
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc")
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
///     var @default = new AliCloud.Ens.Network("default", new()
///     {
///         NetworkName = name,
///         Description = name,
///         CidrBlock = "192.168.2.0/24",
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ens"
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
/// 		_, err := ens.NewNetwork(ctx, "default", &ens.NetworkArgs{
/// 			NetworkName: pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.2.0/24"),
/// 			EnsRegionId: pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
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
/// import com.pulumi.alicloud.ens.Network;
/// import com.pulumi.alicloud.ens.NetworkArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .networkName(name)
///             .description(name)
///             .cidrBlock("192.168.2.0/24")
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
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
///   default:
///     type: alicloud:ens:Network
///     properties:
///       networkName: ${name}
///       description: ${name}
///       cidrBlock: 192.168.2.0/24
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Network can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/network:Network example <id>
/// ```
class Network extends pulumi.CustomResource {
  /// The network segment of the network. You can use the following network segments or a subset of them as the network segment: `10.0.0.0/8` (default), `172.16.0.0/12`, `192.168.0.0/16`.
  late final pulumi.Output<String> cidrBlock;
  /// Creation time, timestamp (MS).
  late final pulumi.Output<String> createTime;
  /// Description information.Rules:It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`. Example value: this is my first network.
  late final pulumi.Output<String?> description;
  /// Ens node IDExample value: cn-beijing-telecom.
  late final pulumi.Output<String> ensRegionId;
  /// Name of the network instanceThe naming rules are as follows: 1. Length is 2~128 English or Chinese characters; 2. It must start with a large or small letter or Chinese, not with `http://` and `https://`; 3. Can contain numbers, colons (:), underscores (_), or dashes (-).
  late final pulumi.Output<String?> networkName;
  /// The status of the network instance. Pending: Configuring, Available: Available.
  late final pulumi.Output<String> status;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_ens_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.ensRegionId = registerOutput<String>('ensRegionId');
    this.networkName = registerOutput<String?>('networkName');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [Network] resource's state with the given [name] and [id].
  static Network get(
    String name,
    pulumi.Input<String> id, {
    NetworkState? state,
  }) {
    return Network._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Network._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/network:Network',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.ensRegionId = registerOutput<String>('ensRegionId');
    this.networkName = registerOutput<String?>('networkName');
    this.status = registerOutput<String>('status');
  }
}
