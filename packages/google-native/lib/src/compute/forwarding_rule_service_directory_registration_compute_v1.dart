// ignore_for_file: unused_element, unnecessary_cast

/// Describes the auto-registration of the Forwarding Rule to Service Directory. The region and project of the Service Directory resource generated from this registration will be the same as this Forwarding Rule.
class ForwardingRuleServiceDirectoryRegistrationComputeV1 {
  /// Service Directory namespace to register the forwarding rule under.
  final String? namespace;

  /// Service Directory service to register the forwarding rule under.
  final String? service;

  /// [Optional] Service Directory region to register this global forwarding rule under. Default to "us-central1". Only used for PSC for Google APIs. All PSC for Google APIs Forwarding Rules on the same network should use the same Service Directory region.
  final String? serviceDirectoryRegion;

  /// Creates a new [ForwardingRuleServiceDirectoryRegistrationComputeV1].
  /// [namespace] Service Directory namespace to register the forwarding rule under.
  /// [service] Service Directory service to register the forwarding rule under.
  /// [serviceDirectoryRegion] [Optional] Service Directory region to register this global forwarding rule under. Default to "us-central1". Only used for PSC for Google APIs. All PSC for Google APIs Forwarding Rules on the same network should use the same Service Directory region.
  ForwardingRuleServiceDirectoryRegistrationComputeV1({
    this.namespace,
    this.service,
    this.serviceDirectoryRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    final serviceDirectoryRegionValue = serviceDirectoryRegion;
    if (serviceDirectoryRegionValue != null) {
      map['serviceDirectoryRegion'] = serviceDirectoryRegionValue;
    }
    return map;
  }

  factory ForwardingRuleServiceDirectoryRegistrationComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ForwardingRuleServiceDirectoryRegistrationComputeV1(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      serviceDirectoryRegion: map['serviceDirectoryRegion'] == null
          ? null
          : map['serviceDirectoryRegion'] as String,
    );
  }
}
