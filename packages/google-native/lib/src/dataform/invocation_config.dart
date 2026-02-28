// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target.dart';

/// Includes various configuration options for a workflow invocation. If both `included_targets` and `included_tags` are unset, all actions will be included.
class InvocationConfig {
  /// Optional. When set to true, any incremental tables will be fully refreshed.
  final bool? fullyRefreshIncrementalTablesEnabled;
  /// Optional. The set of tags to include.
  final List<String>? includedTags;
  /// Optional. The set of action identifiers to include.
  final List<Target>? includedTargets;
  /// Optional. The service account to run workflow invocations under.
  final String? serviceAccount;
  /// Optional. When set to true, transitive dependencies of included actions will be executed.
  final bool? transitiveDependenciesIncluded;
  /// Optional. When set to true, transitive dependents of included actions will be executed.
  final bool? transitiveDependentsIncluded;

  /// Creates a new [InvocationConfig].
  /// [fullyRefreshIncrementalTablesEnabled] Optional. When set to true, any incremental tables will be fully refreshed.
  /// [includedTags] Optional. The set of tags to include.
  /// [includedTargets] Optional. The set of action identifiers to include.
  /// [serviceAccount] Optional. The service account to run workflow invocations under.
  /// [transitiveDependenciesIncluded] Optional. When set to true, transitive dependencies of included actions will be executed.
  /// [transitiveDependentsIncluded] Optional. When set to true, transitive dependents of included actions will be executed.
  InvocationConfig({
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
      'includedTargets': ?includedTargets == null ? null : pulumi.Input.encodeList<Target, Map<String, dynamic>>(includedTargets!, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'transitiveDependenciesIncluded': ?transitiveDependenciesIncluded,
      'transitiveDependentsIncluded': ?transitiveDependentsIncluded,
    };
  }

  factory InvocationConfig.fromMap(Map<String, dynamic> map) {
    return InvocationConfig(
      fullyRefreshIncrementalTablesEnabled: map['fullyRefreshIncrementalTablesEnabled'] == null ? null : map['fullyRefreshIncrementalTablesEnabled'] as bool,
      includedTags: map['includedTags'] == null ? null : (map['includedTags'] as List).cast<String>(),
      includedTargets: map['includedTargets'] == null ? null : pulumi.Input.decodeList<Target>(map['includedTargets'], (value) => Target.fromMap((value as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] == null ? null : map['serviceAccount'] as String,
      transitiveDependenciesIncluded: map['transitiveDependenciesIncluded'] == null ? null : map['transitiveDependenciesIncluded'] as bool,
      transitiveDependentsIncluded: map['transitiveDependentsIncluded'] == null ? null : map['transitiveDependentsIncluded'] as bool,
    );
  }
}

