// ignore_for_file: unused_element, unnecessary_cast


/// Snowflake export command settings.
class SnowflakeExportCopyCommand {
  /// Additional copy options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalCopyOptions": { "DATE_FORMAT": "MM/DD/YYYY", "TIME_FORMAT": "'HH24:MI:SS.FF'" }
  final Map<String, dynamic>? additionalCopyOptions;
  /// Additional format options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalFormatOptions": { "OVERWRITE": "TRUE", "MAX_FILE_SIZE": "'FALSE'" }
  final Map<String, dynamic>? additionalFormatOptions;
  /// The name of the snowflake storage integration to use for the copy operation. Type: string (or Expression with resultType string).
  final dynamic storageIntegration;
  /// The export setting type.
  /// Expected value is 'SnowflakeExportCopyCommand'.
  final String type;

  /// Creates a new [SnowflakeExportCopyCommand].
  /// [additionalCopyOptions] Additional copy options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalCopyOptions": { "DATE_FORMAT": "MM/DD/YYYY", "TIME_FORMAT": "'HH24:MI:SS.FF'" }
  /// [additionalFormatOptions] Additional format options directly passed to snowflake Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalFormatOptions": { "OVERWRITE": "TRUE", "MAX_FILE_SIZE": "'FALSE'" }
  /// [storageIntegration] The name of the snowflake storage integration to use for the copy operation. Type: string (or Expression with resultType string).
  /// [type] The export setting type.
  SnowflakeExportCopyCommand({
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
      additionalCopyOptions: map['additionalCopyOptions'] == null ? null : (map['additionalCopyOptions'] as Map).cast<String, dynamic>(),
      additionalFormatOptions: map['additionalFormatOptions'] == null ? null : (map['additionalFormatOptions'] as Map).cast<String, dynamic>(),
      storageIntegration: map['storageIntegration'] == null ? null : map['storageIntegration'],
      type: map['type'] as String,
    );
  }
}

