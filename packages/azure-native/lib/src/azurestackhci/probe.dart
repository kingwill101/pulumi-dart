// ignore_for_file: unused_element, unnecessary_cast

import 'probe_properties.dart';

/// Load balancer health probes
class Probe {
  /// name of the load balancer health probe
  final String name;
  /// load balancer rule properties
  final ProbeProperties properties;

  /// Creates a new [Probe].
  /// [name] name of the load balancer health probe
  /// [properties] load balancer rule properties
  Probe({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory Probe.fromMap(Map<String, dynamic> map) {
    return Probe(
      name: map['name'] as String,
      properties: ProbeProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

