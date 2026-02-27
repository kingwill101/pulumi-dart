// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../external_vpn_gateway_interface/external_vpn_gateway_interface.dart';

/// The set of arguments for ExternalVpnGateway.
class ExternalVpnGatewayArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// A list of interfaces on this external VPN gateway.
  /// Structure is documented below.
  final pulumi.Input<List<ExternalVpnGatewayInterface>>? interfaces;

  /// Labels for the external VPN gateway resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Indicates the redundancy type of this external VPN gateway
  /// Possible values are: `FOUR_IPS_REDUNDANCY`, `SINGLE_IP_INTERNALLY_REDUNDANT`, `TWO_IPS_REDUNDANCY`.
  final pulumi.Input<String>? redundancyType;

  ExternalVpnGatewayArgs({
    this.description,
    this.interfaces,
    this.labels,
    this.name,
    this.project,
    this.redundancyType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final interfacesValue = interfaces;
    if (interfacesValue != null) {
      map['interfaces'] = pulumi.Input.mapOptionalInputValue<
              List<ExternalVpnGatewayInterface>, List<Map<String, dynamic>>>(
          interfacesValue,
          (value) => pulumi.Input.encodeList<ExternalVpnGatewayInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final redundancyTypeValue = redundancyType;
    if (redundancyTypeValue != null) {
      map['redundancyType'] = redundancyTypeValue;
    }
    return map;
  }

  factory ExternalVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ExternalVpnGatewayArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      interfaces:
          pulumi.Input.asOptionalInput<List<ExternalVpnGatewayInterface>>(
              map['interfaces']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      redundancyType:
          pulumi.Input.asOptionalInput<String>(map['redundancyType']),
    );
  }
}
