// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collaboration_data_encryption_metadata.dart';
import 'collaboration_member.dart';

/// {@template pulumi_cleanrooms_collaboration_collaboration_args_doc}
/// The set of arguments for Collaboration.
/// {@endtemplate}
/// {@macro pulumi_cleanrooms_collaboration_collaboration_args_doc}
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

  /// Creates a new [CollaborationArgs].
  /// [analyticsEngine] Analytics engine used by the collaboration. Valid values are `CLEAN_ROOMS_SQL` (deprecated) and `SPARK`.
  /// [creatorDisplayName] Name for the member record for the collaboration creator.
  /// [creatorMemberAbilities] List of member abilities for the creator of the collaboration. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-creatorMemberAbilities).
  /// [dataEncryptionMetadata] Collection of settings which determine how the [c3r client](https://docs.aws.amazon.com/clean-rooms/latest/userguide/crypto-computing.html) will encrypt data for use within this collaboration. See below.
  /// [description] Description for a collaboration.
  /// [members] Additional members of the collaboration which will be invited to join the collaboration. See below.
  /// [name] Name of the collaboration.  Collaboration names do not need to be unique.
  /// [queryLogStatus] Whether members of the collaboration can enable query logs within their own memberships. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-queryLogStatus).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key value pairs which tag the collaboration.
  CollaborationArgs({
    String? analyticsEngine,
    required String creatorDisplayName,
    required List<String> creatorMemberAbilities,
    CollaborationDataEncryptionMetadata? dataEncryptionMetadata,
    required String description,
    List<CollaborationMember>? members,
    String? name,
    required String queryLogStatus,
    String? region,
    Map<String, String>? tags,
  })  : analyticsEngine = pulumi.Input.asOptionalInput<String>(analyticsEngine),
        creatorDisplayName = pulumi.Input.asInput<String>(creatorDisplayName),
        creatorMemberAbilities =
            pulumi.Input.asInput<List<String>>(creatorMemberAbilities),
        dataEncryptionMetadata =
            pulumi.Input.asOptionalInput<CollaborationDataEncryptionMetadata>(
                dataEncryptionMetadata),
        description = pulumi.Input.asInput<String>(description),
        members =
            pulumi.Input.asOptionalInput<List<CollaborationMember>>(members),
        name = pulumi.Input.asOptionalInput<String>(name),
        queryLogStatus = pulumi.Input.asInput<String>(queryLogStatus),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      analyticsEngine: map['analyticsEngine'] == null
          ? null
          : map['analyticsEngine'] as String,
      creatorDisplayName: map['creatorDisplayName'] as String,
      creatorMemberAbilities:
          (map['creatorMemberAbilities'] as List).cast<String>(),
      dataEncryptionMetadata: map['dataEncryptionMetadata'] == null
          ? null
          : CollaborationDataEncryptionMetadata.fromMap(
              (map['dataEncryptionMetadata'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      members: map['members'] == null
          ? null
          : pulumi.Input.decodeList<CollaborationMember>(
              map['members'],
              (value) => CollaborationMember.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      queryLogStatus: map['queryLogStatus'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
