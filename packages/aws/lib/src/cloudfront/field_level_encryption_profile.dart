import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_profile_args.dart';
import 'field_level_encryption_profile_encryption_entities.dart';

/// Provides a CloudFront Field-level Encryption Profile resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.cloudfront.PublicKey("example", {
///     comment: "test public key",
///     encodedKey: std.file({
///         input: "public_key.pem",
///     }).then(invoke => invoke.result),
///     name: "test_key",
/// });
/// const test = new aws.cloudfront.FieldLevelEncryptionProfile("test", {
///     comment: "test comment",
///     name: "test profile",
///     encryptionEntities: {
///         items: [{
///             publicKeyId: example.id,
///             providerId: "test provider",
///             fieldPatterns: {
///                 items: ["DateOfBirth"],
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.cloudfront.PublicKey("example",
///     comment="test public key",
///     encoded_key=std.file(input="public_key.pem").result,
///     name="test_key")
/// test = aws.cloudfront.FieldLevelEncryptionProfile("test",
///     comment="test comment",
///     name="test profile",
///     encryption_entities={
///         "items": [{
///             "public_key_id": example.id,
///             "provider_id": "test provider",
///             "field_patterns": {
///                 "items": ["DateOfBirth"],
///             },
///         }],
///     })
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
///     var example = new Aws.CloudFront.PublicKey("example", new()
///     {
///         Comment = "test public key",
///         EncodedKey = Std.File.Invoke(new()
///         {
///             Input = "public_key.pem",
///         }).Apply(invoke => invoke.Result),
///         Name = "test_key",
///     });
///
///     var test = new Aws.CloudFront.FieldLevelEncryptionProfile("test", new()
///     {
///         Comment = "test comment",
///         Name = "test profile",
///         EncryptionEntities = new Aws.CloudFront.Inputs.FieldLevelEncryptionProfileEncryptionEntitiesArgs
///         {
///             Items = new[]
///             {
///                 new Aws.CloudFront.Inputs.FieldLevelEncryptionProfileEncryptionEntitiesItemArgs
///                 {
///                     PublicKeyId = example.Id,
///                     ProviderId = "test provider",
///                     FieldPatterns = new Aws.CloudFront.Inputs.FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatternsArgs
///                     {
///                         Items = new[]
///                         {
///                             "DateOfBirth",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "public_key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cloudfront.NewPublicKey(ctx, "example", &cloudfront.PublicKeyArgs{
/// 			Comment:    pulumi.String("test public key"),
/// 			EncodedKey: pulumi.String(invokeFile.Result),
/// 			Name:       pulumi.String("test_key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfront.NewFieldLevelEncryptionProfile(ctx, "test", &cloudfront.FieldLevelEncryptionProfileArgs{
/// 			Comment: pulumi.String("test comment"),
/// 			Name:    pulumi.String("test profile"),
/// 			EncryptionEntities: &cloudfront.FieldLevelEncryptionProfileEncryptionEntitiesArgs{
/// 				Items: cloudfront.FieldLevelEncryptionProfileEncryptionEntitiesItemArray{
/// 					&cloudfront.FieldLevelEncryptionProfileEncryptionEntitiesItemArgs{
/// 						PublicKeyId: example.ID(),
/// 						ProviderId:  pulumi.String("test provider"),
/// 						FieldPatterns: &cloudfront.FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatternsArgs{
/// 							Items: pulumi.StringArray{
/// 								pulumi.String("DateOfBirth"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.cloudfront.PublicKey;
/// import com.pulumi.aws.cloudfront.PublicKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.aws.cloudfront.FieldLevelEncryptionProfile;
/// import com.pulumi.aws.cloudfront.FieldLevelEncryptionProfileArgs;
/// import com.pulumi.aws.cloudfront.inputs.FieldLevelEncryptionProfileEncryptionEntitiesArgs;
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
///         var example = new PublicKey("example", PublicKeyArgs.builder()
///             .comment("test public key")
///             .encodedKey(StdFunctions.file(FileArgs.builder()
///                 .input("public_key.pem")
///                 .build()).result())
///             .name("test_key")
///             .build());
///
///         var test = new FieldLevelEncryptionProfile("test", FieldLevelEncryptionProfileArgs.builder()
///             .comment("test comment")
///             .name("test profile")
///             .encryptionEntities(FieldLevelEncryptionProfileEncryptionEntitiesArgs.builder()
///                 .items(FieldLevelEncryptionProfileEncryptionEntitiesItemArgs.builder()
///                     .publicKeyId(example.id())
///                     .providerId("test provider")
///                     .fieldPatterns(FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatternsArgs.builder()
///                         .items("DateOfBirth")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:PublicKey
///     properties:
///       comment: test public key
///       encodedKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: public_key.pem
///           return: result
///       name: test_key
///   test:
///     type: aws:cloudfront:FieldLevelEncryptionProfile
///     properties:
///       comment: test comment
///       name: test profile
///       encryptionEntities:
///         items:
///           - publicKeyId: ${example.id}
///             providerId: test provider
///             fieldPatterns:
///               items:
///                 - DateOfBirth
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Field Level Encryption Profile using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/fieldLevelEncryptionProfile:FieldLevelEncryptionProfile profile K3D5EWEUDCCXON
/// ```
class FieldLevelEncryptionProfile extends pulumi.CustomResource {
  /// The Field Level Encryption Profile ARN.
  late final pulumi.Output<String> arn;
  /// Internal value used by CloudFront to allow future updates to the Field Level Encryption Profile.
  late final pulumi.Output<String> callerReference;
  /// An optional comment about the Field Level Encryption Profile.
  late final pulumi.Output<String?> comment;
  /// The encryption entities config block for field-level encryption profiles that contains an attribute `items` which includes the encryption key and field pattern specifications.
  late final pulumi.Output<FieldLevelEncryptionProfileEncryptionEntities> encryptionEntities;
  /// The current version of the Field Level Encryption Profile. For example: `E2QWRUHAPOMQZL`.
  late final pulumi.Output<String> etag;
  /// The name of the Field Level Encryption Profile.
  late final pulumi.Output<String> name;

  /// Creates a new [FieldLevelEncryptionProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FieldLevelEncryptionProfile]. {@macro pulumi_cloudfront_field_level_encryption_profile_field_level_encryption_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FieldLevelEncryptionProfile(
    String name, {
    FieldLevelEncryptionProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/fieldLevelEncryptionProfile:FieldLevelEncryptionProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.callerReference = registerOutput<String>('callerReference');
    this.comment = registerOutput<String?>('comment');
    this.encryptionEntities = registerOutput<FieldLevelEncryptionProfileEncryptionEntities>('encryptionEntities');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
  }
}
