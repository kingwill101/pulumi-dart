// ignore_for_file: unused_element, unnecessary_cast


/// Static input data definition.
class StaticInputDataResponse {
  /// Mapping of column names to special uses.
  final Map<String, String>? columns;
  /// The context metadata of the data source.
  final String? dataContext;
  /// Monitoring input data type enum.
  /// Expected value is 'Static'.
  final String inputDataType;
  /// [Required] Specifies the type of job.
  final String jobInputType;
  /// Reference to the component asset used to preprocess the data.
  final String? preprocessingComponentId;
  /// [Required] Input Asset URI.
  final String uri;
  /// [Required] The end date of the data window.
  final String windowEnd;
  /// [Required] The start date of the data window.
  final String windowStart;

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
      columns: map['columns'] == null ? null : (map['columns'] as Map).cast<String, String>(),
      dataContext: map['dataContext'] == null ? null : map['dataContext'] as String,
      inputDataType: map['inputDataType'] as String,
      jobInputType: map['jobInputType'] as String,
      preprocessingComponentId: map['preprocessingComponentId'] == null ? null : map['preprocessingComponentId'] as String,
      uri: map['uri'] as String,
      windowEnd: map['windowEnd'] as String,
      windowStart: map['windowStart'] as String,
    );
  }
}

