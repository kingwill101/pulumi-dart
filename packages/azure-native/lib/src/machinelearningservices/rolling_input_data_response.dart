// ignore_for_file: unused_element, unnecessary_cast


/// Rolling input data definition.
class RollingInputDataResponse {
  /// Mapping of column names to special uses.
  final Map<String, String>? columns;
  /// The context metadata of the data source.
  final String? dataContext;
  /// Monitoring input data type enum.
  /// Expected value is 'Rolling'.
  final String inputDataType;
  /// [Required] Specifies the type of job.
  final String jobInputType;
  /// Reference to the component asset used to preprocess the data.
  final String? preprocessingComponentId;
  /// [Required] Input Asset URI.
  final String uri;
  /// [Required] The time offset between the end of the data window and the monitor's current run time.
  final String windowOffset;
  /// [Required] The size of the rolling data window.
  final String windowSize;

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
      columns: map['columns'] == null ? null : (map['columns'] as Map).cast<String, String>(),
      dataContext: map['dataContext'] == null ? null : map['dataContext'] as String,
      inputDataType: map['inputDataType'] as String,
      jobInputType: map['jobInputType'] as String,
      preprocessingComponentId: map['preprocessingComponentId'] == null ? null : map['preprocessingComponentId'] as String,
      uri: map['uri'] as String,
      windowOffset: map['windowOffset'] as String,
      windowSize: map['windowSize'] as String,
    );
  }
}

