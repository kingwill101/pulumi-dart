// ignore_for_file: unused_element, unnecessary_cast

class DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson {
  /// Indicates if the file should be read as a json object per line.
  final bool? line;

  DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson({
    this.line,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lineValue = line;
    if (lineValue != null) {
      map['line'] = lineValue;
    }
    return map;
  }

  factory DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson(
      line: map['line'] == null ? null : map['line'] as bool,
    );
  }
}
