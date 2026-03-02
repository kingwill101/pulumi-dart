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
  ClusterBootstrapAction({
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
      arg: map['arg'] == null ? null : (map['arg'] as String).input(),
      executionFailStrategy: map['executionFailStrategy'] == null ? null : (map['executionFailStrategy'] as String).input(),
      executionMoment: map['executionMoment'] == null ? null : (map['executionMoment'] as String).input(),
      executionTarget: map['executionTarget'] == null ? null : (map['executionTarget'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
    );
  }
}

