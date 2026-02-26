// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetPhysicalTableMapS3SourceUploadSetting {
  final bool containsHeader;
  final String delimiter;
  final String format;
  final int startFromRow;
  final String textQualifier;

  GetDataSetPhysicalTableMapS3SourceUploadSetting({
    required this.containsHeader,
    required this.delimiter,
    required this.format,
    required this.startFromRow,
    required this.textQualifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containsHeader'] = containsHeader;
    map['delimiter'] = delimiter;
    map['format'] = format;
    map['startFromRow'] = startFromRow;
    map['textQualifier'] = textQualifier;
    return map;
  }

  factory GetDataSetPhysicalTableMapS3SourceUploadSetting.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapS3SourceUploadSetting(
      containsHeader: map['containsHeader'] as bool,
      delimiter: map['delimiter'] as String,
      format: map['format'] as String,
      startFromRow: map['startFromRow'] as int,
      textQualifier: map['textQualifier'] as String,
    );
  }
}
