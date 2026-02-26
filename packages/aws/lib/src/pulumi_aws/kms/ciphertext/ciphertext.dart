import 'package:pulumi/pulumi.dart';
import 'ciphertext_args.dart';

/// The KMS ciphertext resource allows you to encrypt plaintext into ciphertext
/// by using an AWS KMS customer master key. The value returned by this resource
/// is stable across every apply. For a changing ciphertext value each apply, see
/// the <span pulumi-lang-nodejs="`aws.kms.Ciphertext`" pulumi-lang-dotnet="`aws.kms.Ciphertext`" pulumi-lang-go="`kms.Ciphertext`" pulumi-lang-python="`kms.Ciphertext`" pulumi-lang-yaml="`aws.kms.Ciphertext`" pulumi-lang-java="`aws.kms.Ciphertext`">`aws.kms.Ciphertext`</span> data source.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const oauthConfig = new aws.kms.Key("oauth_config", {
/// description: "oauth config",
/// isEnabled: true,
/// });
/// const oauth = new aws.kms.Ciphertext("oauth", {
/// keyId: oauthConfig.keyId,
/// plaintext: `{
/// \\"client_id\\": \\"e587dbae22222f55da22\\",
/// \\"client_secret\\": \\"8289575d00000ace55e1815ec13673955721b8a5\\"
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// oauth_config = aws.kms.Key("oauth_config",
/// description="oauth config",
/// is_enabled=True)
/// oauth = aws.kms.Ciphertext("oauth",
/// key_id=oauth_config.key_id,
/// plaintext="""{
/// \"client_id\": \"e587dbae22222f55da22\",
/// \"client_secret\": \"8289575d00000ace55e1815ec13673955721b8a5\"
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var oauthConfig = new Aws.Kms.Key("oauth_config", new()
/// {
/// Description = "oauth config",
/// IsEnabled = true,
/// });
///
/// var oauth = new Aws.Kms.Ciphertext("oauth", new()
/// {
/// KeyId = oauthConfig.KeyId,
/// Plaintext = @"{
/// \""client_id\"": \""e587dbae22222f55da22\"",
/// \""client_secret\"": \""8289575d00000ace55e1815ec13673955721b8a5\""
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// oauthConfig, err := kms.NewKey(ctx, "oauth_config", &kms.KeyArgs{
/// Description: pulumi.String("oauth config"),
/// IsEnabled:   pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCiphertext(ctx, "oauth", &kms.CiphertextArgs{
/// KeyId:     oauthConfig.KeyId,
/// Plaintext: pulumi.String("{\n  \\\"client_id\\\": \\\"e587dbae22222f55da22\\\",\n  \\\"client_secret\\\": \\\"8289575d00000ace55e1815ec13673955721b8a5\\\"\n}\n"),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.kms.Ciphertext;
/// import com.pulumi.aws.kms.CiphertextArgs;
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
/// var oauthConfig = new Key("oauthConfig", KeyArgs.builder()
/// .description("oauth config")
/// .isEnabled(true)
/// .build());
///
/// var oauth = new Ciphertext("oauth", CiphertextArgs.builder()
/// .keyId(oauthConfig.keyId())
/// .plaintext("""
/// {
/// \"client_id\": \"e587dbae22222f55da22\",
/// \"client_secret\": \"8289575d00000ace55e1815ec13673955721b8a5\"
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// oauthConfig:
/// type: aws:kms:Key
/// name: oauth_config
/// properties:
/// description: oauth config
/// isEnabled: true
/// oauth:
/// type: aws:kms:Ciphertext
/// properties:
/// keyId: ${oauthConfig.keyId}
/// plaintext: |
/// {
/// \"client_id\": \"e587dbae22222f55da22\",
/// \"client_secret\": \"8289575d00000ace55e1815ec13673955721b8a5\"
/// }
/// ```
/// <!--End PulumiCodeChooser -->
class Ciphertext extends CustomResource {
  /// Base64 encoded ciphertext
  late final Output<String> ciphertextBlob;

  /// An optional mapping that makes up the encryption context.
  late final Output<Map<String, String>?> context;

  /// Globally unique key ID for the customer master key.
  late final Output<String> keyId;

  /// Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file.
  late final Output<String?> plaintext;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Data to be encrypted. Note that this may show up in logs. It will not be stored in the state file.
  late final Output<String?> plaintextWo;

  /// Used together with <span pulumi-lang-nodejs="`plaintextWo`" pulumi-lang-dotnet="`PlaintextWo`" pulumi-lang-go="`plaintextWo`" pulumi-lang-python="`plaintext_wo`" pulumi-lang-yaml="`plaintextWo`" pulumi-lang-java="`plaintextWo`">`plaintext_wo`</span> to trigger a replacement. Modify this value when a replacement is required.
  late final Output<String?> plaintextWoVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Ciphertext(
    String name, {
    CiphertextArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kms/ciphertext:Ciphertext',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.ciphertextBlob = registerOutput<String>('ciphertextBlob');
    this.context = registerOutput<Map<String, String>?>('context');
    this.keyId = registerOutput<String>('keyId');
    this.plaintext = registerOutput<String?>('plaintext');
    this.plaintextWo = registerOutput<String?>('plaintextWo');
    this.plaintextWoVersion = registerOutput<String?>('plaintextWoVersion');
    this.region = registerOutput<String>('region');
  }
}
