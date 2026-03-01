// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wire_group_wire_endpoint.dart';
import 'wire_group_wire_wire_property.dart';

class WireGroupWire {
  /// Indicates whether the wire group is administratively enabled.
  final bool? adminEnabled;
  /// Endpoints grouped by location, each mapping to interconnect configurations.
  /// Structure is documented below.
  final List<WireGroupWireEndpoint>? endpoints;
  /// (Output)
  final String? label;
  /// Default properties for wires within the group.
  /// Structure is documented below.
  final List<WireGroupWireWireProperty>? wireProperties;

  /// Creates a new [WireGroupWire].
  /// [adminEnabled] Indicates whether the wire group is administratively enabled.
  /// [endpoints] Endpoints grouped by location, each mapping to interconnect configurations.
  /// [label] (Output)
  /// [wireProperties] Default properties for wires within the group.
  WireGroupWire({
    this.adminEnabled,
    this.endpoints,
    this.label,
    this.wireProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<WireGroupWireEndpoint, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'label': ?label,
      'wireProperties': ?wireProperties == null ? null : pulumi.Input.encodeList<WireGroupWireWireProperty, Map<String, dynamic>>(wireProperties!, (value) => value.toMap()),
    };
  }

  factory WireGroupWire.fromMap(Map<String, dynamic> map) {
    return WireGroupWire(
      adminEnabled: map['adminEnabled'] == null ? null : map['adminEnabled'] as bool,
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<WireGroupWireEndpoint>(map['endpoints'], (value) => WireGroupWireEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      label: map['label'] == null ? null : map['label'] as String,
      wireProperties: map['wireProperties'] == null ? null : pulumi.Input.decodeList<WireGroupWireWireProperty>(map['wireProperties'], (value) => WireGroupWireWireProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

