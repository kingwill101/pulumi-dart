// ignore_for_file: unused_element, unnecessary_cast

class GetRestApiEndpointConfiguration {
  /// The IP address types that can invoke an API (RestApi).
  final String ipAddressType;

  /// List of endpoint types.
  final List<String> types;

  /// Set of VPC Endpoint identifiers.
  final List<String> vpcEndpointIds;

  GetRestApiEndpointConfiguration({
    required this.ipAddressType,
    required this.types,
    required this.vpcEndpointIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddressType'] = ipAddressType;
    map['types'] = types;
    map['vpcEndpointIds'] = vpcEndpointIds;
    return map;
  }

  factory GetRestApiEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return GetRestApiEndpointConfiguration(
      ipAddressType: map['ipAddressType'] as String,
      types: (map['types'] as List).cast<String>(),
      vpcEndpointIds: (map['vpcEndpointIds'] as List).cast<String>(),
    );
  }
}
