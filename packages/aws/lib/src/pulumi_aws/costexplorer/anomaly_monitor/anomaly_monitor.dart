import 'package:pulumi/pulumi.dart';
import 'anomaly_monitor_args.dart';

/// Provides a CE Anomaly Monitor.
///
/// ## Example Usage
///
/// There are two main types of a Cost Anomaly Monitor: `DIMENSIONAL` and `CUSTOM`.
///
/// ### Dimensional Example
///
///
///
/// ### Custom Example
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Cost Explorer anomaly monitor.
///
///
/// Using `pulumi import`, import `aws.costexplorer.AnomalyMonitor` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:costexplorer/anomalyMonitor:AnomalyMonitor example costAnomalyMonitorARN
/// ```
class AnomalyMonitor extends CustomResource {
  /// ARN of the anomaly monitor.
  late final Output<String> arn;

  /// The dimensions to evaluate. Valid values: `SERVICE`.
  late final Output<String?> monitorDimension;

  /// A valid JSON representation for the [Expression](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html) object.
  late final Output<String?> monitorSpecification;

  /// The possible type values. Valid values: `DIMENSIONAL` | `CUSTOM`.
  late final Output<String> monitorType;

  /// The name of the monitor.
  late final Output<String> name;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  AnomalyMonitor(
    String name, {
    AnomalyMonitorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/anomalyMonitor:AnomalyMonitor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.monitorDimension = registerOutput<String?>('monitorDimension');
    this.monitorSpecification = registerOutput<String?>('monitorSpecification');
    this.monitorType = registerOutput<String>('monitorType');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
