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
  final pulumi.Input<CollaborationDataEncryptionMetadata>? dataEncryptionMetadata;
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
  const CollaborationArgs({
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
    return <String, dynamic>{
      'analyticsEngine': ?analyticsEngine,
      'creatorDisplayName': creatorDisplayName,
      'creatorMemberAbilities': creatorMemberAbilities,
      'dataEncryptionMetadata': ?pulumi.Input.mapOptionalInputValue<CollaborationDataEncryptionMetadata, Map<String, dynamic>>(dataEncryptionMetadata, (value) => value.toMap()),
      'description': description,
      'members': ?pulumi.Input.mapOptionalInputValue<List<CollaborationMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<CollaborationMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'queryLogStatus': queryLogStatus,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory CollaborationArgs.fromMap(Map<String, dynamic> map) {
    return CollaborationArgs(
      analyticsEngine: (() { final guardedValue = map['analyticsEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creatorDisplayName: pulumi.Input.fromValue(map['creatorDisplayName'] as String),
      creatorMemberAbilities: pulumi.Input.fromValue((map['creatorMemberAbilities'] as List).cast<String>()),
      dataEncryptionMetadata: (() { final guardedValue = map['dataEncryptionMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollaborationDataEncryptionMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CollaborationMember>(guardedValue, (value) => CollaborationMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryLogStatus: pulumi.Input.fromValue(map['queryLogStatus'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

