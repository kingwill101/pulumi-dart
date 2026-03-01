// ignore_for_file: unused_element, unnecessary_cast


class CustomProviderResourceType {
  /// Specifies the endpoint of the route definition.
  final String endpoint;
  /// Specifies the name of the route definition.
  final String name;
  /// The routing type that is supported for the resource request. Valid values are `Proxy` and `Proxy,Cache`. Defaults to `Proxy`.
  final String? routingType;

  /// Creates a new [CustomProviderResourceType].
  /// [endpoint] Specifies the endpoint of the route definition.
  /// [name] Specifies the name of the route definition.
  /// [routingType] The routing type that is supported for the resource request. Valid values are `Proxy` and `Proxy,Cache`. Defaults to `Proxy`.
  CustomProviderResourceType({
    required this.endpoint,
    required this.name,
    this.routingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'name': name,
      'routingType': ?routingType,
    };
  }

  factory CustomProviderResourceType.fromMap(Map<String, dynamic> map) {
    return CustomProviderResourceType(
      endpoint: map['endpoint'] as String,
      name: map['name'] as String,
      routingType: map['routingType'] == null ? null : map['routingType'] as String,
    );
  }
}

