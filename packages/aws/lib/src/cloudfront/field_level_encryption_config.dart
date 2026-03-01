import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_config_args.dart';
import 'field_level_encryption_config_content_type_profile_config.dart';
import 'field_level_encryption_config_query_arg_profile_config.dart';

/// Provides a CloudFront Field-level Encryption Config resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloudfront.FieldLevelEncryptionConfig("test", {
///     comment: "test comment",
///     contentTypeProfileConfig: {
///         forwardWhenContentTypeIsUnknown: true,
///         contentTypeProfiles: {
///             items: [{
///                 contentType: "application/x-www-form-urlencoded",
///                 format: "URLEncoded",
///             }],
///         },
///     },
///     queryArgProfileConfig: {
///         forwardWhenQueryArgProfileIsUnknown: true,
///         queryArgProfiles: {
///             items: [{
///                 profileId: testAwsCloudfrontFieldLevelEncryptionProfile.id,
///                 queryArg: "Arg1",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudfront.FieldLevelEncryptionConfig("test",
///     comment="test comment",
///     content_type_profile_config={
///         "forward_when_content_type_is_unknown": True,
///         "content_type_profiles": {
///             "items": [{
///                 "content_type": "application/x-www-form-urlencoded",
///                 "format": "URLEncoded",
///             }],
///         },
///     },
///     query_arg_profile_config={
///         "forward_when_query_arg_profile_is_unknown": True,
///         "query_arg_profiles": {
///             "items": [{
///                 "profile_id": test_aws_cloudfront_field_level_encryption_profile["id"],
///                 "query_arg": "Arg1",
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CloudFront.FieldLevelEncryptionConfig("test", new()
///     {
///         Comment = "test comment",
///         ContentTypeProfileConfig = new Aws.CloudFront.Inputs.FieldLevelEncryptionConfigContentTypeProfileConfigArgs
///         {
///             ForwardWhenContentTypeIsUnknown = true,
///             ContentTypeProfiles = new Aws.CloudFront.Inputs.FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesArgs
///             {
///                 Items = new[]
///                 {
///                     new Aws.CloudFront.Inputs.FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItemArgs
///                     {
///                         ContentType = "application/x-www-form-urlencoded",
///                         Format = "URLEncoded",
///                     },
///                 },
///             },
///         },
///         QueryArgProfileConfig = new Aws.CloudFront.Inputs.FieldLevelEncryptionConfigQueryArgProfileConfigArgs
///         {
///             ForwardWhenQueryArgProfileIsUnknown = true,
///             QueryArgProfiles = new Aws.CloudFront.Inputs.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesArgs
///             {
///                 Items = new[]
///                 {
///                     new Aws.CloudFront.Inputs.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItemArgs
///                     {
///                         ProfileId = testAwsCloudfrontFieldLevelEncryptionProfile.Id,
///                         QueryArg = "Arg1",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewFieldLevelEncryptionConfig(ctx, "test", &cloudfront.FieldLevelEncryptionConfigArgs{
/// 			Comment: pulumi.String("test comment"),
/// 			ContentTypeProfileConfig: &cloudfront.FieldLevelEncryptionConfigContentTypeProfileConfigArgs{
/// 				ForwardWhenContentTypeIsUnknown: pulumi.Bool(true),
/// 				ContentTypeProfiles: &cloudfront.FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesArgs{
/// 					Items: cloudfront.FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItemArray{
/// 						&cloudfront.FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItemArgs{
/// 							ContentType: pulumi.String("application/x-www-form-urlencoded"),
/// 							Format:      pulumi.String("URLEncoded"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			QueryArgProfileConfig: &cloudfront.FieldLevelEncryptionConfigQueryArgProfileConfigArgs{
/// 				ForwardWhenQueryArgProfileIsUnknown: pulumi.Bool(true),
/// 				QueryArgProfiles: &cloudfront.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesArgs{
/// 					Items: cloudfront.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItemArray{
/// 						&cloudfront.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItemArgs{
/// 							ProfileId: pulumi.Any(testAwsCloudfrontFieldLevelEncryptionProfile.Id),
/// 							QueryArg:  pulumi.String("Arg1"),
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
/// import com.pulumi.aws.cloudfront.FieldLevelEncryptionConfig;
/// import com.pulumi.aws.cloudfront.FieldLevelEncryptionConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.FieldLevelEncryptionConfigContentTypeProfileConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesArgs;
/// import com.pulumi.aws.cloudfront.inputs.FieldLevelEncryptionConfigQueryArgProfileConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesArgs;
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
///         var test = new FieldLevelEncryptionConfig("test", FieldLevelEncryptionConfigArgs.builder()
///             .comment("test comment")
///             .contentTypeProfileConfig(FieldLevelEncryptionConfigContentTypeProfileConfigArgs.builder()
///                 .forwardWhenContentTypeIsUnknown(true)
///                 .contentTypeProfiles(FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesArgs.builder()
///                     .items(FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItemArgs.builder()
///                         .contentType("application/x-www-form-urlencoded")
///                         .format("URLEncoded")
///                         .build())
///                     .build())
///                 .build())
///             .queryArgProfileConfig(FieldLevelEncryptionConfigQueryArgProfileConfigArgs.builder()
///                 .forwardWhenQueryArgProfileIsUnknown(true)
///                 .queryArgProfiles(FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesArgs.builder()
///                     .items(FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItemArgs.builder()
///                         .profileId(testAwsCloudfrontFieldLevelEncryptionProfile.id())
///                         .queryArg("Arg1")
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
///   test:
///     type: aws:cloudfront:FieldLevelEncryptionConfig
///     properties:
///       comment: test comment
///       contentTypeProfileConfig:
///         forwardWhenContentTypeIsUnknown: true
///         contentTypeProfiles:
///           items:
///             - contentType: application/x-www-form-urlencoded
///               format: URLEncoded
///       queryArgProfileConfig:
///         forwardWhenQueryArgProfileIsUnknown: true
///         queryArgProfiles:
///           items:
///             - profileId: ${testAwsCloudfrontFieldLevelEncryptionProfile.id}
///               queryArg: Arg1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Field Level Encryption Config using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/fieldLevelEncryptionConfig:FieldLevelEncryptionConfig config E74FTE3AEXAMPLE
/// ```
class FieldLevelEncryptionConfig extends pulumi.CustomResource {
  /// The Field Level Encryption Config ARN.
  late final pulumi.Output<String> arn;
  /// Internal value used by CloudFront to allow future updates to the Field Level Encryption Config.
  late final pulumi.Output<String> callerReference;
  /// An optional comment about the Field Level Encryption Config.
  late final pulumi.Output<String?> comment;
  /// Content Type Profile Config specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.
  late final pulumi.Output<FieldLevelEncryptionConfigContentTypeProfileConfig> contentTypeProfileConfig;
  /// The current version of the Field Level Encryption Config. For example: `E2QWRUHAPOMQZL`.
  late final pulumi.Output<String> etag;
  /// Query Arg Profile Config that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.
  late final pulumi.Output<FieldLevelEncryptionConfigQueryArgProfileConfig> queryArgProfileConfig;

  /// Creates a new [FieldLevelEncryptionConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FieldLevelEncryptionConfig]. {@macro pulumi_cloudfront_field_level_encryption_config_field_level_encryption_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FieldLevelEncryptionConfig(
    String name, {
    FieldLevelEncryptionConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/fieldLevelEncryptionConfig:FieldLevelEncryptionConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.callerReference = registerOutput<String>('callerReference');
    this.comment = registerOutput<String?>('comment');
    this.contentTypeProfileConfig = registerOutput<FieldLevelEncryptionConfigContentTypeProfileConfig>('contentTypeProfileConfig');
    this.etag = registerOutput<String>('etag');
    this.queryArgProfileConfig = registerOutput<FieldLevelEncryptionConfigQueryArgProfileConfig>('queryArgProfileConfig');
  }
}
