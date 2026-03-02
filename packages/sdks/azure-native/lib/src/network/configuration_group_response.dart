// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_members_item_response.dart';

/// The network configuration group resource
class ConfigurationGroupResponse {
  /// Network group conditional filter.
  final pulumi.Input<String>? conditionalMembership;
  /// A description of the network group.
  final pulumi.Input<String>? description;
  /// A friendly name for the network group.
  final pulumi.Input<String>? displayName;
  /// Group members of network group.
  final pulumi.Input<List<GroupMembersItemResponse>>? groupMembers;
  /// Network group ID.
  final pulumi.Input<String>? id;
  /// The type of the group member.
  final pulumi.Input<String>? memberType;
  /// The provisioning state of the scope assignment resource.
  final pulumi.Input<String> provisioningState;
  /// Unique identifier for this resource.
  final pulumi.Input<String> resourceGuid;

  /// Creates a new [ConfigurationGroupResponse].
  /// [conditionalMembership] Network group conditional filter.
  /// [description] A description of the network group.
  /// [displayName] A friendly name for the network group.
  /// [groupMembers] Group members of network group.
  /// [id] Network group ID.
  /// [memberType] The type of the group member.
  /// [provisioningState] The provisioning state of the scope assignment resource.
  /// [resourceGuid] Unique identifier for this resource.
  ConfigurationGroupResponse({
    this.conditionalMembership,
    this.description,
    this.displayName,
    this.groupMembers,
    this.id,
    this.memberType,
    required this.provisioningState,
    required this.resourceGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalMembership': ?conditionalMembership,
      'description': ?description,
      'displayName': ?displayName,
      'groupMembers': ?pulumi.Input.mapOptionalInputValue<List<GroupMembersItemResponse>, List<Map<String, dynamic>>>(groupMembers, (value) => pulumi.Input.encodeList<GroupMembersItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'memberType': ?memberType,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
    };
  }

  factory ConfigurationGroupResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationGroupResponse(
      conditionalMembership: map['conditionalMembership'] == null ? null : (map['conditionalMembership']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      groupMembers: map['groupMembers'] == null ? null : (pulumi.Input.decodeList<GroupMembersItemResponse>(map['groupMembers']!, (value) => GroupMembersItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      memberType: map['memberType'] == null ? null : (map['memberType']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceGuid: (map['resourceGuid'] as String).input(),
    );
  }
}

