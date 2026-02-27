import 'package:pulumi/pulumi.dart';
import '../field_level_encryption_config_content_type_profile_config/field_level_encryption_config_content_type_profile_config.dart';
import '../field_level_encryption_config_query_arg_profile_config/field_level_encryption_config_query_arg_profile_config.dart';
import 'field_level_encryption_config_args.dart';

/// Provides a CloudFront Field-level Encryption Config resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Field Level Encryption Config using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/fieldLevelEncryptionConfig:FieldLevelEncryptionConfig config E74FTE3AEXAMPLE
/// ```
class FieldLevelEncryptionConfig extends CustomResource {
  /// The Field Level Encryption Config ARN.
  late final Output<String> arn;

  /// Internal value used by CloudFront to allow future updates to the Field Level Encryption Config.
  late final Output<String> callerReference;

  /// An optional comment about the Field Level Encryption Config.
  late final Output<String?> comment;

  /// Content Type Profile Config specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.
  late final Output<FieldLevelEncryptionConfigContentTypeProfileConfig>
      contentTypeProfileConfig;

  /// The current version of the Field Level Encryption Config. For example: `E2QWRUHAPOMQZL`.
  late final Output<String> etag;

  /// Query Arg Profile Config that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.
  late final Output<FieldLevelEncryptionConfigQueryArgProfileConfig>
      queryArgProfileConfig;

  FieldLevelEncryptionConfig(
    String name, {
    FieldLevelEncryptionConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/fieldLevelEncryptionConfig:FieldLevelEncryptionConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.callerReference = registerOutput<String>('callerReference');
    this.comment = registerOutput<String?>('comment');
    this.contentTypeProfileConfig =
        registerOutput<FieldLevelEncryptionConfigContentTypeProfileConfig>(
            'contentTypeProfileConfig');
    this.etag = registerOutput<String>('etag');
    this.queryArgProfileConfig =
        registerOutput<FieldLevelEncryptionConfigQueryArgProfileConfig>(
            'queryArgProfileConfig');
  }
}
