// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_response.dart';

/// Definition of ArchiveRule
class ArchiveRuleResponse {
  /// Property filter
  final pulumi.Input<List<FilterResponse>>? filter;
  /// The archive rule name
  final pulumi.Input<String>? ruleName;

  /// Creates a new [ArchiveRuleResponse].
  /// [filter] Property filter
  /// [ruleName] The archive rule name
  ArchiveRuleResponse({
    this.filter,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<List<FilterResponse>, List<Map<String, dynamic>>>(filter, (value) => pulumi.Input.encodeList<FilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleName': ?ruleName,
    };
  }

  factory ArchiveRuleResponse.fromMap(Map<String, dynamic> map) {
    return ArchiveRuleResponse(
      filter: map['filter'] == null ? null : (pulumi.Input.decodeList<FilterResponse>(map['filter'], (value) => FilterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
    );
  }
}

