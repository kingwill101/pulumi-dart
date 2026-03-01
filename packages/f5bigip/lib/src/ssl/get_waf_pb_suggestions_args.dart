// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssl_get_waf_pb_suggestions_get_waf_pb_suggestions_args_doc}
/// Arguments for getWafPbSuggestions.
/// {@endtemplate}
/// {@macro pulumi_ssl_get_waf_pb_suggestions_get_waf_pb_suggestions_args_doc}
class GetWafPbSuggestionsArgs {
  /// The minimum learning score for suggestions.
  final pulumi.Input<int> minimumLearningScore;
  /// Partition on which WAF policy is located.
  final pulumi.Input<String> partition;
  /// System generated id of the WAF policy
  final pulumi.Input<String>? policyId;
  /// WAF policy name from which PB suggestions should be exported.
  final pulumi.Input<String> policyName;

  /// Creates a new [GetWafPbSuggestionsArgs].
  /// [minimumLearningScore] The minimum learning score for suggestions.
  /// [partition] Partition on which WAF policy is located.
  /// [policyId] System generated id of the WAF policy
  /// [policyName] WAF policy name from which PB suggestions should be exported.
  GetWafPbSuggestionsArgs({
    required int minimumLearningScore,
    required String partition,
    String? policyId,
    required String policyName,
  }) :
      minimumLearningScore = pulumi.Input.asInput<int>(minimumLearningScore),
      partition = pulumi.Input.asInput<String>(partition),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      policyName = pulumi.Input.asInput<String>(policyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumLearningScore': minimumLearningScore,
      'partition': partition,
      'policyId': ?policyId,
      'policyName': policyName,
    };
  }

  factory GetWafPbSuggestionsArgs.fromMap(Map<String, dynamic> map) {
    return GetWafPbSuggestionsArgs(
      minimumLearningScore: map['minimumLearningScore'] as int,
      partition: map['partition'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      policyName: map['policyName'] as String,
    );
  }
}

