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
    this.keys,
    this.line,
    this.logReduce,
    this.logReduceBlackLists,
    this.logReduceWhiteLists,
    this.logstoreName,
    this.maxTextLen,
    this.projectName,
  });

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
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      line: (() { final guardedValue = map['line']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexLine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logReduce: (() { final guardedValue = map['logReduce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logReduceBlackLists: (() { final guardedValue = map['logReduceBlackLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logReduceWhiteLists: (() { final guardedValue = map['logReduceWhiteLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logstoreName: (() { final guardedValue = map['logstoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTextLen: (() { final guardedValue = map['maxTextLen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

