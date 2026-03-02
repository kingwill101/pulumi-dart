// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hybrid_monitor_fc_tasks_task.dart';

/// Result data returned by getHybridMonitorFcTasks.
class GetHybridMonitorFcTasksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? namespace;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final List<GetHybridMonitorFcTasksTask> tasks;

  /// Creates a new [GetHybridMonitorFcTasksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [namespace] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [tasks] Required.
  GetHybridMonitorFcTasksResult({
    required this.id,
    required this.ids,
    this.namespace,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'tasks': pulumi.Input.encodeList<GetHybridMonitorFcTasksTask, Map<String, dynamic>>(tasks, (value) => value.toMap()),
    };
  }

  factory GetHybridMonitorFcTasksResult.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorFcTasksResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      namespace: map['namespace'] == null ? null : map['namespace']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      tasks: pulumi.Input.decodeList<GetHybridMonitorFcTasksTask>(map['tasks'], (value) => GetHybridMonitorFcTasksTask.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

