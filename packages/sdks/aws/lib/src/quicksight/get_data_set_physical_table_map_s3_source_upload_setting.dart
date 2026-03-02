// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetPhysicalTableMapS3SourceUploadSetting {
  final pulumi.Input<bool> containsHeader;
  final pulumi.Input<String> delimiter;
  final pulumi.Input<String> format;
  final pulumi.Input<int> startFromRow;
  final pulumi.Input<String> textQualifier;

  /// Creates a new [GetDataSetPhysicalTableMapS3SourceUploadSetting].
  /// [containsHeader] Required.
  /// [delimiter] Required.
  /// [format] Required.
  /// [startFromRow] Required.
  /// [textQualifier] Required.
  GetDataSetPhysicalTableMapS3SourceUploadSetting({
    required this.containsHeader,
    required this.delimiter,
    required this.format,
    required this.startFromRow,
    required this.textQualifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containsHeader': containsHeader,
      'delimiter': delimiter,
      'format': format,
      'startFromRow': startFromRow,
      'textQualifier': textQualifier,
    };
  }

  factory GetDataSetPhysicalTableMapS3SourceUploadSetting.fromMap(Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapS3SourceUploadSetting(
      containsHeader: (map['containsHeader'] as bool).input(),
      delimiter: (map['delimiter'] as String).input(),
      format: (map['format'] as String).input(),
      startFromRow: (map['startFromRow'] as int).input(),
      textQualifier: (map['textQualifier'] as String).input(),
    );
  }
}

