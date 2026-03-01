// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_variable_response.dart';

/// Define match conditions.
class MatchConditionResponse {
  /// Match value.
  final List<String> matchValues;
  /// List of match variables.
  final List<MatchVariableResponse> matchVariables;
  /// Whether this is negate condition or not.
  final bool? negationConditon;
  /// The operator to be matched.
  final String operator;
  /// List of transforms.
  final List<String>? transforms;

  /// Creates a new [MatchConditionResponse].
  /// [matchValues] Match value.
  /// [matchVariables] List of match variables.
  /// [negationConditon] Whether this is negate condition or not.
  /// [operator] The operator to be matched.
  /// [transforms] List of transforms.
  MatchConditionResponse({
    required this.matchValues,
    required this.matchVariables,
    this.negationConditon,
    required this.operator,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': matchValues,
      'matchVariables': pulumi.Input.encodeList<MatchVariableResponse, Map<String, dynamic>>(matchVariables, (value) => value.toMap()),
      'negationConditon': ?negationConditon,
      'operator': operator,
      'transforms': ?transforms,
    };
  }

  factory MatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return MatchConditionResponse(
      matchValues: (map['matchValues'] as List).cast<String>(),
      matchVariables: pulumi.Input.decodeList<MatchVariableResponse>(map['matchVariables'], (value) => MatchVariableResponse.fromMap((value as Map).cast<String, dynamic>())),
      negationConditon: map['negationConditon'] == null ? null : map['negationConditon'] as bool,
      operator: map['operator'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
    );
  }
}

