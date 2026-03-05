// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Snowflake import command settings.
class SnowflakeImportCopyCommandResponse {
  /// Additional copy options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalCopyOptions": { "DATE_FORMAT": "MM/DD/YYYY", "TIME_FORMAT": "'HH24:MI:SS.FF'" }
  final pulumi.Input<Map<String, dynamic>>? additionalCopyOptions;
  /// Additional format options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalFormatOptions": { "FORCE": "TRUE", "LOAD_UNCERTAIN_FILES": "'FALSE'" }
  final pulumi.Input<Map<String, dynamic>>? additionalFormatOptions;
  /// The name of the snowflake storage integration to use for the copy operation. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? storageIntegration;
  /// The import setting type.
  /// Expected value is 'SnowflakeImportCopyCommand'.
  final pulumi.Input<String> type;

  /// Creates a new [SnowflakeImportCopyCommandResponse].
  /// [additionalCopyOptions] Additional copy options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalCopyOptions": { "DATE_FORMAT": "MM/DD/YYYY", "TIME_FORMAT": "'HH24:MI:SS.FF'" }
  /// [additionalFormatOptions] Additional format options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalFormatOptions": { "FORCE": "TRUE", "LOAD_UNCERTAIN_FILES": "'FALSE'" }
  /// [storageIntegration] The name of the snowflake storage integration to use for the copy operation. Type: string (or Expression with resultType string).
  /// [type] The import setting type.
  SnowflakeImportCopyCommandResponse({
    this.additionalCopyOptions,
    this.additionalFormatOptions,
    this.storageIntegration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCopyOptions': ?additionalCopyOptions,
      'additionalFormatOptions': ?additionalFormatOptions,
      'storageIntegration': ?storageIntegration,
      'type': type,
    };
  }

  factory SnowflakeImportCopyCommandResponse.fromMap(Map<String, dynamic> map) {
    return SnowflakeImportCopyCommandResponse(
      additionalCopyOptions: (() { final guardedValue = map['additionalCopyOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      additionalFormatOptions: (() { final guardedValue = map['additionalFormatOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      storageIntegration: (() { final guardedValue = map['storageIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

