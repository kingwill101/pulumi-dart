// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rule_response.dart';

/// Sets the CORS rules. You can include up to five CorsRule elements in the request.
class CorsRulesResponse {
  /// The list of CORS rules. You can include up to five CorsRule elements in the request.
  final List<CorsRuleResponse>? corsRules;

  /// Creates a new [CorsRulesResponse].
  /// [corsRules] The list of CORS rules. You can include up to five CorsRule elements in the request.
  CorsRulesResponse({
    this.corsRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules': ?corsRules == null ? null : pulumi.Input.encodeList<CorsRuleResponse, Map<String, dynamic>>(corsRules!, (value) => value.toMap()),
    };
  }

  factory CorsRulesResponse.fromMap(Map<String, dynamic> map) {
    return CorsRulesResponse(
      corsRules: map['corsRules'] == null ? null : pulumi.Input.decodeList<CorsRuleResponse>(map['corsRules'], (value) => CorsRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

