// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceRegionVpcSettings {
  /// The identifiers of the subnets for the directory servers.
  final pulumi.Input<List<String>> subnetIds;
  /// The identifier of the VPC in which to create the directory.
  final pulumi.Input<String> vpcId;

  /// Creates a new [ServiceRegionVpcSettings].
  /// [subnetIds] The identifiers of the subnets for the directory servers.
  /// [vpcId] The identifier of the VPC in which to create the directory.
  ServiceRegionVpcSettings({
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory ServiceRegionVpcSettings.fromMap(Map<String, dynamic> map) {
    return ServiceRegionVpcSettings(
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

