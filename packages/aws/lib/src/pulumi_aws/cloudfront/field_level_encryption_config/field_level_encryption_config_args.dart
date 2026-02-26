// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../field_level_encryption_config_content_type_profile_config/field_level_encryption_config_content_type_profile_config.dart';
import '../field_level_encryption_config_query_arg_profile_config/field_level_encryption_config_query_arg_profile_config.dart';

/// The set of arguments for FieldLevelEncryptionConfig.
class FieldLevelEncryptionConfigArgs {
  /// An optional comment about the Field Level Encryption Config.
  final Input<String>? comment;

  /// Content Type Profile Config specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.
  final Input<FieldLevelEncryptionConfigContentTypeProfileConfig>
      contentTypeProfileConfig;

  /// Query Arg Profile Config that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.
  final Input<FieldLevelEncryptionConfigQueryArgProfileConfig>
      queryArgProfileConfig;

  FieldLevelEncryptionConfigArgs({
    this.comment,
    required this.contentTypeProfileConfig,
    required this.queryArgProfileConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['contentTypeProfileConfig'] = Input.mapInputValue<
            FieldLevelEncryptionConfigContentTypeProfileConfig,
            Map<String, dynamic>>(
        contentTypeProfileConfig, (value) => value.toMap());
    map['queryArgProfileConfig'] = Input.mapInputValue<
        FieldLevelEncryptionConfigQueryArgProfileConfig,
        Map<String, dynamic>>(queryArgProfileConfig, (value) => value.toMap());
    return map;
  }

  factory FieldLevelEncryptionConfigArgs.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigArgs(
      comment: Input.asOptionalInput<String>(map['comment']),
      contentTypeProfileConfig:
          Input.asInput<FieldLevelEncryptionConfigContentTypeProfileConfig>(
              map['contentTypeProfileConfig']),
      queryArgProfileConfig:
          Input.asInput<FieldLevelEncryptionConfigQueryArgProfileConfig>(
              map['queryArgProfileConfig']),
    );
  }
}
