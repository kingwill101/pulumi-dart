// ignore_for_file: unused_element, unnecessary_cast


class StorageDomainRoutingRuleRoute {
  /// Endpoint Type.
  final String endpointType;
  /// Instance domain name.
  final String instanceDomain;
  /// Storage domain name.
  final String storageDomain;

  /// Creates a new [StorageDomainRoutingRuleRoute].
  /// [endpointType] Endpoint Type.
  /// [instanceDomain] Instance domain name.
  /// [storageDomain] Storage domain name.
  StorageDomainRoutingRuleRoute({
    required this.endpointType,
    required this.instanceDomain,
    required this.storageDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'instanceDomain': instanceDomain,
      'storageDomain': storageDomain,
    };
  }

  factory StorageDomainRoutingRuleRoute.fromMap(Map<String, dynamic> map) {
    return StorageDomainRoutingRuleRoute(
      endpointType: map['endpointType'] as String,
      instanceDomain: map['instanceDomain'] as String,
      storageDomain: map['storageDomain'] as String,
    );
  }
}

