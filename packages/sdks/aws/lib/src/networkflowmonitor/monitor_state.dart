// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_local_resource.dart';
import 'monitor_remote_resource.dart';
import 'monitor_timeouts.dart';

/// Input properties used for looking up and filtering Monitor resources.
class MonitorState {
  /// The local resources to monitor. A local resource in a workload is the location of the hosts where the Network Flow Monitor agent is installed.
  final pulumi.Input<List<MonitorLocalResource>>? localResources;

  /// The Amazon Resource Name (ARN) of the monitor.
  final pulumi.Input<String>? monitorArn;

  /// The name of the monitor. Cannot be changed after creation.
  final pulumi.Input<String>? monitorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The remote resources to monitor. A remote resource is the other endpoint specified for the network flow of a workload, with a local resource.
  final pulumi.Input<List<MonitorRemoteResource>>? remoteResources;

  /// The Amazon Resource Name (ARN) of the scope for the monitor. Cannot be changed after creation.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? scopeArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<MonitorTimeouts>? timeouts;

  /// Creates a new [MonitorState].
  /// [localResources] The local resources to monitor. A local resource in a workload is the location of the hosts where the Network Flow Monitor agent is installed.
  /// [monitorArn] The Amazon Resource Name (ARN) of the monitor.
  /// [monitorName] The name of the monitor. Cannot be changed after creation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteResources] The remote resources to monitor. A remote resource is the other endpoint specified for the network flow of a workload, with a local resource.
  /// [scopeArn] The Amazon Resource Name (ARN) of the scope for the monitor. Cannot be changed after creation.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  MonitorState({
    this.localResources,
    this.monitorArn,
    this.monitorName,
    this.region,
    this.remoteResources,
    this.scopeArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localResources':
          ?pulumi.Input.mapOptionalInputValue<
            List<MonitorLocalResource>,
            List<Map<String, dynamic>>
          >(
            localResources,
            (value) =>
                pulumi.Input.encodeList<
                  MonitorLocalResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'monitorArn': ?monitorArn,
      'monitorName': ?monitorName,
      'region': ?region,
      'remoteResources':
          ?pulumi.Input.mapOptionalInputValue<
            List<MonitorRemoteResource>,
            List<Map<String, dynamic>>
          >(
            remoteResources,
            (value) =>
                pulumi.Input.encodeList<
                  MonitorRemoteResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'scopeArn': ?scopeArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            MonitorTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory MonitorState.fromMap(Map<String, dynamic> map) {
    return MonitorState(
      localResources: (() {
        final guardedValue = map['localResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MonitorLocalResource>(
            guardedValue,
            (value) => MonitorLocalResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      monitorArn: (() {
        final guardedValue = map['monitorArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monitorName: (() {
        final guardedValue = map['monitorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remoteResources: (() {
        final guardedValue = map['remoteResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MonitorRemoteResource>(
            guardedValue,
            (value) => MonitorRemoteResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      scopeArn: (() {
        final guardedValue = map['scopeArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitorTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
