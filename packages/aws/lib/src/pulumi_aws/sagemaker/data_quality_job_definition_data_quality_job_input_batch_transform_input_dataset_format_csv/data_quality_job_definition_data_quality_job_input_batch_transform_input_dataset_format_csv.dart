// ignore_for_file: unused_element, unnecessary_cast

class DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv {
  /// Indicates if the CSV data has a header.
  final bool? header;

  DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv({
    this.header,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerValue = header;
    if (headerValue != null) {
      map['header'] = headerValue;
    }
    return map;
  }

  factory DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv(
      header: map['header'] == null ? null : map['header'] as bool,
    );
  }
}
