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
  GetMonitorGroupInstancesArgs({
    required pulumi.Output<String> ids,
    pulumi.Output<String>? keyword,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asInput<String>(ids),
      keyword = pulumi.Input.asOptionalInput<String>(keyword),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ids,
      'keyword': ?keyword,
      'outputFile': ?outputFile,
    };
  }

  factory GetMonitorGroupInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitorGroupInstancesArgs(
      ids: pulumi.Output.create<String>(map['ids'] as String),
      keyword: map['keyword'] == null ? null : pulumi.Output.create<String>(map['keyword'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

