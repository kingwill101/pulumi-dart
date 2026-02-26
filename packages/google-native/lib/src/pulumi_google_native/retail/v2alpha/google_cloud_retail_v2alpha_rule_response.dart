// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2alpha_condition_response.dart';
import 'google_cloud_retail_v2alpha_rule_boost_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_do_not_associate_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_filter_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_force_return_facet_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_ignore_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_oneway_synonyms_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_redirect_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_remove_facet_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_replacement_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_twoway_synonyms_action_response.dart';

/// A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2alphaRuleResponse {
  /// A boost action.
  final GoogleCloudRetailV2alphaRuleBoostActionResponse boostAction;

  /// The condition that triggers the rule. If the condition is empty, the rule will always apply.
  final GoogleCloudRetailV2alphaConditionResponse condition;

  /// Prevents term from being associated with other terms.
  final GoogleCloudRetailV2alphaRuleDoNotAssociateActionResponse
      doNotAssociateAction;

  /// Filters results.
  final GoogleCloudRetailV2alphaRuleFilterActionResponse filterAction;

  /// Force returns an attribute as a facet in the request.
  final GoogleCloudRetailV2alphaRuleForceReturnFacetActionResponse
      forceReturnFacetAction;

  /// Ignores specific terms from query during search.
  final GoogleCloudRetailV2alphaRuleIgnoreActionResponse ignoreAction;

  /// Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  final GoogleCloudRetailV2alphaRuleOnewaySynonymsActionResponse
      onewaySynonymsAction;

  /// Redirects a shopper to a specific page.
  final GoogleCloudRetailV2alphaRuleRedirectActionResponse redirectAction;

  /// Remove an attribute as a facet in the request (if present).
  final GoogleCloudRetailV2alphaRuleRemoveFacetActionResponse removeFacetAction;

  /// Replaces specific terms in the query.
  final GoogleCloudRetailV2alphaRuleReplacementActionResponse replacementAction;

  /// Treats a set of terms as synonyms of one another.
  final GoogleCloudRetailV2alphaRuleTwowaySynonymsActionResponse
      twowaySynonymsAction;

  GoogleCloudRetailV2alphaRuleResponse({
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

  factory GoogleCloudRetailV2alphaRuleResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRuleResponse(
      boostAction: GoogleCloudRetailV2alphaRuleBoostActionResponse.fromMap(
          (map['boostAction'] as Map).cast<String, dynamic>()),
      condition: GoogleCloudRetailV2alphaConditionResponse.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
      doNotAssociateAction:
          GoogleCloudRetailV2alphaRuleDoNotAssociateActionResponse.fromMap(
              (map['doNotAssociateAction'] as Map).cast<String, dynamic>()),
      filterAction: GoogleCloudRetailV2alphaRuleFilterActionResponse.fromMap(
          (map['filterAction'] as Map).cast<String, dynamic>()),
      forceReturnFacetAction:
          GoogleCloudRetailV2alphaRuleForceReturnFacetActionResponse.fromMap(
              (map['forceReturnFacetAction'] as Map).cast<String, dynamic>()),
      ignoreAction: GoogleCloudRetailV2alphaRuleIgnoreActionResponse.fromMap(
          (map['ignoreAction'] as Map).cast<String, dynamic>()),
      onewaySynonymsAction:
          GoogleCloudRetailV2alphaRuleOnewaySynonymsActionResponse.fromMap(
              (map['onewaySynonymsAction'] as Map).cast<String, dynamic>()),
      redirectAction:
          GoogleCloudRetailV2alphaRuleRedirectActionResponse.fromMap(
              (map['redirectAction'] as Map).cast<String, dynamic>()),
      removeFacetAction:
          GoogleCloudRetailV2alphaRuleRemoveFacetActionResponse.fromMap(
              (map['removeFacetAction'] as Map).cast<String, dynamic>()),
      replacementAction:
          GoogleCloudRetailV2alphaRuleReplacementActionResponse.fromMap(
              (map['replacementAction'] as Map).cast<String, dynamic>()),
      twowaySynonymsAction:
          GoogleCloudRetailV2alphaRuleTwowaySynonymsActionResponse.fromMap(
              (map['twowaySynonymsAction'] as Map).cast<String, dynamic>()),
    );
  }
}
