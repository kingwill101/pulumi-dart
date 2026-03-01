// ignore_for_file: unused_element, unnecessary_cast

class VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment {
  /// The identifier of the VPC endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint.
  final String endpointId;
  final String status;
  final String statusMessage;

  /// The unique identifier of the subnet that you've specified to be used for a VPC Endpoint Association endpoint.
  final String subnetId;

  /// Creates a new [VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment].
  /// [endpointId] The identifier of the VPC endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint.
  /// [status] Required.
  /// [statusMessage] Required.
  /// [subnetId] The unique identifier of the subnet that you've specified to be used for a VPC Endpoint Association endpoint.
  VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment({
    required this.endpointId,
    required this.status,
    required this.statusMessage,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'status': status,
      'statusMessage': statusMessage,
      'subnetId': subnetId,
    };
  }

  factory VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment(
      endpointId: map['endpointId'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
