// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcEndpointsEndpoint {
  /// The Bandwidth.
  final pulumi.Input<int> bandwidth;
  /// The status of Connection.
  final pulumi.Input<String> connectionStatus;
  /// The status of Endpoint Business.
  final pulumi.Input<String> endpointBusinessStatus;
  /// The description of Vpc Endpoint.
  final pulumi.Input<String> endpointDescription;
  /// The Endpoint Domain.
  final pulumi.Input<String> endpointDomain;
  /// The ID of the Vpc Endpoint.
  final pulumi.Input<String> endpointId;
  /// The ID of the Vpc Endpoint.
  final pulumi.Input<String> id;
  /// The security group associated with the terminal node network card.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The terminal node service associated with the terminal node.
  final pulumi.Input<String> serviceId;
  /// The name of the terminal node service associated with the terminal node.
  final pulumi.Input<String> serviceName;
  /// The status of Vpc Endpoint.
  final pulumi.Input<String> status;
  /// Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  final pulumi.Input<Map<String, String>> tags;
  /// The name of Vpc Endpoint.
  final pulumi.Input<String> vpcEndpointName;
  /// The private network to which the terminal node belongs..
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetVpcEndpointsEndpoint].
  /// [bandwidth] The Bandwidth.
  /// [connectionStatus] The status of Connection.
  /// [endpointBusinessStatus] The status of Endpoint Business.
  /// [endpointDescription] The description of Vpc Endpoint.
  /// [endpointDomain] The Endpoint Domain.
  /// [endpointId] The ID of the Vpc Endpoint.
  /// [id] The ID of the Vpc Endpoint.
  /// [securityGroupIds] The security group associated with the terminal node network card.
  /// [serviceId] The terminal node service associated with the terminal node.
  /// [serviceName] The name of the terminal node service associated with the terminal node.
  /// [status] The status of Vpc Endpoint.
  /// [tags] Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  /// [vpcEndpointName] The name of Vpc Endpoint.
  /// [vpcId] The private network to which the terminal node belongs..
  GetVpcEndpointsEndpoint({
    required this.bandwidth,
    required this.connectionStatus,
    required this.endpointBusinessStatus,
    required this.endpointDescription,
    required this.endpointDomain,
    required this.endpointId,
    required this.id,
    required this.securityGroupIds,
    required this.serviceId,
    required this.serviceName,
    required this.status,
    required this.tags,
    required this.vpcEndpointName,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'connectionStatus': connectionStatus,
      'endpointBusinessStatus': endpointBusinessStatus,
      'endpointDescription': endpointDescription,
      'endpointDomain': endpointDomain,
      'endpointId': endpointId,
      'id': id,
      'securityGroupIds': securityGroupIds,
      'serviceId': serviceId,
      'serviceName': serviceName,
      'status': status,
      'tags': tags,
      'vpcEndpointName': vpcEndpointName,
      'vpcId': vpcId,
    };
  }

  factory GetVpcEndpointsEndpoint.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointsEndpoint(
      bandwidth: (map['bandwidth'] as int).input(),
      connectionStatus: (map['connectionStatus'] as String).input(),
      endpointBusinessStatus: (map['endpointBusinessStatus'] as String).input(),
      endpointDescription: (map['endpointDescription'] as String).input(),
      endpointDomain: (map['endpointDomain'] as String).input(),
      endpointId: (map['endpointId'] as String).input(),
      id: (map['id'] as String).input(),
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
      serviceId: (map['serviceId'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcEndpointName: (map['vpcEndpointName'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

