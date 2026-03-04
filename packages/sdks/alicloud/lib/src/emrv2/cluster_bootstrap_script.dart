// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_bootstrap_script_node_selector.dart';

class ClusterBootstrapScript {
  /// The bootstrap scripts execution fail strategy, ’FAILED_BLOCK’ or ‘FAILED_CONTINUE’ .
  final pulumi.Input<String> executionFailStrategy;

  /// The bootstrap scripts execution moment, ’BEFORE_INSTALL’, ‘AFTER_STARTED’ or ‘BEFORE_START’. The execution moment of BEFORE_START is available since v1.243.0.
  final pulumi.Input<String> executionMoment;

  /// The bootstrap scripts execution target. See `node_selector` below.
  final pulumi.Input<ClusterBootstrapScriptNodeSelector> nodeSelector;

  /// The bootstrap scripts priority.
  final pulumi.Input<int>? priority;

  /// The bootstrap script args, e.g. "--a=b".
  final pulumi.Input<String> scriptArgs;

  /// The bootstrap script name.
  final pulumi.Input<String> scriptName;

  /// The bootstrap script path, e.g. "oss://bucket/path".
  final pulumi.Input<String> scriptPath;

  /// Creates a new [ClusterBootstrapScript].
  /// [executionFailStrategy] The bootstrap scripts execution fail strategy, ’FAILED_BLOCK’ or ‘FAILED_CONTINUE’ .
  /// [executionMoment] The bootstrap scripts execution moment, ’BEFORE_INSTALL’, ‘AFTER_STARTED’ or ‘BEFORE_START’. The execution moment of BEFORE_START is available since v1.243.0.
  /// [nodeSelector] The bootstrap scripts execution target. See `node_selector` below.
  /// [priority] The bootstrap scripts priority.
  /// [scriptArgs] The bootstrap script args, e.g. "--a=b".
  /// [scriptName] The bootstrap script name.
  /// [scriptPath] The bootstrap script path, e.g. "oss://bucket/path".
  ClusterBootstrapScript({
    required this.executionFailStrategy,
    required this.executionMoment,
    required this.nodeSelector,
    this.priority,
    required this.scriptArgs,
    required this.scriptName,
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionFailStrategy': executionFailStrategy,
      'executionMoment': executionMoment,
      'nodeSelector':
          pulumi.Input.mapInputValue<
            ClusterBootstrapScriptNodeSelector,
            Map<String, dynamic>
          >(nodeSelector, (value) => value.toMap()),
      'priority': ?priority,
      'scriptArgs': scriptArgs,
      'scriptName': scriptName,
      'scriptPath': scriptPath,
    };
  }

  factory ClusterBootstrapScript.fromMap(Map<String, dynamic> map) {
    return ClusterBootstrapScript(
      executionFailStrategy: pulumi.Input.fromValue(
        map['executionFailStrategy'] as String,
      ),
      executionMoment: pulumi.Input.fromValue(map['executionMoment'] as String),
      nodeSelector: pulumi.Input.fromValue(
        ClusterBootstrapScriptNodeSelector.fromMap(
          (map['nodeSelector']! as Map).cast<String, dynamic>(),
        ),
      ),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scriptArgs: pulumi.Input.fromValue(map['scriptArgs'] as String),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
      scriptPath: pulumi.Input.fromValue(map['scriptPath'] as String),
    );
  }
}
