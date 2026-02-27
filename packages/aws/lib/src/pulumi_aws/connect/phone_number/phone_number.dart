import 'package:pulumi/pulumi.dart' as pulumi;
import '../phone_number_status/phone_number_status.dart';
import 'phone_number_args.dart';

/// Provides an Amazon Connect Phone Number resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Description
///
///
///
/// ### Prefix to filter phone numbers
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the connect phone number.
///
/// #### Optional
///
/// - `account_id` (String) AWS Account where this resource is managed.
/// - `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Amazon Connect Phone Numbers using its `id`. For example:
///
/// ```sh
/// $ pulumi import aws:connect/phoneNumber:PhoneNumber example 12345678-abcd-1234-efgh-9876543210ab
/// ```
class PhoneNumber extends pulumi.CustomResource {
  /// The ARN of the phone number.
  late final pulumi.Output<String> arn;

  /// The ISO country code. For a list of Valid values, refer to [PhoneNumberCountryCode](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html#connect-SearchAvailablePhoneNumbers-request-PhoneNumberCountryCode).
  late final pulumi.Output<String> countryCode;

  /// The description of the phone number.
  late final pulumi.Output<String?> description;

  /// The phone number. Phone numbers are formatted `[+] [country code] [subscriber number including area code]`.
  late final pulumi.Output<String> phoneNumber;

  /// The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain `+` as part of the country code. Do not specify this argument when importing the resource.
  late final pulumi.Output<String?> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The status of the phone number. Valid Values: `CLAIMED` | `IN_PROGRESS` | `FAILED`.
  late final pulumi.Output<List<PhoneNumberStatus>> statuses;

  /// Tags to apply to the Phone Number. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.
  late final pulumi.Output<String> targetArn;

  /// The type of phone number. Valid Values: `TOLL_FREE` | `DID`.
  late final pulumi.Output<String> type;

  PhoneNumber(
    String name, {
    PhoneNumberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/phoneNumber:PhoneNumber',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.countryCode = registerOutput<String>('countryCode');
    this.description = registerOutput<String?>('description');
    this.phoneNumber = registerOutput<String>('phoneNumber');
    this.prefix = registerOutput<String?>('prefix');
    this.region = registerOutput<String>('region');
    this.statuses = registerOutput<List<PhoneNumberStatus>>('statuses');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetArn = registerOutput<String>('targetArn');
    this.type = registerOutput<String>('type');
  }
}
