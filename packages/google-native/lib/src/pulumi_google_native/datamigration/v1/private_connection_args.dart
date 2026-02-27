// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_config.dart';

/// The set of arguments for PrivateConnection.
class PrivateConnectionArgs {
  /// The private connection display name.
  final pulumi.Input<String>? displayName;

  /// The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The name of the resource.
  final pulumi.Input<String>? name;

  /// Required. The private connection identifier.
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;

  /// Optional. If set to true, will skip validations.
  final pulumi.Input<bool>? skipValidation;

  /// VPC peering configuration.
  final pulumi.Input<VpcPeeringConfig>? vpcPeeringConfig;

  PrivateConnectionArgs({
    this.displayName,
    this.labels,
    this.location,
    this.name,
    required this.privateConnectionId,
    this.project,
    this.requestId,
    this.skipValidation,
    this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final skipValidationValue = skipValidation;
    if (skipValidationValue != null) {
      map['skipValidation'] = skipValidationValue;
    }
    final vpcPeeringConfigValue = vpcPeeringConfig;
    if (vpcPeeringConfigValue != null) {
      map['vpcPeeringConfig'] = pulumi.Input.mapOptionalInputValue<
              VpcPeeringConfig, Map<String, dynamic>>(
          vpcPeeringConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory PrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionArgs(
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      privateConnectionId:
          pulumi.Input.asInput<String>(map['privateConnectionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      skipValidation: pulumi.Input.asOptionalInput<bool>(map['skipValidation']),
      vpcPeeringConfig: pulumi.Input.asOptionalInput<VpcPeeringConfig>(
          map['vpcPeeringConfig']),
    );
  }
}
