// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DocumentClassifierVpcConfig {
  /// List of security group IDs.
  final pulumi.Input<List<String>> securityGroupIds;
  /// List of VPC subnets.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [DocumentClassifierVpcConfig].
  /// [securityGroupIds] List of security group IDs.
  /// [subnets] List of VPC subnets.
  DocumentClassifierVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnets': subnets,
    };
  }

  factory DocumentClassifierVpcConfig.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierVpcConfig(
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
      subnets: ((map['subnets'] as List).cast<String>()).input(),
    );
  }
}

