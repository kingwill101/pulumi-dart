import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_networkmonitor_args.dart';

/// Resource for managing an AWS Network Monitor Monitor.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmonitor.Monitor` using the monitor name. For example:
///
/// ```sh
/// $ pulumi import aws:networkmonitor/monitor:Monitor example monitor-7786087912324693644
/// ```
class MonitorNetworkmonitor extends pulumi.CustomResource {
  /// The time, in seconds, that metrics are aggregated and sent to Amazon CloudWatch. Valid values are either 30 or 60.
  late final pulumi.Output<int> aggregationPeriod;

  /// The ARN of the monitor.
  late final pulumi.Output<String> arn;

  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> monitorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  MonitorNetworkmonitor(
    String name, {
    MonitorNetworkmonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmonitor/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregationPeriod = registerOutput<int>('aggregationPeriod');
    this.arn = registerOutput<String>('arn');
    this.monitorName = registerOutput<String>('monitorName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
