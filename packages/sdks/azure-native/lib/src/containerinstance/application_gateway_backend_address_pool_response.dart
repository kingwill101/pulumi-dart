// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NGroups application gateway backend address pool
class ApplicationGatewayBackendAddressPoolResponse {
  /// The application gateway backend address pool ARM resource Id.
  final pulumi.Input<String>? resource;

  /// Creates a new [ApplicationGatewayBackendAddressPoolResponse].
  /// [resource] The application gateway backend address pool ARM resource Id.
  ApplicationGatewayBackendAddressPoolResponse({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
    };
  }

  factory ApplicationGatewayBackendAddressPoolResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendAddressPoolResponse(
      resource: map['resource'] == null ? null : (map['resource'] as String).input(),
    );
  }
}

