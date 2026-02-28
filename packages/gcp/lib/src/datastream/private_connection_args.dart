// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_connection_psc_interface_config.dart';
import 'private_connection_vpc_peering_config.dart';

/// {@template pulumi_datastream_private_connection_private_connection_args_doc}
/// The set of arguments for PrivateConnection.
/// {@endtemplate}
/// {@macro pulumi_datastream_private_connection_private_connection_args_doc}
class PrivateConnectionArgs {
  /// If set to true, will skip validations.
  final pulumi.Input<bool>? createWithoutValidation;

  /// Display name.
  final pulumi.Input<String> displayName;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the location this private connection is located in.
  final pulumi.Input<String> location;

  /// The private connectivity identifier.
  final pulumi.Input<String> privateConnectionId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The PSC Interface configuration is used to create PSC Interface
  /// between Datastream and the consumer's PSC.
  /// Structure is documented below.
  final pulumi.Input<PrivateConnectionPscInterfaceConfig>? pscInterfaceConfig;

  /// The VPC Peering configuration is used to create VPC peering
  /// between Datastream and the consumer's VPC.
  /// Structure is documented below.
  final pulumi.Input<PrivateConnectionVpcPeeringConfig>? vpcPeeringConfig;

  /// Creates a new [PrivateConnectionArgs].
  /// [createWithoutValidation] If set to true, will skip validations.
  /// [displayName] Display name.
  /// [labels] Labels.
  /// [location] The name of the location this private connection is located in.
  /// [privateConnectionId] The private connectivity identifier.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscInterfaceConfig] The PSC Interface configuration is used to create PSC Interface
  /// [vpcPeeringConfig] The VPC Peering configuration is used to create VPC peering
  PrivateConnectionArgs({
    bool? createWithoutValidation,
    required String displayName,
    Map<String, String>? labels,
    required String location,
    required String privateConnectionId,
    String? project,
    PrivateConnectionPscInterfaceConfig? pscInterfaceConfig,
    PrivateConnectionVpcPeeringConfig? vpcPeeringConfig,
  })  : createWithoutValidation =
            pulumi.Input.asOptionalInput<bool>(createWithoutValidation),
        displayName = pulumi.Input.asInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        privateConnectionId = pulumi.Input.asInput<String>(privateConnectionId),
        project = pulumi.Input.asOptionalInput<String>(project),
        pscInterfaceConfig =
            pulumi.Input.asOptionalInput<PrivateConnectionPscInterfaceConfig>(
                pscInterfaceConfig),
        vpcPeeringConfig =
            pulumi.Input.asOptionalInput<PrivateConnectionVpcPeeringConfig>(
                vpcPeeringConfig);

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
      map['pscInterfaceConfig'] = pulumi.Input.mapOptionalInputValue<
              PrivateConnectionPscInterfaceConfig, Map<String, dynamic>>(
          pscInterfaceConfigValue, (value) => value.toMap());
    }
    final vpcPeeringConfigValue = vpcPeeringConfig;
    if (vpcPeeringConfigValue != null) {
      map['vpcPeeringConfig'] = pulumi.Input.mapOptionalInputValue<
              PrivateConnectionVpcPeeringConfig, Map<String, dynamic>>(
          vpcPeeringConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory PrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionArgs(
      createWithoutValidation: map['createWithoutValidation'] == null
          ? null
          : map['createWithoutValidation'] as bool,
      displayName: map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      privateConnectionId: map['privateConnectionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pscInterfaceConfig: map['pscInterfaceConfig'] == null
          ? null
          : PrivateConnectionPscInterfaceConfig.fromMap(
              (map['pscInterfaceConfig'] as Map).cast<String, dynamic>()),
      vpcPeeringConfig: map['vpcPeeringConfig'] == null
          ? null
          : PrivateConnectionVpcPeeringConfig.fromMap(
              (map['vpcPeeringConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
