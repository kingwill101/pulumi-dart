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
      'nodeSelector': pulumi.Input.mapInputValue<ClusterBootstrapScriptNodeSelector, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
      'priority': ?priority,
      'scriptArgs': scriptArgs,
      'scriptName': scriptName,
      'scriptPath': scriptPath,
    };
  }

  factory ClusterBootstrapScript.fromMap(Map<String, dynamic> map) {
    return ClusterBootstrapScript(
      executionFailStrategy: (map['executionFailStrategy'] as String).input(),
      executionMoment: (map['executionMoment'] as String).input(),
      nodeSelector: (ClusterBootstrapScriptNodeSelector.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>())).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      scriptArgs: (map['scriptArgs'] as String).input(),
      scriptName: (map['scriptName'] as String).input(),
      scriptPath: (map['scriptPath'] as String).input(),
    );
  }
}

