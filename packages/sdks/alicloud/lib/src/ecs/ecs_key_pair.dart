import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_key_pair_args.dart';
import 'ecs_key_pair_state.dart';

/// Provides a ECS Key Pair resource.
///
/// For information about ECS Key Pair and how to use it, see [What is Key Pair](https://www.alibabacloud.com/help/en/doc-detail/51771.htm).
///
/// > **NOTE:** Available since v1.121.0.
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
/// const example = new alicloud.ecs.EcsKeyPair("example", {keyPairName: "key_pair_name"});
/// // Using name prefix to build key pair
/// const prefix = new alicloud.ecs.EcsKeyPair("prefix", {keyNamePrefix: "terraform-test-key-pair-prefix"});
/// // Import an existing public key to build a alicloud key pair
/// const publickey = new alicloud.ecs.EcsKeyPair("publickey", {
///     keyPairName: "my_public_key",
///     publicKey: "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.EcsKeyPair("example", key_pair_name="key_pair_name")
/// # Using name prefix to build key pair
/// prefix = alicloud.ecs.EcsKeyPair("prefix", key_name_prefix="terraform-test-key-pair-prefix")
/// # Import an existing public key to build a alicloud key pair
/// publickey = alicloud.ecs.EcsKeyPair("publickey",
///     key_pair_name="my_public_key",
///     public_key="ssh-rsa AAAAB3Nza12345678qwertyuudsfsg")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Ecs.EcsKeyPair("example", new()
///     {
///         KeyPairName = "key_pair_name",
///     });
///
///     // Using name prefix to build key pair
///     var prefix = new AliCloud.Ecs.EcsKeyPair("prefix", new()
///     {
///         KeyNamePrefix = "terraform-test-key-pair-prefix",
///     });
///
///     // Import an existing public key to build a alicloud key pair
///     var publickey = new AliCloud.Ecs.EcsKeyPair("publickey", new()
///     {
///         KeyPairName = "my_public_key",
///         PublicKey = "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewEcsKeyPair(ctx, "example", &ecs.EcsKeyPairArgs{
/// 			KeyPairName: pulumi.String("key_pair_name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Using name prefix to build key pair
/// 		_, err = ecs.NewEcsKeyPair(ctx, "prefix", &ecs.EcsKeyPairArgs{
/// 			KeyNamePrefix: pulumi.String("terraform-test-key-pair-prefix"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Import an existing public key to build a alicloud key pair
/// 		_, err = ecs.NewEcsKeyPair(ctx, "publickey", &ecs.EcsKeyPairArgs{
/// 			KeyPairName: pulumi.String("my_public_key"),
/// 			PublicKey:   pulumi.String("ssh-rsa AAAAB3Nza12345678qwertyuudsfsg"),
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
/// import com.pulumi.alicloud.ecs.EcsKeyPair;
/// import com.pulumi.alicloud.ecs.EcsKeyPairArgs;
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
///         var example = new EcsKeyPair("example", EcsKeyPairArgs.builder()
///             .keyPairName("key_pair_name")
///             .build());
///
///         // Using name prefix to build key pair
///         var prefix = new EcsKeyPair("prefix", EcsKeyPairArgs.builder()
///             .keyNamePrefix("terraform-test-key-pair-prefix")
///             .build());
///
///         // Import an existing public key to build a alicloud key pair
///         var publickey = new EcsKeyPair("publickey", EcsKeyPairArgs.builder()
///             .keyPairName("my_public_key")
///             .publicKey("ssh-rsa AAAAB3Nza12345678qwertyuudsfsg")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ecs:EcsKeyPair
///     properties:
///       keyPairName: key_pair_name
///   # Using name prefix to build key pair
///   prefix:
///     type: alicloud:ecs:EcsKeyPair
///     properties:
///       keyNamePrefix: terraform-test-key-pair-prefix
///   # Import an existing public key to build a alicloud key pair
///   publickey:
///     type: alicloud:ecs:EcsKeyPair
///     properties:
///       keyPairName: my_public_key
///       publicKey: ssh-rsa AAAAB3Nza12345678qwertyuudsfsg
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Key Pair can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsKeyPair:EcsKeyPair example <id>
/// ```
class EcsKeyPair extends pulumi.CustomResource {
  /// (Available since v1.237.0) The time when the key pair was created.
  late final pulumi.Output<String> createTime;
  /// The fingerprint of the key pair.
  late final pulumi.Output<String> fingerPrint;
  /// The key file.
  late final pulumi.Output<String?> keyFile;
  late final pulumi.Output<String> keyName;
  late final pulumi.Output<String?> keyNamePrefix;
  /// The name of the key pair. The name must be 2 to 128 characters in length. The name must start with a letter and cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  late final pulumi.Output<String> keyPairName;
  /// The public key of the key pair.
  late final pulumi.Output<String?> publicKey;
  /// The ID of the resource group to which to add the key pair.
  late final pulumi.Output<String> resourceGroupId;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [EcsKeyPair].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsKeyPair]. {@macro pulumi_ecs_ecs_key_pair_ecs_key_pair_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsKeyPair(
    String name, {
    EcsKeyPairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsKeyPair:EcsKeyPair',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.fingerPrint = registerOutput<String>('fingerPrint');
    this.keyFile = registerOutput<String?>('keyFile');
    this.keyName = registerOutput<String>('keyName');
    this.keyNamePrefix = registerOutput<String?>('keyNamePrefix');
    this.keyPairName = registerOutput<String>('keyPairName');
    this.publicKey = registerOutput<String?>('publicKey');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [EcsKeyPair] resource's state with the given [name] and [id].
  static EcsKeyPair get(
    String name,
    pulumi.Input<String> id, {
    EcsKeyPairState? state,
  }) {
    return EcsKeyPair._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsKeyPair._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsKeyPair:EcsKeyPair',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.fingerPrint = registerOutput<String>('fingerPrint');
    this.keyFile = registerOutput<String?>('keyFile');
    this.keyName = registerOutput<String>('keyName');
    this.keyNamePrefix = registerOutput<String?>('keyNamePrefix');
    this.keyPairName = registerOutput<String>('keyPairName');
    this.publicKey = registerOutput<String?>('publicKey');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
