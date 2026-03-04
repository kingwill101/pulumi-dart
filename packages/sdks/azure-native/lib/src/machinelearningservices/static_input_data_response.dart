// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Static input data definition.
class StaticInputDataResponse {
  /// Mapping of column names to special uses.
  final pulumi.Input<Map<String, String>>? columns;

  /// The context metadata of the data source.
  final pulumi.Input<String>? dataContext;

  /// Monitoring input data type enum.
  /// Expected value is 'Static'.
  final pulumi.Input<String> inputDataType;

  /// [Required] Specifies the type of job.
  final pulumi.Input<String> jobInputType;

  /// Reference to the component asset used to preprocess the data.
  final pulumi.Input<String>? preprocessingComponentId;

  /// [Required] Input Asset URI.
  final pulumi.Input<String> uri;

  /// [Required] The end date of the data window.
  final pulumi.Input<String> windowEnd;

  /// [Required] The start date of the data window.
  final pulumi.Input<String> windowStart;

  /// Creates a new [StaticInputDataResponse].
  /// [columns] Mapping of column names to special uses.
  /// [dataContext] The context metadata of the data source.
  /// [inputDataType] Monitoring input data type enum.
  /// [jobInputType] [Required] Specifies the type of job.
  /// [preprocessingComponentId] Reference to the component asset used to preprocess the data.
  /// [uri] [Required] Input Asset URI.
  /// [windowEnd] [Required] The end date of the data window.
  /// [windowStart] [Required] The start date of the data window.
  StaticInputDataResponse({
    this.columns,
    this.dataContext,
    required this.inputDataType,
    required this.jobInputType,
    this.preprocessingComponentId,
    required this.uri,
    required this.windowEnd,
    required this.windowStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'dataContext': ?dataContext,
      'inputDataType': inputDataType,
      'jobInputType': jobInputType,
      'preprocessingComponentId': ?preprocessingComponentId,
      'uri': uri,
      'windowEnd': windowEnd,
      'windowStart': windowStart,
    };
  }

  factory StaticInputDataResponse.fromMap(Map<String, dynamic> map) {
    return StaticInputDataResponse(
      columns: (() {
        final guardedValue = map['columns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      dataContext: (() {
        final guardedValue = map['dataContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inputDataType: pulumi.Input.fromValue(map['inputDataType'] as String),
      jobInputType: pulumi.Input.fromValue(map['jobInputType'] as String),
      preprocessingComponentId: (() {
        final guardedValue = map['preprocessingComponentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      windowEnd: pulumi.Input.fromValue(map['windowEnd'] as String),
      windowStart: pulumi.Input.fromValue(map['windowStart'] as String),
    );
  }
}
