// ignore_for_file: unused_element, unnecessary_cast


/// Teradata import command settings.
class TeradataImportCommand {
  /// Additional format options for Teradata Copy Command. The format options only applies to direct copy from CSV source. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalFormatOptions": { "timeFormat": "HHhMImSSs" }
  final dynamic additionalFormatOptions;
  /// The import setting type.
  /// Expected value is 'TeradataImportCommand'.
  final String type;

  /// Creates a new [TeradataImportCommand].
  /// [additionalFormatOptions] Additional format options for Teradata Copy Command. The format options only applies to direct copy from CSV source. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalFormatOptions": { "timeFormat": "HHhMImSSs" }
  /// [type] The import setting type.
  TeradataImportCommand({
    this.additionalFormatOptions,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFormatOptions': ?additionalFormatOptions,
      'type': type,
    };
  }

  factory TeradataImportCommand.fromMap(Map<String, dynamic> map) {
    return TeradataImportCommand(
      additionalFormatOptions: map['additionalFormatOptions'] == null ? null : map['additionalFormatOptions'],
      type: map['type'] as String,
    );
  }
}

