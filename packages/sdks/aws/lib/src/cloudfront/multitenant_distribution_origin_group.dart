// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_origin_group_failover_criteria.dart';
import 'multitenant_distribution_origin_group_member.dart';

class MultitenantDistributionOriginGroup {
  /// Failover criteria for when to failover to the secondary origin. See Failover Criteria below.
  final pulumi.Input<MultitenantDistributionOriginGroupFailoverCriteria> failoverCriteria;
  /// Identifier for the distribution.
  final pulumi.Input<String> id;
  /// List of origins in this origin group. Must contain exactly 2 members. See Origin Group Member below.
  final pulumi.Input<List<MultitenantDistributionOriginGroupMember>> members;

  /// Creates a new [MultitenantDistributionOriginGroup].
  /// [failoverCriteria] Failover criteria for when to failover to the secondary origin. See Failover Criteria below.
  /// [id] Identifier for the distribution.
  /// [members] List of origins in this origin group. Must contain exactly 2 members. See Origin Group Member below.
  MultitenantDistributionOriginGroup({
    required this.failoverCriteria,
    required this.id,
    required this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverCriteria': pulumi.Input.mapInputValue<MultitenantDistributionOriginGroupFailoverCriteria, Map<String, dynamic>>(failoverCriteria, (value) => value.toMap()),
      'id': id,
      'members': pulumi.Input.mapInputValue<List<MultitenantDistributionOriginGroupMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<MultitenantDistributionOriginGroupMember, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MultitenantDistributionOriginGroup.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionOriginGroup(
      failoverCriteria: (MultitenantDistributionOriginGroupFailoverCriteria.fromMap((map['failoverCriteria'] as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      members: (pulumi.Input.decodeList<MultitenantDistributionOriginGroupMember>(map['members'], (value) => MultitenantDistributionOriginGroupMember.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

