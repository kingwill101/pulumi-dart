import 'package:pulumi/pulumi.dart' as pulumi;
import '../anomaly_subscription_subscriber/anomaly_subscription_subscriber.dart';
import '../anomaly_subscription_threshold_expression/anomaly_subscription_threshold_expression.dart';
import 'anomaly_subscription_args.dart';

/// Provides a CE Anomaly Subscription.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// ### Threshold Expression Example
///
/// ### Using a Percentage Threshold
///
///
///
/// ### Using an `and` Expression
///
///
///
/// ### SNS Example
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Cost Explorer anomaly subscription.
///
///
/// Using `pulumi import`, import `aws.costexplorer.AnomalySubscription` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:costexplorer/anomalySubscription:AnomalySubscription example AnomalySubscriptionARN
/// ```
class AnomalySubscription extends pulumi.CustomResource {
  /// The unique identifier for the AWS account in which the anomaly subscription ought to be created.
  late final pulumi.Output<String> accountId;

  /// ARN of the anomaly subscription.
  late final pulumi.Output<String> arn;

  /// The frequency that anomaly reports are sent. Valid Values: `DAILY` | `IMMEDIATE` | `WEEKLY`.
  late final pulumi.Output<String> frequency;

  /// A list of cost anomaly monitors.
  late final pulumi.Output<List<String>> monitorArnLists;

  /// The name for the subscription.
  late final pulumi.Output<String> name;

  /// A subscriber configuration. Multiple subscribers can be defined.
  late final pulumi.Output<List<AnomalySubscriptionSubscriber>> subscribers;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// An Expression object used to specify the anomalies that you want to generate alerts for. See Threshold Expression.
  late final pulumi.Output<AnomalySubscriptionThresholdExpression>
      thresholdExpression;

  AnomalySubscription(
    String name, {
    AnomalySubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/anomalySubscription:AnomalySubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.frequency = registerOutput<String>('frequency');
    this.monitorArnLists = registerOutput<List<String>>('monitorArnLists');
    this.name = registerOutput<String>('name');
    this.subscribers =
        registerOutput<List<AnomalySubscriptionSubscriber>>('subscribers');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.thresholdExpression =
        registerOutput<AnomalySubscriptionThresholdExpression>(
            'thresholdExpression');
  }
}
