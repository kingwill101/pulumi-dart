import 'package:pulumi/pulumi.dart';
import 'event_rule_args2.dart';

/// Resource for managing an AWS User Notifications Event Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Event Rule using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/eventRule:EventRule example arn:aws:notifications::123456789012:configuration/abc123def456ghi789jkl012mno345/rule/abc123def456ghi789jkl012mno345
/// ```
class EventRule2 extends CustomResource {
  /// ARN of the Event Rule.
  late final Output<String> arn;

  /// JSON string defining the event pattern to match. Maximum length is 4096 characters.
  late final Output<String?> eventPattern;

  /// Type of event to match. Must be between 1 and 128 characters, and match the pattern `([a-zA-Z0-9 \-\(\)])+`.
  late final Output<String> eventType;

  /// ARN of the notification configuration to associate with this event rule. Must match the pattern `arn:aws:notifications::[0-9]{12}:configuration/[a-z0-9]{27}`.
  late final Output<String> notificationConfigurationArn;

  /// Set of AWS regions where the event rule will be applied. Each region must be between 2 and 25 characters, and match the pattern `([a-z]{1,2})-([a-z]{1,15}-)+([0-9])`.
  late final Output<List<String>> regions;

  /// Source of the event. Must be between 1 and 36 characters, and match the pattern `aws.([a-z0-9\-])+`.
  ///
  /// The following arguments are optional:
  late final Output<String> source;

  EventRule2(
    String name, {
    EventRuleArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:notifications/eventRule:EventRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.eventPattern = registerOutput<String?>('eventPattern');
    this.eventType = registerOutput<String>('eventType');
    this.notificationConfigurationArn =
        registerOutput<String>('notificationConfigurationArn');
    this.regions = registerOutput<List<String>>('regions');
    this.source = registerOutput<String>('source');
  }
}
