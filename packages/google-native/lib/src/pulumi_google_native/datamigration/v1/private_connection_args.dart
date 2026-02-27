// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'vpc_peering_config.dart';

/// The set of arguments for PrivateConnection.
class PrivateConnectionArgs {
  /// The private connection display name.
  final Input<String>? displayName;

  /// The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The name of the resource.
  final Input<String>? name;

  /// Required. The private connection identifier.
  final Input<String> privateConnectionId;
  final Input<String>? project;

  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// Optional. If set to true, will skip validations.
  final Input<bool>? skipValidation;

  /// VPC peering configuration.
  final Input<VpcPeeringConfig>? vpcPeeringConfig;

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
      map['vpcPeeringConfig'] =
          Input.mapOptionalInputValue<VpcPeeringConfig, Map<String, dynamic>>(
              vpcPeeringConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory PrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      privateConnectionId: Input.asInput<String>(map['privateConnectionId']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      skipValidation: Input.asOptionalInput<bool>(map['skipValidation']),
      vpcPeeringConfig:
          Input.asOptionalInput<VpcPeeringConfig>(map['vpcPeeringConfig']),
    );
  }
}
