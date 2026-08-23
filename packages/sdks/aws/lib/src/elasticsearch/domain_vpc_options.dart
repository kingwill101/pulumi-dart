// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainVpcOptions {
  /// If the domain was created inside a VPC, the names of the availability zones the configured `subnetIds` were created inside.
  final pulumi.Input<List<String>>? availabilityZones;
  /// List of VPC Security Group IDs to be applied to the Elasticsearch domain endpoints. If omitted, the default Security Group for the VPC will be used.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// List of VPC Subnet IDs for the Elasticsearch domain endpoints to be created in.
  final pulumi.Input<List<String>>? subnetIds;
  /// If the domain was created inside a VPC, the ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [DomainVpcOptions].
  /// [availabilityZones] If the domain was created inside a VPC, the names of the availability zones the configured `subnetIds` were created inside.
  /// [securityGroupIds] List of VPC Security Group IDs to be applied to the Elasticsearch domain endpoints. If omitted, the default Security Group for the VPC will be used.
  /// [subnetIds] List of VPC Subnet IDs for the Elasticsearch domain endpoints to be created in.
  /// [vpcId] If the domain was created inside a VPC, the ID of the VPC.
  const DomainVpcOptions({
    this.availabilityZones,
    this.securityGroupIds,
    this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory DomainVpcOptions.fromMap(Map<String, dynamic> map) {
    return DomainVpcOptions(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
