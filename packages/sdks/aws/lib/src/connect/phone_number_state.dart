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
  /// Tags to apply to the Phone Number. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [tags] Tags to apply to the Phone Number. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetArn] The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.
  /// [type] The type of phone number. Valid Values: `TOLL_FREE` | `DID`.
  const PhoneNumberState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      countryCode: (() { final guardedValue = map['countryCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: (() { final guardedValue = map['phoneNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PhoneNumberStatus>(guardedValue, (value) => PhoneNumberStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetArn: (() { final guardedValue = map['targetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
