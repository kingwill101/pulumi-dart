// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../wire_group_wire_endpoint/wire_group_wire_endpoint.dart';
import '../wire_group_wire_wire_property/wire_group_wire_wire_property.dart';

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

  WireGroupWire({
    this.adminEnabled,
    this.endpoints,
    this.label,
    this.wireProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminEnabledValue = adminEnabled;
    if (adminEnabledValue != null) {
      map['adminEnabled'] = adminEnabledValue;
    }
    final endpointsValue = endpoints;
    if (endpointsValue != null) {
      map['endpoints'] =
          Input.encodeList<WireGroupWireEndpoint, Map<String, dynamic>>(
              endpointsValue, (value) => value.toMap());
    }
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final wirePropertiesValue = wireProperties;
    if (wirePropertiesValue != null) {
      map['wireProperties'] =
          Input.encodeList<WireGroupWireWireProperty, Map<String, dynamic>>(
              wirePropertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WireGroupWire.fromMap(Map<String, dynamic> map) {
    return WireGroupWire(
      adminEnabled:
          map['adminEnabled'] == null ? null : map['adminEnabled'] as bool,
      endpoints: map['endpoints'] == null
          ? null
          : Input.decodeList<WireGroupWireEndpoint>(
              map['endpoints'],
              (value) => WireGroupWireEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      label: map['label'] == null ? null : map['label'] as String,
      wireProperties: map['wireProperties'] == null
          ? null
          : Input.decodeList<WireGroupWireWireProperty>(
              map['wireProperties'],
              (value) => WireGroupWireWireProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
