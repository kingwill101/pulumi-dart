// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv {
  /// Indicates if the CSV data has a header.
  final pulumi.Input<bool>? header;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv].
  /// [header] Indicates if the CSV data has a header.
  const DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv({
    this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': ?header,
    };
  }

  factory DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv(
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

