// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rolling input data definition.
class RollingInputDataResponse {
  /// Mapping of column names to special uses.
  final pulumi.Input<Map<String, String>>? columns;
  /// The context metadata of the data source.
  final pulumi.Input<String>? dataContext;
  /// Monitoring input data type enum.
  /// Expected value is 'Rolling'.
  final pulumi.Input<String> inputDataType;
  /// [Required] Specifies the type of job.
  final pulumi.Input<String> jobInputType;
  /// Reference to the component asset used to preprocess the data.
  final pulumi.Input<String>? preprocessingComponentId;
  /// [Required] Input Asset URI.
  final pulumi.Input<String> uri;
  /// [Required] The time offset between the end of the data window and the monitor's current run time.
  final pulumi.Input<String> windowOffset;
  /// [Required] The size of the rolling data window.
  final pulumi.Input<String> windowSize;

  /// Creates a new [RollingInputDataResponse].
  /// [columns] Mapping of column names to special uses.
  /// [dataContext] The context metadata of the data source.
  /// [inputDataType] Monitoring input data type enum.
  /// [jobInputType] [Required] Specifies the type of job.
  /// [preprocessingComponentId] Reference to the component asset used to preprocess the data.
  /// [uri] [Required] Input Asset URI.
  /// [windowOffset] [Required] The time offset between the end of the data window and the monitor's current run time.
  /// [windowSize] [Required] The size of the rolling data window.
  RollingInputDataResponse({
    this.columns,
    this.dataContext,
    required this.inputDataType,
    required this.jobInputType,
    this.preprocessingComponentId,
    required this.uri,
    required this.windowOffset,
    required this.windowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'dataContext': ?dataContext,
      'inputDataType': inputDataType,
      'jobInputType': jobInputType,
      'preprocessingComponentId': ?preprocessingComponentId,
      'uri': uri,
      'windowOffset': windowOffset,
      'windowSize': windowSize,
    };
  }

  factory RollingInputDataResponse.fromMap(Map<String, dynamic> map) {
    return RollingInputDataResponse(
      columns: map['columns'] == null ? null : ((map['columns'] as Map).cast<String, String>()).input(),
      dataContext: map['dataContext'] == null ? null : (map['dataContext'] as String).input(),
      inputDataType: (map['inputDataType'] as String).input(),
      jobInputType: (map['jobInputType'] as String).input(),
      preprocessingComponentId: map['preprocessingComponentId'] == null ? null : (map['preprocessingComponentId'] as String).input(),
      uri: (map['uri'] as String).input(),
      windowOffset: (map['windowOffset'] as String).input(),
      windowSize: (map['windowSize'] as String).input(),
    );
  }
}

