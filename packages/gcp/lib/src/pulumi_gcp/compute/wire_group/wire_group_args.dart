// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../wire_group_endpoint/wire_group_endpoint.dart';
import '../wire_group_wire_group_properties/wire_group_wire_group_properties.dart';
import '../wire_group_wire_properties/wire_group_wire_properties.dart';

/// The set of arguments for WireGroup.
class WireGroupArgs {
  /// Indicates whether the wire group is administratively enabled.
  final Input<bool>? adminEnabled;

  /// Required cross site network to which wire group belongs.
  final Input<String> crossSiteNetwork;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Endpoints grouped by location, each mapping to interconnect configurations.
  /// Structure is documented below.
  final Input<List<WireGroupEndpoint>>? endpoints;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Properties specific to the wire group.
  /// Structure is documented below.
  final Input<WireGroupWireGroupProperties>? wireGroupProperties;

  /// Default properties for wires within the group.
  /// Structure is documented below.
  final Input<WireGroupWireProperties>? wireProperties;

  WireGroupArgs({
    this.adminEnabled,
    required this.crossSiteNetwork,
    this.description,
    this.endpoints,
    this.name,
    this.project,
    this.wireGroupProperties,
    this.wireProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminEnabledValue = adminEnabled;
    if (adminEnabledValue != null) {
      map['adminEnabled'] = adminEnabledValue;
    }
    map['crossSiteNetwork'] = crossSiteNetwork;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final endpointsValue = endpoints;
    if (endpointsValue != null) {
      map['endpoints'] = Input.mapOptionalInputValue<List<WireGroupEndpoint>,
              List<Map<String, dynamic>>>(
          endpointsValue,
          (value) => Input.encodeList<WireGroupEndpoint, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final wireGroupPropertiesValue = wireGroupProperties;
    if (wireGroupPropertiesValue != null) {
      map['wireGroupProperties'] = Input.mapOptionalInputValue<
              WireGroupWireGroupProperties, Map<String, dynamic>>(
          wireGroupPropertiesValue, (value) => value.toMap());
    }
    final wirePropertiesValue = wireProperties;
    if (wirePropertiesValue != null) {
      map['wireProperties'] = Input.mapOptionalInputValue<
          WireGroupWireProperties,
          Map<String, dynamic>>(wirePropertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WireGroupArgs.fromMap(Map<String, dynamic> map) {
    return WireGroupArgs(
      adminEnabled: Input.asOptionalInput<bool>(map['adminEnabled']),
      crossSiteNetwork: Input.asInput<String>(map['crossSiteNetwork']),
      description: Input.asOptionalInput<String>(map['description']),
      endpoints:
          Input.asOptionalInput<List<WireGroupEndpoint>>(map['endpoints']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      wireGroupProperties: Input.asOptionalInput<WireGroupWireGroupProperties>(
          map['wireGroupProperties']),
      wireProperties:
          Input.asOptionalInput<WireGroupWireProperties>(map['wireProperties']),
    );
  }
}
