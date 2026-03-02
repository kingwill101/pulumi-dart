// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'phone_number_status.dart';

/// Input properties used for looking up and filtering PhoneNumber resources.
class PhoneNumberState {
  /// The ARN of the phone number.
  final pulumi.Input<String>? arn;
  /// The ISO country code. For a list of Valid values, refer to [PhoneNumberCountryCode](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html#connect-SearchAvailablePhoneNumbers-request-PhoneNumberCountryCode).
  final pulumi.Input<String>? countryCode;
  /// The description of the phone number.
  final pulumi.Input<String>? description;
  /// The phone number. Phone numbers are formatted `[+] [country code] [subscriber number including area code]`.
  final pulumi.Input<String>? phoneNumber;
  /// The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain `+` as part of the country code. Do not specify this argument when importing the resource.
  final pulumi.Input<String>? prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of the phone number. Valid Values: `CLAIMED` | `IN_PROGRESS` | `FAILED`.
  final pulumi.Input<List<PhoneNumberStatus>>? statuses;
  /// Tags to apply to the Phone Number. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.
  final pulumi.Input<String>? targetArn;
  /// The type of phone number. Valid Values: `TOLL_FREE` | `DID`.
  final pulumi.Input<String>? type;

  /// Creates a new [PhoneNumberState].
  /// [arn] The ARN of the phone number.
  /// [countryCode] The ISO country code. For a list of Valid values, refer to [PhoneNumberCountryCode](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html#connect-SearchAvailablePhoneNumbers-request-PhoneNumberCountryCode).
  /// [description] The description of the phone number.
  /// [phoneNumber] The phone number. Phone numbers are formatted `[+] [country code] [subscriber number including area code]`.
  /// [prefix] The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain `+` as part of the country code. Do not specify this argument when importing the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statuses] The status of the phone number. Valid Values: `CLAIMED` | `IN_PROGRESS` | `FAILED`.
  /// [tags] Tags to apply to the Phone Number. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetArn] The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.
  /// [type] The type of phone number. Valid Values: `TOLL_FREE` | `DID`.
  PhoneNumberState({
    this.arn,
    this.countryCode,
    this.description,
    this.phoneNumber,
    this.prefix,
    this.region,
    this.statuses,
    this.tags,
    this.tagsAll,
    this.targetArn,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'countryCode': ?countryCode,
      'description': ?description,
      'phoneNumber': ?phoneNumber,
      'prefix': ?prefix,
      'region': ?region,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<PhoneNumberStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<PhoneNumberStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetArn': ?targetArn,
      'type': ?type,
    };
  }

  factory PhoneNumberState.fromMap(Map<String, dynamic> map) {
    return PhoneNumberState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      countryCode: map['countryCode'] == null ? null : ((map['countryCode'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      phoneNumber: map['phoneNumber'] == null ? null : ((map['phoneNumber'] as String).input()).input(),
      prefix: map['prefix'] == null ? null : ((map['prefix'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      statuses: map['statuses'] == null ? null : ((pulumi.Input.decodeList<PhoneNumberStatus>(map['statuses']!, (value) => PhoneNumberStatus.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      targetArn: map['targetArn'] == null ? null : ((map['targetArn'] as String).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

