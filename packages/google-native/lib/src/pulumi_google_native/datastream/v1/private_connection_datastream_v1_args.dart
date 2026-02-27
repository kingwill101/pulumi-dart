// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_config_datastream_v1.dart';

/// The set of arguments for PrivateConnection.
class PrivateConnectionDatastreamV1Args {
  /// Display name.
  final pulumi.Input<String> displayName;

  /// Optional. If set to true, will skip validations.
  final pulumi.Input<bool>? force;

  /// Labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. The private connectivity identifier.
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// VPC Peering Config.
  final pulumi.Input<VpcPeeringConfigDatastreamV1>? vpcPeeringConfig;

  PrivateConnectionDatastreamV1Args({
    required this.displayName,
    this.force,
    this.labels,
    this.location,
    required this.privateConnectionId,
    this.project,
    this.requestId,
    this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final forceValue = force;
    if (forceValue != null) {
      map['force'] = forceValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
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
    final vpcPeeringConfigValue = vpcPeeringConfig;
    if (vpcPeeringConfigValue != null) {
      map['vpcPeeringConfig'] = pulumi.Input.mapOptionalInputValue<
              VpcPeeringConfigDatastreamV1, Map<String, dynamic>>(
          vpcPeeringConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory PrivateConnectionDatastreamV1Args.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionDatastreamV1Args(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      force: pulumi.Input.asOptionalInput<bool>(map['force']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      privateConnectionId:
          pulumi.Input.asInput<String>(map['privateConnectionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      vpcPeeringConfig:
          pulumi.Input.asOptionalInput<VpcPeeringConfigDatastreamV1>(
              map['vpcPeeringConfig']),
    );
  }
}
