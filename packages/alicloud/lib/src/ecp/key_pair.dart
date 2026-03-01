import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_pair_args.dart';

/// Provides a Elastic Cloud Phone (ECP) Key Pair resource.
///
/// For information about Elastic Cloud Phone (ECP) Key Pair and how to use it, see [What is Key Pair](https://next.api.aliyun.com/document/cloudphone/2020-12-30/ImportImage).
///
/// > **NOTE:** Available since v1.130.0.
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
/// const example = new alicloud.ecp.KeyPair("example", {
///     keyPairName: "my-KeyPair",
///     publicKeyBody: "ssh-rsa AAAAxxxxxxxxxxtyuudsfsg",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecp.KeyPair("example",
///     key_pair_name="my-KeyPair",
///     public_key_body="ssh-rsa AAAAxxxxxxxxxxtyuudsfsg")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Ecp.KeyPair("example", new()
///     {
///         KeyPairName = "my-KeyPair",
///         PublicKeyBody = "ssh-rsa AAAAxxxxxxxxxxtyuudsfsg",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecp.NewKeyPair(ctx, "example", &ecp.KeyPairArgs{
/// 			KeyPairName:   pulumi.String("my-KeyPair"),
/// 			PublicKeyBody: pulumi.String("ssh-rsa AAAAxxxxxxxxxxtyuudsfsg"),
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
/// import com.pulumi.alicloud.ecp.KeyPair;
/// import com.pulumi.alicloud.ecp.KeyPairArgs;
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
///         var example = new KeyPair("example", KeyPairArgs.builder()
///             .keyPairName("my-KeyPair")
///             .publicKeyBody("ssh-rsa AAAAxxxxxxxxxxtyuudsfsg")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ecp:KeyPair
///     properties:
///       keyPairName: my-KeyPair
///       publicKeyBody: ssh-rsa AAAAxxxxxxxxxxtyuudsfsg
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Elastic Cloud Phone (ECP) Key Pair can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecp/keyPair:KeyPair example <key_pair_name>
/// ```
class KeyPair extends pulumi.CustomResource {
  /// The Key Name.
  late final pulumi.Output<String> keyPairName;
  /// The public key body.
  late final pulumi.Output<String> publicKeyBody;

  /// Creates a new [KeyPair].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyPair]. {@macro pulumi_ecp_key_pair_key_pair_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyPair(
    String name, {
    KeyPairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecp/keyPair:KeyPair',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keyPairName = registerOutput<String>('keyPairName');
    this.publicKeyBody = registerOutput<String>('publicKeyBody');
  }
}
