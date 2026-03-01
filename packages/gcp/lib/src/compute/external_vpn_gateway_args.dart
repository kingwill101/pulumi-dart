// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_vpn_gateway_interface.dart';

/// {@template pulumi_compute_external_vpn_gateway_external_vpn_gateway_args_doc}
/// The set of arguments for ExternalVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_external_vpn_gateway_external_vpn_gateway_args_doc}
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

  /// Creates a new [ExternalVpnGatewayArgs].
  /// [description] An optional description of this resource.
  /// [interfaces] A list of interfaces on this external VPN gateway.
  /// [labels] Labels for the external VPN gateway resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [redundancyType] Indicates the redundancy type of this external VPN gateway
  ExternalVpnGatewayArgs({
    String? description,
    List<ExternalVpnGatewayInterface>? interfaces,
    Map<String, String>? labels,
    String? name,
    String? project,
    String? redundancyType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      interfaces = pulumi.Input.asOptionalInput<List<ExternalVpnGatewayInterface>>(interfaces),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      redundancyType = pulumi.Input.asOptionalInput<String>(redundancyType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<ExternalVpnGatewayInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<ExternalVpnGatewayInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'redundancyType': ?redundancyType,
    };
  }

  factory ExternalVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ExternalVpnGatewayArgs(
      description: map['description'] == null ? null : map['description'] as String,
      interfaces: map['interfaces'] == null ? null : pulumi.Input.decodeList<ExternalVpnGatewayInterface>(map['interfaces'], (value) => ExternalVpnGatewayInterface.fromMap((value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      redundancyType: map['redundancyType'] == null ? null : map['redundancyType'] as String,
    );
  }
}

