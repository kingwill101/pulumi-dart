// ignore_for_file: unused_element, unnecessary_cast


class GetVpcEndpointsEndpoint {
  /// The Bandwidth.
  final int bandwidth;
  /// The status of Connection.
  final String connectionStatus;
  /// The status of Endpoint Business.
  final String endpointBusinessStatus;
  /// The description of Vpc Endpoint.
  final String endpointDescription;
  /// The Endpoint Domain.
  final String endpointDomain;
  /// The ID of the Vpc Endpoint.
  final String endpointId;
  /// The ID of the Vpc Endpoint.
  final String id;
  /// The security group associated with the terminal node network card.
  final List<String> securityGroupIds;
  /// The terminal node service associated with the terminal node.
  final String serviceId;
  /// The name of the terminal node service associated with the terminal node.
  final String serviceName;
  /// The status of Vpc Endpoint.
  final String status;
  /// Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  final Map<String, String> tags;
  /// The name of Vpc Endpoint.
  final String vpcEndpointName;
  /// The private network to which the terminal node belongs..
  final String vpcId;

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
      bandwidth: map['bandwidth'] as int,
      connectionStatus: map['connectionStatus'] as String,
      endpointBusinessStatus: map['endpointBusinessStatus'] as String,
      endpointDescription: map['endpointDescription'] as String,
      endpointDomain: map['endpointDomain'] as String,
      endpointId: map['endpointId'] as String,
      id: map['id'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      serviceId: map['serviceId'] as String,
      serviceName: map['serviceName'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcEndpointName: map['vpcEndpointName'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

