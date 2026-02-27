// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Profile.
class ProfileTransferArgs {
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

  ProfileTransferArgs({
    required this.as2Id,
    this.certificateIds,
    required this.profileType,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['as2Id'] = as2Id;
    final certificateIdsValue = certificateIds;
    if (certificateIdsValue != null) {
      map['certificateIds'] = certificateIdsValue;
    }
    map['profileType'] = profileType;
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

  factory ProfileTransferArgs.fromMap(Map<String, dynamic> map) {
    return ProfileTransferArgs(
      as2Id: pulumi.Input.asInput<String>(map['as2Id']),
      certificateIds:
          pulumi.Input.asOptionalInput<List<String>>(map['certificateIds']),
      profileType: pulumi.Input.asInput<String>(map['profileType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
