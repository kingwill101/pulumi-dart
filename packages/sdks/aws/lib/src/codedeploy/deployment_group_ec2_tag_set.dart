// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_group_ec2_tag_set_ec2_tag_filter.dart';

class DeploymentGroupEc2TagSet {
  /// Tag filters associated with the deployment group. See the AWS docs for details.
  final List<DeploymentGroupEc2TagSetEc2TagFilter>? ec2TagFilters;

  /// Creates a new [DeploymentGroupEc2TagSet].
  /// [ec2TagFilters] Tag filters associated with the deployment group. See the AWS docs for details.
  DeploymentGroupEc2TagSet({
    this.ec2TagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ec2TagFilters': ?ec2TagFilters == null ? null : pulumi.Input.encodeList<DeploymentGroupEc2TagSetEc2TagFilter, Map<String, dynamic>>(ec2TagFilters!, (value) => value.toMap()),
    };
  }

  factory DeploymentGroupEc2TagSet.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupEc2TagSet(
      ec2TagFilters: map['ec2TagFilters'] == null ? null : pulumi.Input.decodeList<DeploymentGroupEc2TagSetEc2TagFilter>(map['ec2TagFilters'], (value) => DeploymentGroupEc2TagSetEc2TagFilter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

