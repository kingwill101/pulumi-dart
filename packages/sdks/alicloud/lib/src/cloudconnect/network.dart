import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_state.dart';

/// Provides a cloud connect network resource. Cloud Connect Network (CCN) is another important component of Smart Access Gateway. It is a device access matrix composed of Alibaba Cloud distributed access gateways. You can add multiple Smart Access Gateway (SAG) devices to a CCN instance and then attach the CCN instance to a Cloud Enterprise Network (CEN) instance to connect the local branches to the Alibaba Cloud.
///
/// For information about cloud connect network and how to use it, see [What is Cloud Connect Network](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/createcloudconnectnetwork).
///
/// > **NOTE:** Available since v1.59.0.
///
/// > **NOTE:** Only the following regions support create Cloud Connect Network. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// const _default = new alicloud.cloudconnect.Network("default", {
///     name: name,
///     description: name,
///     cidrBlock: "192.168.0.0/24",
///     isDefault: true,
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
/// default = alicloud.cloudconnect.Network("default",
///     name=name,
///     description=name,
///     cidr_block="192.168.0.0/24",
///     is_default=True)
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
///     var @default = new AliCloud.CloudConnect.Network("default", new()
///     {
///         Name = name,
///         Description = name,
///         CidrBlock = "192.168.0.0/24",
///         IsDefault = true,
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
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := cloudconnect.NewNetwork(ctx, "default", &cloudconnect.NetworkArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.0.0/24"),
/// 			IsDefault:   pulumi.Bool(true),
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
///             .name(name)
///             .description(name)
///             .cidrBlock("192.168.0.0/24")
///             .isDefault(true)
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
///     type: alicloud:cloudconnect:Network
///     properties:
///       name: ${name}
///       description: ${name}
///       cidrBlock: 192.168.0.0/24
///       isDefault: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The cloud connect network instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudconnect/network:Network example ccn-abc123456
/// ```
class Network extends pulumi.CustomResource {
  /// The CidrBlock of the CCN instance. Defaults to null.
  late final pulumi.Output<String?> cidrBlock;
  /// The description of the CCN instance. The description can contain 2 to 256 characters. The description must start with English letters, but cannot start with http:// or https://.
  late final pulumi.Output<String?> description;
  /// Created by default. If the client does not have ccn in the binding, it will create a ccn for the user to replace.
  late final pulumi.Output<bool> isDefault;
  /// The name of the CCN instance. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://.
  late final pulumi.Output<String> name;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_cloudconnect_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudconnect/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String?>('cidrBlock');
    this.description = registerOutput<String?>('description');
    this.isDefault = registerOutput<bool>('isDefault');
    this.name = registerOutput<String>('name');
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
          'alicloud:cloudconnect/network:Network',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String?>('cidrBlock');
    this.description = registerOutput<String?>('description');
    this.isDefault = registerOutput<bool>('isDefault');
    this.name = registerOutput<String>('name');
  }
}
