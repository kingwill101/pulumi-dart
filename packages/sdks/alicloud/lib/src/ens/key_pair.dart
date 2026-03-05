import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_pair_args.dart';
import 'key_pair_state.dart';

/// Provides a ENS Key Pair resource.
///
/// For information about ENS Key Pair and how to use it, see [What is Key Pair](https://www.alibabacloud.com/help/en/ens/latest/createkeypair).
///
/// &gt; **NOTE:** Available since v1.133.0.
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
/// const example = new alicloud.ens.KeyPair("example", {
///     keyPairName: name,
///     version: "2017-11-10",
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
/// example = alicloud.ens.KeyPair("example",
///     key_pair_name=name,
///     version="2017-11-10")
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
///     var example = new AliCloud.Ens.KeyPair("example", new()
///     {
///         KeyPairName = name,
///         Version = "2017-11-10",
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
/// 		_, err := ens.NewKeyPair(ctx, "example", &ens.KeyPairArgs{
/// 			KeyPairName: pulumi.String(name),
/// 			Version:     pulumi.String("2017-11-10"),
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
/// import com.pulumi.alicloud.ens.KeyPair;
/// import com.pulumi.alicloud.ens.KeyPairArgs;
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
///         var example = new KeyPair("example", KeyPairArgs.builder()
///             .keyPairName(name)
///             .version("2017-11-10")
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
///   example:
///     type: alicloud:ens:KeyPair
///     properties:
///       keyPairName: ${name}
///       version: 2017-11-10
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Key Pair can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/keyPair:KeyPair example <key_pair_name>:<version>
/// ```
class KeyPair extends pulumi.CustomResource {
  /// The name of the key pair.
  late final pulumi.Output<String> keyPairName;
  /// The version number.
  late final pulumi.Output<String> version;

  /// Creates a new [KeyPair].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyPair]. {@macro pulumi_ens_key_pair_key_pair_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyPair(
    String name, {
    KeyPairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/keyPair:KeyPair',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyPairName = registerOutput<String>('keyPairName');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [KeyPair] resource's state with the given [name] and [id].
  static KeyPair get(
    String name,
    pulumi.Input<String> id, {
    KeyPairState? state,
  }) {
    return KeyPair._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeyPair._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/keyPair:KeyPair',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyPairName = registerOutput<String>('keyPairName');
    version = registerOutput<String>('version');
  }
}
