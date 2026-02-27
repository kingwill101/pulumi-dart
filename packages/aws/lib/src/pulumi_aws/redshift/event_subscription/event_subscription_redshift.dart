import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_redshift_args.dart';

/// Provides a Redshift event subscription resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Event Subscriptions using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/eventSubscription:EventSubscription default redshift-event-sub
/// ```
class EventSubscriptionRedshift extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Redshift event notification subscription
  late final pulumi.Output<String> arn;

  /// The AWS customer account associated with the Redshift event notification subscription
  late final pulumi.Output<String> customerAwsId;

  /// A boolean flag to enable/disable the subscription. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// A list of event categories for a SourceType that you want to subscribe to. See https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html or run `aws redshift describe-event-categories`.
  late final pulumi.Output<List<String>?> eventCategories;

  /// The name of the Redshift event subscription.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The event severity to be published by the notification subscription. Valid options are `INFO` or `ERROR`. Default value of `INFO`.
  late final pulumi.Output<String?> severity;

  /// The ARN of the SNS topic to send events to.
  late final pulumi.Output<String> snsTopicArn;

  /// A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a `source_type` must also be specified.
  late final pulumi.Output<List<String>?> sourceIds;

  /// The type of source that will be generating the events. Valid options are `cluster`, `cluster-parameter-group`, `cluster-security-group`, `cluster-snapshot`, or `scheduled-action`. If not set, all sources will be subscribed to.
  late final pulumi.Output<String?> sourceType;
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  EventSubscriptionRedshift(
    String name, {
    EventSubscriptionRedshiftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/eventSubscription:EventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.customerAwsId = registerOutput<String>('customerAwsId');
    this.enabled = registerOutput<bool?>('enabled');
    this.eventCategories = registerOutput<List<String>?>('eventCategories');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.severity = registerOutput<String?>('severity');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
    this.sourceIds = registerOutput<List<String>?>('sourceIds');
    this.sourceType = registerOutput<String?>('sourceType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
