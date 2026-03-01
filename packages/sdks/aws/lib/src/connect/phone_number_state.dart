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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? countryCode,
    pulumi.Output<String>? description,
    pulumi.Output<String>? phoneNumber,
    pulumi.Output<String>? prefix,
    pulumi.Output<String>? region,
    pulumi.Output<List<PhoneNumberStatus>>? statuses,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetArn,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      countryCode = pulumi.Input.asOptionalInput<String>(countryCode),
      description = pulumi.Input.asOptionalInput<String>(description),
      phoneNumber = pulumi.Input.asOptionalInput<String>(phoneNumber),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      statuses = pulumi.Input.asOptionalInput<List<PhoneNumberStatus>>(statuses),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetArn = pulumi.Input.asOptionalInput<String>(targetArn),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      countryCode: map['countryCode'] == null ? null : pulumi.Output.create<String>(map['countryCode'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      phoneNumber: map['phoneNumber'] == null ? null : pulumi.Output.create<String>(map['phoneNumber'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<PhoneNumberStatus>>(pulumi.Input.decodeList<PhoneNumberStatus>(map['statuses'], (value) => PhoneNumberStatus.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetArn: map['targetArn'] == null ? null : pulumi.Output.create<String>(map['targetArn'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

