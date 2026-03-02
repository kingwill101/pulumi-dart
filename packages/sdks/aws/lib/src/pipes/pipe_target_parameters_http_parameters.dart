// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersHttpParameters {
  final pulumi.Input<Map<String, String>>? headerParameters;
  final pulumi.Input<String>? pathParameterValues;
  final pulumi.Input<Map<String, String>>? queryStringParameters;

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
      headerParameters: map['headerParameters'] == null ? null : ((map['headerParameters'] as Map).cast<String, String>()).input(),
      pathParameterValues: map['pathParameterValues'] == null ? null : (map['pathParameterValues'] as String).input(),
      queryStringParameters: map['queryStringParameters'] == null ? null : ((map['queryStringParameters'] as Map).cast<String, String>()).input(),
    );
  }
}

