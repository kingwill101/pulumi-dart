// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_workflow_config_invocation_config_included_target/repository_workflow_config_invocation_config_included_target.dart';

class RepositoryWorkflowConfigInvocationConfig {
  /// Optional. When set to true, any incremental tables will be fully refreshed.
  final bool? fullyRefreshIncrementalTablesEnabled;

  /// Optional. The set of tags to include.
  final List<String>? includedTags;

  /// Optional. The set of action identifiers to include.
  /// Structure is documented below.
  final List<RepositoryWorkflowConfigInvocationConfigIncludedTarget>?
      includedTargets;

  /// Optional. The service account to run workflow invocations under.
  final String? serviceAccount;

  /// Optional. When set to true, transitive dependencies of included actions will be executed.
  final bool? transitiveDependenciesIncluded;

  /// Optional. When set to true, transitive dependents of included actions will be executed.
  final bool? transitiveDependentsIncluded;

  RepositoryWorkflowConfigInvocationConfig({
    this.fullyRefreshIncrementalTablesEnabled,
    this.includedTags,
    this.includedTargets,
    this.serviceAccount,
    this.transitiveDependenciesIncluded,
    this.transitiveDependentsIncluded,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fullyRefreshIncrementalTablesEnabledValue =
        fullyRefreshIncrementalTablesEnabled;
    if (fullyRefreshIncrementalTablesEnabledValue != null) {
      map['fullyRefreshIncrementalTablesEnabled'] =
          fullyRefreshIncrementalTablesEnabledValue;
    }
    final includedTagsValue = includedTags;
    if (includedTagsValue != null) {
      map['includedTags'] = includedTagsValue;
    }
    final includedTargetsValue = includedTargets;
    if (includedTargetsValue != null) {
      map['includedTargets'] = Input.encodeList<
          RepositoryWorkflowConfigInvocationConfigIncludedTarget,
          Map<String, dynamic>>(includedTargetsValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final transitiveDependenciesIncludedValue = transitiveDependenciesIncluded;
    if (transitiveDependenciesIncludedValue != null) {
      map['transitiveDependenciesIncluded'] =
          transitiveDependenciesIncludedValue;
    }
    final transitiveDependentsIncludedValue = transitiveDependentsIncluded;
    if (transitiveDependentsIncludedValue != null) {
      map['transitiveDependentsIncluded'] = transitiveDependentsIncludedValue;
    }
    return map;
  }

  factory RepositoryWorkflowConfigInvocationConfig.fromMap(
      Map<String, dynamic> map) {
    return RepositoryWorkflowConfigInvocationConfig(
      fullyRefreshIncrementalTablesEnabled:
          map['fullyRefreshIncrementalTablesEnabled'] == null
              ? null
              : map['fullyRefreshIncrementalTablesEnabled'] as bool,
      includedTags: map['includedTags'] == null
          ? null
          : (map['includedTags'] as List).cast<String>(),
      includedTargets: map['includedTargets'] == null
          ? null
          : Input.decodeList<
                  RepositoryWorkflowConfigInvocationConfigIncludedTarget>(
              map['includedTargets'],
              (value) => RepositoryWorkflowConfigInvocationConfigIncludedTarget
                  .fromMap((value as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      transitiveDependenciesIncluded:
          map['transitiveDependenciesIncluded'] == null
              ? null
              : map['transitiveDependenciesIncluded'] as bool,
      transitiveDependentsIncluded: map['transitiveDependentsIncluded'] == null
          ? null
          : map['transitiveDependentsIncluded'] as bool,
    );
  }
}
