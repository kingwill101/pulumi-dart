// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_config_content_type_profile_config.dart';
import 'field_level_encryption_config_query_arg_profile_config.dart';

/// Input properties used for looking up and filtering FieldLevelEncryptionConfig resources.
class FieldLevelEncryptionConfigState {
  /// The Field Level Encryption Config ARN.
  final pulumi.Input<String>? arn;
  /// Internal value used by CloudFront to allow future updates to the Field Level Encryption Config.
  final pulumi.Input<String>? callerReference;
  /// An optional comment about the Field Level Encryption Config.
  final pulumi.Input<String>? comment;
  /// Content Type Profile Config specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.
  final pulumi.Input<FieldLevelEncryptionConfigContentTypeProfileConfig>? contentTypeProfileConfig;
  /// The current version of the Field Level Encryption Config. For example: `E2QWRUHAPOMQZL`.
  final pulumi.Input<String>? etag;
  /// Query Arg Profile Config that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.
  final pulumi.Input<FieldLevelEncryptionConfigQueryArgProfileConfig>? queryArgProfileConfig;

  /// Creates a new [FieldLevelEncryptionConfigState].
  /// [arn] The Field Level Encryption Config ARN.
  /// [callerReference] Internal value used by CloudFront to allow future updates to the Field Level Encryption Config.
  /// [comment] An optional comment about the Field Level Encryption Config.
  /// [contentTypeProfileConfig] Content Type Profile Config specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.
  /// [etag] The current version of the Field Level Encryption Config. For example: `E2QWRUHAPOMQZL`.
  /// [queryArgProfileConfig] Query Arg Profile Config that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.
  FieldLevelEncryptionConfigState({
    this.arn,
    this.callerReference,
    this.comment,
    this.contentTypeProfileConfig,
    this.etag,
    this.queryArgProfileConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'callerReference': ?callerReference,
      'comment': ?comment,
      'contentTypeProfileConfig': ?pulumi.Input.mapOptionalInputValue<FieldLevelEncryptionConfigContentTypeProfileConfig, Map<String, dynamic>>(contentTypeProfileConfig, (value) => value.toMap()),
      'etag': ?etag,
      'queryArgProfileConfig': ?pulumi.Input.mapOptionalInputValue<FieldLevelEncryptionConfigQueryArgProfileConfig, Map<String, dynamic>>(queryArgProfileConfig, (value) => value.toMap()),
    };
  }

  factory FieldLevelEncryptionConfigState.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      callerReference: map['callerReference'] == null ? null : (map['callerReference'] as String).input(),
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      contentTypeProfileConfig: map['contentTypeProfileConfig'] == null ? null : (FieldLevelEncryptionConfigContentTypeProfileConfig.fromMap((map['contentTypeProfileConfig'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      queryArgProfileConfig: map['queryArgProfileConfig'] == null ? null : (FieldLevelEncryptionConfigQueryArgProfileConfig.fromMap((map['queryArgProfileConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

