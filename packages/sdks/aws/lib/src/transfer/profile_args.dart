// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_profile_profile_args_doc}
/// The set of arguments for Profile.
/// {@endtemplate}
/// {@macro pulumi_transfer_profile_profile_args_doc}
class ProfileArgs {
  /// AS2 name as defined in RFC 4130. For inbound transfers this is the AS2 From Header for the AS2 messages sent from the partner. For outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. This ID cannot include spaces.
  final pulumi.Input<String> as2Id;
  /// List of certificate IDs from the imported certificate operation.
  final pulumi.Input<List<String>>? certificateIds;
  /// Profile type. Valid values are `LOCAL` or `PARTNER`.
  final pulumi.Input<String> profileType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProfileArgs].
  /// [as2Id] AS2 name as defined in RFC 4130. For inbound transfers this is the AS2 From Header for the AS2 messages sent from the partner. For outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. This ID cannot include spaces.
  /// [certificateIds] List of certificate IDs from the imported certificate operation.
  /// [profileType] Profile type. Valid values are `LOCAL` or `PARTNER`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ProfileArgs({
    required this.as2Id,
    this.certificateIds,
    required this.profileType,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'as2Id': as2Id,
      'certificateIds': ?certificateIds,
      'profileType': profileType,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      as2Id: pulumi.Input.fromValue(map['as2Id'] as String),
      certificateIds: (() { final guardedValue = map['certificateIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      profileType: pulumi.Input.fromValue(map['profileType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
