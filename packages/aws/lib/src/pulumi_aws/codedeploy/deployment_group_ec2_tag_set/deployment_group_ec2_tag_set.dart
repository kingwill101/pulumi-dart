// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../deployment_group_ec2_tag_set_ec2_tag_filter/deployment_group_ec2_tag_set_ec2_tag_filter.dart';

class DeploymentGroupEc2TagSet {
  /// Tag filters associated with the deployment group. See the AWS docs for details.
  final List<DeploymentGroupEc2TagSetEc2TagFilter>? ec2TagFilters;

  DeploymentGroupEc2TagSet({
    this.ec2TagFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ec2TagFiltersValue = ec2TagFilters;
    if (ec2TagFiltersValue != null) {
      map['ec2TagFilters'] = pulumi.Input.encodeList<
          DeploymentGroupEc2TagSetEc2TagFilter,
          Map<String, dynamic>>(ec2TagFiltersValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeploymentGroupEc2TagSet.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupEc2TagSet(
      ec2TagFilters: map['ec2TagFilters'] == null
          ? null
          : pulumi.Input.decodeList<DeploymentGroupEc2TagSetEc2TagFilter>(
              map['ec2TagFilters'],
              (value) => DeploymentGroupEc2TagSetEc2TagFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
