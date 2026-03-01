// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_config_content_type_profile_config.dart';
import 'field_level_encryption_config_query_arg_profile_config.dart';

/// {@template pulumi_cloudfront_field_level_encryption_config_field_level_encryption_config_args_doc}
/// The set of arguments for FieldLevelEncryptionConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_field_level_encryption_config_field_level_encryption_config_args_doc}
class FieldLevelEncryptionConfigArgs {
  /// An optional comment about the Field Level Encryption Config.
  final pulumi.Input<String>? comment;
  /// Content Type Profile Config specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.
  final pulumi.Input<FieldLevelEncryptionConfigContentTypeProfileConfig> contentTypeProfileConfig;
  /// Query Arg Profile Config that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.
  final pulumi.Input<FieldLevelEncryptionConfigQueryArgProfileConfig> queryArgProfileConfig;

  /// Creates a new [FieldLevelEncryptionConfigArgs].
  /// [comment] An optional comment about the Field Level Encryption Config.
  /// [contentTypeProfileConfig] Content Type Profile Config specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.
  /// [queryArgProfileConfig] Query Arg Profile Config that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.
  FieldLevelEncryptionConfigArgs({
    pulumi.Output<String>? comment,
    required pulumi.Output<FieldLevelEncryptionConfigContentTypeProfileConfig> contentTypeProfileConfig,
    required pulumi.Output<FieldLevelEncryptionConfigQueryArgProfileConfig> queryArgProfileConfig,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      contentTypeProfileConfig = pulumi.Input.asInput<FieldLevelEncryptionConfigContentTypeProfileConfig>(contentTypeProfileConfig),
      queryArgProfileConfig = pulumi.Input.asInput<FieldLevelEncryptionConfigQueryArgProfileConfig>(queryArgProfileConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'contentTypeProfileConfig': pulumi.Input.mapInputValue<FieldLevelEncryptionConfigContentTypeProfileConfig, Map<String, dynamic>>(contentTypeProfileConfig, (value) => value.toMap()),
      'queryArgProfileConfig': pulumi.Input.mapInputValue<FieldLevelEncryptionConfigQueryArgProfileConfig, Map<String, dynamic>>(queryArgProfileConfig, (value) => value.toMap()),
    };
  }

  factory FieldLevelEncryptionConfigArgs.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigArgs(
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      contentTypeProfileConfig: pulumi.Output.create<FieldLevelEncryptionConfigContentTypeProfileConfig>(FieldLevelEncryptionConfigContentTypeProfileConfig.fromMap((map['contentTypeProfileConfig'] as Map).cast<String, dynamic>())),
      queryArgProfileConfig: pulumi.Output.create<FieldLevelEncryptionConfigQueryArgProfileConfig>(FieldLevelEncryptionConfigQueryArgProfileConfig.fromMap((map['queryArgProfileConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

