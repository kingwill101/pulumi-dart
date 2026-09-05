import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_args.dart';
import 'encryption_config_state.dart';

/// Creates and manages an AWS XRay Encryption Config.
///
/// &gt; **NOTE:** Removing this resource from the provider has no effect to the encryption configuration within X-Ray.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.xray.EncryptionConfig("example", {type: "NONE"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.xray.EncryptionConfig("example", type="NONE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Xray.EncryptionConfig("example", new()
///     {
///         Type = "NONE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/xray"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := xray.NewEncryptionConfig(ctx, "example", &xray.EncryptionConfigArgs{
/// 			Type: pulumi.String("NONE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_xray_encryptionconfig" "example" {
///   type = "NONE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.xray.EncryptionConfig;
/// import com.pulumi.aws.xray.EncryptionConfigArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new EncryptionConfig("example", EncryptionConfigArgs.builder()
///             .type("NONE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:xray:EncryptionConfig
///     properties:
///       type: NONE
/// ```
///
///
/// ### Example Usage with KMS Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = current.then(current => aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "AWS",
///             identifiers: [`arn:aws:iam::${current.accountId}:root`],
///         }],
///         sid: "Enable IAM User Permissions",
///         effect: "Allow",
///         actions: ["kms:*"],
///         resources: ["*"],
///     }],
/// }));
/// const exampleKey = new aws.kms.Key("example", {
///     description: "Some Key",
///     deletionWindowInDays: 7,
///     policy: example.then(example => example.json),
/// });
/// const exampleEncryptionConfig = new aws.xray.EncryptionConfig("example", {
///     type: "KMS",
///     keyId: exampleKey.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "AWS",
///         "identifiers": [f"arn:aws:iam::{current.account_id}:root"],
///     }],
///     "sid": "Enable IAM User Permissions",
///     "effect": "Allow",
///     "actions": ["kms:*"],
///     "resources": ["*"],
/// }])
/// example_key = aws.kms.Key("example",
///     description="Some Key",
///     deletion_window_in_days=7,
///     policy=example.json)
/// example_encryption_config = aws.xray.EncryptionConfig("example",
///     type="KMS",
///     key_id=example_key.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                         },
///                     },
///                 },
///                 Sid = "Enable IAM User Permissions",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "kms:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var exampleKey = new Aws.Kms.Key("example", new()
///     {
///         Description = "Some Key",
///         DeletionWindowInDays = 7,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleEncryptionConfig = new Aws.Xray.EncryptionConfig("example", new()
///     {
///         Type = "KMS",
///         KeyId = exampleKey.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/xray"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.StringRef("Enable IAM User Permissions"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"kms:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("Some Key"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 			Policy:               pulumi.String(example.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = xray.NewEncryptionConfig(ctx, "example", &xray.EncryptionConfigArgs{
/// 			Type:  pulumi.String("KMS"),
/// 			KeyId: exampleKey.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     principals {
///       type        = "AWS"
///       identifiers = ["arn:aws:iam::${data.aws_getcalleridentity.current.account_id}:root"]
///     }
///     sid       = "Enable IAM User Permissions"
///     effect    = "Allow"
///     actions   = ["kms:*"]
///     resources = ["*"]
///   }
/// }
///
/// resource "aws_kms_key" "example" {
///   description             = "Some Key"
///   deletion_window_in_days = 7
///   policy                  = data.aws_iam_getpolicydocument.example.json
/// }
/// resource "aws_xray_encryptionconfig" "example" {
///   type   = "KMS"
///   key_id = aws_kms_key.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.xray.EncryptionConfig;
/// import com.pulumi.aws.xray.EncryptionConfigArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers(String.format("arn:aws:iam::%s:root", current.accountId()))
///                     .build())
///                 .sid("Enable IAM User Permissions")
///                 .effect("Allow")
///                 .actions("kms:*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .description("Some Key")
///             .deletionWindowInDays(7)
///             .policy(example.json())
///             .build());
///
///         var exampleEncryptionConfig = new EncryptionConfig("exampleEncryptionConfig", EncryptionConfigArgs.builder()
///             .type("KMS")
///             .keyId(exampleKey.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleKey:
///     type: aws:kms:Key
///     name: example
///     properties:
///       description: Some Key
///       deletionWindowInDays: 7
///       policy: ${example.json}
///   exampleEncryptionConfig:
///     type: aws:xray:EncryptionConfig
///     name: example
///     properties:
///       type: KMS
///       keyId: ${exampleKey.arn}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - arn:aws:iam::${current.accountId}:root
///             sid: Enable IAM User Permissions
///             effect: Allow
///             actions:
///               - kms:*
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) Account ID where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import XRay Encryption Config using the region name. For example:
///
/// ```sh
/// $ pulumi import aws:xray/encryptionConfig:EncryptionConfig example us-west-2
/// ```
class EncryptionConfig extends pulumi.CustomResource {
  /// AWS KMS customer master key (CMK) ARN.
  late final pulumi.Output<String?> keyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  late final pulumi.Output<String> type;

  /// Creates a new [EncryptionConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EncryptionConfig]. {@macro pulumi_xray_encryption_config_encryption_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EncryptionConfig(
    String name, {
    EncryptionConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:xray/encryptionConfig:EncryptionConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    keyId = registerOutput<String?>('keyId');
    region = registerOutput<String>('region');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [EncryptionConfig] resource's state with the given [name] and [id].
  static EncryptionConfig get(
    String name,
    pulumi.Input<String> id, {
    EncryptionConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EncryptionConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EncryptionConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:xray/encryptionConfig:EncryptionConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyId = registerOutput<String?>('keyId');
    region = registerOutput<String>('region');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EncryptionConfig] resource.
  EncryptionConfig.reference(String urn)
    : super(
        'aws:xray/encryptionConfig:EncryptionConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    keyId = registerOutput<String?>('keyId');
    region = registerOutput<String>('region');
    type = registerOutput<String>('type');
  }
}
