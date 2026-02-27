// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_stored_info_type_config.dart';

/// The set of arguments for StoredInfoType.
class StoredInfoTypeArgs {
  /// Configuration of the storedInfoType to create.
  final pulumi.Input<GooglePrivacyDlpV2StoredInfoTypeConfig> config;

  /// Deprecated. This field has no effect.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? storedInfoTypeId;

  StoredInfoTypeArgs({
    required this.config,
    this.location,
    this.project,
    this.storedInfoTypeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = pulumi.Input.mapInputValue<
        GooglePrivacyDlpV2StoredInfoTypeConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final storedInfoTypeIdValue = storedInfoTypeId;
    if (storedInfoTypeIdValue != null) {
      map['storedInfoTypeId'] = storedInfoTypeIdValue;
    }
    return map;
  }

  factory StoredInfoTypeArgs.fromMap(Map<String, dynamic> map) {
    return StoredInfoTypeArgs(
      config: pulumi.Input.asInput<GooglePrivacyDlpV2StoredInfoTypeConfig>(
          map['config']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      storedInfoTypeId:
          pulumi.Input.asOptionalInput<String>(map['storedInfoTypeId']),
    );
  }
}
