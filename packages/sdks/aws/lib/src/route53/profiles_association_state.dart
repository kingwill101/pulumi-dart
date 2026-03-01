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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? profileId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusMessage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ProfilesAssociationTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      profileId = pulumi.Input.asOptionalInput<String>(profileId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessage = pulumi.Input.asOptionalInput<String>(statusMessage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ProfilesAssociationTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      profileId: map['profileId'] == null ? null : pulumi.Output.create<String>(map['profileId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusMessage: map['statusMessage'] == null ? null : pulumi.Output.create<String>(map['statusMessage'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ProfilesAssociationTimeouts>(ProfilesAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

