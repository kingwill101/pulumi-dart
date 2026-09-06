// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header.dart';

/// Configuration of otlp
class OtlpConfiguration {
  /// The endpoint of otlp configuration
  final pulumi.Input<String?>? endpoint;
  /// Headers of otlp configurations
  final pulumi.Input<List<Header>?>? headers;
  /// Boolean indicating if otlp configuration is insecure
  final pulumi.Input<bool?>? insecure;
  /// The name of otlp configuration
  final pulumi.Input<String?>? name;

  /// Creates a new [OtlpConfiguration].
  /// [endpoint] The endpoint of otlp configuration
  /// [headers] Headers of otlp configurations
  /// [insecure] Boolean indicating if otlp configuration is insecure
  /// [name] The name of otlp configuration
  const OtlpConfiguration({
    this.endpoint,
    this.headers,
    this.insecure,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<Header>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<Header, Map<String, dynamic>>(value, (value) => value.toMap())),
      'insecure': ?insecure,
      'name': ?name,
    };
  }

  factory OtlpConfiguration.fromMap(Map<String, dynamic> map) {
    return OtlpConfiguration(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Header>(guardedValue, (value) => Header.fromMap((value as Map).cast<String, dynamic>()))); })(),
      insecure: (() { final guardedValue = map['insecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
