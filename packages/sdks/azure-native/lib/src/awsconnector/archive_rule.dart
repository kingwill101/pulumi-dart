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
  ArchiveRule({
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
      filter: map['filter'] == null ? null : (pulumi.Input.decodeList<Filter>(map['filter'], (value) => Filter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
    );
  }
}

