// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_local_resource.dart';
import 'monitor_remote_resource.dart';
import 'monitor_timeouts.dart';

/// {@template pulumi_networkflowmonitor_monitor_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_networkflowmonitor_monitor_monitor_args_doc}
class MonitorArgs {
  /// The local resources to monitor. A local resource in a workload is the location of the hosts where the Network Flow Monitor agent is installed.
  final pulumi.Input<List<MonitorLocalResource>> localResources;
  /// The name of the monitor. Cannot be changed after creation.
  final pulumi.Input<String> monitorName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The remote resources to monitor. A remote resource is the other endpoint specified for the network flow of a workload, with a local resource.
  final pulumi.Input<List<MonitorRemoteResource>>? remoteResources;
  /// The Amazon Resource Name (ARN) of the scope for the monitor. Cannot be changed after creation.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> scopeArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<MonitorTimeouts>? timeouts;

  /// Creates a new [MonitorArgs].
  /// [localResources] The local resources to monitor. A local resource in a workload is the location of the hosts where the Network Flow Monitor agent is installed.
  /// [monitorName] The name of the monitor. Cannot be changed after creation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteResources] The remote resources to monitor. A remote resource is the other endpoint specified for the network flow of a workload, with a local resource.
  /// [scopeArn] The Amazon Resource Name (ARN) of the scope for the monitor. Cannot be changed after creation.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  MonitorArgs({
    required pulumi.Output<List<MonitorLocalResource>> localResources,
    required pulumi.Output<String> monitorName,
    pulumi.Output<String>? region,
    pulumi.Output<List<MonitorRemoteResource>>? remoteResources,
    required pulumi.Output<String> scopeArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<MonitorTimeouts>? timeouts,
  }) :
      localResources = pulumi.Input.asInput<List<MonitorLocalResource>>(localResources),
      monitorName = pulumi.Input.asInput<String>(monitorName),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteResources = pulumi.Input.asOptionalInput<List<MonitorRemoteResource>>(remoteResources),
      scopeArn = pulumi.Input.asInput<String>(scopeArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<MonitorTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localResources': pulumi.Input.mapInputValue<List<MonitorLocalResource>, List<Map<String, dynamic>>>(localResources, (value) => pulumi.Input.encodeList<MonitorLocalResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monitorName': monitorName,
      'region': ?region,
      'remoteResources': ?pulumi.Input.mapOptionalInputValue<List<MonitorRemoteResource>, List<Map<String, dynamic>>>(remoteResources, (value) => pulumi.Input.encodeList<MonitorRemoteResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopeArn': scopeArn,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MonitorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      localResources: pulumi.Output.create<List<MonitorLocalResource>>(pulumi.Input.decodeList<MonitorLocalResource>(map['localResources'], (value) => MonitorLocalResource.fromMap((value as Map).cast<String, dynamic>()))),
      monitorName: pulumi.Output.create<String>(map['monitorName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      remoteResources: map['remoteResources'] == null ? null : pulumi.Output.create<List<MonitorRemoteResource>>(pulumi.Input.decodeList<MonitorRemoteResource>(map['remoteResources'], (value) => MonitorRemoteResource.fromMap((value as Map).cast<String, dynamic>()))),
      scopeArn: pulumi.Output.create<String>(map['scopeArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<MonitorTimeouts>(MonitorTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

