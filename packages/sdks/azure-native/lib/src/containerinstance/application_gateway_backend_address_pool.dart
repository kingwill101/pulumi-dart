// ignore_for_file: unused_element, unnecessary_cast


/// NGroups application gateway backend address pool
class ApplicationGatewayBackendAddressPool {
  /// The application gateway backend address pool ARM resource Id.
  final String? resource;

  /// Creates a new [ApplicationGatewayBackendAddressPool].
  /// [resource] The application gateway backend address pool ARM resource Id.
  ApplicationGatewayBackendAddressPool({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
    };
  }

  factory ApplicationGatewayBackendAddressPool.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendAddressPool(
      resource: map['resource'] == null ? null : map['resource'] as String,
    );
  }
}

