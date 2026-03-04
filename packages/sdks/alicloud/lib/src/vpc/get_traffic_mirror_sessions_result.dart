// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_traffic_mirror_sessions_session.dart';

/// Result data returned by getTrafficMirrorSessions.
class GetTrafficMirrorSessionsResult {
  final bool? enabled;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? priority;
  final List<GetTrafficMirrorSessionsSession> sessions;
  final String? status;
  final String? trafficMirrorFilterId;
  final String? trafficMirrorSessionName;
  final String? trafficMirrorSourceId;
  final String? trafficMirrorTargetId;

  /// Creates a new [GetTrafficMirrorSessionsResult].
  /// [enabled] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [priority] Optional.
  /// [sessions] Required.
  /// [status] Optional.
  /// [trafficMirrorFilterId] Optional.
  /// [trafficMirrorSessionName] Optional.
  /// [trafficMirrorSourceId] Optional.
  /// [trafficMirrorTargetId] Optional.
  GetTrafficMirrorSessionsResult({
    this.enabled,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.priority,
    required this.sessions,
    this.status,
    this.trafficMirrorFilterId,
    this.trafficMirrorSessionName,
    this.trafficMirrorSourceId,
    this.trafficMirrorTargetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'priority': ?priority,
      'sessions':
          pulumi.Input.encodeList<
            GetTrafficMirrorSessionsSession,
            Map<String, dynamic>
          >(sessions, (value) => value.toMap()),
      'status': ?status,
      'trafficMirrorFilterId': ?trafficMirrorFilterId,
      'trafficMirrorSessionName': ?trafficMirrorSessionName,
      'trafficMirrorSourceId': ?trafficMirrorSourceId,
      'trafficMirrorTargetId': ?trafficMirrorTargetId,
    };
  }

  factory GetTrafficMirrorSessionsResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorSessionsResult(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      sessions: pulumi.Input.decodeList<GetTrafficMirrorSessionsSession>(
        map['sessions']!,
        (value) => GetTrafficMirrorSessionsSession.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      trafficMirrorFilterId: (() {
        final guardedValue = map['trafficMirrorFilterId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      trafficMirrorSessionName: (() {
        final guardedValue = map['trafficMirrorSessionName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      trafficMirrorSourceId: (() {
        final guardedValue = map['trafficMirrorSourceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      trafficMirrorTargetId: (() {
        final guardedValue = map['trafficMirrorTargetId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
