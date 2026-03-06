// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_monitor_group_instances_get_monitor_group_instances_args_doc}
/// Arguments for getMonitorGroupInstances.
/// {@endtemplate}
/// {@macro pulumi_cms_get_monitor_group_instances_get_monitor_group_instances_args_doc}
class GetMonitorGroupInstancesArgs {
  final pulumi.Input<String> ids;
  final pulumi.Input<String>? keyword;
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetMonitorGroupInstancesArgs].
  /// [ids] Required.
  /// [keyword] Optional.
  /// [outputFile] Optional.
  const GetMonitorGroupInstancesArgs({
    required this.ids,
    this.keyword,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ids,
      'keyword': ?keyword,
      'outputFile': ?outputFile,
    };
  }

  factory GetMonitorGroupInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitorGroupInstancesArgs(
      ids: pulumi.Input.fromValue(map['ids'] as String),
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

