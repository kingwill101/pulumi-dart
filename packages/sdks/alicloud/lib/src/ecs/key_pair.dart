import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_pair_args.dart';
import 'key_pair_state.dart';

/// &gt; **DEPRECATED:** This resource has been renamed to alicloud.ecs.EcsKeyPair from version 1.121.0.
///
/// Provides a key pair resource.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const basic = new alicloud.ecs.KeyPair("basic", {keyName: "terraform-test-key-pair"});
/// // Using name prefix to build key pair
/// const prefix = new alicloud.ecs.KeyPair("prefix", {keyNamePrefix: "terraform-test-key-pair-prefix"});
/// // Import an existing public key to build a alicloud key pair
/// const publickey = new alicloud.ecs.KeyPair("publickey", {
///     keyName: "my_public_key",
///     publicKey: "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// basic = alicloud.ecs.KeyPair("basic", key_name="terraform-test-key-pair")
/// # Using name prefix to build key pair
/// prefix = alicloud.ecs.KeyPair("prefix", key_name_prefix="terraform-test-key-pair-prefix")
/// # Import an existing public key to build a alicloud key pair
/// publickey = alicloud.ecs.KeyPair("publickey",
///     key_name="my_public_key",
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
///     var basic = new AliCloud.Ecs.KeyPair("basic", new()
///     {
///         KeyName = "terraform-test-key-pair",
///     });
///
///     // Using name prefix to build key pair
///     var prefix = new AliCloud.Ecs.KeyPair("prefix", new()
///     {
///         KeyNamePrefix = "terraform-test-key-pair-prefix",
///     });
///
///     // Import an existing public key to build a alicloud key pair
///     var publickey = new AliCloud.Ecs.KeyPair("publickey", new()
///     {
///         KeyName = "my_public_key",
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
/// 		_, err := ecs.NewKeyPair(ctx, "basic", &ecs.KeyPairArgs{
/// 			KeyName: pulumi.String("terraform-test-key-pair"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Using name prefix to build key pair
/// 		_, err = ecs.NewKeyPair(ctx, "prefix", &ecs.KeyPairArgs{
/// 			KeyNamePrefix: pulumi.String("terraform-test-key-pair-prefix"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Import an existing public key to build a alicloud key pair
/// 		_, err = ecs.NewKeyPair(ctx, "publickey", &ecs.KeyPairArgs{
/// 			KeyName:   pulumi.String("my_public_key"),
/// 			PublicKey: pulumi.String("ssh-rsa AAAAB3Nza12345678qwertyuudsfsg"),
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
/// import com.pulumi.alicloud.ecs.KeyPair;
/// import com.pulumi.alicloud.ecs.KeyPairArgs;
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
///         var basic = new KeyPair("basic", KeyPairArgs.builder()
///             .keyName("terraform-test-key-pair")
///             .build());
///
///         // Using name prefix to build key pair
///         var prefix = new KeyPair("prefix", KeyPairArgs.builder()
///             .keyNamePrefix("terraform-test-key-pair-prefix")
///             .build());
///
///         // Import an existing public key to build a alicloud key pair
///         var publickey = new KeyPair("publickey", KeyPairArgs.builder()
///             .keyName("my_public_key")
///             .publicKey("ssh-rsa AAAAB3Nza12345678qwertyuudsfsg")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: alicloud:ecs:KeyPair
///     properties:
///       keyName: terraform-test-key-pair
///   # Using name prefix to build key pair
///   prefix:
///     type: alicloud:ecs:KeyPair
///     properties:
///       keyNamePrefix: terraform-test-key-pair-prefix
///   # Import an existing public key to build a alicloud key pair
///   publickey:
///     type: alicloud:ecs:KeyPair
///     properties:
///       keyName: my_public_key
///       publicKey: ssh-rsa AAAAB3Nza12345678qwertyuudsfsg
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Key pair can be imported using the name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/keyPair:KeyPair example my_public_key
/// ```
class KeyPair extends pulumi.CustomResource {
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> fingerPrint;
  /// The name of file to save your new key pair's private key. Strongly suggest you to specified it when you creating key pair, otherwise, you wouldn't get its private key ever.
  late final pulumi.Output<String?> keyFile;
  /// The key pair's name. It is the only in one Alicloud account.
  late final pulumi.Output<String> keyName;
  late final pulumi.Output<String?> keyNamePrefix;
  late final pulumi.Output<String> keyPairName;
  /// You can import an existing public key and using Alicloud key pair to manage it. If this parameter is specified, `resource_group_id` is the key pair belongs.
  late final pulumi.Output<String?> publicKey;
  /// The Id of resource group which the key pair belongs.
  late final pulumi.Output<String> resourceGroupId;
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [KeyPair].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyPair]. {@macro pulumi_ecs_key_pair_key_pair_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyPair(
    String name, {
    KeyPairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/keyPair:KeyPair',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    fingerPrint = registerOutput<String>('fingerPrint');
    keyFile = registerOutput<String?>('keyFile');
    keyName = registerOutput<String>('keyName');
    keyNamePrefix = registerOutput<String?>('keyNamePrefix');
    keyPairName = registerOutput<String>('keyPairName');
    publicKey = registerOutput<String?>('publicKey');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    tags = registerOutput<Map<String, String>?>('tags');
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
          'alicloud:ecs/keyPair:KeyPair',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    fingerPrint = registerOutput<String>('fingerPrint');
    keyFile = registerOutput<String?>('keyFile');
    keyName = registerOutput<String>('keyName');
    keyNamePrefix = registerOutput<String?>('keyNamePrefix');
    keyPairName = registerOutput<String>('keyPairName');
    publicKey = registerOutput<String?>('publicKey');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
