import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alias_args.dart';
import 'get_alias_result.dart';
import 'get_cipher_text_args.dart';
import 'get_cipher_text_result.dart';
import 'get_custom_key_store_args.dart';
import 'get_custom_key_store_result.dart';
import 'get_key_args.dart';
import 'get_key_result.dart';
import 'get_public_key_args.dart';
import 'get_public_key_result.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';
import 'get_secrets_args.dart';
import 'get_secrets_result.dart';

/// Use this data source to get the ARN of a KMS key alias.
/// By using this data source, you can reference key alias
/// without having to hard code the ARN as input.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = aws.kms.getAlias({
///     name: "alias/aws/s3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.kms.get_alias(name="alias/aws/s3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3 = Aws.Kms.GetAlias.Invoke(new()
///     {
///         Name = "alias/aws/s3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.LookupAlias(ctx, &kms.LookupAliasArgs{
/// 			Name: "alias/aws/s3",
/// 		}, nil)
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
/// import com.pulumi.aws.kms.KmsFunctions;
/// import com.pulumi.aws.kms.inputs.GetAliasArgs;
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
///         final var s3 = KmsFunctions.getAlias(GetAliasArgs.builder()
///             .name("alias/aws/s3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   s3:
///     fn::invoke:
///       function: aws:kms:getAlias
///       arguments:
///         name: alias/aws/s3
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_alias_get_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAliasResult> getAlias(
  GetAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getAlias:getAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAliasResult.fromMap(result);
}

/// The KMS ciphertext data source allows you to encrypt plaintext into ciphertext
/// by using an AWS KMS customer master key. The value returned by this data source
/// changes every apply. For a stable ciphertext value, see the `aws.kms.Ciphertext`
/// resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const oauthConfig = new aws.kms.Key("oauth_config", {
///     description: "oauth config",
///     isEnabled: true,
/// });
/// const oauth = aws.kms.getCipherTextOutput({
///     keyId: oauthConfig.keyId,
///     plaintext: `{
///   \\"client_id\\": \\"e587dbae22222f55da22\\",
///   \\"client_secret\\": \\"8289575d00000ace55e1815ec13673955721b8a5\\"
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// oauth_config = aws.kms.Key("oauth_config",
///     description="oauth config",
///     is_enabled=True)
/// oauth = aws.kms.get_cipher_text_output(key_id=oauth_config.key_id,
///     plaintext="""{
///   \"client_id\": \"e587dbae22222f55da22\",
///   \"client_secret\": \"8289575d00000ace55e1815ec13673955721b8a5\"
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
///     var oauthConfig = new Aws.Kms.Key("oauth_config", new()
///     {
///         Description = "oauth config",
///         IsEnabled = true,
///     });
///
///     var oauth = Aws.Kms.GetCipherText.Invoke(new()
///     {
///         KeyId = oauthConfig.KeyId,
///         Plaintext = @"{
///   \""client_id\"": \""e587dbae22222f55da22\"",
///   \""client_secret\"": \""8289575d00000ace55e1815ec13673955721b8a5\""
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		oauthConfig, err := kms.NewKey(ctx, "oauth_config", &kms.KeyArgs{
/// 			Description: pulumi.String("oauth config"),
/// 			IsEnabled:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = kms.GetCipherTextOutput(ctx, kms.GetCipherTextOutputArgs{
/// 			KeyId:     oauthConfig.KeyId,
/// 			Plaintext: pulumi.String("{\n  \\\"client_id\\\": \\\"e587dbae22222f55da22\\\",\n  \\\"client_secret\\\": \\\"8289575d00000ace55e1815ec13673955721b8a5\\\"\n}\n"),
/// 		}, nil)
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.kms.KmsFunctions;
/// import com.pulumi.aws.kms.inputs.GetCipherTextArgs;
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
///         var oauthConfig = new Key("oauthConfig", KeyArgs.builder()
///             .description("oauth config")
///             .isEnabled(true)
///             .build());
///
///         final var oauth = KmsFunctions.getCipherText(GetCipherTextArgs.builder()
///             .keyId(oauthConfig.keyId())
///             .plaintext("""
/// {
///   \"client_id\": \"e587dbae22222f55da22\",
///   \"client_secret\": \"8289575d00000ace55e1815ec13673955721b8a5\"
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   oauthConfig:
///     type: aws:kms:Key
///     name: oauth_config
///     properties:
///       description: oauth config
///       isEnabled: true
/// variables:
///   oauth:
///     fn::invoke:
///       function: aws:kms:getCipherText
///       arguments:
///         keyId: ${oauthConfig.keyId}
///         plaintext: |
///           {
///             \"client_id\": \"e587dbae22222f55da22\",
///             \"client_secret\": \"8289575d00000ace55e1815ec13673955721b8a5\"
///           }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_cipher_text_get_cipher_text_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCipherTextResult> getCipherText(
  GetCipherTextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getCipherText:getCipherText',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCipherTextResult.fromMap(result);
}

/// Use this data source to get the metadata KMS custom key store.
/// By using this data source, you can reference KMS custom key store
/// without having to hard code the ID as input.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const keystore = aws.kms.getCustomKeyStore({
///     customKeyStoreName: "my_cloudhsm",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// keystore = aws.kms.get_custom_key_store(custom_key_store_name="my_cloudhsm")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keystore = Aws.Kms.GetCustomKeyStore.Invoke(new()
///     {
///         CustomKeyStoreName = "my_cloudhsm",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.LookupCustomKeyStore(ctx, &kms.LookupCustomKeyStoreArgs{
/// 			CustomKeyStoreName: pulumi.StringRef("my_cloudhsm"),
/// 		}, nil)
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
/// import com.pulumi.aws.kms.KmsFunctions;
/// import com.pulumi.aws.kms.inputs.GetCustomKeyStoreArgs;
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
///         final var keystore = KmsFunctions.getCustomKeyStore(GetCustomKeyStoreArgs.builder()
///             .customKeyStoreName("my_cloudhsm")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   keystore:
///     fn::invoke:
///       function: aws:kms:getCustomKeyStore
///       arguments:
///         customKeyStoreName: my_cloudhsm
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_custom_key_store_get_custom_key_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomKeyStoreResult> getCustomKeyStore(
  GetCustomKeyStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getCustomKeyStore:getCustomKeyStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomKeyStoreResult.fromMap(result);
}

/// Use this data source to get detailed information about
/// the specified KMS Key with flexible key id input.
/// This can be useful to reference key alias
/// without having to hard code the ARN as input.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byAlias = aws.kms.getKey({
///     keyId: "alias/my-key",
/// });
/// const byId = aws.kms.getKey({
///     keyId: "1234abcd-12ab-34cd-56ef-1234567890ab",
/// });
/// const byAliasArn = aws.kms.getKey({
///     keyId: "arn:aws:kms:us-east-1:111122223333:alias/my-key",
/// });
/// const byKeyArn = aws.kms.getKey({
///     keyId: "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_alias = aws.kms.get_key(key_id="alias/my-key")
/// by_id = aws.kms.get_key(key_id="1234abcd-12ab-34cd-56ef-1234567890ab")
/// by_alias_arn = aws.kms.get_key(key_id="arn:aws:kms:us-east-1:111122223333:alias/my-key")
/// by_key_arn = aws.kms.get_key(key_id="arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byAlias = Aws.Kms.GetKey.Invoke(new()
///     {
///         KeyId = "alias/my-key",
///     });
///
///     var byId = Aws.Kms.GetKey.Invoke(new()
///     {
///         KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
///     });
///
///     var byAliasArn = Aws.Kms.GetKey.Invoke(new()
///     {
///         KeyId = "arn:aws:kms:us-east-1:111122223333:alias/my-key",
///     });
///
///     var byKeyArn = Aws.Kms.GetKey.Invoke(new()
///     {
///         KeyId = "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.LookupKey(ctx, &kms.LookupKeyArgs{
/// 			KeyId: "alias/my-key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.LookupKey(ctx, &kms.LookupKeyArgs{
/// 			KeyId: "1234abcd-12ab-34cd-56ef-1234567890ab",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.LookupKey(ctx, &kms.LookupKeyArgs{
/// 			KeyId: "arn:aws:kms:us-east-1:111122223333:alias/my-key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.LookupKey(ctx, &kms.LookupKeyArgs{
/// 			KeyId: "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
/// 		}, nil)
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
/// import com.pulumi.aws.kms.KmsFunctions;
/// import com.pulumi.aws.kms.inputs.GetKeyArgs;
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
///         final var byAlias = KmsFunctions.getKey(GetKeyArgs.builder()
///             .keyId("alias/my-key")
///             .build());
///
///         final var byId = KmsFunctions.getKey(GetKeyArgs.builder()
///             .keyId("1234abcd-12ab-34cd-56ef-1234567890ab")
///             .build());
///
///         final var byAliasArn = KmsFunctions.getKey(GetKeyArgs.builder()
///             .keyId("arn:aws:kms:us-east-1:111122223333:alias/my-key")
///             .build());
///
///         final var byKeyArn = KmsFunctions.getKey(GetKeyArgs.builder()
///             .keyId("arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byAlias:
///     fn::invoke:
///       function: aws:kms:getKey
///       arguments:
///         keyId: alias/my-key
///   byId:
///     fn::invoke:
///       function: aws:kms:getKey
///       arguments:
///         keyId: 1234abcd-12ab-34cd-56ef-1234567890ab
///   byAliasArn:
///     fn::invoke:
///       function: aws:kms:getKey
///       arguments:
///         keyId: arn:aws:kms:us-east-1:111122223333:alias/my-key
///   byKeyArn:
///     fn::invoke:
///       function: aws:kms:getKey
///       arguments:
///         keyId: arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_key_get_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyResult> getKey(
  GetKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getKey:getKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyResult.fromMap(result);
}

/// Use this data source to get the public key about the specified KMS Key with flexible key id input. This can be useful to reference key alias without having to hard code the ARN as input.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byAlias = aws.kms.getPublicKey({
///     keyId: "alias/my-key",
/// });
/// const byId = aws.kms.getPublicKey({
///     keyId: "1234abcd-12ab-34cd-56ef-1234567890ab",
/// });
/// const byAliasArn = aws.kms.getPublicKey({
///     keyId: "arn:aws:kms:us-east-1:111122223333:alias/my-key",
/// });
/// const byKeyArn = aws.kms.getPublicKey({
///     keyId: "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_alias = aws.kms.get_public_key(key_id="alias/my-key")
/// by_id = aws.kms.get_public_key(key_id="1234abcd-12ab-34cd-56ef-1234567890ab")
/// by_alias_arn = aws.kms.get_public_key(key_id="arn:aws:kms:us-east-1:111122223333:alias/my-key")
/// by_key_arn = aws.kms.get_public_key(key_id="arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byAlias = Aws.Kms.GetPublicKey.Invoke(new()
///     {
///         KeyId = "alias/my-key",
///     });
///
///     var byId = Aws.Kms.GetPublicKey.Invoke(new()
///     {
///         KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
///     });
///
///     var byAliasArn = Aws.Kms.GetPublicKey.Invoke(new()
///     {
///         KeyId = "arn:aws:kms:us-east-1:111122223333:alias/my-key",
///     });
///
///     var byKeyArn = Aws.Kms.GetPublicKey.Invoke(new()
///     {
///         KeyId = "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.GetPublicKey(ctx, &kms.GetPublicKeyArgs{
/// 			KeyId: "alias/my-key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.GetPublicKey(ctx, &kms.GetPublicKeyArgs{
/// 			KeyId: "1234abcd-12ab-34cd-56ef-1234567890ab",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.GetPublicKey(ctx, &kms.GetPublicKeyArgs{
/// 			KeyId: "arn:aws:kms:us-east-1:111122223333:alias/my-key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.GetPublicKey(ctx, &kms.GetPublicKeyArgs{
/// 			KeyId: "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
/// 		}, nil)
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
/// import com.pulumi.aws.kms.KmsFunctions;
/// import com.pulumi.aws.kms.inputs.GetPublicKeyArgs;
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
///         final var byAlias = KmsFunctions.getPublicKey(GetPublicKeyArgs.builder()
///             .keyId("alias/my-key")
///             .build());
///
///         final var byId = KmsFunctions.getPublicKey(GetPublicKeyArgs.builder()
///             .keyId("1234abcd-12ab-34cd-56ef-1234567890ab")
///             .build());
///
///         final var byAliasArn = KmsFunctions.getPublicKey(GetPublicKeyArgs.builder()
///             .keyId("arn:aws:kms:us-east-1:111122223333:alias/my-key")
///             .build());
///
///         final var byKeyArn = KmsFunctions.getPublicKey(GetPublicKeyArgs.builder()
///             .keyId("arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byAlias:
///     fn::invoke:
///       function: aws:kms:getPublicKey
///       arguments:
///         keyId: alias/my-key
///   byId:
///     fn::invoke:
///       function: aws:kms:getPublicKey
///       arguments:
///         keyId: 1234abcd-12ab-34cd-56ef-1234567890ab
///   byAliasArn:
///     fn::invoke:
///       function: aws:kms:getPublicKey
///       arguments:
///         keyId: arn:aws:kms:us-east-1:111122223333:alias/my-key
///   byKeyArn:
///     fn::invoke:
///       function: aws:kms:getPublicKey
///       arguments:
///         keyId: arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_public_key_get_public_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicKeyResult> getPublicKey(
  GetPublicKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getPublicKey:getPublicKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicKeyResult.fromMap(result);
}

/// !&gt; **WARNING:** This data source's functionality was removed in version 2.0.0 of the AWS Provider. You can migrate existing configurations to the `aws.kms.getSecrets` data source following instructions available in the Version 2 Upgrade Guide. This data source will be removed in a future version.
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_secret_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getSecret:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}

/// Decrypt multiple secrets from data encrypted with the AWS KMS service.
///
/// ## Example Usage
///
/// If you do not already have a `CiphertextBlob` from encrypting a KMS secret, you can use the below commands to obtain one using the [AWS CLI kms encrypt](https://docs.aws.amazon.com/cli/latest/reference/kms/encrypt.html) command. This requires you to have your AWS CLI setup correctly and replace the `--key-id` with your own. Alternatively you can use `--plaintext 'master-password'` (CLIv1) or `--plaintext fileb://&lt;(echo -n 'master-password')` (CLIv2) instead of reading from a file.
///
/// &gt; If you have a newline character at the end of your file, it will be decrypted with this newline character intact. For most use cases this is undesirable and leads to incorrect passwords or invalid values, as well as possible changes in the plan. Be sure to use `echo -n` if necessary.
/// &gt; If you are using asymmetric keys ensure you are using the right encryption algorithm when you encrypt and decrypt else you will get IncorrectKeyException during the decrypt phase.
///
/// ```console
/// % echo -n 'master-password' > plaintext-password
/// % aws kms encrypt --key-id ab123456-c012-4567-890a-deadbeef123 --plaintext fileb://plaintext-password --encryption-context foo=bar --output text --query CiphertextBlob
/// AQECAHgaPa0J8WadplGCqqVAr4HNvDaFSQ+NaiwIBhmm6qDSFwAAAGIwYAYJKoZIhvcNAQcGoFMwUQIBADBMBgkqhkiG9w0BBwEwHgYJYIZIAWUDBAEuMBEEDI+LoLdvYv8l41OhAAIBEIAfx49FFJCLeYrkfMfAw6XlnxP23MmDBdqP8dPp28OoAQ==
/// % aws kms encrypt --key-id ab123456-c012-4567-890a-deadbeef123 --plaintext fileb://plaintext-password --encryption-algorithm RSAES_OAEP_SHA_256 --output text --query CiphertextBlob
/// AQECAHgaPa0J8WadplGCqqVAr4HNvDaFSQ+NaiwIBhmm6qDSFwAAAGIwYAYJKoZIhvcNAQcGoFMwUQIBADBMBgkqhkiG9w0BBwEwHgYJYIZIAWUDBAEuMBEEDI+LoLdvYv8l41OhAAIBEIAfx49FFJCLeYrkfMfAw6XlnxP23MmDBdqP8dPp28OoAQ==
/// ```
///
/// That encrypted output can now be inserted into provider configurations without exposing the plaintext secret directly.
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_secrets_get_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretsResult> getSecrets(
  GetSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getSecrets:getSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretsResult.fromMap(result);
}
