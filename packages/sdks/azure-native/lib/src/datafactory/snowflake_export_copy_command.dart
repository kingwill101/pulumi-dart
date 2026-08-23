// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Snowflake export command settings.
class SnowflakeExportCopyCommand {
  /// Additional copy options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalCopyOptions": { "DATE_FORMAT": "MM/DD/YYYY", "TIME_FORMAT": "'HH24:MI:SS.FF'" }
  final pulumi.Input<dynamic>? additionalCopyOptions;
  /// Additional format options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalFormatOptions": { "OVERWRITE": "TRUE", "MAX_FILE_SIZE": "'FALSE'" }
  final pulumi.Input<dynamic>? additionalFormatOptions;
  /// The name of the snowflake storage integration to use for the copy operation. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? storageIntegration;
  /// The export setting type.
  /// Expected value is 'SnowflakeExportCopyCommand'.
  final pulumi.Input<String> type;

  /// Creates a new [SnowflakeExportCopyCommand].
  /// [additionalCopyOptions] Additional copy options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalCopyOptions": { "DATE_FORMAT": "MM/DD/YYYY", "TIME_FORMAT": "'HH24:MI:SS.FF'" }
  /// [additionalFormatOptions] Additional format options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalFormatOptions": { "OVERWRITE": "TRUE", "MAX_FILE_SIZE": "'FALSE'" }
  /// [storageIntegration] The name of the snowflake storage integration to use for the copy operation. Type: string (or Expression with resultType string).
  /// [type] The export setting type.
  const SnowflakeExportCopyCommand({
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

  factory SnowflakeExportCopyCommand.fromMap(Map<String, dynamic> map) {
    return SnowflakeExportCopyCommand(
      additionalCopyOptions: (() { final guardedValue = map['additionalCopyOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      additionalFormatOptions: (() { final guardedValue = map['additionalFormatOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      storageIntegration: (() { final guardedValue = map['storageIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
