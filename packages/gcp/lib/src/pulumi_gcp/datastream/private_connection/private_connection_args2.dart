// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../private_connection_psc_interface_config/private_connection_psc_interface_config.dart';
import '../private_connection_vpc_peering_config/private_connection_vpc_peering_config2.dart';

/// The set of arguments for PrivateConnection.
class PrivateConnectionArgs2 {
  /// If set to true, will skip validations.
  final Input<bool>? createWithoutValidation;

  /// Display name.
  final Input<String> displayName;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name of the location this private connection is located in.
  final Input<String> location;

  /// The private connectivity identifier.
  final Input<String> privateConnectionId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The PSC Interface configuration is used to create PSC Interface
  /// between Datastream and the consumer's PSC.
  /// Structure is documented below.
  final Input<PrivateConnectionPscInterfaceConfig>? pscInterfaceConfig;

  /// The VPC Peering configuration is used to create VPC peering
  /// between Datastream and the consumer's VPC.
  /// Structure is documented below.
  final Input<PrivateConnectionVpcPeeringConfig2>? vpcPeeringConfig;

  PrivateConnectionArgs2({
    this.createWithoutValidation,
    required this.displayName,
    this.labels,
    required this.location,
    required this.privateConnectionId,
    this.project,
    this.pscInterfaceConfig,
    this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createWithoutValidationValue = createWithoutValidation;
    if (createWithoutValidationValue != null) {
      map['createWithoutValidation'] = createWithoutValidationValue;
    }
    map['displayName'] = displayName;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscInterfaceConfigValue = pscInterfaceConfig;
    if (pscInterfaceConfigValue != null) {
      map['pscInterfaceConfig'] = Input.mapOptionalInputValue<
              PrivateConnectionPscInterfaceConfig, Map<String, dynamic>>(
          pscInterfaceConfigValue, (value) => value.toMap());
    }
    final vpcPeeringConfigValue = vpcPeeringConfig;
    if (vpcPeeringConfigValue != null) {
      map['vpcPeeringConfig'] = Input.mapOptionalInputValue<
              PrivateConnectionVpcPeeringConfig2, Map<String, dynamic>>(
          vpcPeeringConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory PrivateConnectionArgs2.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionArgs2(
      createWithoutValidation:
          Input.asOptionalInput<bool>(map['createWithoutValidation']),
      displayName: Input.asInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      privateConnectionId: Input.asInput<String>(map['privateConnectionId']),
      project: Input.asOptionalInput<String>(map['project']),
      pscInterfaceConfig:
          Input.asOptionalInput<PrivateConnectionPscInterfaceConfig>(
              map['pscInterfaceConfig']),
      vpcPeeringConfig:
          Input.asOptionalInput<PrivateConnectionVpcPeeringConfig2>(
              map['vpcPeeringConfig']),
    );
  }
}
