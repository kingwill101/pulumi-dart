// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Non Azure query for the update configuration.
class NonAzureQueryProperties {
  /// Log Analytics Saved Search name.
  final pulumi.Input<String>? functionAlias;

  /// Workspace Id for Log Analytics in which the saved Search is resided.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [NonAzureQueryProperties].
  /// [functionAlias] Log Analytics Saved Search name.
  /// [workspaceId] Workspace Id for Log Analytics in which the saved Search is resided.
  NonAzureQueryProperties({this.functionAlias, this.workspaceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAlias': ?functionAlias,
      'workspaceId': ?workspaceId,
    };
  }

  factory NonAzureQueryProperties.fromMap(Map<String, dynamic> map) {
    return NonAzureQueryProperties(
      functionAlias: (() {
        final guardedValue = map['functionAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workspaceId: (() {
        final guardedValue = map['workspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
