// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_site_monitors_monitor.dart';

/// Result data returned by getSiteMonitors.
class GetSiteMonitorsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Site Monitor IDs.
  final List<String> ids;

  /// A list of Site Monitor Entries. Each element contains the following attributes:
  final List<GetSiteMonitorsMonitor> monitors;
  final String? outputFile;

  /// Task Id.
  final String? taskId;

  /// Task Type.
  final String? taskType;

  /// Creates a new [GetSiteMonitorsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Site Monitor IDs.
  /// [monitors] A list of Site Monitor Entries. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [taskId] Task Id.
  /// [taskType] Task Type.
  GetSiteMonitorsResult({
    required this.id,
    required this.ids,
    required this.monitors,
    this.outputFile,
    this.taskId,
    this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'monitors':
          pulumi.Input.encodeList<GetSiteMonitorsMonitor, Map<String, dynamic>>(
            monitors,
            (value) => value.toMap(),
          ),
      'outputFile': ?outputFile,
      'taskId': ?taskId,
      'taskType': ?taskType,
    };
  }

  factory GetSiteMonitorsResult.fromMap(Map<String, dynamic> map) {
    return GetSiteMonitorsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      monitors: pulumi.Input.decodeList<GetSiteMonitorsMonitor>(
        map['monitors']!,
        (value) => GetSiteMonitorsMonitor.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      taskId: (() {
        final guardedValue = map['taskId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      taskType: (() {
        final guardedValue = map['taskType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
