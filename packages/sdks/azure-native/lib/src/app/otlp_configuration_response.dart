// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_response.dart';

/// Configuration of otlp
class OtlpConfigurationResponse {
  /// The endpoint of otlp configuration
  final pulumi.Input<String>? endpoint;
  /// Headers of otlp configurations
  final pulumi.Input<List<HeaderResponse>>? headers;
  /// Boolean indicating if otlp configuration is insecure
  final pulumi.Input<bool>? insecure;
  /// The name of otlp configuration
  final pulumi.Input<String>? name;

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
      'headers': ?pulumi.Input.mapOptionalInputValue<List<HeaderResponse>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HeaderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'insecure': ?insecure,
      'name': ?name,
    };
  }

  factory OtlpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OtlpConfigurationResponse(
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<HeaderResponse>(map['headers']!, (value) => HeaderResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      insecure: map['insecure'] == null ? null : (map['insecure']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

