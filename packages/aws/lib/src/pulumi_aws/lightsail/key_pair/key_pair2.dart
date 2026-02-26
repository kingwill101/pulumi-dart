import 'package:pulumi/pulumi.dart';
import 'key_pair_args2.dart';

/// Manages a Lightsail Key Pair for use with Lightsail Instances. Use this resource to create or import key pairs that are separate from EC2 Key Pairs and required for Lightsail instances.
///
/// > **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details
///
/// ## Example Usage
///
/// ### Create New Key Pair
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.LightSail.KeyPair("example", new()
/// {
/// Name = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewKeyPair(ctx, "example", &lightsail.KeyPairArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new KeyPair("example", KeyPairArgs.builder()
/// .name("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:KeyPair
/// properties:
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Create New Key Pair with PGP Encrypted Private Key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.KeyPair("example", {
/// name: "example",
/// pgpKey: "keybase:keybaseusername",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.KeyPair("example",
/// name="example",
/// pgp_key="keybase:keybaseusername")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.KeyPair("example", new()
/// {
/// Name = "example",
/// PgpKey = "keybase:keybaseusername",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewKeyPair(ctx, "example", &lightsail.KeyPairArgs{
/// Name:   pulumi.String("example"),
/// PgpKey: pulumi.String("keybase:keybaseusername"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new KeyPair("example", KeyPairArgs.builder()
/// .name("example")
/// .pgpKey("keybase:keybaseusername")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:KeyPair
/// properties:
/// name: example
/// pgpKey: keybase:keybaseusername
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Existing Public Key Import
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.lightsail.KeyPair("example", {
/// name: "example",
/// publicKey: std.file({
/// input: "~/.ssh/id_rsa.pub",
/// }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lightsail.KeyPair("example",
/// name="example",
/// public_key=std.file(input="~/.ssh/id_rsa.pub").result)
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
/// var example = new Aws.LightSail.KeyPair("example", new()
/// {
/// Name = "example",
/// PublicKey = Std.File.Invoke(new()
/// {
/// Input = "~/.ssh/id_rsa.pub",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "~/.ssh/id_rsa.pub",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = lightsail.NewKeyPair(ctx, "example", &lightsail.KeyPairArgs{
/// Name:      pulumi.String("example"),
/// PublicKey: pulumi.String(invokeFile.Result),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new KeyPair("example", KeyPairArgs.builder()
/// .name("example")
/// .publicKey(StdFunctions.file(FileArgs.builder()
/// .input("~/.ssh/id_rsa.pub")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:KeyPair
/// properties:
/// name: example
/// publicKey:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: ~/.ssh/id_rsa.pub
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// You cannot import Lightsail Key Pairs because the private and public key are only available on initial creation.
class KeyPair2 extends CustomResource {
  /// ARN of the Lightsail key pair.
  late final Output<String> arn;

  /// MD5 public key fingerprint for the encrypted private key.
  late final Output<String> encryptedFingerprint;

  /// Private key material, base 64 encoded and encrypted with the given <span pulumi-lang-nodejs="`pgpKey`" pulumi-lang-dotnet="`PgpKey`" pulumi-lang-go="`pgpKey`" pulumi-lang-python="`pgp_key`" pulumi-lang-yaml="`pgpKey`" pulumi-lang-java="`pgpKey`">`pgp_key`</span>. This is only populated when creating a new key and <span pulumi-lang-nodejs="`pgpKey`" pulumi-lang-dotnet="`PgpKey`" pulumi-lang-go="`pgpKey`" pulumi-lang-python="`pgp_key`" pulumi-lang-yaml="`pgpKey`" pulumi-lang-java="`pgpKey`">`pgp_key`</span> is supplied.
  late final Output<String> encryptedPrivateKey;

  /// MD5 public key fingerprint as specified in section 4 of RFC 4716.
  late final Output<String> fingerprint;

  /// Name of the Lightsail Key Pair. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// PGP key to encrypt the resulting private key material. Only used when creating a new key pair.
  late final Output<String?> pgpKey;

  /// Private key, base64 encoded. This is only populated when creating a new key, and when no <span pulumi-lang-nodejs="`pgpKey`" pulumi-lang-dotnet="`PgpKey`" pulumi-lang-go="`pgpKey`" pulumi-lang-python="`pgp_key`" pulumi-lang-yaml="`pgpKey`" pulumi-lang-java="`pgpKey`">`pgp_key`</span> is provided.
  late final Output<String> privateKey;

  /// Public key material. This public key will be imported into Lightsail.
  late final Output<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note:** A PGP key is not required, however it is strongly encouraged. Without a PGP key, the private key material will be stored in state unencrypted. <span pulumi-lang-nodejs="`pgpKey`" pulumi-lang-dotnet="`PgpKey`" pulumi-lang-go="`pgpKey`" pulumi-lang-python="`pgp_key`" pulumi-lang-yaml="`pgpKey`" pulumi-lang-java="`pgpKey`">`pgp_key`</span> is ignored if <span pulumi-lang-nodejs="`publicKey`" pulumi-lang-dotnet="`PublicKey`" pulumi-lang-go="`publicKey`" pulumi-lang-python="`public_key`" pulumi-lang-yaml="`publicKey`" pulumi-lang-java="`publicKey`">`public_key`</span> is supplied.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  KeyPair2(
    String name, {
    KeyPairArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/keyPair:KeyPair',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.encryptedFingerprint = registerOutput<String>('encryptedFingerprint');
    this.encryptedPrivateKey = registerOutput<String>('encryptedPrivateKey');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.pgpKey = registerOutput<String?>('pgpKey');
    this.privateKey = registerOutput<String>('privateKey');
    this.publicKey = registerOutput<String>('publicKey');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
