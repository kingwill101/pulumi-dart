// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the endpoint properties
class EndpointResponse {
  /// The endpoint URL
  final pulumi.Input<String>? endpoint;
  /// The name of the endpoint
  final pulumi.Input<String>? name;

  /// Creates a new [EndpointResponse].
  /// [endpoint] The endpoint URL
  /// [name] The name of the endpoint
  const EndpointResponse({
    this.endpoint,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'name': ?name,
    };
  }

  factory EndpointResponse.fromMap(Map<String, dynamic> map) {
    return EndpointResponse(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

