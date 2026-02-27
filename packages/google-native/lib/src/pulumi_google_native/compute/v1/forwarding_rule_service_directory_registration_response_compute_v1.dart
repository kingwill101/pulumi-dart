// ignore_for_file: unused_element, unnecessary_cast

/// Describes the auto-registration of the Forwarding Rule to Service Directory. The region and project of the Service Directory resource generated from this registration will be the same as this Forwarding Rule.
class ForwardingRuleServiceDirectoryRegistrationResponseComputeV1 {
  /// Service Directory namespace to register the forwarding rule under.
  final String namespace;

  /// Service Directory service to register the forwarding rule under.
  final String service;

  /// [Optional] Service Directory region to register this global forwarding rule under. Default to "us-central1". Only used for PSC for Google APIs. All PSC for Google APIs Forwarding Rules on the same network should use the same Service Directory region.
  final String serviceDirectoryRegion;

  ForwardingRuleServiceDirectoryRegistrationResponseComputeV1({
    required this.namespace,
    required this.service,
    required this.serviceDirectoryRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    map['service'] = service;
    map['serviceDirectoryRegion'] = serviceDirectoryRegion;
    return map;
  }

  factory ForwardingRuleServiceDirectoryRegistrationResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ForwardingRuleServiceDirectoryRegistrationResponseComputeV1(
      namespace: map['namespace'] as String,
      service: map['service'] as String,
      serviceDirectoryRegion: map['serviceDirectoryRegion'] as String,
    );
  }
}
