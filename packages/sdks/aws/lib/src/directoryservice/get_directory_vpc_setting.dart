// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoryVpcSetting {
  final pulumi.Input<List<String>> availabilityZones;
  /// Identifiers of the subnets for the connector servers (2 subnets in 2 different AZs).
  final pulumi.Input<List<String>> subnetIds;
  /// ID of the VPC that the connector is in.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetDirectoryVpcSetting].
  /// [availabilityZones] Required.
  /// [subnetIds] Identifiers of the subnets for the connector servers (2 subnets in 2 different AZs).
  /// [vpcId] ID of the VPC that the connector is in.
  const GetDirectoryVpcSetting({
    required this.availabilityZones,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory GetDirectoryVpcSetting.fromMap(Map<String, dynamic> map) {
    return GetDirectoryVpcSetting(
      availabilityZones: pulumi.Input.fromValue((map['availabilityZones'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
