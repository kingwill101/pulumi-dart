// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../private_connection_vpc_peering_config/private_connection_vpc_peering_config.dart';

/// The set of arguments for PrivateConnection.
class PrivateConnectionArgs {
  /// If set to true, will skip validations.
  final pulumi.Input<bool>? createWithoutValidation;

  /// Display name.
  final pulumi.Input<String>? displayName;

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

  /// The VPC Peering configuration is used to create VPC peering
  /// between databasemigrationservice and the consumer's VPC.
  /// Structure is documented below.
  final pulumi.Input<PrivateConnectionVpcPeeringConfig> vpcPeeringConfig;

  PrivateConnectionArgs({
    this.createWithoutValidation,
    this.displayName,
    this.labels,
    required this.location,
    required this.privateConnectionId,
    this.project,
    required this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createWithoutValidationValue = createWithoutValidation;
    if (createWithoutValidationValue != null) {
      map['createWithoutValidation'] = createWithoutValidationValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
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
    map['vpcPeeringConfig'] = pulumi.Input.mapInputValue<
        PrivateConnectionVpcPeeringConfig,
        Map<String, dynamic>>(vpcPeeringConfig, (value) => value.toMap());
    return map;
  }

  factory PrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionArgs(
      createWithoutValidation:
          pulumi.Input.asOptionalInput<bool>(map['createWithoutValidation']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      privateConnectionId:
          pulumi.Input.asInput<String>(map['privateConnectionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      vpcPeeringConfig: pulumi.Input.asInput<PrivateConnectionVpcPeeringConfig>(
          map['vpcPeeringConfig']),
    );
  }
}
