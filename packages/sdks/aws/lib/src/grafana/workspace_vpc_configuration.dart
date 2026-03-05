// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceVpcConfiguration {
  /// The list of Amazon EC2 security group IDs attached to the Amazon VPC for your Grafana workspace to connect.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The list of Amazon EC2 subnet IDs created in the Amazon VPC for your Grafana workspace to connect.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [WorkspaceVpcConfiguration].
  /// [securityGroupIds] The list of Amazon EC2 security group IDs attached to the Amazon VPC for your Grafana workspace to connect.
  /// [subnetIds] The list of Amazon EC2 subnet IDs created in the Amazon VPC for your Grafana workspace to connect.
  WorkspaceVpcConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory WorkspaceVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkspaceVpcConfiguration(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}

