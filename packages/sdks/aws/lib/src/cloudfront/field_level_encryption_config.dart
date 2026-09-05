import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_config_args.dart';
import 'field_level_encryption_config_content_type_profile_config.dart';
import 'field_level_encryption_config_query_arg_profile_config.dart';
import 'field_level_encryption_config_state.dart';

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
///     contentTypeProfileConfig: {
///         contentTypeProfiles: {
///             items: [{
///                 contentType: "application/x-www-form-urlencoded",
///                 format: "URLEncoded",
///             }],
///         },
///         forwardWhenContentTypeIsUnknown: true,
///     },
///     queryArgProfileConfig: {
///         queryArgProfiles: {
///             items: [{
///                 profileId: testAwsCloudfrontFieldLevelEncryptionProfile.id,
///                 queryArg: "Arg1",
///             }],
///         },
///         forwardWhenQueryArgProfileIsUnknown: true,
///     },
///     comment: "test comment",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudfront.FieldLevelEncryptionConfig("test",
///     content_type_profile_config={
///         "content_type_profiles": {
///             "items": [{
///                 "content_type": "application/x-www-form-urlencoded",
///                 "format": "URLEncoded",
///             }],
///         },
///         "forward_when_content_type_is_unknown": True,
///     },
///     query_arg_profile_config={
///         "query_arg_profiles": {
///             "items": [{
///                 "profile_id": test_aws_cloudfront_field_level_encryption_profile["id"],
///                 "query_arg": "Arg1",
///             }],
///         },
///         "forward_when_query_arg_profile_is_unknown": True,
///     },
///     comment="test comment")
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
///         ContentTypeProfileConfig = new Aws.CloudFront.Inputs.FieldLevelEncryptionConfigContentTypeProfileConfigArgs
///         {
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
///             ForwardWhenContentTypeIsUnknown = true,
///         },
///         QueryArgProfileConfig = new Aws.CloudFront.Inputs.FieldLevelEncryptionConfigQueryArgProfileConfigArgs
///         {
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
///             ForwardWhenQueryArgProfileIsUnknown = true,
///         },
///         Comment = "test comment",
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
/// 			ContentTypeProfileConfig: &cloudfront.FieldLevelEncryptionConfigContentTypeProfileConfigArgs{
/// 				ContentTypeProfiles: &cloudfront.FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesArgs{
/// 					Items: cloudfront.FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItemArray{
/// 						&cloudfront.FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItemArgs{
/// 							ContentType: pulumi.String("application/x-www-form-urlencoded"),
/// 							Format:      pulumi.String("URLEncoded"),
/// 						},
/// 					},
/// 				},
/// 				ForwardWhenContentTypeIsUnknown: pulumi.Bool(true),
/// 			},
/// 			QueryArgProfileConfig: &cloudfront.FieldLevelEncryptionConfigQueryArgProfileConfigArgs{
/// 				QueryArgProfiles: &cloudfront.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesArgs{
/// 					Items: cloudfront.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItemArray{
/// 						&cloudfront.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItemArgs{
/// 							ProfileId: pulumi.Any(testAwsCloudfrontFieldLevelEncryptionProfile.Id),
/// 							QueryArg:  pulumi.String("Arg1"),
/// 						},
/// 					},
/// 				},
/// 				ForwardWhenQueryArgProfileIsUnknown: pulumi.Bool(true),
/// 			},
/// 			Comment: pulumi.String("test comment"),
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
/// resource "aws_cloudfront_fieldlevelencryptionconfig" "test" {
///   content_type_profile_config = {
///     content_type_profiles = {
///       items = [{
///         "contentType" = "application/x-www-form-urlencoded"
///         "format"      = "URLEncoded"
///       }]
///     }
///     forward_when_content_type_is_unknown = true
///   }
///   query_arg_profile_config = {
///     query_arg_profiles = {
///       items = [{
///         "profileId" = testAwsCloudfrontFieldLevelEncryptionProfile.id
///         "queryArg"  = "Arg1"
///       }]
///     }
///     forward_when_query_arg_profile_is_unknown = true
///   }
///   comment = "test comment"
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
/// import com.pulumi.aws.cloudfront.inputs.FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItemArgs;
/// import com.pulumi.aws.cloudfront.inputs.FieldLevelEncryptionConfigQueryArgProfileConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesArgs;
/// import com.pulumi.aws.cloudfront.inputs.FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItemArgs;
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
///         var test = new FieldLevelEncryptionConfig("test", FieldLevelEncryptionConfigArgs.builder()
///             .contentTypeProfileConfig(FieldLevelEncryptionConfigContentTypeProfileConfigArgs.builder()
///                 .contentTypeProfiles(FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesArgs.builder()
///                     .items(FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItemArgs.builder()
///                         .contentType("application/x-www-form-urlencoded")
///                         .format("URLEncoded")
///                         .build())
///                     .build())
///                 .forwardWhenContentTypeIsUnknown(true)
///                 .build())
///             .queryArgProfileConfig(FieldLevelEncryptionConfigQueryArgProfileConfigArgs.builder()
///                 .queryArgProfiles(FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesArgs.builder()
///                     .items(FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItemArgs.builder()
///                         .profileId(testAwsCloudfrontFieldLevelEncryptionProfile.id())
///                         .queryArg("Arg1")
///                         .build())
///                     .build())
///                 .forwardWhenQueryArgProfileIsUnknown(true)
///                 .build())
///             .comment("test comment")
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
///       contentTypeProfileConfig:
///         contentTypeProfiles:
///           items:
///             - contentType: application/x-www-form-urlencoded
///               format: URLEncoded
///         forwardWhenContentTypeIsUnknown: true
///       queryArgProfileConfig:
///         queryArgProfiles:
///           items:
///             - profileId: ${testAwsCloudfrontFieldLevelEncryptionProfile.id}
///               queryArg: Arg1
///         forwardWhenQueryArgProfileIsUnknown: true
///       comment: test comment
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    callerReference = registerOutput<String>('callerReference');
    comment = registerOutput<String?>('comment');
    contentTypeProfileConfig = registerOutput<FieldLevelEncryptionConfigContentTypeProfileConfig>('contentTypeProfileConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FieldLevelEncryptionConfigContentTypeProfileConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    queryArgProfileConfig = registerOutput<FieldLevelEncryptionConfigQueryArgProfileConfig>('queryArgProfileConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FieldLevelEncryptionConfigQueryArgProfileConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FieldLevelEncryptionConfig] resource's state with the given [name] and [id].
  static FieldLevelEncryptionConfig get(
    String name,
    pulumi.Input<String> id, {
    FieldLevelEncryptionConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FieldLevelEncryptionConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FieldLevelEncryptionConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/fieldLevelEncryptionConfig:FieldLevelEncryptionConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    callerReference = registerOutput<String>('callerReference');
    comment = registerOutput<String?>('comment');
    contentTypeProfileConfig = registerOutput<FieldLevelEncryptionConfigContentTypeProfileConfig>('contentTypeProfileConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FieldLevelEncryptionConfigContentTypeProfileConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    queryArgProfileConfig = registerOutput<FieldLevelEncryptionConfigQueryArgProfileConfig>('queryArgProfileConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FieldLevelEncryptionConfigQueryArgProfileConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [FieldLevelEncryptionConfig] resource.
  FieldLevelEncryptionConfig.reference(String urn)
    : super(
        'aws:cloudfront/fieldLevelEncryptionConfig:FieldLevelEncryptionConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    callerReference = registerOutput<String>('callerReference');
    comment = registerOutput<String?>('comment');
    contentTypeProfileConfig = registerOutput<FieldLevelEncryptionConfigContentTypeProfileConfig>('contentTypeProfileConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FieldLevelEncryptionConfigContentTypeProfileConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    queryArgProfileConfig = registerOutput<FieldLevelEncryptionConfigQueryArgProfileConfig>('queryArgProfileConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FieldLevelEncryptionConfigQueryArgProfileConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
