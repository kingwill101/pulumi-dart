// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiles_association_timeouts.dart';

/// Input properties used for looking up and filtering ProfilesAssociation resources.
class ProfilesAssociationState {
  final pulumi.Input<String>? arn;
  /// Name of the Profile Association. Must match a regex of `(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? ownerId;
  /// ID of the profile associated with the VPC.
  final pulumi.Input<String>? profileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource ID of the VPC the profile to be associated with.
  final pulumi.Input<String>? resourceId;
  /// Status of the Profile Association.
  final pulumi.Input<String>? status;
  /// Status message of the Profile Association.
  final pulumi.Input<String>? statusMessage;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ProfilesAssociationTimeouts>? timeouts;

  /// Creates a new [ProfilesAssociationState].
  /// [arn] Optional.
  /// [name] Name of the Profile Association. Must match a regex of `(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)`.
  /// [ownerId] Optional.
  /// [profileId] ID of the profile associated with the VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Resource ID of the VPC the profile to be associated with.
  /// [status] Status of the Profile Association.
  /// [statusMessage] Status message of the Profile Association.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ProfilesAssociationState({
    this.arn,
    this.name,
    this.ownerId,
    this.profileId,
    this.region,
    this.resourceId,
    this.status,
    this.statusMessage,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'ownerId': ?ownerId,
      'profileId': ?profileId,
      'region': ?region,
      'resourceId': ?resourceId,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProfilesAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ProfilesAssociationState.fromMap(Map<String, dynamic> map) {
    return ProfilesAssociationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      profileId: map['profileId'] == null ? null : ((map['profileId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceId: map['resourceId'] == null ? null : ((map['resourceId'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      statusMessage: map['statusMessage'] == null ? null : ((map['statusMessage'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ProfilesAssociationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

