// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VPCDerivedInfo
class VPCDerivedInfoResponse {
  /// &lt;p&gt;The list of Availability Zones associated with the VPC subnets.&lt;/p&gt;
  final pulumi.Input<List<String>?>? availabilityZones;
  /// &lt;p&gt;The list of security group IDs associated with the VPC endpoints for the domain.&lt;/p&gt;
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// &lt;p&gt;A list of subnet IDs associated with the VPC endpoints for the domain.&lt;/p&gt;
  final pulumi.Input<List<String>?>? subnetIds;
  /// &lt;p&gt;The ID for your VPC. Amazon VPC generates this value when you create a VPC.&lt;/p&gt;
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [VPCDerivedInfoResponse].
  /// [availabilityZones] &lt;p&gt;The list of Availability Zones associated with the VPC subnets.&lt;/p&gt;
  /// [securityGroupIds] &lt;p&gt;The list of security group IDs associated with the VPC endpoints for the domain.&lt;/p&gt;
  /// [subnetIds] &lt;p&gt;A list of subnet IDs associated with the VPC endpoints for the domain.&lt;/p&gt;
  /// [vpcId] &lt;p&gt;The ID for your VPC. Amazon VPC generates this value when you create a VPC.&lt;/p&gt;
  const VPCDerivedInfoResponse({
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

  factory VPCDerivedInfoResponse.fromMap(Map<String, dynamic> map) {
    return VPCDerivedInfoResponse(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
