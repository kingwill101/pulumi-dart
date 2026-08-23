// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Profile resources.
class ProfileState {
  /// ARN of the profile.
  final pulumi.Input<String>? arn;
  /// AS2 name as defined in RFC 4130. For inbound transfers this is the AS2 From Header for the AS2 messages sent from the partner. For outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. This ID cannot include spaces.
  final pulumi.Input<String>? as2Id;
  /// List of certificate IDs from the imported certificate operation.
  final pulumi.Input<List<String>>? certificateIds;
  /// Unique identifier for the AS2 profile.
  final pulumi.Input<String>? profileId;
  /// Profile type. Valid values are `LOCAL` or `PARTNER`.
  final pulumi.Input<String>? profileType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ProfileState].
  /// [arn] ARN of the profile.
  /// [as2Id] AS2 name as defined in RFC 4130. For inbound transfers this is the AS2 From Header for the AS2 messages sent from the partner. For outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. This ID cannot include spaces.
  /// [certificateIds] List of certificate IDs from the imported certificate operation.
  /// [profileId] Unique identifier for the AS2 profile.
  /// [profileType] Profile type. Valid values are `LOCAL` or `PARTNER`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  const ProfileState({
    this.arn,
    this.as2Id,
    this.certificateIds,
    this.profileId,
    this.profileType,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'as2Id': ?as2Id,
      'certificateIds': ?certificateIds,
      'profileId': ?profileId,
      'profileType': ?profileType,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ProfileState.fromMap(Map<String, dynamic> map) {
    return ProfileState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      as2Id: (() { final guardedValue = map['as2Id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateIds: (() { final guardedValue = map['certificateIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileType: (() { final guardedValue = map['profileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
