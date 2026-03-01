// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header.dart';

/// Configuration of otlp
class OtlpConfiguration {
  /// The endpoint of otlp configuration
  final String? endpoint;
  /// Headers of otlp configurations
  final List<Header>? headers;
  /// Boolean indicating if otlp configuration is insecure
  final bool? insecure;
  /// The name of otlp configuration
  final String? name;

  /// Creates a new [OtlpConfiguration].
  /// [endpoint] The endpoint of otlp configuration
  /// [headers] Headers of otlp configurations
  /// [insecure] Boolean indicating if otlp configuration is insecure
  /// [name] The name of otlp configuration
  OtlpConfiguration({
    this.endpoint,
    this.headers,
    this.insecure,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<Header, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'insecure': ?insecure,
      'name': ?name,
    };
  }

  factory OtlpConfiguration.fromMap(Map<String, dynamic> map) {
    return OtlpConfiguration(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<Header>(map['headers'], (value) => Header.fromMap((value as Map).cast<String, dynamic>())),
      insecure: map['insecure'] == null ? null : map['insecure'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

