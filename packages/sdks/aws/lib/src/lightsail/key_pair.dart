import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_pair_args.dart';
import 'key_pair_state.dart';

/// Manages a Lightsail Key Pair for use with Lightsail Instances. Use this resource to create or import key pairs that are separate from EC2 Key Pairs and required for Lightsail instances.
///
/// &gt; **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details
///
/// ## Example Usage
///
/// ### Create New Key Pair
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.KeyPair("example", {name: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.KeyPair("example", name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LightSail.KeyPair("example", new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lightsail.NewKeyPair(ctx, "example", &lightsail.KeyPairArgs{
/// 			Name: pulumi.String("example"),
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
/// import com.pulumi.aws.lightsail.KeyPair;
/// import com.pulumi.aws.lightsail.KeyPairArgs;
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
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:KeyPair
///     properties:
///       name: example
/// ```
///
///
/// ### Create New Key Pair with PGP Encrypted Private Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.KeyPair("example", {
///     name: "example",
///     pgpKey: "keybase:keybaseusername",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.KeyPair("example",
///     name="example",
///     pgp_key="keybase:keybaseusername")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LightSail.KeyPair("example", new()
///     {
///         Name = "example",
///         PgpKey = "keybase:keybaseusername",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lightsail.NewKeyPair(ctx, "example", &lightsail.KeyPairArgs{
/// 			Name:   pulumi.String("example"),
/// 			PgpKey: pulumi.String("keybase:keybaseusername"),
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
/// import com.pulumi.aws.lightsail.KeyPair;
/// import com.pulumi.aws.lightsail.KeyPairArgs;
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
///             .name("example")
///             .pgpKey("keybase:keybaseusername")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:KeyPair
///     properties:
///       name: example
///       pgpKey: keybase:keybaseusername
/// ```
///
///
/// ### Existing Public Key Import
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.lightsail.KeyPair("example", {
///     name: "example",
///     publicKey: std.file({
///         input: "~/.ssh/id_rsa.pub",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lightsail.KeyPair("example",
///     name="example",
///     public_key=std.file(input="~/.ssh/id_rsa.pub").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LightSail.KeyPair("example", new()
///     {
///         Name = "example",
///         PublicKey = Std.File.Invoke(new()
///         {
///             Input = "~/.ssh/id_rsa.pub",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/id_rsa.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lightsail.NewKeyPair(ctx, "example", &lightsail.KeyPairArgs{
/// 			Name:      pulumi.String("example"),
/// 			PublicKey: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.aws.lightsail.KeyPair;
/// import com.pulumi.aws.lightsail.KeyPairArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///             .name("example")
///             .publicKey(StdFunctions.file(FileArgs.builder()
///                 .input("~/.ssh/id_rsa.pub")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:KeyPair
///     properties:
///       name: example
///       publicKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: ~/.ssh/id_rsa.pub
///           return: result
/// ```
///
///
/// ## Import
///
/// You cannot import Lightsail Key Pairs because the private and public key are only available on initial creation.
class KeyPair extends pulumi.CustomResource {
  /// ARN of the Lightsail key pair.
  late final pulumi.Output<String> arn;

  /// MD5 public key fingerprint for the encrypted private key.
  late final pulumi.Output<String> encryptedFingerprint;

  /// Private key material, base 64 encoded and encrypted with the given `pgp_key`. This is only populated when creating a new key and `pgp_key` is supplied.
  late final pulumi.Output<String> encryptedPrivateKey;

  /// MD5 public key fingerprint as specified in section 4 of RFC 4716.
  late final pulumi.Output<String> fingerprint;

  /// Name of the Lightsail Key Pair. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// PGP key to encrypt the resulting private key material. Only used when creating a new key pair.
  late final pulumi.Output<String?> pgpKey;

  /// Private key, base64 encoded. This is only populated when creating a new key, and when no `pgp_key` is provided.
  late final pulumi.Output<String> privateKey;

  /// Public key material. This public key will be imported into Lightsail.
  late final pulumi.Output<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **Note:** A PGP key is not required, however it is strongly encouraged. Without a PGP key, the private key material will be stored in state unencrypted. `pgp_key` is ignored if `public_key` is supplied.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [KeyPair].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyPair]. {@macro pulumi_lightsail_key_pair_key_pair_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyPair(
    String name, {
    KeyPairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:lightsail/keyPair:KeyPair',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    encryptedFingerprint = registerOutput<String>('encryptedFingerprint');
    encryptedPrivateKey = registerOutput<String>('encryptedPrivateKey');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    pgpKey = registerOutput<String?>('pgpKey');
    privateKey = registerOutput<String>('privateKey');
    publicKey = registerOutput<String>('publicKey');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
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
         'aws:lightsail/keyPair:KeyPair',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    encryptedFingerprint = registerOutput<String>('encryptedFingerprint');
    encryptedPrivateKey = registerOutput<String>('encryptedPrivateKey');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    pgpKey = registerOutput<String?>('pgpKey');
    privateKey = registerOutput<String>('privateKey');
    publicKey = registerOutput<String>('publicKey');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
