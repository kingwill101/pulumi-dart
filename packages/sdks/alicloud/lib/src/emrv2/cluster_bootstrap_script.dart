// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_bootstrap_script_node_selector.dart';

class ClusterBootstrapScript {
  /// The bootstrap scripts execution fail strategy, ’FAILED_BLOCK’ or ‘FAILED_CONTINUE’ .
  final String executionFailStrategy;
  /// The bootstrap scripts execution moment, ’BEFORE_INSTALL’, ‘AFTER_STARTED’ or ‘BEFORE_START’. The execution moment of BEFORE_START is available since v1.243.0.
  final String executionMoment;
  /// The bootstrap scripts execution target. See `node_selector` below.
  final ClusterBootstrapScriptNodeSelector nodeSelector;
  /// The bootstrap scripts priority.
  final int? priority;
  /// The bootstrap script args, e.g. "--a=b".
  final String scriptArgs;
  /// The bootstrap script name.
  final String scriptName;
  /// The bootstrap script path, e.g. "oss://bucket/path".
  final String scriptPath;

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
      'nodeSelector': nodeSelector.toMap(),
      'priority': ?priority,
      'scriptArgs': scriptArgs,
      'scriptName': scriptName,
      'scriptPath': scriptPath,
    };
  }

  factory ClusterBootstrapScript.fromMap(Map<String, dynamic> map) {
    return ClusterBootstrapScript(
      executionFailStrategy: map['executionFailStrategy'] as String,
      executionMoment: map['executionMoment'] as String,
      nodeSelector: ClusterBootstrapScriptNodeSelector.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>()),
      priority: map['priority'] == null ? null : map['priority'] as int,
      scriptArgs: map['scriptArgs'] as String,
      scriptName: map['scriptName'] as String,
      scriptPath: map['scriptPath'] as String,
    );
  }
}

