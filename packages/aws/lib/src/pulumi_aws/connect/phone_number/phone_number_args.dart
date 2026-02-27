// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PhoneNumber.
class PhoneNumberArgs {
  /// The ISO country code. For a list of Valid values, refer to [PhoneNumberCountryCode](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html#connect-SearchAvailablePhoneNumbers-request-PhoneNumberCountryCode).
  final Input<String> countryCode;

  /// The description of the phone number.
  final Input<String>? description;

  /// The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain `+` as part of the country code. Do not specify this argument when importing the resource.
  final Input<String>? prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the Phone Number. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.
  final Input<String> targetArn;

  /// The type of phone number. Valid Values: `TOLL_FREE` | `DID`.
  final Input<String> type;

  PhoneNumberArgs({
    required this.countryCode,
    this.description,
    this.prefix,
    this.region,
    this.tags,
    required this.targetArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['countryCode'] = countryCode;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetArn'] = targetArn;
    map['type'] = type;
    return map;
  }

  factory PhoneNumberArgs.fromMap(Map<String, dynamic> map) {
    return PhoneNumberArgs(
      countryCode: Input.asInput<String>(map['countryCode']),
      description: Input.asOptionalInput<String>(map['description']),
      prefix: Input.asOptionalInput<String>(map['prefix']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetArn: Input.asInput<String>(map['targetArn']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
