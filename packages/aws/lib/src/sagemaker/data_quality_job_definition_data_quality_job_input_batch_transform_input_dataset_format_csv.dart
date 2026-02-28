// ignore_for_file: unused_element, unnecessary_cast


class DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv {
  /// Indicates if the CSV data has a header.
  final bool? header;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv].
  /// [header] Indicates if the CSV data has a header.
  DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv({
    this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': ?header,
    };
  }

  factory DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv(
      header: map['header'] == null ? null : map['header'] as bool,
    );
  }
}

