// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScraperSourceEks {
  final pulumi.Input<String> clusterArn;
  /// List of the security group IDs for the Amazon EKS cluster VPC configuration.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// List of subnet IDs. Must be in at least two different availability zones.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [ScraperSourceEks].
  /// [clusterArn] Required.
  /// [securityGroupIds] List of the security group IDs for the Amazon EKS cluster VPC configuration.
  /// [subnetIds] List of subnet IDs. Must be in at least two different availability zones.
  ScraperSourceEks({
    required this.clusterArn,
    this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory ScraperSourceEks.fromMap(Map<String, dynamic> map) {
    return ScraperSourceEks(
      clusterArn: (map['clusterArn'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
    );
  }
}

