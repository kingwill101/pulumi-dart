// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_group_failover_criteria_response.dart';
import 'origin_group_members_response.dart';

/// Definition of OriginGroup
class OriginGroupResponse {
  /// A complex type that contains information about the failover criteria for an origin group. A complex data type that includes information about the failover criteria for an origin group, including the status codes for which CloudFront will failover from the primary origin to the second origin.
  final pulumi.Input<OriginGroupFailoverCriteriaResponse>? failoverCriteria;
  /// The origin group's ID.
  final pulumi.Input<String>? id;
  /// A complex type that contains information about the origins in an origin group. A complex data type for the origins included in an origin group.
  final pulumi.Input<OriginGroupMembersResponse>? members;

  /// Creates a new [OriginGroupResponse].
  /// [failoverCriteria] A complex type that contains information about the failover criteria for an origin group. A complex data type that includes information about the failover criteria for an origin group, including the status codes for which CloudFront will failover from the primary origin to the second origin.
  /// [id] The origin group's ID.
  /// [members] A complex type that contains information about the origins in an origin group. A complex data type for the origins included in an origin group.
  OriginGroupResponse({
    this.failoverCriteria,
    this.id,
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverCriteria': ?pulumi.Input.mapOptionalInputValue<OriginGroupFailoverCriteriaResponse, Map<String, dynamic>>(failoverCriteria, (value) => value.toMap()),
      'id': ?id,
      'members': ?pulumi.Input.mapOptionalInputValue<OriginGroupMembersResponse, Map<String, dynamic>>(members, (value) => value.toMap()),
    };
  }

  factory OriginGroupResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupResponse(
      failoverCriteria: map['failoverCriteria'] == null ? null : (OriginGroupFailoverCriteriaResponse.fromMap((map['failoverCriteria']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      members: map['members'] == null ? null : (OriginGroupMembersResponse.fromMap((map['members']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

