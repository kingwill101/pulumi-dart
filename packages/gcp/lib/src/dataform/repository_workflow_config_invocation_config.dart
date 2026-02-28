// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_workflow_config_invocation_config_included_target.dart';

class RepositoryWorkflowConfigInvocationConfig {
  /// Optional. When set to true, any incremental tables will be fully refreshed.
  final bool? fullyRefreshIncrementalTablesEnabled;
  /// Optional. The set of tags to include.
  final List<String>? includedTags;
  /// Optional. The set of action identifiers to include.
  /// Structure is documented below.
  final List<RepositoryWorkflowConfigInvocationConfigIncludedTarget>? includedTargets;
  /// Optional. The service account to run workflow invocations under.
  final String? serviceAccount;
  /// Optional. When set to true, transitive dependencies of included actions will be executed.
  final bool? transitiveDependenciesIncluded;
  /// Optional. When set to true, transitive dependents of included actions will be executed.
  final bool? transitiveDependentsIncluded;

  /// Creates a new [RepositoryWorkflowConfigInvocationConfig].
  /// [fullyRefreshIncrementalTablesEnabled] Optional. When set to true, any incremental tables will be fully refreshed.
  /// [includedTags] Optional. The set of tags to include.
  /// [includedTargets] Optional. The set of action identifiers to include.
  /// [serviceAccount] Optional. The service account to run workflow invocations under.
  /// [transitiveDependenciesIncluded] Optional. When set to true, transitive dependencies of included actions will be executed.
  /// [transitiveDependentsIncluded] Optional. When set to true, transitive dependents of included actions will be executed.
  RepositoryWorkflowConfigInvocationConfig({
    this.fullyRefreshIncrementalTablesEnabled,
    this.includedTags,
    this.includedTargets,
    this.serviceAccount,
    this.transitiveDependenciesIncluded,
    this.transitiveDependentsIncluded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyRefreshIncrementalTablesEnabled': ?fullyRefreshIncrementalTablesEnabled,
      'includedTags': ?includedTags,
      'includedTargets': ?includedTargets == null ? null : pulumi.Input.encodeList<RepositoryWorkflowConfigInvocationConfigIncludedTarget, Map<String, dynamic>>(includedTargets!, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'transitiveDependenciesIncluded': ?transitiveDependenciesIncluded,
      'transitiveDependentsIncluded': ?transitiveDependentsIncluded,
    };
  }

  factory RepositoryWorkflowConfigInvocationConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryWorkflowConfigInvocationConfig(
      fullyRefreshIncrementalTablesEnabled: map['fullyRefreshIncrementalTablesEnabled'] == null ? null : map['fullyRefreshIncrementalTablesEnabled'] as bool,
      includedTags: map['includedTags'] == null ? null : (map['includedTags'] as List).cast<String>(),
      includedTargets: map['includedTargets'] == null ? null : pulumi.Input.decodeList<RepositoryWorkflowConfigInvocationConfigIncludedTarget>(map['includedTargets'], (value) => RepositoryWorkflowConfigInvocationConfigIncludedTarget.fromMap((value as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] == null ? null : map['serviceAccount'] as String,
      transitiveDependenciesIncluded: map['transitiveDependenciesIncluded'] == null ? null : map['transitiveDependenciesIncluded'] as bool,
      transitiveDependentsIncluded: map['transitiveDependentsIncluded'] == null ? null : map['transitiveDependentsIncluded'] as bool,
    );
  }
}

