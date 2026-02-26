// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../distribution_origin_group_failover_criteria/distribution_origin_group_failover_criteria.dart';
import '../distribution_origin_group_member/distribution_origin_group_member.dart';

class DistributionOriginGroup {
  /// The failover criteria for when to failover to the secondary origin.
  final DistributionOriginGroupFailoverCriteria failoverCriteria;

  /// Ordered member configuration blocks assigned to the origin group, where the first member is the primary origin. You must specify two members.
  final List<DistributionOriginGroupMember> members;
  final String originId;

  DistributionOriginGroup({
    required this.failoverCriteria,
    required this.members,
    required this.originId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failoverCriteria'] = failoverCriteria.toMap();
    map['members'] =
        Input.encodeList<DistributionOriginGroupMember, Map<String, dynamic>>(
            members, (value) => value.toMap());
    map['originId'] = originId;
    return map;
  }

  factory DistributionOriginGroup.fromMap(Map<String, dynamic> map) {
    return DistributionOriginGroup(
      failoverCriteria: DistributionOriginGroupFailoverCriteria.fromMap(
          (map['failoverCriteria'] as Map).cast<String, dynamic>()),
      members: Input.decodeList<DistributionOriginGroupMember>(
          map['members'],
          (value) => DistributionOriginGroupMember.fromMap(
              (value as Map).cast<String, dynamic>())),
      originId: map['originId'] as String,
    );
  }
}
