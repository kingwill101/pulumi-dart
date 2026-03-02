// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_external_id.dart';

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// ARN of the Group.
  final pulumi.Input<String>? arn;
  /// A string containing the description of the group.
  final pulumi.Input<String>? description;
  /// A string containing the name of the group. This value is commonly displayed when the group is referenced.
  final pulumi.Input<String>? displayName;
  /// A list of external IDs that contains the identifiers issued to this resource by an external identity provider. See External IDs below.
  final pulumi.Input<List<GroupExternalId>>? externalIds;
  /// The identifier of the newly created group in the identity store.
  final pulumi.Input<String>? groupId;
  /// The globally unique identifier for the identity store.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? identityStoreId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupState].
  /// [arn] ARN of the Group.
  /// [description] A string containing the description of the group.
  /// [displayName] A string containing the name of the group. This value is commonly displayed when the group is referenced.
  /// [externalIds] A list of external IDs that contains the identifiers issued to this resource by an external identity provider. See External IDs below.
  /// [groupId] The identifier of the newly created group in the identity store.
  /// [identityStoreId] The globally unique identifier for the identity store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GroupState({
    this.arn,
    this.description,
    this.displayName,
    this.externalIds,
    this.groupId,
    this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'displayName': ?displayName,
      'externalIds': ?pulumi.Input.mapOptionalInputValue<List<GroupExternalId>, List<Map<String, dynamic>>>(externalIds, (value) => pulumi.Input.encodeList<GroupExternalId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupId': ?groupId,
      'identityStoreId': ?identityStoreId,
      'region': ?region,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      externalIds: map['externalIds'] == null ? null : (pulumi.Input.decodeList<GroupExternalId>(map['externalIds'], (value) => GroupExternalId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      identityStoreId: map['identityStoreId'] == null ? null : (map['identityStoreId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

