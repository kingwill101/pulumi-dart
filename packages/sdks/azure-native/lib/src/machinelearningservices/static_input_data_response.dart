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
      columns: map['columns'] == null ? null : ((map['columns'] as Map).cast<String, String>()).input(),
      dataContext: map['dataContext'] == null ? null : (map['dataContext'] as String).input(),
      inputDataType: (map['inputDataType'] as String).input(),
      jobInputType: (map['jobInputType'] as String).input(),
      preprocessingComponentId: map['preprocessingComponentId'] == null ? null : (map['preprocessingComponentId'] as String).input(),
      uri: (map['uri'] as String).input(),
      windowEnd: (map['windowEnd'] as String).input(),
      windowStart: (map['windowStart'] as String).input(),
    );
  }
}

