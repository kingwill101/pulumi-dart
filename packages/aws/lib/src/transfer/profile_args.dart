// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_profile_profile_args_doc}
/// The set of arguments for Profile.
/// {@endtemplate}
/// {@macro pulumi_transfer_profile_profile_args_doc}
class ProfileArgs {
  /// The As2Id is the AS2 name as defined in the RFC 4130. For inbound ttransfers this is the AS2 From Header for the AS2 messages sent from the partner. For Outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. his ID cannot include spaces.
  final pulumi.Input<String> as2Id;
  /// The list of certificate Ids from the imported certificate operation.
  final pulumi.Input<List<String>>? certificateIds;
  /// The profile type should be LOCAL or PARTNER.
  final pulumi.Input<String> profileType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProfileArgs].
  /// [as2Id] The As2Id is the AS2 name as defined in the RFC 4130. For inbound ttransfers this is the AS2 From Header for the AS2 messages sent from the partner. For Outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. his ID cannot include spaces.
  /// [certificateIds] The list of certificate Ids from the imported certificate operation.
  /// [profileType] The profile type should be LOCAL or PARTNER.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ProfileArgs({
    required String as2Id,
    List<String>? certificateIds,
    required String profileType,
    String? region,
    Map<String, String>? tags,
  }) :
      as2Id = pulumi.Input.asInput<String>(as2Id),
      certificateIds = pulumi.Input.asOptionalInput<List<String>>(certificateIds),
      profileType = pulumi.Input.asInput<String>(profileType),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      as2Id: map['as2Id'] as String,
      certificateIds: map['certificateIds'] == null ? null : (map['certificateIds'] as List).cast<String>(),
      profileType: map['profileType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

