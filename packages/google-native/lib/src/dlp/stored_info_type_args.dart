// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_stored_info_type_config.dart';

/// {@template pulumi_dlp_v2_stored_info_type_args_doc}
/// The set of arguments for StoredInfoType.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_stored_info_type_args_doc}
class StoredInfoTypeArgs {
  /// Configuration of the storedInfoType to create.
  final pulumi.Input<GooglePrivacyDlpV2StoredInfoTypeConfig> config;
  /// Deprecated. This field has no effect.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? storedInfoTypeId;

  /// Creates a new [StoredInfoTypeArgs].
  /// [config] Configuration of the storedInfoType to create.
  /// [location] Deprecated. This field has no effect.
  /// [project] Optional.
  /// [storedInfoTypeId] The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  StoredInfoTypeArgs({
    required GooglePrivacyDlpV2StoredInfoTypeConfig config,
    String? location,
    String? project,
    String? storedInfoTypeId,
  }) :
      config = pulumi.Input.asInput<GooglePrivacyDlpV2StoredInfoTypeConfig>(config),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      storedInfoTypeId = pulumi.Input.asOptionalInput<String>(storedInfoTypeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GooglePrivacyDlpV2StoredInfoTypeConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'storedInfoTypeId': ?storedInfoTypeId,
    };
  }

  factory StoredInfoTypeArgs.fromMap(Map<String, dynamic> map) {
    return StoredInfoTypeArgs(
      config: GooglePrivacyDlpV2StoredInfoTypeConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      storedInfoTypeId: map['storedInfoTypeId'] == null ? null : map['storedInfoTypeId'] as String,
    );
  }
}

