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

  InvocationConfig({
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
      map['includedTargets'] =
          pulumi.Input.encodeList<Target, Map<String, dynamic>>(
              includedTargetsValue, (value) => value.toMap());
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

  factory InvocationConfig.fromMap(Map<String, dynamic> map) {
    return InvocationConfig(
      fullyRefreshIncrementalTablesEnabled:
          map['fullyRefreshIncrementalTablesEnabled'] == null
              ? null
              : map['fullyRefreshIncrementalTablesEnabled'] as bool,
      includedTags: map['includedTags'] == null
          ? null
          : (map['includedTags'] as List).cast<String>(),
      includedTargets: map['includedTargets'] == null
          ? null
          : pulumi.Input.decodeList<Target>(
              map['includedTargets'],
              (value) =>
                  Target.fromMap((value as Map).cast<String, dynamic>())),
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
