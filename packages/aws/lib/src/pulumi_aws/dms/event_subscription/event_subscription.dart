import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_args.dart';

/// Provides a DMS (Data Migration Service) event subscription resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import event subscriptions using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/eventSubscription:EventSubscription test my-awesome-event-subscription
/// ```
class EventSubscription extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the DMS Event Subscription.
  late final pulumi.Output<String> arn;

  /// Whether the event subscription should be enabled.
  late final pulumi.Output<bool?> enabled;

  /// List of event categories to listen for, see `DescribeEventCategories` for a canonical list.
  late final pulumi.Output<List<String>> eventCategories;

  /// Name of event subscription.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// SNS topic arn to send events on.
  late final pulumi.Output<String> snsTopicArn;

  /// Ids of sources to listen to. If you don't specify a value, notifications are provided for all sources.
  late final pulumi.Output<List<String>?> sourceIds;

  /// Type of source for events. Valid values: `replication-instance` or `replication-task`
  late final pulumi.Output<String> sourceType;

  /// Map of resource tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  EventSubscription(
    String name, {
    EventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/eventSubscription:EventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool?>('enabled');
    this.eventCategories = registerOutput<List<String>>('eventCategories');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
    this.sourceIds = registerOutput<List<String>?>('sourceIds');
    this.sourceType = registerOutput<String>('sourceType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
