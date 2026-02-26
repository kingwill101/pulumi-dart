// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_regex_pattern_set_regular_expression/get_regex_pattern_set_regular_expression.dart';

/// Result data returned by getRegexPatternSet.
class GetRegexPatternSetResult {
  /// ARN of the entity.
  final String arn;

  /// Description of the set that helps with identification.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// One or more blocks of regular expression patterns that AWS WAF is searching for. See Regular Expression below for details.
  final List<GetRegexPatternSetRegularExpression> regularExpressions;
  final String scope;

  GetRegexPatternSetResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.regularExpressions,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['regularExpressions'] = Input.encodeList<
        GetRegexPatternSetRegularExpression,
        Map<String, dynamic>>(regularExpressions, (value) => value.toMap());
    map['scope'] = scope;
    return map;
  }

  factory GetRegexPatternSetResult.fromMap(Map<String, dynamic> map) {
    return GetRegexPatternSetResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      regularExpressions: Input.decodeList<GetRegexPatternSetRegularExpression>(
          map['regularExpressions'],
          (value) => GetRegexPatternSetRegularExpression.fromMap(
              (value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
    );
  }
}
