// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../monitor_local_resource/monitor_local_resource.dart';
import '../monitor_remote_resource/monitor_remote_resource.dart';
import '../monitor_timeouts/monitor_timeouts.dart';

/// The set of arguments for Monitor.
class MonitorArgs {
  /// The local resources to monitor. A local resource in a workload is the location of the hosts where the Network Flow Monitor agent is installed.
  final Input<List<MonitorLocalResource>> localResources;

  /// The name of the monitor. Cannot be changed after creation.
  final Input<String> monitorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The remote resources to monitor. A remote resource is the other endpoint specified for the network flow of a workload, with a local resource.
  final Input<List<MonitorRemoteResource>>? remoteResources;

  /// The Amazon Resource Name (ARN) of the scope for the monitor. Cannot be changed after creation.
  ///
  /// The following arguments are optional:
  final Input<String> scopeArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<MonitorTimeouts>? timeouts;

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
    map['localResources'] = Input.mapInputValue<List<MonitorLocalResource>,
            List<Map<String, dynamic>>>(
        localResources,
        (value) => Input.encodeList<MonitorLocalResource, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    map['monitorName'] = monitorName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final remoteResourcesValue = remoteResources;
    if (remoteResourcesValue != null) {
      map['remoteResources'] = Input.mapOptionalInputValue<
              List<MonitorRemoteResource>, List<Map<String, dynamic>>>(
          remoteResourcesValue,
          (value) =>
              Input.encodeList<MonitorRemoteResource, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['scopeArn'] = scopeArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<MonitorTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      localResources:
          Input.asInput<List<MonitorLocalResource>>(map['localResources']),
      monitorName: Input.asInput<String>(map['monitorName']),
      region: Input.asOptionalInput<String>(map['region']),
      remoteResources: Input.asOptionalInput<List<MonitorRemoteResource>>(
          map['remoteResources']),
      scopeArn: Input.asInput<String>(map['scopeArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<MonitorTimeouts>(map['timeouts']),
    );
  }
}
