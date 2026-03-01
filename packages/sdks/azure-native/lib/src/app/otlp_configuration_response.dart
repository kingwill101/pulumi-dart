// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_response.dart';

/// Configuration of otlp
class OtlpConfigurationResponse {
  /// The endpoint of otlp configuration
  final String? endpoint;
  /// Headers of otlp configurations
  final List<HeaderResponse>? headers;
  /// Boolean indicating if otlp configuration is insecure
  final bool? insecure;
  /// The name of otlp configuration
  final String? name;

  /// Creates a new [OtlpConfigurationResponse].
  /// [endpoint] The endpoint of otlp configuration
  /// [headers] Headers of otlp configurations
  /// [insecure] Boolean indicating if otlp configuration is insecure
  /// [name] The name of otlp configuration
  OtlpConfigurationResponse({
    this.endpoint,
    this.headers,
    this.insecure,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<HeaderResponse, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'insecure': ?insecure,
      'name': ?name,
    };
  }

  factory OtlpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OtlpConfigurationResponse(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<HeaderResponse>(map['headers'], (value) => HeaderResponse.fromMap((value as Map).cast<String, dynamic>())),
      insecure: map['insecure'] == null ? null : map['insecure'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

