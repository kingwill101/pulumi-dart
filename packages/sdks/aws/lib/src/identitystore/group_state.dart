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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<GroupExternalId>>? externalIds,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? identityStoreId,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      externalIds = pulumi.Input.asOptionalInput<List<GroupExternalId>>(externalIds),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      identityStoreId = pulumi.Input.asOptionalInput<String>(identityStoreId),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      externalIds: map['externalIds'] == null ? null : pulumi.Output.create<List<GroupExternalId>>(pulumi.Input.decodeList<GroupExternalId>(map['externalIds'], (value) => GroupExternalId.fromMap((value as Map).cast<String, dynamic>()))),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      identityStoreId: map['identityStoreId'] == null ? null : pulumi.Output.create<String>(map['identityStoreId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

