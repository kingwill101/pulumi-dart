import 'package:pulumi/pulumi.dart' as pulumi;
import '../notification_rule_target/notification_rule_target.dart';
import 'notification_rule_args.dart';

/// Provides a CodeStar Notifications Rule.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeStar notification rule.
///
///
/// Using `pulumi import`, import CodeStar notification rule using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codestarnotifications/notificationRule:NotificationRule foo arn:aws:codestar-notifications:us-west-1:0123456789:notificationrule/2cdc68a3-8f7c-4893-b6a5-45b362bd4f2b
/// ```
class NotificationRule extends pulumi.CustomResource {
  /// The codestar notification rule ARN.
  late final pulumi.Output<String> arn;

  /// The level of detail to include in the notifications for this resource. Possible values are `BASIC` and `FULL`.
  late final pulumi.Output<String> detailType;

  /// A list of event types associated with this notification rule.
  /// For list of allowed events see [here](https://docs.aws.amazon.com/codestar-notifications/latest/userguide/concepts.html#concepts-api).
  late final pulumi.Output<List<String>> eventTypeIds;

  /// The name of notification rule.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the resource to associate with the notification rule.
  late final pulumi.Output<String> resource;

  /// The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  late final pulumi.Output<String?> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration blocks containing notification target information. Can be specified multiple times. At least one target must be specified on creation.
  late final pulumi.Output<List<NotificationRuleTarget>?> targets;

  NotificationRule(
    String name, {
    NotificationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codestarnotifications/notificationRule:NotificationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.detailType = registerOutput<String>('detailType');
    this.eventTypeIds = registerOutput<List<String>>('eventTypeIds');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resource = registerOutput<String>('resource');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targets = registerOutput<List<NotificationRuleTarget>?>('targets');
  }
}
