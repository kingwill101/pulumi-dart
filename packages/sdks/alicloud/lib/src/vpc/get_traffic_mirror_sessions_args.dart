// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_traffic_mirror_sessions_get_traffic_mirror_sessions_args_doc}
/// Arguments for getTrafficMirrorSessions.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_traffic_mirror_sessions_get_traffic_mirror_sessions_args_doc}
class GetTrafficMirrorSessionsArgs {
  /// Specifies whether to enable traffic mirror sessions. default to `false`.
  final pulumi.Input<bool>? enabled;

  /// A list of Traffic Mirror Session IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Traffic Mirror Session name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The priority of the traffic mirror session. Valid values: `1` to `32766`. A smaller value indicates a higher priority. You cannot specify the same priority for traffic mirror sessions that are created in the same region with the same Alibaba Cloud account.
  final pulumi.Input<int>? priority;

  /// The state of the traffic mirror session. Valid values: `Creating`, `Created`, `Modifying` and `Deleting`.
  final pulumi.Input<String>? status;

  /// The ID of the filter.
  final pulumi.Input<String>? trafficMirrorFilterId;

  /// The name of the traffic mirror session. The name must be `2` to `128` characters in length and can contain digits, underscores (_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? trafficMirrorSessionName;

  /// The ID of the mirror source. You can specify only an elastic network interface (ENI) as the mirror source.
  final pulumi.Input<String>? trafficMirrorSourceId;

  /// The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  final pulumi.Input<String>? trafficMirrorTargetId;

  /// Creates a new [GetTrafficMirrorSessionsArgs].
  /// [enabled] Specifies whether to enable traffic mirror sessions. default to `false`.
  /// [ids] A list of Traffic Mirror Session IDs.
  /// [nameRegex] A regex string to filter results by Traffic Mirror Session name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [priority] The priority of the traffic mirror session. Valid values: `1` to `32766`. A smaller value indicates a higher priority. You cannot specify the same priority for traffic mirror sessions that are created in the same region with the same Alibaba Cloud account.
  /// [status] The state of the traffic mirror session. Valid values: `Creating`, `Created`, `Modifying` and `Deleting`.
  /// [trafficMirrorFilterId] The ID of the filter.
  /// [trafficMirrorSessionName] The name of the traffic mirror session. The name must be `2` to `128` characters in length and can contain digits, underscores (_), and hyphens (-). It must start with a letter.
  /// [trafficMirrorSourceId] The ID of the mirror source. You can specify only an elastic network interface (ENI) as the mirror source.
  /// [trafficMirrorTargetId] The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  GetTrafficMirrorSessionsArgs({
    this.enabled,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.priority,
    this.status,
    this.trafficMirrorFilterId,
    this.trafficMirrorSessionName,
    this.trafficMirrorSourceId,
    this.trafficMirrorTargetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'priority': ?priority,
      'status': ?status,
      'trafficMirrorFilterId': ?trafficMirrorFilterId,
      'trafficMirrorSessionName': ?trafficMirrorSessionName,
      'trafficMirrorSourceId': ?trafficMirrorSourceId,
      'trafficMirrorTargetId': ?trafficMirrorTargetId,
    };
  }

  factory GetTrafficMirrorSessionsArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorSessionsArgs(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficMirrorFilterId: (() {
        final guardedValue = map['trafficMirrorFilterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficMirrorSessionName: (() {
        final guardedValue = map['trafficMirrorSessionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficMirrorSourceId: (() {
        final guardedValue = map['trafficMirrorSourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficMirrorTargetId: (() {
        final guardedValue = map['trafficMirrorTargetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
