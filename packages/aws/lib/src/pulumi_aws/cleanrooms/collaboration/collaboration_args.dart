// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../collaboration_data_encryption_metadata/collaboration_data_encryption_metadata.dart';
import '../collaboration_member/collaboration_member.dart';

/// The set of arguments for Collaboration.
class CollaborationArgs {
  /// Analytics engine used by the collaboration. Valid values are `CLEAN_ROOMS_SQL` (deprecated) and `SPARK`.
  final pulumi.Input<String>? analyticsEngine;

  /// Name for the member record for the collaboration creator.
  final pulumi.Input<String> creatorDisplayName;

  /// List of member abilities for the creator of the collaboration. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-creatorMemberAbilities).
  final pulumi.Input<List<String>> creatorMemberAbilities;

  /// Collection of settings which determine how the [c3r client](https://docs.aws.amazon.com/clean-rooms/latest/userguide/crypto-computing.html) will encrypt data for use within this collaboration. See below.
  final pulumi.Input<CollaborationDataEncryptionMetadata>?
      dataEncryptionMetadata;

  /// Description for a collaboration.
  final pulumi.Input<String> description;

  /// Additional members of the collaboration which will be invited to join the collaboration. See below.
  final pulumi.Input<List<CollaborationMember>>? members;

  /// Name of the collaboration.  Collaboration names do not need to be unique.
  final pulumi.Input<String>? name;

  /// Whether members of the collaboration can enable query logs within their own memberships. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-queryLogStatus).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> queryLogStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key value pairs which tag the collaboration.
  final pulumi.Input<Map<String, String>>? tags;

  CollaborationArgs({
    this.analyticsEngine,
    required this.creatorDisplayName,
    required this.creatorMemberAbilities,
    this.dataEncryptionMetadata,
    required this.description,
    this.members,
    this.name,
    required this.queryLogStatus,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analyticsEngineValue = analyticsEngine;
    if (analyticsEngineValue != null) {
      map['analyticsEngine'] = analyticsEngineValue;
    }
    map['creatorDisplayName'] = creatorDisplayName;
    map['creatorMemberAbilities'] = creatorMemberAbilities;
    final dataEncryptionMetadataValue = dataEncryptionMetadata;
    if (dataEncryptionMetadataValue != null) {
      map['dataEncryptionMetadata'] = pulumi.Input.mapOptionalInputValue<
              CollaborationDataEncryptionMetadata, Map<String, dynamic>>(
          dataEncryptionMetadataValue, (value) => value.toMap());
    }
    map['description'] = description;
    final membersValue = members;
    if (membersValue != null) {
      map['members'] = pulumi.Input.mapOptionalInputValue<
              List<CollaborationMember>, List<Map<String, dynamic>>>(
          membersValue,
          (value) => pulumi.Input.encodeList<CollaborationMember,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['queryLogStatus'] = queryLogStatus;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CollaborationArgs.fromMap(Map<String, dynamic> map) {
    return CollaborationArgs(
      analyticsEngine:
          pulumi.Input.asOptionalInput<String>(map['analyticsEngine']),
      creatorDisplayName:
          pulumi.Input.asInput<String>(map['creatorDisplayName']),
      creatorMemberAbilities:
          pulumi.Input.asInput<List<String>>(map['creatorMemberAbilities']),
      dataEncryptionMetadata:
          pulumi.Input.asOptionalInput<CollaborationDataEncryptionMetadata>(
              map['dataEncryptionMetadata']),
      description: pulumi.Input.asInput<String>(map['description']),
      members: pulumi.Input.asOptionalInput<List<CollaborationMember>>(
          map['members']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      queryLogStatus: pulumi.Input.asInput<String>(map['queryLogStatus']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
