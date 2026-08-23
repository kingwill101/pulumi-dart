// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter.dart';

/// Definition of ArchiveRule
class ArchiveRule {
  /// Property filter
  final pulumi.Input<List<Filter>>? filter;
  /// The archive rule name
  final pulumi.Input<String>? ruleName;

  /// Creates a new [ArchiveRule].
  /// [filter] Property filter
  /// [ruleName] The archive rule name
  const ArchiveRule({
    this.filter,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<List<Filter>, List<Map<String, dynamic>>>(filter, (value) => pulumi.Input.encodeList<Filter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleName': ?ruleName,
    };
  }

  factory ArchiveRule.fromMap(Map<String, dynamic> map) {
    return ArchiveRule(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Filter>(guardedValue, (value) => Filter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
