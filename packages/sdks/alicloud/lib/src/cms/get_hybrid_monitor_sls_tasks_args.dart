// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_hybrid_monitor_sls_tasks_get_hybrid_monitor_sls_tasks_args_doc}
/// Arguments for getHybridMonitorSlsTasks.
/// {@endtemplate}
/// {@macro pulumi_cms_get_hybrid_monitor_sls_tasks_get_hybrid_monitor_sls_tasks_args_doc}
class GetHybridMonitorSlsTasksArgs {
  /// A list of Hybrid Monitor Sls Task IDs.
  final pulumi.Input<List<String>>? ids;
  /// The keyword that is used to search for metric import tasks.
  final pulumi.Input<String>? keyword;
  /// The name of the namespace.
  final pulumi.Input<String>? namespace;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetHybridMonitorSlsTasksArgs].
  /// [ids] A list of Hybrid Monitor Sls Task IDs.
  /// [keyword] The keyword that is used to search for metric import tasks.
  /// [namespace] The name of the namespace.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetHybridMonitorSlsTasksArgs({
    this.ids,
    this.keyword,
    this.namespace,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'keyword': ?keyword,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetHybridMonitorSlsTasksArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      keyword: map['keyword'] == null ? null : (map['keyword'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
    );
  }
}

