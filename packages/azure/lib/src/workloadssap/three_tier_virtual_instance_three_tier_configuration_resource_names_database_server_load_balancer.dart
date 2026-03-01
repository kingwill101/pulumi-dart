// ignore_for_file: unused_element, unnecessary_cast


class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer {
  /// A list of Backend Pool names for the Load Balancer. Changing this forces a new resource to be created.
  final List<String>? backendPoolNames;
  /// A list of Frontend IP Configuration names. Changing this forces a new resource to be created.
  final List<String>? frontendIpConfigurationNames;
  /// A list of Health Probe names. Changing this forces a new resource to be created.
  final List<String>? healthProbeNames;
  /// The full resource name of the Load Balancer. Changing this forces a new resource to be created.
  final String? name;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer].
  /// [backendPoolNames] A list of Backend Pool names for the Load Balancer. Changing this forces a new resource to be created.
  /// [frontendIpConfigurationNames] A list of Frontend IP Configuration names. Changing this forces a new resource to be created.
  /// [healthProbeNames] A list of Health Probe names. Changing this forces a new resource to be created.
  /// [name] The full resource name of the Load Balancer. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer({
    this.backendPoolNames,
    this.frontendIpConfigurationNames,
    this.healthProbeNames,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPoolNames': ?backendPoolNames,
      'frontendIpConfigurationNames': ?frontendIpConfigurationNames,
      'healthProbeNames': ?healthProbeNames,
      'name': ?name,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer(
      backendPoolNames: map['backendPoolNames'] == null ? null : (map['backendPoolNames'] as List).cast<String>(),
      frontendIpConfigurationNames: map['frontendIpConfigurationNames'] == null ? null : (map['frontendIpConfigurationNames'] as List).cast<String>(),
      healthProbeNames: map['healthProbeNames'] == null ? null : (map['healthProbeNames'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

