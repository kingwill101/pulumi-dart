// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_members_item_response.dart';

/// The network configuration group resource
class ConfigurationGroupResponse {
  /// Network group conditional filter.
  final pulumi.Input<String?>? conditionalMembership;
  /// A description of the network group.
  final pulumi.Input<String?>? description;
  /// A friendly name for the network group.
  final pulumi.Input<String?>? displayName;
  /// Group members of network group.
  final pulumi.Input<List<GroupMembersItemResponse>?>? groupMembers;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Group member type.
  final pulumi.Input<String?>? memberType;
  /// The provisioning state of the scope assignment resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ConfigurationGroupResponse].
  /// [conditionalMembership] Network group conditional filter.
  /// [description] A description of the network group.
  /// [displayName] A friendly name for the network group.
  /// [groupMembers] Group members of network group.
  /// [id] Resource ID.
  /// [memberType] Group member type.
  /// [provisioningState] The provisioning state of the scope assignment resource.
  const ConfigurationGroupResponse({
    this.conditionalMembership,
    this.description,
    this.displayName,
    this.groupMembers,
    this.id,
    this.memberType,
    required this.provisioningState,
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
    };
  }

  factory ConfigurationGroupResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationGroupResponse(
      conditionalMembership: (() { final guardedValue = map['conditionalMembership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupMembers: (() { final guardedValue = map['groupMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupMembersItemResponse>(guardedValue, (value) => GroupMembersItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberType: (() { final guardedValue = map['memberType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
