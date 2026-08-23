// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_access_scope_exclude_path_through_resource_resource_statement.dart';

class NetworkInsightsAccessScopeExcludePathThroughResource {
  /// Resource statement.
  /// Exactly one of `resources` or `resourceTypes` must be specified.
  /// See `resourceStatement` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeExcludePathThroughResourceResourceStatement>? resourceStatement;

  /// Creates a new [NetworkInsightsAccessScopeExcludePathThroughResource].
  /// [resourceStatement] Resource statement.
  const NetworkInsightsAccessScopeExcludePathThroughResource({
    this.resourceStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceStatement': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeExcludePathThroughResourceResourceStatement, Map<String, dynamic>>(resourceStatement, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAccessScopeExcludePathThroughResource.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAccessScopeExcludePathThroughResource(
      resourceStatement: (() { final guardedValue = map['resourceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeExcludePathThroughResourceResourceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
