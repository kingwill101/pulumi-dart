// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hybrid_monitor_sls_tasks_task.dart';

/// Result data returned by getHybridMonitorSlsTasks.
class GetHybridMonitorSlsTasksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyword;
  final String? namespace;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final List<GetHybridMonitorSlsTasksTask> tasks;

  /// Creates a new [GetHybridMonitorSlsTasksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyword] Optional.
  /// [namespace] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [tasks] Required.
  GetHybridMonitorSlsTasksResult({
    required this.id,
    required this.ids,
    this.keyword,
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
      'keyword': ?keyword,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'tasks': pulumi.Input.encodeList<GetHybridMonitorSlsTasksTask, Map<String, dynamic>>(tasks, (value) => value.toMap()),
    };
  }

  factory GetHybridMonitorSlsTasksResult.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: map['keyword'] == null ? null : map['keyword']! as String,
      namespace: map['namespace'] == null ? null : map['namespace']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      tasks: pulumi.Input.decodeList<GetHybridMonitorSlsTasksTask>(map['tasks'], (value) => GetHybridMonitorSlsTasksTask.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

