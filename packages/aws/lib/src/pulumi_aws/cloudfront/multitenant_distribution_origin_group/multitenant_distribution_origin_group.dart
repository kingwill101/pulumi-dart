// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multitenant_distribution_origin_group_failover_criteria/multitenant_distribution_origin_group_failover_criteria.dart';
import '../multitenant_distribution_origin_group_member/multitenant_distribution_origin_group_member.dart';

class MultitenantDistributionOriginGroup {
  /// Failover criteria for when to failover to the secondary origin. See Failover Criteria below.
  final MultitenantDistributionOriginGroupFailoverCriteria failoverCriteria;

  /// Identifier for the distribution.
  final String id;

  /// List of origins in this origin group. Must contain exactly 2 members. See Origin Group Member below.
  final List<MultitenantDistributionOriginGroupMember> members;

  MultitenantDistributionOriginGroup({
    required this.failoverCriteria,
    required this.id,
    required this.members,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failoverCriteria'] = failoverCriteria.toMap();
    map['id'] = id;
    map['members'] = Input.encodeList<MultitenantDistributionOriginGroupMember,
        Map<String, dynamic>>(members, (value) => value.toMap());
    return map;
  }

  factory MultitenantDistributionOriginGroup.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionOriginGroup(
      failoverCriteria:
          MultitenantDistributionOriginGroupFailoverCriteria.fromMap(
              (map['failoverCriteria'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      members: Input.decodeList<MultitenantDistributionOriginGroupMember>(
          map['members'],
          (value) => MultitenantDistributionOriginGroupMember.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
