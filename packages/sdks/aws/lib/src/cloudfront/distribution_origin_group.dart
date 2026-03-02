// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_origin_group_failover_criteria.dart';
import 'distribution_origin_group_member.dart';

class DistributionOriginGroup {
  /// The failover criteria for when to failover to the secondary origin.
  final pulumi.Input<DistributionOriginGroupFailoverCriteria> failoverCriteria;
  /// Ordered member configuration blocks assigned to the origin group, where the first member is the primary origin. You must specify two members.
  final pulumi.Input<List<DistributionOriginGroupMember>> members;
  final pulumi.Input<String> originId;

  /// Creates a new [DistributionOriginGroup].
  /// [failoverCriteria] The failover criteria for when to failover to the secondary origin.
  /// [members] Ordered member configuration blocks assigned to the origin group, where the first member is the primary origin. You must specify two members.
  /// [originId] Required.
  DistributionOriginGroup({
    required this.failoverCriteria,
    required this.members,
    required this.originId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverCriteria': pulumi.Input.mapInputValue<DistributionOriginGroupFailoverCriteria, Map<String, dynamic>>(failoverCriteria, (value) => value.toMap()),
      'members': pulumi.Input.mapInputValue<List<DistributionOriginGroupMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<DistributionOriginGroupMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originId': originId,
    };
  }

  factory DistributionOriginGroup.fromMap(Map<String, dynamic> map) {
    return DistributionOriginGroup(
      failoverCriteria: (DistributionOriginGroupFailoverCriteria.fromMap((map['failoverCriteria'] as Map).cast<String, dynamic>())).input(),
      members: (pulumi.Input.decodeList<DistributionOriginGroupMember>(map['members'], (value) => DistributionOriginGroupMember.fromMap((value as Map).cast<String, dynamic>()))).input(),
      originId: (map['originId'] as String).input(),
    );
  }
}

