import 'package:pulumi/pulumi.dart' as pulumi;
import 'sms_channel_args.dart';

/// Use the `aws.pinpoint.SmsChannel` resource to manage Pinpoint SMS Channels.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the Pinpoint SMS Channel using the `application_id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsChannel:SmsChannel sms application-id
/// ```
class SmsChannel extends pulumi.CustomResource {
  /// ID of the application.
  late final pulumi.Output<String> applicationId;

  /// Whether the channel is enabled or disabled. By default, it is set to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Maximum number of promotional messages that can be sent per second.
  late final pulumi.Output<int> promotionalMessagesPerSecond;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the sender for your messages.
  late final pulumi.Output<String?> senderId;

  /// Short Code registered with the phone provider.
  late final pulumi.Output<String?> shortCode;

  /// Maximum number of transactional messages per second that can be sent.
  late final pulumi.Output<int> transactionalMessagesPerSecond;

  SmsChannel(
    String name, {
    SmsChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsChannel:SmsChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.enabled = registerOutput<bool?>('enabled');
    this.promotionalMessagesPerSecond =
        registerOutput<int>('promotionalMessagesPerSecond');
    this.region = registerOutput<String>('region');
    this.senderId = registerOutput<String?>('senderId');
    this.shortCode = registerOutput<String?>('shortCode');
    this.transactionalMessagesPerSecond =
        registerOutput<int>('transactionalMessagesPerSecond');
  }
}
