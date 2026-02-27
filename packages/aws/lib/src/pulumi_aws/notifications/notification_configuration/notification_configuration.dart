import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_configuration_args.dart';

/// Resource for managing an AWS User Notifications Notification Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Aggregation Duration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Notification Configuration using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/notificationConfiguration:NotificationConfiguration example arn:aws:notifications::123456789012:configuration/abcdef1234567890abcdef1234567890
/// ```
class NotificationConfiguration extends pulumi.CustomResource {
  /// Aggregation preference of the NotificationConfiguration. Valid values: `LONG` (
  /// aggregate notifications for 12 hours), `SHORT` (aggregate notifications for 5 minutes), `NONE` (don't aggregate
  /// notifications). Default: `NONE`.
  late final pulumi.Output<String> aggregationDuration;

  /// Amazon Resource Name (ARN) of the NotificationConfiguration.
  late final pulumi.Output<String> arn;

  /// Description of the NotificationConfiguration. Length constraints: Minimum length of 0,
  /// maximum length of 256.
  late final pulumi.Output<String> description;

  /// Name of the NotificationConfiguration. Supports RFC 3986's unreserved characters. Length
  /// constraints: Minimum length of 1, maximum length of 64. Pattern: `[A-Za-z0-9_\-]+`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Map of tags to assign to the resource. A tag is a string-to-string map of key-value pairs. If
  /// configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those
  /// defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags`
  /// configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  NotificationConfiguration(
    String name, {
    NotificationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/notificationConfiguration:NotificationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregationDuration = registerOutput<String>('aggregationDuration');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
