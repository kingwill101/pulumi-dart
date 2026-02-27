import 'package:pulumi/pulumi.dart';
import '../monitor_local_resource/monitor_local_resource.dart';
import '../monitor_remote_resource/monitor_remote_resource.dart';
import '../monitor_timeouts/monitor_timeouts.dart';
import 'monitor_args.dart';

/// Manages a Network Flow Monitor Monitor.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Flow Monitor Monitor using the monitor name. For example:
///
/// ```sh
/// $ pulumi import aws:networkflowmonitor/monitor:Monitor example example-monitor
/// ```
class Monitor extends CustomResource {
  /// The local resources to monitor. A local resource in a workload is the location of the hosts where the Network Flow Monitor agent is installed.
  late final Output<List<MonitorLocalResource>> localResources;

  /// The Amazon Resource Name (ARN) of the monitor.
  late final Output<String> monitorArn;

  /// The name of the monitor. Cannot be changed after creation.
  late final Output<String> monitorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The remote resources to monitor. A remote resource is the other endpoint specified for the network flow of a workload, with a local resource.
  late final Output<List<MonitorRemoteResource>?> remoteResources;

  /// The Amazon Resource Name (ARN) of the scope for the monitor. Cannot be changed after creation.
  ///
  /// The following arguments are optional:
  late final Output<String> scopeArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<MonitorTimeouts?> timeouts;

  Monitor(
    String name, {
    MonitorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkflowmonitor/monitor:Monitor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.localResources =
        registerOutput<List<MonitorLocalResource>>('localResources');
    this.monitorArn = registerOutput<String>('monitorArn');
    this.monitorName = registerOutput<String>('monitorName');
    this.region = registerOutput<String>('region');
    this.remoteResources =
        registerOutput<List<MonitorRemoteResource>?>('remoteResources');
    this.scopeArn = registerOutput<String>('scopeArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<MonitorTimeouts?>('timeouts');
  }
}
