// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_hybrid_monitor_fc_tasks_get_hybrid_monitor_fc_tasks_args_doc}
/// Arguments for getHybridMonitorFcTasks.
/// {@endtemplate}
/// {@macro pulumi_cms_get_hybrid_monitor_fc_tasks_get_hybrid_monitor_fc_tasks_args_doc}
class GetHybridMonitorFcTasksArgs {
  /// A list of Hybrid Monitor Fc Task IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the namespace.
  final pulumi.Input<String>? namespace;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetHybridMonitorFcTasksArgs].
  /// [ids] A list of Hybrid Monitor Fc Task IDs.
  /// [namespace] The name of the namespace.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetHybridMonitorFcTasksArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetHybridMonitorFcTasksArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorFcTasksArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
    );
  }
}

