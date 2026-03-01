// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_line.dart';

/// Input properties used for looking up and filtering Index resources.
class IndexState {
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
  final pulumi.Input<String>? logstoreName;
  /// Maximum length of statistical field
  final pulumi.Input<int>? maxTextLen;
  /// Project name
  final pulumi.Input<String>? projectName;

  /// Creates a new [IndexState].
  /// [keys] Field index
  /// [line] Full-text index See `line` below.
  /// [logReduce] Whether log clustering is enabled
  /// [logReduceBlackLists] The blacklist of the cluster fields of log clustering is filtered only when log clustering is enabled.
  /// [logReduceWhiteLists] The whitelist of the cluster fields for log clustering. This filter is valid only when log clustering is enabled.
  /// [logstoreName] Logstore name
  /// [maxTextLen] Maximum length of statistical field
  /// [projectName] Project name
  IndexState({
    pulumi.Output<String>? keys,
    pulumi.Output<IndexLine>? line,
    pulumi.Output<bool>? logReduce,
    pulumi.Output<List<String>>? logReduceBlackLists,
    pulumi.Output<List<String>>? logReduceWhiteLists,
    pulumi.Output<String>? logstoreName,
    pulumi.Output<int>? maxTextLen,
    pulumi.Output<String>? projectName,
  }) :
      keys = pulumi.Input.asOptionalInput<String>(keys),
      line = pulumi.Input.asOptionalInput<IndexLine>(line),
      logReduce = pulumi.Input.asOptionalInput<bool>(logReduce),
      logReduceBlackLists = pulumi.Input.asOptionalInput<List<String>>(logReduceBlackLists),
      logReduceWhiteLists = pulumi.Input.asOptionalInput<List<String>>(logReduceWhiteLists),
      logstoreName = pulumi.Input.asOptionalInput<String>(logstoreName),
      maxTextLen = pulumi.Input.asOptionalInput<int>(maxTextLen),
      projectName = pulumi.Input.asOptionalInput<String>(projectName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
      'line': ?pulumi.Input.mapOptionalInputValue<IndexLine, Map<String, dynamic>>(line, (value) => value.toMap()),
      'logReduce': ?logReduce,
      'logReduceBlackLists': ?logReduceBlackLists,
      'logReduceWhiteLists': ?logReduceWhiteLists,
      'logstoreName': ?logstoreName,
      'maxTextLen': ?maxTextLen,
      'projectName': ?projectName,
    };
  }

  factory IndexState.fromMap(Map<String, dynamic> map) {
    return IndexState(
      keys: map['keys'] == null ? null : pulumi.Output.create<String>(map['keys'] as String),
      line: map['line'] == null ? null : pulumi.Output.create<IndexLine>(IndexLine.fromMap((map['line'] as Map).cast<String, dynamic>())),
      logReduce: map['logReduce'] == null ? null : pulumi.Output.create<bool>(map['logReduce'] as bool),
      logReduceBlackLists: map['logReduceBlackLists'] == null ? null : pulumi.Output.create<List<String>>((map['logReduceBlackLists'] as List).cast<String>()),
      logReduceWhiteLists: map['logReduceWhiteLists'] == null ? null : pulumi.Output.create<List<String>>((map['logReduceWhiteLists'] as List).cast<String>()),
      logstoreName: map['logstoreName'] == null ? null : pulumi.Output.create<String>(map['logstoreName'] as String),
      maxTextLen: map['maxTextLen'] == null ? null : pulumi.Output.create<int>(map['maxTextLen'] as int),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
    );
  }
}

