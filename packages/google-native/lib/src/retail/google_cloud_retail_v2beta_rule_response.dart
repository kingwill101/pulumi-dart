// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2beta_condition_response.dart';
import 'google_cloud_retail_v2beta_rule_boost_action_response.dart';
import 'google_cloud_retail_v2beta_rule_do_not_associate_action_response.dart';
import 'google_cloud_retail_v2beta_rule_filter_action_response.dart';
import 'google_cloud_retail_v2beta_rule_force_return_facet_action_response.dart';
import 'google_cloud_retail_v2beta_rule_ignore_action_response.dart';
import 'google_cloud_retail_v2beta_rule_oneway_synonyms_action_response.dart';
import 'google_cloud_retail_v2beta_rule_redirect_action_response.dart';
import 'google_cloud_retail_v2beta_rule_remove_facet_action_response.dart';
import 'google_cloud_retail_v2beta_rule_replacement_action_response.dart';
import 'google_cloud_retail_v2beta_rule_twoway_synonyms_action_response.dart';

/// A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2betaRuleResponse {
  /// A boost action.
  final GoogleCloudRetailV2betaRuleBoostActionResponse boostAction;

  /// The condition that triggers the rule. If the condition is empty, the rule will always apply.
  final GoogleCloudRetailV2betaConditionResponse condition;

  /// Prevents term from being associated with other terms.
  final GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse
  doNotAssociateAction;

  /// Filters results.
  final GoogleCloudRetailV2betaRuleFilterActionResponse filterAction;

  /// Force returns an attribute as a facet in the request.
  final GoogleCloudRetailV2betaRuleForceReturnFacetActionResponse
  forceReturnFacetAction;

  /// Ignores specific terms from query during search.
  final GoogleCloudRetailV2betaRuleIgnoreActionResponse ignoreAction;

  /// Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  final GoogleCloudRetailV2betaRuleOnewaySynonymsActionResponse
  onewaySynonymsAction;

  /// Redirects a shopper to a specific page.
  final GoogleCloudRetailV2betaRuleRedirectActionResponse redirectAction;

  /// Remove an attribute as a facet in the request (if present).
  final GoogleCloudRetailV2betaRuleRemoveFacetActionResponse removeFacetAction;

  /// Replaces specific terms in the query.
  final GoogleCloudRetailV2betaRuleReplacementActionResponse replacementAction;

  /// Treats a set of terms as synonyms of one another.
  final GoogleCloudRetailV2betaRuleTwowaySynonymsActionResponse
  twowaySynonymsAction;

  /// Creates a new [GoogleCloudRetailV2betaRuleResponse].
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
  GoogleCloudRetailV2betaRuleResponse({
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
    return <String, dynamic>{
      'boostAction': boostAction.toMap(),
      'condition': condition.toMap(),
      'doNotAssociateAction': doNotAssociateAction.toMap(),
      'filterAction': filterAction.toMap(),
      'forceReturnFacetAction': forceReturnFacetAction.toMap(),
      'ignoreAction': ignoreAction.toMap(),
      'onewaySynonymsAction': onewaySynonymsAction.toMap(),
      'redirectAction': redirectAction.toMap(),
      'removeFacetAction': removeFacetAction.toMap(),
      'replacementAction': replacementAction.toMap(),
      'twowaySynonymsAction': twowaySynonymsAction.toMap(),
    };
  }

  factory GoogleCloudRetailV2betaRuleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaRuleResponse(
      boostAction: GoogleCloudRetailV2betaRuleBoostActionResponse.fromMap(
        (map['boostAction'] as Map).cast<String, dynamic>(),
      ),
      condition: GoogleCloudRetailV2betaConditionResponse.fromMap(
        (map['condition'] as Map).cast<String, dynamic>(),
      ),
      doNotAssociateAction:
          GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse.fromMap(
            (map['doNotAssociateAction'] as Map).cast<String, dynamic>(),
          ),
      filterAction: GoogleCloudRetailV2betaRuleFilterActionResponse.fromMap(
        (map['filterAction'] as Map).cast<String, dynamic>(),
      ),
      forceReturnFacetAction:
          GoogleCloudRetailV2betaRuleForceReturnFacetActionResponse.fromMap(
            (map['forceReturnFacetAction'] as Map).cast<String, dynamic>(),
          ),
      ignoreAction: GoogleCloudRetailV2betaRuleIgnoreActionResponse.fromMap(
        (map['ignoreAction'] as Map).cast<String, dynamic>(),
      ),
      onewaySynonymsAction:
          GoogleCloudRetailV2betaRuleOnewaySynonymsActionResponse.fromMap(
            (map['onewaySynonymsAction'] as Map).cast<String, dynamic>(),
          ),
      redirectAction: GoogleCloudRetailV2betaRuleRedirectActionResponse.fromMap(
        (map['redirectAction'] as Map).cast<String, dynamic>(),
      ),
      removeFacetAction:
          GoogleCloudRetailV2betaRuleRemoveFacetActionResponse.fromMap(
            (map['removeFacetAction'] as Map).cast<String, dynamic>(),
          ),
      replacementAction:
          GoogleCloudRetailV2betaRuleReplacementActionResponse.fromMap(
            (map['replacementAction'] as Map).cast<String, dynamic>(),
          ),
      twowaySynonymsAction:
          GoogleCloudRetailV2betaRuleTwowaySynonymsActionResponse.fromMap(
            (map['twowaySynonymsAction'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
