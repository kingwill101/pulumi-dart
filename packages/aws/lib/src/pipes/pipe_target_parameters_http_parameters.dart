// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersHttpParameters {
  final Map<String, String>? headerParameters;
  final String? pathParameterValues;
  final Map<String, String>? queryStringParameters;

  /// Creates a new [PipeTargetParametersHttpParameters].
  /// [headerParameters] Optional.
  /// [pathParameterValues] Optional.
  /// [queryStringParameters] Optional.
  PipeTargetParametersHttpParameters({
    this.headerParameters,
    this.pathParameterValues,
    this.queryStringParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerParameters': ?headerParameters,
      'pathParameterValues': ?pathParameterValues,
      'queryStringParameters': ?queryStringParameters,
    };
  }

  factory PipeTargetParametersHttpParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersHttpParameters(
      headerParameters: map['headerParameters'] == null
          ? null
          : (map['headerParameters'] as Map).cast<String, String>(),
      pathParameterValues: map['pathParameterValues'] == null
          ? null
          : map['pathParameterValues'] as String,
      queryStringParameters: map['queryStringParameters'] == null
          ? null
          : (map['queryStringParameters'] as Map).cast<String, String>(),
    );
  }
}
