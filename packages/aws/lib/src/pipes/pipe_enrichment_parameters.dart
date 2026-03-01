// ignore_for_file: unused_element, unnecessary_cast

import 'pipe_enrichment_parameters_http_parameters.dart';

class PipeEnrichmentParameters {
  /// Contains the HTTP parameters to use when the target is a API Gateway REST endpoint or EventBridge ApiDestination. If you specify an API Gateway REST API or EventBridge ApiDestination as a target, you can use this parameter to specify headers, path parameters, and query string keys/values as part of your target invoking request. If you're using ApiDestinations, the corresponding Connection can also have these values configured. In case of any conflicting keys, values from the Connection take precedence. Detailed below.
  final PipeEnrichmentParametersHttpParameters? httpParameters;

  /// Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. Maximum length of 8192 characters.
  final String? inputTemplate;

  /// Creates a new [PipeEnrichmentParameters].
  /// [httpParameters] Contains the HTTP parameters to use when the target is a API Gateway REST endpoint or EventBridge ApiDestination. If you specify an API Gateway REST API or EventBridge ApiDestination as a target, you can use this parameter to specify headers, path parameters, and query string keys/values as part of your target invoking request. If you're using ApiDestinations, the corresponding Connection can also have these values configured. In case of any conflicting keys, values from the Connection take precedence. Detailed below.
  /// [inputTemplate] Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. Maximum length of 8192 characters.
  PipeEnrichmentParameters({this.httpParameters, this.inputTemplate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpParameters': ?httpParameters == null
          ? null
          : httpParameters!.toMap(),
      'inputTemplate': ?inputTemplate,
    };
  }

  factory PipeEnrichmentParameters.fromMap(Map<String, dynamic> map) {
    return PipeEnrichmentParameters(
      httpParameters: map['httpParameters'] == null
          ? null
          : PipeEnrichmentParametersHttpParameters.fromMap(
              (map['httpParameters'] as Map).cast<String, dynamic>(),
            ),
      inputTemplate: map['inputTemplate'] == null
          ? null
          : map['inputTemplate'] as String,
    );
  }
}
