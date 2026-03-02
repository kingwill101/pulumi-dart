// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcConnector resources.
class VpcConnectorState {
  /// ARN of VPC connector.
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of IDs of security groups that App Runner should use for access to AWS resources under the specified subnets. If not specified, App Runner uses the default security group of the Amazon VPC. The default security group allows all outbound traffic.
  final pulumi.Input<List<String>>? securityGroups;
  /// Current state of the VPC connector. If the status of a connector revision is INACTIVE, it was deleted and can't be used. Inactive connector revisions are permanently removed some time after they are deleted.
  final pulumi.Input<String>? status;
  /// List of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.
  final pulumi.Input<List<String>>? subnets;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Name for the VPC connector.
  final pulumi.Input<String>? vpcConnectorName;
  /// The revision of VPC connector. It's unique among all the active connectors ("Status": "ACTIVE") that share the same Name.
  final pulumi.Input<int>? vpcConnectorRevision;

  /// Creates a new [VpcConnectorState].
  /// [arn] ARN of VPC connector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] List of IDs of security groups that App Runner should use for access to AWS resources under the specified subnets. If not specified, App Runner uses the default security group of the Amazon VPC. The default security group allows all outbound traffic.
  /// [status] Current state of the VPC connector. If the status of a connector revision is INACTIVE, it was deleted and can't be used. Inactive connector revisions are permanently removed some time after they are deleted.
  /// [subnets] List of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcConnectorName] Name for the VPC connector.
  /// [vpcConnectorRevision] The revision of VPC connector. It's unique among all the active connectors ("Status": "ACTIVE") that share the same Name.
  VpcConnectorState({
    this.arn,
    this.region,
    this.securityGroups,
    this.status,
    this.subnets,
    this.tags,
    this.tagsAll,
    this.vpcConnectorName,
    this.vpcConnectorRevision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'status': ?status,
      'subnets': ?subnets,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcConnectorName': ?vpcConnectorName,
      'vpcConnectorRevision': ?vpcConnectorRevision,
    };
  }

  factory VpcConnectorState.fromMap(Map<String, dynamic> map) {
    return VpcConnectorState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroups: map['securityGroups'] == null ? null : (((map['securityGroups'] as List).cast<String>()).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      subnets: map['subnets'] == null ? null : (((map['subnets'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcConnectorName: map['vpcConnectorName'] == null ? null : ((map['vpcConnectorName'] as String).input()).input(),
      vpcConnectorRevision: map['vpcConnectorRevision'] == null ? null : ((map['vpcConnectorRevision'] as int).input()).input(),
    );
  }
}

