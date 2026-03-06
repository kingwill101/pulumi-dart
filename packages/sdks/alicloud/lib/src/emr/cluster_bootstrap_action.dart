// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterBootstrapAction {
  /// bootstrap action args, e.g. "--a=b".
  final pulumi.Input<String>? arg;
  /// bootstrap action execution fail strategy, ’FAILED_BLOCKED’ or ‘FAILED_CONTINUE’ . Default value: "FAILED_BLOCKED
  final pulumi.Input<String>? executionFailStrategy;
  /// bootstrap action execution moment, ’BEFORE_INSTALL’ or ‘AFTER_STARTED’ . Default value: "BEFORE_INSTALL".
  final pulumi.Input<String>? executionMoment;
  /// bootstrap action execution target, you can specify the host group name, e.g. "core_group". If this is not specified, the bootstrap action execution target is whole cluster.
  final pulumi.Input<String>? executionTarget;
  /// The name of emr cluster. The name length must be less than 64. Supported characters: chinese character, english character, number, "-", "_".
  final pulumi.Input<String>? name;
  /// bootstrap action path, e.g. "oss://bucket/path".
  final pulumi.Input<String>? path;

  /// Creates a new [ClusterBootstrapAction].
  /// [arg] bootstrap action args, e.g. "--a=b".
  /// [executionFailStrategy] bootstrap action execution fail strategy, ’FAILED_BLOCKED’ or ‘FAILED_CONTINUE’ . Default value: "FAILED_BLOCKED
  /// [executionMoment] bootstrap action execution moment, ’BEFORE_INSTALL’ or ‘AFTER_STARTED’ . Default value: "BEFORE_INSTALL".
  /// [executionTarget] bootstrap action execution target, you can specify the host group name, e.g. "core_group". If this is not specified, the bootstrap action execution target is whole cluster.
  /// [name] The name of emr cluster. The name length must be less than 64. Supported characters: chinese character, english character, number, "-", "_".
  /// [path] bootstrap action path, e.g. "oss://bucket/path".
  const ClusterBootstrapAction({
    this.arg,
    this.executionFailStrategy,
    this.executionMoment,
    this.executionTarget,
    this.name,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arg': ?arg,
      'executionFailStrategy': ?executionFailStrategy,
      'executionMoment': ?executionMoment,
      'executionTarget': ?executionTarget,
      'name': ?name,
      'path': ?path,
    };
  }

  factory ClusterBootstrapAction.fromMap(Map<String, dynamic> map) {
    return ClusterBootstrapAction(
      arg: (() { final guardedValue = map['arg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionFailStrategy: (() { final guardedValue = map['executionFailStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionMoment: (() { final guardedValue = map['executionMoment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionTarget: (() { final guardedValue = map['executionTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

