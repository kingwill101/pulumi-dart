// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScraperSourceVpc {
  /// List of security group IDs for the VPC configuration.
  final pulumi.Input<List<String>> securityGroupIds;
  /// List of subnet IDs. Must be in at least two different availability zones.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [ScraperSourceVpc].
  /// [securityGroupIds] List of security group IDs for the VPC configuration.
  /// [subnetIds] List of subnet IDs. Must be in at least two different availability zones.
  const ScraperSourceVpc({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory ScraperSourceVpc.fromMap(Map<String, dynamic> map) {
    return ScraperSourceVpc(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}
