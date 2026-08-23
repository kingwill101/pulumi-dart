// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryVpcSettings {
  final pulumi.Input<List<String>>? availabilityZones;
  /// The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs).
  final pulumi.Input<List<String>> subnetIds;
  /// The identifier of the VPC that the directory is in.
  final pulumi.Input<String> vpcId;

  /// Creates a new [DirectoryVpcSettings].
  /// [availabilityZones] Optional.
  /// [subnetIds] The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs).
  /// [vpcId] The identifier of the VPC that the directory is in.
  const DirectoryVpcSettings({
    this.availabilityZones,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory DirectoryVpcSettings.fromMap(Map<String, dynamic> map) {
    return DirectoryVpcSettings(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
