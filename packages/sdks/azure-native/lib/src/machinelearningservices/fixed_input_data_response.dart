// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fixed input data definition.
class FixedInputDataResponse {
  /// Mapping of column names to special uses.
  final pulumi.Input<Map<String, String>>? columns;
  /// The context metadata of the data source.
  final pulumi.Input<String>? dataContext;
  /// Monitoring input data type enum.
  /// Expected value is 'Fixed'.
  final pulumi.Input<String> inputDataType;
  /// [Required] Specifies the type of job.
  final pulumi.Input<String> jobInputType;
  /// [Required] Input Asset URI.
  final pulumi.Input<String> uri;

  /// Creates a new [FixedInputDataResponse].
  /// [columns] Mapping of column names to special uses.
  /// [dataContext] The context metadata of the data source.
  /// [inputDataType] Monitoring input data type enum.
  /// [jobInputType] [Required] Specifies the type of job.
  /// [uri] [Required] Input Asset URI.
  const FixedInputDataResponse({
    this.columns,
    this.dataContext,
    required this.inputDataType,
    required this.jobInputType,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'dataContext': ?dataContext,
      'inputDataType': inputDataType,
      'jobInputType': jobInputType,
      'uri': uri,
    };
  }

  factory FixedInputDataResponse.fromMap(Map<String, dynamic> map) {
    return FixedInputDataResponse(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      dataContext: (() { final guardedValue = map['dataContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputDataType: pulumi.Input.fromValue(map['inputDataType'] as String),
      jobInputType: pulumi.Input.fromValue(map['jobInputType'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

