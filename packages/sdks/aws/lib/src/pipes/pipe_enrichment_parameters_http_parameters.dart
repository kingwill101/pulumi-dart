// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeEnrichmentParametersHttpParameters {
  final pulumi.Input<Map<String, String>?>? headerParameters;
  final pulumi.Input<String?>? pathParameterValues;
  final pulumi.Input<Map<String, String>?>? queryStringParameters;

  /// Creates a new [PipeEnrichmentParametersHttpParameters].
  /// [headerParameters] Optional.
  /// [pathParameterValues] Optional.
  /// [queryStringParameters] Optional.
  const PipeEnrichmentParametersHttpParameters({
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
      headerParameters: (() { final guardedValue = map['headerParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pathParameterValues: (() { final guardedValue = map['pathParameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryStringParameters: (() { final guardedValue = map['queryStringParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
