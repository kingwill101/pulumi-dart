// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'probe_properties.dart';

/// Load balancer health probes
class Probe {
  /// name of the load balancer health probe
  final pulumi.Input<String> name;
  /// load balancer rule properties
  final pulumi.Input<ProbeProperties> properties;

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
      'properties': pulumi.Input.mapInputValue<ProbeProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory Probe.fromMap(Map<String, dynamic> map) {
    return Probe(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(ProbeProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

