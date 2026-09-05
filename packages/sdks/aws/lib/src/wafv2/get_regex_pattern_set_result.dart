// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regex_pattern_set_regular_expression.dart';

/// Result data returned by getRegexPatternSet.
class GetRegexPatternSetResult {
  /// ARN of the entity.
  final String? arn;
  /// Description of the set that helps with identification.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// One or more blocks of regular expression patterns that AWS WAF is searching for. See Regular Expression below for details.
  final List<GetRegexPatternSetRegularExpression>? regularExpressions;
  final String? scope;

  /// Creates a new [GetRegexPatternSetResult].
  /// [arn] ARN of the entity.
  /// [description] Description of the set that helps with identification.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [regularExpressions] One or more blocks of regular expression patterns that AWS WAF is searching for. See Regular Expression below for details.
  /// [scope] Optional.
  const GetRegexPatternSetResult({
    this.arn,
    this.description,
    this.id,
    this.name,
    this.region,
    this.regularExpressions,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'regularExpressions': ?(() { final guardedValue = regularExpressions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegexPatternSetRegularExpression, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
    };
  }

  factory GetRegexPatternSetResult.fromMap(Map<String, dynamic> map) {
    return GetRegexPatternSetResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regularExpressions: (() { final guardedValue = map['regularExpressions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegexPatternSetRegularExpression>(guardedValue, (value) => GetRegexPatternSetRegularExpression.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
