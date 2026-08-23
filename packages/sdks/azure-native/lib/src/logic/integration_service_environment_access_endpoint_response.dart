// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The integration service environment access endpoint.
class IntegrationServiceEnvironmentAccessEndpointResponse {
  /// The access endpoint type.
  final pulumi.Input<String>? type;

  /// Creates a new [IntegrationServiceEnvironmentAccessEndpointResponse].
  /// [type] The access endpoint type.
  const IntegrationServiceEnvironmentAccessEndpointResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory IntegrationServiceEnvironmentAccessEndpointResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentAccessEndpointResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
