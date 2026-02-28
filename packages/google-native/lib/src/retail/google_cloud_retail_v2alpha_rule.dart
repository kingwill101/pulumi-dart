// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2alpha_condition.dart';
import 'google_cloud_retail_v2alpha_rule_boost_action.dart';
import 'google_cloud_retail_v2alpha_rule_do_not_associate_action.dart';
import 'google_cloud_retail_v2alpha_rule_filter_action.dart';
import 'google_cloud_retail_v2alpha_rule_force_return_facet_action.dart';
import 'google_cloud_retail_v2alpha_rule_ignore_action.dart';
import 'google_cloud_retail_v2alpha_rule_oneway_synonyms_action.dart';
import 'google_cloud_retail_v2alpha_rule_redirect_action.dart';
import 'google_cloud_retail_v2alpha_rule_remove_facet_action.dart';
import 'google_cloud_retail_v2alpha_rule_replacement_action.dart';
import 'google_cloud_retail_v2alpha_rule_twoway_synonyms_action.dart';

/// A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2alphaRule {
  /// A boost action.
  final GoogleCloudRetailV2alphaRuleBoostAction? boostAction;

  /// The condition that triggers the rule. If the condition is empty, the rule will always apply.
  final GoogleCloudRetailV2alphaCondition condition;

  /// Prevents term from being associated with other terms.
  final GoogleCloudRetailV2alphaRuleDoNotAssociateAction? doNotAssociateAction;

  /// Filters results.
  final GoogleCloudRetailV2alphaRuleFilterAction? filterAction;

  /// Force returns an attribute as a facet in the request.
  final GoogleCloudRetailV2alphaRuleForceReturnFacetAction?
      forceReturnFacetAction;

  /// Ignores specific terms from query during search.
  final GoogleCloudRetailV2alphaRuleIgnoreAction? ignoreAction;

  /// Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  final GoogleCloudRetailV2alphaRuleOnewaySynonymsAction? onewaySynonymsAction;

  /// Redirects a shopper to a specific page.
  final GoogleCloudRetailV2alphaRuleRedirectAction? redirectAction;

  /// Remove an attribute as a facet in the request (if present).
  final GoogleCloudRetailV2alphaRuleRemoveFacetAction? removeFacetAction;

  /// Replaces specific terms in the query.
  final GoogleCloudRetailV2alphaRuleReplacementAction? replacementAction;

  /// Treats a set of terms as synonyms of one another.
  final GoogleCloudRetailV2alphaRuleTwowaySynonymsAction? twowaySynonymsAction;

  /// Creates a new [GoogleCloudRetailV2alphaRule].
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
  GoogleCloudRetailV2alphaRule({
    this.boostAction,
    required this.condition,
    this.doNotAssociateAction,
    this.filterAction,
    this.forceReturnFacetAction,
    this.ignoreAction,
    this.onewaySynonymsAction,
    this.redirectAction,
    this.removeFacetAction,
    this.replacementAction,
    this.twowaySynonymsAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boostActionValue = boostAction;
    if (boostActionValue != null) {
      map['boostAction'] = boostActionValue.toMap();
    }
    map['condition'] = condition.toMap();
    final doNotAssociateActionValue = doNotAssociateAction;
    if (doNotAssociateActionValue != null) {
      map['doNotAssociateAction'] = doNotAssociateActionValue.toMap();
    }
    final filterActionValue = filterAction;
    if (filterActionValue != null) {
      map['filterAction'] = filterActionValue.toMap();
    }
    final forceReturnFacetActionValue = forceReturnFacetAction;
    if (forceReturnFacetActionValue != null) {
      map['forceReturnFacetAction'] = forceReturnFacetActionValue.toMap();
    }
    final ignoreActionValue = ignoreAction;
    if (ignoreActionValue != null) {
      map['ignoreAction'] = ignoreActionValue.toMap();
    }
    final onewaySynonymsActionValue = onewaySynonymsAction;
    if (onewaySynonymsActionValue != null) {
      map['onewaySynonymsAction'] = onewaySynonymsActionValue.toMap();
    }
    final redirectActionValue = redirectAction;
    if (redirectActionValue != null) {
      map['redirectAction'] = redirectActionValue.toMap();
    }
    final removeFacetActionValue = removeFacetAction;
    if (removeFacetActionValue != null) {
      map['removeFacetAction'] = removeFacetActionValue.toMap();
    }
    final replacementActionValue = replacementAction;
    if (replacementActionValue != null) {
      map['replacementAction'] = replacementActionValue.toMap();
    }
    final twowaySynonymsActionValue = twowaySynonymsAction;
    if (twowaySynonymsActionValue != null) {
      map['twowaySynonymsAction'] = twowaySynonymsActionValue.toMap();
    }
    return map;
  }

  factory GoogleCloudRetailV2alphaRule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRule(
      boostAction: map['boostAction'] == null
          ? null
          : GoogleCloudRetailV2alphaRuleBoostAction.fromMap(
              (map['boostAction'] as Map).cast<String, dynamic>()),
      condition: GoogleCloudRetailV2alphaCondition.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
      doNotAssociateAction: map['doNotAssociateAction'] == null
          ? null
          : GoogleCloudRetailV2alphaRuleDoNotAssociateAction.fromMap(
              (map['doNotAssociateAction'] as Map).cast<String, dynamic>()),
      filterAction: map['filterAction'] == null
          ? null
          : GoogleCloudRetailV2alphaRuleFilterAction.fromMap(
              (map['filterAction'] as Map).cast<String, dynamic>()),
      forceReturnFacetAction: map['forceReturnFacetAction'] == null
          ? null
          : GoogleCloudRetailV2alphaRuleForceReturnFacetAction.fromMap(
              (map['forceReturnFacetAction'] as Map).cast<String, dynamic>()),
      ignoreAction: map['ignoreAction'] == null
          ? null
          : GoogleCloudRetailV2alphaRuleIgnoreAction.fromMap(
              (map['ignoreAction'] as Map).cast<String, dynamic>()),
      onewaySynonymsAction: map['onewaySynonymsAction'] == null
          ? null
          : GoogleCloudRetailV2alphaRuleOnewaySynonymsAction.fromMap(
              (map['onewaySynonymsAction'] as Map).cast<String, dynamic>()),
      redirectAction: map['redirectAction'] == null
          ? null
          : GoogleCloudRetailV2alphaRuleRedirectAction.fromMap(
              (map['redirectAction'] as Map).cast<String, dynamic>()),
      removeFacetAction: map['removeFacetAction'] == null
          ? null
          : GoogleCloudRetailV2alphaRuleRemoveFacetAction.fromMap(
              (map['removeFacetAction'] as Map).cast<String, dynamic>()),
      replacementAction: map['replacementAction'] == null
          ? null
          : GoogleCloudRetailV2alphaRuleReplacementAction.fromMap(
              (map['replacementAction'] as Map).cast<String, dynamic>()),
      twowaySynonymsAction: map['twowaySynonymsAction'] == null
          ? null
          : GoogleCloudRetailV2alphaRuleTwowaySynonymsAction.fromMap(
              (map['twowaySynonymsAction'] as Map).cast<String, dynamic>()),
    );
  }
}
