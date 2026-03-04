// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response.dart';

/// The rule criteria that defines the conditions of the scheduled query rule.
class ScheduledQueryRuleCriteriaResponse {
  /// A list of conditions to evaluate against the specified scopes
  final pulumi.Input<List<ConditionResponse>>? allOf;

  /// Creates a new [ScheduledQueryRuleCriteriaResponse].
  /// [allOf] A list of conditions to evaluate against the specified scopes
  ScheduledQueryRuleCriteriaResponse({this.allOf});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConditionResponse>,
            List<Map<String, dynamic>>
          >(
            allOf,
            (value) =>
                pulumi.Input.encodeList<
                  ConditionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ScheduledQueryRuleCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRuleCriteriaResponse(
      allOf: (() {
        final guardedValue = map['allOf'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConditionResponse>(
            guardedValue,
            (value) => ConditionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
