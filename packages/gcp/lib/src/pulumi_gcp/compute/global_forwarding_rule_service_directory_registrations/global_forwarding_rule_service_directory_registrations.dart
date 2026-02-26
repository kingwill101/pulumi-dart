// ignore_for_file: unused_element, unnecessary_cast

class GlobalForwardingRuleServiceDirectoryRegistrations {
  /// Service Directory namespace to register the forwarding rule under.
  final String? namespace;

  /// [Optional] Service Directory region to register this global forwarding rule under.
  /// Default to "us-central1". Only used for PSC for Google APIs. All PSC for
  /// Google APIs Forwarding Rules on the same network should use the same Service
  /// Directory region.
  final String? serviceDirectoryRegion;

  GlobalForwardingRuleServiceDirectoryRegistrations({
    this.namespace,
    this.serviceDirectoryRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final serviceDirectoryRegionValue = serviceDirectoryRegion;
    if (serviceDirectoryRegionValue != null) {
      map['serviceDirectoryRegion'] = serviceDirectoryRegionValue;
    }
    return map;
  }

  factory GlobalForwardingRuleServiceDirectoryRegistrations.fromMap(
      Map<String, dynamic> map) {
    return GlobalForwardingRuleServiceDirectoryRegistrations(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      serviceDirectoryRegion: map['serviceDirectoryRegion'] == null
          ? null
          : map['serviceDirectoryRegion'] as String,
    );
  }
}
