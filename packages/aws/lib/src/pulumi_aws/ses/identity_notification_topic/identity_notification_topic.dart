import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_notification_topic_args.dart';

/// Resource for managing SES Identity Notification Topics
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Identity Notification Topics using the ID of the record. The ID is made up as `IDENTITY|TYPE` where `IDENTITY` is the SES Identity and `TYPE` is the Notification Type. For example:
///
/// ```sh
/// $ pulumi import aws:ses/identityNotificationTopic:IdentityNotificationTopic test 'example.com|Bounce'
/// ```
class IdentityNotificationTopic extends pulumi.CustomResource {
  /// The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN).
  late final pulumi.Output<String> identity;

  /// Whether SES should include original email headers in SNS notifications of this type. `false` by default.
  late final pulumi.Output<bool?> includeOriginalHeaders;

  /// The type of notifications that will be published to the specified Amazon SNS topic. Valid Values: `Bounce`, `Complaint` or `Delivery`.
  late final pulumi.Output<String> notificationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the Amazon SNS topic. Can be set to `""` (an empty string) to disable publishing.
  late final pulumi.Output<String?> topicArn;

  IdentityNotificationTopic(
    String name, {
    IdentityNotificationTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/identityNotificationTopic:IdentityNotificationTopic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.identity = registerOutput<String>('identity');
    this.includeOriginalHeaders =
        registerOutput<bool?>('includeOriginalHeaders');
    this.notificationType = registerOutput<String>('notificationType');
    this.region = registerOutput<String>('region');
    this.topicArn = registerOutput<String?>('topicArn');
  }
}
