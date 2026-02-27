import 'package:pulumi/pulumi.dart' as pulumi;
import '../smsvoicev2_phone_number_timeouts/smsvoicev2_phone_number_timeouts.dart';
import 'smsvoicev2_phone_number_args.dart';

/// Manages an AWS End User Messaging SMS phone number.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import phone numbers using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2PhoneNumber:Smsvoicev2PhoneNumber example phone-abcdef0123456789abcdef0123456789
/// ```
class Smsvoicev2PhoneNumber extends pulumi.CustomResource {
  /// ARN of the phone number.
  late final pulumi.Output<String> arn;

  /// By default this is set to `false`. When set to true the phone number can’t be deleted.
  late final pulumi.Output<bool> deletionProtectionEnabled;

  /// The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  late final pulumi.Output<String> isoCountryCode;

  /// The type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  late final pulumi.Output<String> messageType;

  /// The monthly price, in US dollars, to lease the phone number.
  late final pulumi.Output<String> monthlyLeasingPrice;

  /// Describes if the origination identity can be used for text messages, voice calls or both. valid values are `SMS` and `VOICE`.
  late final pulumi.Output<List<String>> numberCapabilities;

  /// The type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  late final pulumi.Output<String> numberType;

  /// The name of the opt-out list to associate with the phone number.
  late final pulumi.Output<String> optOutListName;

  /// The new phone number that was requested.
  late final pulumi.Output<String> phoneNumber;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Use this field to attach your phone number for an external registration process.
  late final pulumi.Output<String?> registrationId;

  /// When set to `false` an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  late final pulumi.Output<bool> selfManagedOptOutsEnabled;
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<Smsvoicev2PhoneNumberTimeouts?> timeouts;

  /// Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  late final pulumi.Output<String?> twoWayChannelArn;

  /// By default this is set to `false`. When set to `true` you can receive incoming text messages from your end recipients.
  late final pulumi.Output<bool> twoWayChannelEnabled;

  /// IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  late final pulumi.Output<String?> twoWayChannelRole;

  Smsvoicev2PhoneNumber(
    String name, {
    Smsvoicev2PhoneNumberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2PhoneNumber:Smsvoicev2PhoneNumber',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionProtectionEnabled =
        registerOutput<bool>('deletionProtectionEnabled');
    this.isoCountryCode = registerOutput<String>('isoCountryCode');
    this.messageType = registerOutput<String>('messageType');
    this.monthlyLeasingPrice = registerOutput<String>('monthlyLeasingPrice');
    this.numberCapabilities =
        registerOutput<List<String>>('numberCapabilities');
    this.numberType = registerOutput<String>('numberType');
    this.optOutListName = registerOutput<String>('optOutListName');
    this.phoneNumber = registerOutput<String>('phoneNumber');
    this.region = registerOutput<String>('region');
    this.registrationId = registerOutput<String?>('registrationId');
    this.selfManagedOptOutsEnabled =
        registerOutput<bool>('selfManagedOptOutsEnabled');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<Smsvoicev2PhoneNumberTimeouts?>('timeouts');
    this.twoWayChannelArn = registerOutput<String?>('twoWayChannelArn');
    this.twoWayChannelEnabled = registerOutput<bool>('twoWayChannelEnabled');
    this.twoWayChannelRole = registerOutput<String?>('twoWayChannelRole');
  }
}
