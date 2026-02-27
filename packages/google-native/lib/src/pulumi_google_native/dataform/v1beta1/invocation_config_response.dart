// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'target_response2.dart';

/// Includes various configuration options for a workflow invocation. If both `included_targets` and `included_tags` are unset, all actions will be included.
class InvocationConfigResponse {
  /// Optional. When set to true, any incremental tables will be fully refreshed.
  final bool fullyRefreshIncrementalTablesEnabled;

  /// Optional. The set of tags to include.
  final List<String> includedTags;

  /// Optional. The set of action identifiers to include.
  final List<TargetResponse2> includedTargets;

  /// Optional. The service account to run workflow invocations under.
  final String serviceAccount;

  /// Optional. When set to true, transitive dependencies of included actions will be executed.
  final bool transitiveDependenciesIncluded;

  /// Optional. When set to true, transitive dependents of included actions will be executed.
  final bool transitiveDependentsIncluded;

  InvocationConfigResponse({
    required this.fullyRefreshIncrementalTablesEnabled,
    required this.includedTags,
    required this.includedTargets,
    required this.serviceAccount,
    required this.transitiveDependenciesIncluded,
    required this.transitiveDependentsIncluded,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fullyRefreshIncrementalTablesEnabled'] =
        fullyRefreshIncrementalTablesEnabled;
    map['includedTags'] = includedTags;
    map['includedTargets'] =
        Input.encodeList<TargetResponse2, Map<String, dynamic>>(
            includedTargets, (value) => value.toMap());
    map['serviceAccount'] = serviceAccount;
    map['transitiveDependenciesIncluded'] = transitiveDependenciesIncluded;
    map['transitiveDependentsIncluded'] = transitiveDependentsIncluded;
    return map;
  }

  factory InvocationConfigResponse.fromMap(Map<String, dynamic> map) {
    return InvocationConfigResponse(
      fullyRefreshIncrementalTablesEnabled:
          map['fullyRefreshIncrementalTablesEnabled'] as bool,
      includedTags: (map['includedTags'] as List).cast<String>(),
      includedTargets: Input.decodeList<TargetResponse2>(
          map['includedTargets'],
          (value) =>
              TargetResponse2.fromMap((value as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] as String,
      transitiveDependenciesIncluded:
          map['transitiveDependenciesIncluded'] as bool,
      transitiveDependentsIncluded: map['transitiveDependentsIncluded'] as bool,
    );
  }
}
