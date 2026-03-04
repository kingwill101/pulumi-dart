// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'probe_properties_response.dart';

/// Load balancer health probes
class ProbeResponse {
  /// name of the load balancer health probe
  final pulumi.Input<String> name;

  /// load balancer rule properties
  final pulumi.Input<ProbePropertiesResponse> properties;

  /// Creates a new [ProbeResponse].
  /// [name] name of the load balancer health probe
  /// [properties] load balancer rule properties
  ProbeResponse({required this.name, required this.properties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties':
          pulumi.Input.mapInputValue<
            ProbePropertiesResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory ProbeResponse.fromMap(Map<String, dynamic> map) {
    return ProbeResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(
        ProbePropertiesResponse.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
