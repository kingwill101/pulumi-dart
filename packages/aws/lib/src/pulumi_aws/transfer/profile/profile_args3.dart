// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Profile.
class ProfileArgs3 {
  /// The As2Id is the AS2 name as defined in the RFC 4130. For inbound ttransfers this is the AS2 From Header for the AS2 messages sent from the partner. For Outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. his ID cannot include spaces.
  final Input<String> as2Id;

  /// The list of certificate Ids from the imported certificate operation.
  final Input<List<String>>? certificateIds;

  /// The profile type should be LOCAL or PARTNER.
  final Input<String> profileType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ProfileArgs3({
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

  factory ProfileArgs3.fromMap(Map<String, dynamic> map) {
    return ProfileArgs3(
      as2Id: Input.asInput<String>(map['as2Id']),
      certificateIds:
          Input.asOptionalInput<List<String>>(map['certificateIds']),
      profileType: Input.asInput<String>(map['profileType']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
