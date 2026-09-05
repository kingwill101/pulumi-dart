// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerEndpointDetails {
  /// List of address allocation IDs that are required to attach an Elastic IP address to your SFTP server's endpoint. This property can only be used when `endpointType` is set to `VPC`.
  final pulumi.Input<List<String>?>? addressAllocationIds;
  /// List of security groups IDs that are available to attach to your server's endpoint. If no security groups are specified, the VPC's default security groups are automatically assigned to your endpoint. This property can only be used when `endpointType` is set to `VPC`.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// List of subnet IDs that are required to host your SFTP server endpoint in your VPC. This property can only be used when `endpointType` is set to `VPC`.
  final pulumi.Input<List<String>?>? subnetIds;
  /// ID of the VPC endpoint. This property can only be used when `endpointType` is set to `VPC_ENDPOINT`
  final pulumi.Input<String?>? vpcEndpointId;
  /// VPC ID of the VPC in which the SFTP server's endpoint will be hosted. This property can only be used when `endpointType` is set to `VPC`.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [ServerEndpointDetails].
  /// [addressAllocationIds] List of address allocation IDs that are required to attach an Elastic IP address to your SFTP server's endpoint. This property can only be used when `endpointType` is set to `VPC`.
  /// [securityGroupIds] List of security groups IDs that are available to attach to your server's endpoint. If no security groups are specified, the VPC's default security groups are automatically assigned to your endpoint. This property can only be used when `endpointType` is set to `VPC`.
  /// [subnetIds] List of subnet IDs that are required to host your SFTP server endpoint in your VPC. This property can only be used when `endpointType` is set to `VPC`.
  /// [vpcEndpointId] ID of the VPC endpoint. This property can only be used when `endpointType` is set to `VPC_ENDPOINT`
  /// [vpcId] VPC ID of the VPC in which the SFTP server's endpoint will be hosted. This property can only be used when `endpointType` is set to `VPC`.
  const ServerEndpointDetails({
    this.addressAllocationIds,
    this.securityGroupIds,
    this.subnetIds,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressAllocationIds': ?addressAllocationIds,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcId': ?vpcId,
    };
  }

  factory ServerEndpointDetails.fromMap(Map<String, dynamic> map) {
    return ServerEndpointDetails(
      addressAllocationIds: (() { final guardedValue = map['addressAllocationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
