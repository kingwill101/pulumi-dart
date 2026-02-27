// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../custom_target_type_custom_actions_include_skaffold_module/custom_target_type_custom_actions_include_skaffold_module.dart';

class CustomTargetTypeCustomActions {
  /// The Skaffold custom action responsible for deploy operations.
  final String deployAction;

  /// List of Skaffold modules Cloud Deploy will include in the Skaffold Config as required before performing diagnose.
  /// Structure is documented below.
  final List<CustomTargetTypeCustomActionsIncludeSkaffoldModule>?
      includeSkaffoldModules;

  /// The Skaffold custom action responsible for render operations. If not provided then Cloud Deploy will perform the render operations via `skaffold render`.
  final String? renderAction;

  CustomTargetTypeCustomActions({
    required this.deployAction,
    this.includeSkaffoldModules,
    this.renderAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployAction'] = deployAction;
    final includeSkaffoldModulesValue = includeSkaffoldModules;
    if (includeSkaffoldModulesValue != null) {
      map['includeSkaffoldModules'] = pulumi.Input.encodeList<
              CustomTargetTypeCustomActionsIncludeSkaffoldModule,
              Map<String, dynamic>>(
          includeSkaffoldModulesValue, (value) => value.toMap());
    }
    final renderActionValue = renderAction;
    if (renderActionValue != null) {
      map['renderAction'] = renderActionValue;
    }
    return map;
  }

  factory CustomTargetTypeCustomActions.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeCustomActions(
      deployAction: map['deployAction'] as String,
      includeSkaffoldModules: map['includeSkaffoldModules'] == null
          ? null
          : pulumi.Input.decodeList<
                  CustomTargetTypeCustomActionsIncludeSkaffoldModule>(
              map['includeSkaffoldModules'],
              (value) =>
                  CustomTargetTypeCustomActionsIncludeSkaffoldModule.fromMap(
                      (value as Map).cast<String, dynamic>())),
      renderAction:
          map['renderAction'] == null ? null : map['renderAction'] as String,
    );
  }
}
