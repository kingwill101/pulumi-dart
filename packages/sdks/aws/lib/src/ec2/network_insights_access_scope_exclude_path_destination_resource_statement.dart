// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAccessScopeExcludePathDestinationResourceStatement {
  /// List of resource types.
  /// Cannot be specified together with `resources`.
  final pulumi.Input<List<String>?>? resourceTypes;
  /// List of resource ARNs.
  /// Cannot be specified together with `resourceTypes`.
  final pulumi.Input<List<String>?>? resources;

  /// Creates a new [NetworkInsightsAccessScopeExcludePathDestinationResourceStatement].
  /// [resourceTypes] List of resource types.
  /// [resources] List of resource ARNs.
  const NetworkInsightsAccessScopeExcludePathDestinationResourceStatement({
    this.resourceTypes,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTypes': ?resourceTypes,
      'resources': ?resources,
    };
  }

  factory NetworkInsightsAccessScopeExcludePathDestinationResourceStatement.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAccessScopeExcludePathDestinationResourceStatement(
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
