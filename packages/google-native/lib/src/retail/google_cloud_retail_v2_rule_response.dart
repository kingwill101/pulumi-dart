// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2_condition_response.dart';
import 'google_cloud_retail_v2_rule_boost_action_response.dart';
import 'google_cloud_retail_v2_rule_do_not_associate_action_response.dart';
import 'google_cloud_retail_v2_rule_filter_action_response.dart';
import 'google_cloud_retail_v2_rule_force_return_facet_action_response.dart';
import 'google_cloud_retail_v2_rule_ignore_action_response.dart';
import 'google_cloud_retail_v2_rule_oneway_synonyms_action_response.dart';
import 'google_cloud_retail_v2_rule_redirect_action_response.dart';
import 'google_cloud_retail_v2_rule_remove_facet_action_response.dart';
import 'google_cloud_retail_v2_rule_replacement_action_response.dart';
import 'google_cloud_retail_v2_rule_twoway_synonyms_action_response.dart';

/// A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2RuleResponse {
  /// A boost action.
  final GoogleCloudRetailV2RuleBoostActionResponse boostAction;

  /// The condition that triggers the rule. If the condition is empty, the rule will always apply.
  final GoogleCloudRetailV2ConditionResponse condition;

  /// Prevents term from being associated with other terms.
  final GoogleCloudRetailV2RuleDoNotAssociateActionResponse
      doNotAssociateAction;

  /// Filters results.
  final GoogleCloudRetailV2RuleFilterActionResponse filterAction;

  /// Force returns an attribute as a facet in the request.
  final GoogleCloudRetailV2RuleForceReturnFacetActionResponse
      forceReturnFacetAction;

  /// Ignores specific terms from query during search.
  final GoogleCloudRetailV2RuleIgnoreActionResponse ignoreAction;

  /// Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  final GoogleCloudRetailV2RuleOnewaySynonymsActionResponse
      onewaySynonymsAction;

  /// Redirects a shopper to a specific page.
  final GoogleCloudRetailV2RuleRedirectActionResponse redirectAction;

  /// Remove an attribute as a facet in the request (if present).
  final GoogleCloudRetailV2RuleRemoveFacetActionResponse removeFacetAction;

  /// Replaces specific terms in the query.
  final GoogleCloudRetailV2RuleReplacementActionResponse replacementAction;

  /// Treats a set of terms as synonyms of one another.
  final GoogleCloudRetailV2RuleTwowaySynonymsActionResponse
      twowaySynonymsAction;

  /// Creates a new [GoogleCloudRetailV2RuleResponse].
  /// [boostAction] A boost action.
  /// [condition] The condition that triggers the rule. If the condition is empty, the rule will always apply.
  /// [doNotAssociateAction] Prevents term from being associated with other terms.
  /// [filterAction] Filters results.
  /// [forceReturnFacetAction] Force returns an attribute as a facet in the request.
  /// [ignoreAction] Ignores specific terms from query during search.
  /// [onewaySynonymsAction] Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  /// [redirectAction] Redirects a shopper to a specific page.
  /// [removeFacetAction] Remove an attribute as a facet in the request (if present).
  /// [replacementAction] Replaces specific terms in the query.
  /// [twowaySynonymsAction] Treats a set of terms as synonyms of one another.
  GoogleCloudRetailV2RuleResponse({
    required this.boostAction,
    required this.condition,
    required this.doNotAssociateAction,
    required this.filterAction,
    required this.forceReturnFacetAction,
    required this.ignoreAction,
    required this.onewaySynonymsAction,
    required this.redirectAction,
    required this.removeFacetAction,
    required this.replacementAction,
    required this.twowaySynonymsAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['boostAction'] = boostAction.toMap();
    map['condition'] = condition.toMap();
    map['doNotAssociateAction'] = doNotAssociateAction.toMap();
    map['filterAction'] = filterAction.toMap();
    map['forceReturnFacetAction'] = forceReturnFacetAction.toMap();
    map['ignoreAction'] = ignoreAction.toMap();
    map['onewaySynonymsAction'] = onewaySynonymsAction.toMap();
    map['redirectAction'] = redirectAction.toMap();
    map['removeFacetAction'] = removeFacetAction.toMap();
    map['replacementAction'] = replacementAction.toMap();
    map['twowaySynonymsAction'] = twowaySynonymsAction.toMap();
    return map;
  }

  factory GoogleCloudRetailV2RuleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleResponse(
      boostAction: GoogleCloudRetailV2RuleBoostActionResponse.fromMap(
          (map['boostAction'] as Map).cast<String, dynamic>()),
      condition: GoogleCloudRetailV2ConditionResponse.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
      doNotAssociateAction:
          GoogleCloudRetailV2RuleDoNotAssociateActionResponse.fromMap(
              (map['doNotAssociateAction'] as Map).cast<String, dynamic>()),
      filterAction: GoogleCloudRetailV2RuleFilterActionResponse.fromMap(
          (map['filterAction'] as Map).cast<String, dynamic>()),
      forceReturnFacetAction:
          GoogleCloudRetailV2RuleForceReturnFacetActionResponse.fromMap(
              (map['forceReturnFacetAction'] as Map).cast<String, dynamic>()),
      ignoreAction: GoogleCloudRetailV2RuleIgnoreActionResponse.fromMap(
          (map['ignoreAction'] as Map).cast<String, dynamic>()),
      onewaySynonymsAction:
          GoogleCloudRetailV2RuleOnewaySynonymsActionResponse.fromMap(
              (map['onewaySynonymsAction'] as Map).cast<String, dynamic>()),
      redirectAction: GoogleCloudRetailV2RuleRedirectActionResponse.fromMap(
          (map['redirectAction'] as Map).cast<String, dynamic>()),
      removeFacetAction:
          GoogleCloudRetailV2RuleRemoveFacetActionResponse.fromMap(
              (map['removeFacetAction'] as Map).cast<String, dynamic>()),
      replacementAction:
          GoogleCloudRetailV2RuleReplacementActionResponse.fromMap(
              (map['replacementAction'] as Map).cast<String, dynamic>()),
      twowaySynonymsAction:
          GoogleCloudRetailV2RuleTwowaySynonymsActionResponse.fromMap(
              (map['twowaySynonymsAction'] as Map).cast<String, dynamic>()),
    );
  }
}
