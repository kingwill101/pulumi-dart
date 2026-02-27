import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_channel_args.dart';

/// Provides a Pinpoint Email Channel resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint Email Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/emailChannel:EmailChannel email application-id
/// ```
class EmailChannel extends pulumi.CustomResource {
  /// The application ID.
  late final pulumi.Output<String> applicationId;

  /// The ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel.
  late final pulumi.Output<String?> configurationSet;

  /// Whether the channel is enabled or disabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// The email address used to send emails from. You can use email only (`user@example.com`) or friendly address (`User <user@example.com>`). This field comply with [RFC 5322](https://www.ietf.org/rfc/rfc5322.txt).
  late final pulumi.Output<String> fromAddress;

  /// The ARN of an identity verified with SES.
  late final pulumi.Output<String> identity;

  /// Messages per second that can be sent.
  late final pulumi.Output<int> messagesPerSecond;

  /// The ARN of an IAM role for Amazon Pinpoint to use to send email from your campaigns or journeys through Amazon SES.
  late final pulumi.Output<String?> orchestrationSendingRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// *Deprecated* The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.
  late final pulumi.Output<String?> roleArn;

  EmailChannel(
    String name, {
    EmailChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/emailChannel:EmailChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.configurationSet = registerOutput<String?>('configurationSet');
    this.enabled = registerOutput<bool?>('enabled');
    this.fromAddress = registerOutput<String>('fromAddress');
    this.identity = registerOutput<String>('identity');
    this.messagesPerSecond = registerOutput<int>('messagesPerSecond');
    this.orchestrationSendingRoleArn =
        registerOutput<String?>('orchestrationSendingRoleArn');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
  }
}
