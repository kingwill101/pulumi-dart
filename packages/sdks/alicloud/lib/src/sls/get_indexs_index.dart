// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_indexs_index_line.dart';

class GetIndexsIndex {
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// Field index
  final pulumi.Input<String> keys;
  /// Full-text index
  final pulumi.Input<GetIndexsIndexLine> line;
  /// The blacklist of the cluster fields of log clustering is filtered only when log clustering is enabled.
  final pulumi.Input<List<String>> logReduceBlackLists;
  /// The whitelist of the cluster fields for log clustering. This filter is valid only when log clustering is enabled.
  final pulumi.Input<List<String>> logReduceWhiteLists;
  /// Maximum length of statistical field
  final pulumi.Input<int> maxTextLen;
  /// Log index storage time
  final pulumi.Input<int> ttl;

  /// Creates a new [GetIndexsIndex].
  /// [id] The ID of the resource supplied above.
  /// [keys] Field index
  /// [line] Full-text index
  /// [logReduceBlackLists] The blacklist of the cluster fields of log clustering is filtered only when log clustering is enabled.
  /// [logReduceWhiteLists] The whitelist of the cluster fields for log clustering. This filter is valid only when log clustering is enabled.
  /// [maxTextLen] Maximum length of statistical field
  /// [ttl] Log index storage time
  GetIndexsIndex({
    required this.id,
    required this.keys,
    required this.line,
    required this.logReduceBlackLists,
    required this.logReduceWhiteLists,
    required this.maxTextLen,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keys': keys,
      'line': pulumi.Input.mapInputValue<GetIndexsIndexLine, Map<String, dynamic>>(line, (value) => value.toMap()),
      'logReduceBlackLists': logReduceBlackLists,
      'logReduceWhiteLists': logReduceWhiteLists,
      'maxTextLen': maxTextLen,
      'ttl': ttl,
    };
  }

  factory GetIndexsIndex.fromMap(Map<String, dynamic> map) {
    return GetIndexsIndex(
      id: (map['id'] as String).input(),
      keys: (map['keys'] as String).input(),
      line: (GetIndexsIndexLine.fromMap((map['line'] as Map).cast<String, dynamic>())).input(),
      logReduceBlackLists: ((map['logReduceBlackLists'] as List).cast<String>()).input(),
      logReduceWhiteLists: ((map['logReduceWhiteLists'] as List).cast<String>()).input(),
      maxTextLen: (map['maxTextLen'] as int).input(),
      ttl: (map['ttl'] as int).input(),
    );
  }
}

