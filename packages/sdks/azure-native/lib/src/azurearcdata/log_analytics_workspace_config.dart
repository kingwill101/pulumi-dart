// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Log analytics workspace id and primary key
class LogAnalyticsWorkspaceConfig {
  /// Primary key of the workspace
  final pulumi.Input<String>? primaryKey;

  /// Azure Log Analytics workspace ID
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [LogAnalyticsWorkspaceConfig].
  /// [primaryKey] Primary key of the workspace
  /// [workspaceId] Azure Log Analytics workspace ID
  LogAnalyticsWorkspaceConfig({this.primaryKey, this.workspaceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': ?primaryKey,
      'workspaceId': ?workspaceId,
    };
  }

  factory LogAnalyticsWorkspaceConfig.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsWorkspaceConfig(
      primaryKey: (() {
        final guardedValue = map['primaryKey'];
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
