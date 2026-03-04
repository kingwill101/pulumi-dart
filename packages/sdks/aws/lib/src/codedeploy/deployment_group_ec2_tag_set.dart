// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_group_ec2_tag_set_ec2_tag_filter.dart';

class DeploymentGroupEc2TagSet {
  /// Tag filters associated with the deployment group. See the AWS docs for details.
  final pulumi.Input<List<DeploymentGroupEc2TagSetEc2TagFilter>>? ec2TagFilters;

  /// Creates a new [DeploymentGroupEc2TagSet].
  /// [ec2TagFilters] Tag filters associated with the deployment group. See the AWS docs for details.
  DeploymentGroupEc2TagSet({this.ec2TagFilters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ec2TagFilters':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeploymentGroupEc2TagSetEc2TagFilter>,
            List<Map<String, dynamic>>
          >(
            ec2TagFilters,
            (value) =>
                pulumi.Input.encodeList<
                  DeploymentGroupEc2TagSetEc2TagFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DeploymentGroupEc2TagSet.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupEc2TagSet(
      ec2TagFilters: (() {
        final guardedValue = map['ec2TagFilters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeploymentGroupEc2TagSetEc2TagFilter>(
            guardedValue,
            (value) => DeploymentGroupEc2TagSetEc2TagFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
