// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Profile resources.
class ProfileState {
  /// The ARN of the profile.
  final pulumi.Input<String>? arn;
  /// The As2Id is the AS2 name as defined in the RFC 4130. For inbound ttransfers this is the AS2 From Header for the AS2 messages sent from the partner. For Outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. his ID cannot include spaces.
  final pulumi.Input<String>? as2Id;
  /// The list of certificate Ids from the imported certificate operation.
  final pulumi.Input<List<String>>? certificateIds;
  /// The unique identifier for the AS2 profile.
  final pulumi.Input<String>? profileId;
  /// The profile type should be LOCAL or PARTNER.
  final pulumi.Input<String>? profileType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ProfileState].
  /// [arn] The ARN of the profile.
  /// [as2Id] The As2Id is the AS2 name as defined in the RFC 4130. For inbound ttransfers this is the AS2 From Header for the AS2 messages sent from the partner. For Outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. his ID cannot include spaces.
  /// [certificateIds] The list of certificate Ids from the imported certificate operation.
  /// [profileId] The unique identifier for the AS2 profile.
  /// [profileType] The profile type should be LOCAL or PARTNER.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  ProfileState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? as2Id,
    pulumi.Output<List<String>>? certificateIds,
    pulumi.Output<String>? profileId,
    pulumi.Output<String>? profileType,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      as2Id = pulumi.Input.asOptionalInput<String>(as2Id),
      certificateIds = pulumi.Input.asOptionalInput<List<String>>(certificateIds),
      profileId = pulumi.Input.asOptionalInput<String>(profileId),
      profileType = pulumi.Input.asOptionalInput<String>(profileType),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      as2Id: map['as2Id'] == null ? null : pulumi.Output.create<String>(map['as2Id'] as String),
      certificateIds: map['certificateIds'] == null ? null : pulumi.Output.create<List<String>>((map['certificateIds'] as List).cast<String>()),
      profileId: map['profileId'] == null ? null : pulumi.Output.create<String>(map['profileId'] as String),
      profileType: map['profileType'] == null ? null : pulumi.Output.create<String>(map['profileType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

