// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Teradata import command settings.
class TeradataImportCommandResponse {
  /// Additional format options for Teradata Copy Command. The format options only applies to direct copy from CSV source. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalFormatOptions": { "timeFormat": "HHhMImSSs" }
  final pulumi.Input<dynamic>? additionalFormatOptions;

  /// The import setting type.
  /// Expected value is 'TeradataImportCommand'.
  final pulumi.Input<String> type;

  /// Creates a new [TeradataImportCommandResponse].
  /// [additionalFormatOptions] Additional format options for Teradata Copy Command. The format options only applies to direct copy from CSV source. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalFormatOptions": { "timeFormat": "HHhMImSSs" }
  /// [type] The import setting type.
  TeradataImportCommandResponse({
    this.additionalFormatOptions,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFormatOptions': ?additionalFormatOptions,
      'type': type,
    };
  }

  factory TeradataImportCommandResponse.fromMap(Map<String, dynamic> map) {
    return TeradataImportCommandResponse(
      additionalFormatOptions: (() {
        final guardedValue = map['additionalFormatOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
