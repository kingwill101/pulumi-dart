// ignore_for_file: unused_element, unnecessary_cast

class GetGlobalForwardingRuleServiceDirectoryRegistration {
  /// Service Directory namespace to register the forwarding rule under.
  final String namespace;

  /// [Optional] Service Directory region to register this global forwarding rule under.
  /// Default to "us-central1". Only used for PSC for Google APIs. All PSC for
  /// Google APIs Forwarding Rules on the same network should use the same Service
  /// Directory region.
  final String serviceDirectoryRegion;

  GetGlobalForwardingRuleServiceDirectoryRegistration({
    required this.namespace,
    required this.serviceDirectoryRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    map['serviceDirectoryRegion'] = serviceDirectoryRegion;
    return map;
  }

  factory GetGlobalForwardingRuleServiceDirectoryRegistration.fromMap(
      Map<String, dynamic> map) {
    return GetGlobalForwardingRuleServiceDirectoryRegistration(
      namespace: map['namespace'] as String,
      serviceDirectoryRegion: map['serviceDirectoryRegion'] as String,
    );
  }
}
