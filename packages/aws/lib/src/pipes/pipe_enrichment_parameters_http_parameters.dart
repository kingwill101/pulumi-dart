// ignore_for_file: unused_element, unnecessary_cast


class PipeEnrichmentParametersHttpParameters {
  final Map<String, String>? headerParameters;
  final String? pathParameterValues;
  final Map<String, String>? queryStringParameters;

  /// Creates a new [PipeEnrichmentParametersHttpParameters].
  /// [headerParameters] Optional.
  /// [pathParameterValues] Optional.
  /// [queryStringParameters] Optional.
  PipeEnrichmentParametersHttpParameters({
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

  factory PipeEnrichmentParametersHttpParameters.fromMap(Map<String, dynamic> map) {
    return PipeEnrichmentParametersHttpParameters(
      headerParameters: map['headerParameters'] == null ? null : (map['headerParameters'] as Map).cast<String, String>(),
      pathParameterValues: map['pathParameterValues'] == null ? null : map['pathParameterValues'] as String,
      queryStringParameters: map['queryStringParameters'] == null ? null : (map['queryStringParameters'] as Map).cast<String, String>(),
    );
  }
}

