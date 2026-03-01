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
    pulumi.Output<String>? analyticsEngine,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? creatorDisplayName,
    pulumi.Output<List<String>>? creatorMemberAbilities,
    pulumi.Output<CollaborationDataEncryptionMetadata>? dataEncryptionMetadata,
    pulumi.Output<String>? description,
    pulumi.Output<List<CollaborationMember>>? members,
    pulumi.Output<String>? name,
    pulumi.Output<String>? queryLogStatus,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? updateTime,
  }) :
      analyticsEngine = pulumi.Input.asOptionalInput<String>(analyticsEngine),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      creatorDisplayName = pulumi.Input.asOptionalInput<String>(creatorDisplayName),
      creatorMemberAbilities = pulumi.Input.asOptionalInput<List<String>>(creatorMemberAbilities),
      dataEncryptionMetadata = pulumi.Input.asOptionalInput<CollaborationDataEncryptionMetadata>(dataEncryptionMetadata),
      description = pulumi.Input.asOptionalInput<String>(description),
      members = pulumi.Input.asOptionalInput<List<CollaborationMember>>(members),
      name = pulumi.Input.asOptionalInput<String>(name),
      queryLogStatus = pulumi.Input.asOptionalInput<String>(queryLogStatus),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      analyticsEngine: map['analyticsEngine'] == null ? null : pulumi.Output.create<String>(map['analyticsEngine'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      creatorDisplayName: map['creatorDisplayName'] == null ? null : pulumi.Output.create<String>(map['creatorDisplayName'] as String),
      creatorMemberAbilities: map['creatorMemberAbilities'] == null ? null : pulumi.Output.create<List<String>>((map['creatorMemberAbilities'] as List).cast<String>()),
      dataEncryptionMetadata: map['dataEncryptionMetadata'] == null ? null : pulumi.Output.create<CollaborationDataEncryptionMetadata>(CollaborationDataEncryptionMetadata.fromMap((map['dataEncryptionMetadata'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<CollaborationMember>>(pulumi.Input.decodeList<CollaborationMember>(map['members'], (value) => CollaborationMember.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      queryLogStatus: map['queryLogStatus'] == null ? null : pulumi.Output.create<String>(map['queryLogStatus'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

