// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson {
  /// Indicates if the file should be read as a json object per line.
  final pulumi.Input<bool>? line;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson].
  /// [line] Indicates if the file should be read as a json object per line.
  DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson({
    this.line,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'line': ?line,
    };
  }

  factory DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson(
      line: (() { final guardedValue = map['line']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

