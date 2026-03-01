// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_line.dart';

/// {@template pulumi_sls_index_index_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_sls_index_index_args_doc}
class IndexArgs {
  /// Field index
  final pulumi.Input<String>? keys;
  /// Full-text index See `line` below.
  final pulumi.Input<IndexLine>? line;
  /// Whether log clustering is enabled
  final pulumi.Input<bool>? logReduce;
  /// The blacklist of the cluster fields of log clustering is filtered only when log clustering is enabled.
  final pulumi.Input<List<String>>? logReduceBlackLists;
  /// The whitelist of the cluster fields for log clustering. This filter is valid only when log clustering is enabled.
  final pulumi.Input<List<String>>? logReduceWhiteLists;
  /// Logstore name
  final pulumi.Input<String> logstoreName;
  /// Maximum length of statistical field
  final pulumi.Input<int>? maxTextLen;
  /// Project name
  final pulumi.Input<String> projectName;

  /// Creates a new [IndexArgs].
  /// [keys] Field index
  /// [line] Full-text index See `line` below.
  /// [logReduce] Whether log clustering is enabled
  /// [logReduceBlackLists] The blacklist of the cluster fields of log clustering is filtered only when log clustering is enabled.
  /// [logReduceWhiteLists] The whitelist of the cluster fields for log clustering. This filter is valid only when log clustering is enabled.
  /// [logstoreName] Logstore name
  /// [maxTextLen] Maximum length of statistical field
  /// [projectName] Project name
  IndexArgs({
    pulumi.Output<String>? keys,
    pulumi.Output<IndexLine>? line,
    pulumi.Output<bool>? logReduce,
    pulumi.Output<List<String>>? logReduceBlackLists,
    pulumi.Output<List<String>>? logReduceWhiteLists,
    required pulumi.Output<String> logstoreName,
    pulumi.Output<int>? maxTextLen,
    required pulumi.Output<String> projectName,
  }) :
      keys = pulumi.Input.asOptionalInput<String>(keys),
      line = pulumi.Input.asOptionalInput<IndexLine>(line),
      logReduce = pulumi.Input.asOptionalInput<bool>(logReduce),
      logReduceBlackLists = pulumi.Input.asOptionalInput<List<String>>(logReduceBlackLists),
      logReduceWhiteLists = pulumi.Input.asOptionalInput<List<String>>(logReduceWhiteLists),
      logstoreName = pulumi.Input.asInput<String>(logstoreName),
      maxTextLen = pulumi.Input.asOptionalInput<int>(maxTextLen),
      projectName = pulumi.Input.asInput<String>(projectName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
      'line': ?pulumi.Input.mapOptionalInputValue<IndexLine, Map<String, dynamic>>(line, (value) => value.toMap()),
      'logReduce': ?logReduce,
      'logReduceBlackLists': ?logReduceBlackLists,
      'logReduceWhiteLists': ?logReduceWhiteLists,
      'logstoreName': logstoreName,
      'maxTextLen': ?maxTextLen,
      'projectName': projectName,
    };
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      keys: map['keys'] == null ? null : pulumi.Output.create<String>(map['keys'] as String),
      line: map['line'] == null ? null : pulumi.Output.create<IndexLine>(IndexLine.fromMap((map['line'] as Map).cast<String, dynamic>())),
      logReduce: map['logReduce'] == null ? null : pulumi.Output.create<bool>(map['logReduce'] as bool),
      logReduceBlackLists: map['logReduceBlackLists'] == null ? null : pulumi.Output.create<List<String>>((map['logReduceBlackLists'] as List).cast<String>()),
      logReduceWhiteLists: map['logReduceWhiteLists'] == null ? null : pulumi.Output.create<List<String>>((map['logReduceWhiteLists'] as List).cast<String>()),
      logstoreName: pulumi.Output.create<String>(map['logstoreName'] as String),
      maxTextLen: map['maxTextLen'] == null ? null : pulumi.Output.create<int>(map['maxTextLen'] as int),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
    );
  }
}

