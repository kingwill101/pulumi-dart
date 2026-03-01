// ignore_for_file: unused_element, unnecessary_cast

import 'probe_properties_response.dart';

/// Load balancer health probes
class ProbeResponse {
  /// name of the load balancer health probe
  final String name;
  /// load balancer rule properties
  final ProbePropertiesResponse properties;

  /// Creates a new [ProbeResponse].
  /// [name] name of the load balancer health probe
  /// [properties] load balancer rule properties
  ProbeResponse({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory ProbeResponse.fromMap(Map<String, dynamic> map) {
    return ProbeResponse(
      name: map['name'] as String,
      properties: ProbePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

