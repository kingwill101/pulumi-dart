// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_get_monitor_get_monitor_args_doc}
/// Arguments for getMonitor.
/// {@endtemplate}
/// {@macro pulumi_ltm_get_monitor_get_monitor_args_doc}
class GetMonitorArgs {
  /// Name of the ltm monitor
  final pulumi.Input<String> name;
  /// partition of the ltm monitor
  final pulumi.Input<String> partition;

  /// Creates a new [GetMonitorArgs].
  /// [name] Name of the ltm monitor
  /// [partition] partition of the ltm monitor
  GetMonitorArgs({
    required String name,
    required String partition,
  }) :
      name = pulumi.Input.asInput<String>(name),
      partition = pulumi.Input.asInput<String>(partition);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'partition': partition,
    };
  }

  factory GetMonitorArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitorArgs(
      name: map['name'] as String,
      partition: map['partition'] as String,
    );
  }
}

