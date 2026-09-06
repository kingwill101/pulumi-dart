// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Log analytics workspace id and primary key
class LogAnalyticsWorkspaceConfigResponse {
  /// Azure Log Analytics workspace ID
  final pulumi.Input<String?>? workspaceId;

  /// Creates a new [LogAnalyticsWorkspaceConfigResponse].
  /// [workspaceId] Azure Log Analytics workspace ID
  const LogAnalyticsWorkspaceConfigResponse({
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workspaceId': ?workspaceId,
    };
  }

  factory LogAnalyticsWorkspaceConfigResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsWorkspaceConfigResponse(
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
