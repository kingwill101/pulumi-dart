// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collaboration_data_encryption_metadata.dart';
import 'collaboration_member.dart';

/// Input properties used for looking up and filtering Collaboration resources.
class CollaborationState {
  /// Analytics engine used by the collaboration. Valid values are `CLEAN_ROOMS_SQL` (deprecated) and `SPARK`.
  final pulumi.Input<String>? analyticsEngine;
  /// ARN of the collaboration.
  final pulumi.Input<String>? arn;
  /// Date and time the collaboration was created.
  final pulumi.Input<String>? createTime;
  /// Name for the member record for the collaboration creator.
  final pulumi.Input<String>? creatorDisplayName;
  /// List of member abilities for the creator of the collaboration. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-creatorMemberAbilities).
  final pulumi.Input<List<String>>? creatorMemberAbilities;
  /// Collection of settings which determine how the [c3r client](https://docs.aws.amazon.com/clean-rooms/latest/userguide/crypto-computing.html) will encrypt data for use within this collaboration. See below.
  final pulumi.Input<CollaborationDataEncryptionMetadata>? dataEncryptionMetadata;
  /// Description for a collaboration.
  final pulumi.Input<String>? description;
  /// Additional members of the collaboration which will be invited to join the collaboration. See below.
  final pulumi.Input<List<CollaborationMember>>? members;
  /// Name of the collaboration.  Collaboration names do not need to be unique.
  final pulumi.Input<String>? name;
  /// Whether members of the collaboration can enable query logs within their own memberships. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-queryLogStatus).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? queryLogStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key value pairs which tag the collaboration.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Date and time the collaboration was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CollaborationState].
  /// [analyticsEngine] Analytics engine used by the collaboration. Valid values are `CLEAN_ROOMS_SQL` (deprecated) and `SPARK`.
  /// [arn] ARN of the collaboration.
  /// [createTime] Date and time the collaboration was created.
  /// [creatorDisplayName] Name for the member record for the collaboration creator.
  /// [creatorMemberAbilities] List of member abilities for the creator of the collaboration. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-creatorMemberAbilities).
  /// [dataEncryptionMetadata] Collection of settings which determine how the [c3r client](https://docs.aws.amazon.com/clean-rooms/latest/userguide/crypto-computing.html) will encrypt data for use within this collaboration. See below.
  /// [description] Description for a collaboration.
  /// [members] Additional members of the collaboration which will be invited to join the collaboration. See below.
  /// [name] Name of the collaboration.  Collaboration names do not need to be unique.
  /// [queryLogStatus] Whether members of the collaboration can enable query logs within their own memberships. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-queryLogStatus).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key value pairs which tag the collaboration.
  /// [tagsAll] Optional.
  /// [updateTime] Date and time the collaboration was last updated.
  CollaborationState({
    this.analyticsEngine,
    this.arn,
    this.createTime,
    this.creatorDisplayName,
    this.creatorMemberAbilities,
    this.dataEncryptionMetadata,
    this.description,
    this.members,
    this.name,
    this.queryLogStatus,
    this.region,
    this.tags,
    this.tagsAll,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsEngine': ?analyticsEngine,
      'arn': ?arn,
      'createTime': ?createTime,
      'creatorDisplayName': ?creatorDisplayName,
      'creatorMemberAbilities': ?creatorMemberAbilities,
      'dataEncryptionMetadata': ?pulumi.Input.mapOptionalInputValue<CollaborationDataEncryptionMetadata, Map<String, dynamic>>(dataEncryptionMetadata, (value) => value.toMap()),
      'description': ?description,
      'members': ?pulumi.Input.mapOptionalInputValue<List<CollaborationMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<CollaborationMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'queryLogStatus': ?queryLogStatus,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updateTime': ?updateTime,
    };
  }

  factory CollaborationState.fromMap(Map<String, dynamic> map) {
    return CollaborationState(
      analyticsEngine: map['analyticsEngine'] == null ? null : (map['analyticsEngine'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      creatorDisplayName: map['creatorDisplayName'] == null ? null : (map['creatorDisplayName'] as String).input(),
      creatorMemberAbilities: map['creatorMemberAbilities'] == null ? null : ((map['creatorMemberAbilities'] as List).cast<String>()).input(),
      dataEncryptionMetadata: map['dataEncryptionMetadata'] == null ? null : (CollaborationDataEncryptionMetadata.fromMap((map['dataEncryptionMetadata'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      members: map['members'] == null ? null : (pulumi.Input.decodeList<CollaborationMember>(map['members'], (value) => CollaborationMember.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      queryLogStatus: map['queryLogStatus'] == null ? null : (map['queryLogStatus'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

