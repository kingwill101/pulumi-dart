// ignore_for_file: unused_element, unnecessary_cast

import 'get_indexs_index_line.dart';

class GetIndexsIndex {
  /// The ID of the resource supplied above.
  final String id;
  /// Field index
  final String keys;
  /// Full-text index
  final GetIndexsIndexLine line;
  /// The blacklist of the cluster fields of log clustering is filtered only when log clustering is enabled.
  final List<String> logReduceBlackLists;
  /// The whitelist of the cluster fields for log clustering. This filter is valid only when log clustering is enabled.
  final List<String> logReduceWhiteLists;
  /// Maximum length of statistical field
  final int maxTextLen;
  /// Log index storage time
  final int ttl;

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
      'line': line.toMap(),
      'logReduceBlackLists': logReduceBlackLists,
      'logReduceWhiteLists': logReduceWhiteLists,
      'maxTextLen': maxTextLen,
      'ttl': ttl,
    };
  }

  factory GetIndexsIndex.fromMap(Map<String, dynamic> map) {
    return GetIndexsIndex(
      id: map['id'] as String,
      keys: map['keys'] as String,
      line: GetIndexsIndexLine.fromMap((map['line'] as Map).cast<String, dynamic>()),
      logReduceBlackLists: (map['logReduceBlackLists'] as List).cast<String>(),
      logReduceWhiteLists: (map['logReduceWhiteLists'] as List).cast<String>(),
      maxTextLen: map['maxTextLen'] as int,
      ttl: map['ttl'] as int,
    );
  }
}

