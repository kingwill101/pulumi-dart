// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_phone_number_phone_number_args_doc}
/// The set of arguments for PhoneNumber.
/// {@endtemplate}
/// {@macro pulumi_connect_phone_number_phone_number_args_doc}
class PhoneNumberArgs {
  /// The ISO country code. For a list of Valid values, refer to [PhoneNumberCountryCode](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html#connect-SearchAvailablePhoneNumbers-request-PhoneNumberCountryCode).
  final pulumi.Input<String> countryCode;
  /// The description of the phone number.
  final pulumi.Input<String>? description;
  /// The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain `+` as part of the country code. Do not specify this argument when importing the resource.
  final pulumi.Input<String>? prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the Phone Number. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.
  final pulumi.Input<String> targetArn;
  /// The type of phone number. Valid Values: `TOLL_FREE` | `DID`.
  final pulumi.Input<String> type;

  /// Creates a new [PhoneNumberArgs].
  /// [countryCode] The ISO country code. For a list of Valid values, refer to [PhoneNumberCountryCode](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html#connect-SearchAvailablePhoneNumbers-request-PhoneNumberCountryCode).
  /// [description] The description of the phone number.
  /// [prefix] The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain `+` as part of the country code. Do not specify this argument when importing the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Phone Number. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetArn] The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.
  /// [type] The type of phone number. Valid Values: `TOLL_FREE` | `DID`.
  PhoneNumberArgs({
    required String countryCode,
    String? description,
    String? prefix,
    String? region,
    Map<String, String>? tags,
    required String targetArn,
    required String type,
  }) :
      countryCode = pulumi.Input.asInput<String>(countryCode),
      description = pulumi.Input.asOptionalInput<String>(description),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetArn = pulumi.Input.asInput<String>(targetArn),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
      'description': ?description,
      'prefix': ?prefix,
      'region': ?region,
      'tags': ?tags,
      'targetArn': targetArn,
      'type': type,
    };
  }

  factory PhoneNumberArgs.fromMap(Map<String, dynamic> map) {
    return PhoneNumberArgs(
      countryCode: map['countryCode'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetArn: map['targetArn'] as String,
      type: map['type'] as String,
    );
  }
}

