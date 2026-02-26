// ignore_for_file: unused_element, unnecessary_cast

import 'access_selector.dart';
import 'condition_context.dart';
import 'identity_selector.dart';
import 'options.dart';
import 'resource_selector.dart';

/// IAM policy analysis query message.
class IamPolicyAnalysisQuery {
  /// Optional. Specifies roles or permissions for analysis. This is optional.
  final AccessSelector? accessSelector;

  /// Optional. The hypothetical context for IAM conditions evaluation.
  final ConditionContext? conditionContext;

  /// Optional. Specifies an identity for analysis.
  final IdentitySelector? identitySelector;

  /// Optional. The query options.
  final Options? options;

  /// Optional. Specifies a resource for analysis.
  final ResourceSelector? resourceSelector;

  /// The relative name of the root asset. Only resources and IAM policies within the scope will be analyzed. This can only be an organization number (such as "organizations/123"), a folder number (such as "folders/123"), a project ID (such as "projects/my-project-id"), or a project number (such as "projects/12345"). To know how to get organization id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id). To know how to get folder or project id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).
  final String scope;

  IamPolicyAnalysisQuery({
    this.accessSelector,
    this.conditionContext,
    this.identitySelector,
    this.options,
    this.resourceSelector,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessSelectorValue = accessSelector;
    if (accessSelectorValue != null) {
      map['accessSelector'] = accessSelectorValue.toMap();
    }
    final conditionContextValue = conditionContext;
    if (conditionContextValue != null) {
      map['conditionContext'] = conditionContextValue.toMap();
    }
    final identitySelectorValue = identitySelector;
    if (identitySelectorValue != null) {
      map['identitySelector'] = identitySelectorValue.toMap();
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue.toMap();
    }
    final resourceSelectorValue = resourceSelector;
    if (resourceSelectorValue != null) {
      map['resourceSelector'] = resourceSelectorValue.toMap();
    }
    map['scope'] = scope;
    return map;
  }

  factory IamPolicyAnalysisQuery.fromMap(Map<String, dynamic> map) {
    return IamPolicyAnalysisQuery(
      accessSelector: map['accessSelector'] == null
          ? null
          : AccessSelector.fromMap(
              (map['accessSelector'] as Map).cast<String, dynamic>()),
      conditionContext: map['conditionContext'] == null
          ? null
          : ConditionContext.fromMap(
              (map['conditionContext'] as Map).cast<String, dynamic>()),
      identitySelector: map['identitySelector'] == null
          ? null
          : IdentitySelector.fromMap(
              (map['identitySelector'] as Map).cast<String, dynamic>()),
      options: map['options'] == null
          ? null
          : Options.fromMap((map['options'] as Map).cast<String, dynamic>()),
      resourceSelector: map['resourceSelector'] == null
          ? null
          : ResourceSelector.fromMap(
              (map['resourceSelector'] as Map).cast<String, dynamic>()),
      scope: map['scope'] as String,
    );
  }
}
