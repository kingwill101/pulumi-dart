// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../monitor_local_resource/monitor_local_resource.dart';
import '../monitor_remote_resource/monitor_remote_resource.dart';
import '../monitor_timeouts/monitor_timeouts.dart';

/// The set of arguments for Monitor.
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

  MonitorArgs({
    required this.localResources,
    required this.monitorName,
    this.region,
    this.remoteResources,
    required this.scopeArn,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localResources'] = pulumi.Input.mapInputValue<
            List<MonitorLocalResource>, List<Map<String, dynamic>>>(
        localResources,
        (value) =>
            pulumi.Input.encodeList<MonitorLocalResource, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['monitorName'] = monitorName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final remoteResourcesValue = remoteResources;
    if (remoteResourcesValue != null) {
      map['remoteResources'] = pulumi.Input.mapOptionalInputValue<
              List<MonitorRemoteResource>, List<Map<String, dynamic>>>(
          remoteResourcesValue,
          (value) => pulumi.Input.encodeList<MonitorRemoteResource,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['scopeArn'] = scopeArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<MonitorTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      localResources: pulumi.Input.asInput<List<MonitorLocalResource>>(
          map['localResources']),
      monitorName: pulumi.Input.asInput<String>(map['monitorName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      remoteResources:
          pulumi.Input.asOptionalInput<List<MonitorRemoteResource>>(
              map['remoteResources']),
      scopeArn: pulumi.Input.asInput<String>(map['scopeArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<MonitorTimeouts>(map['timeouts']),
    );
  }
}
