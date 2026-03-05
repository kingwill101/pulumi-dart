// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container group log analytics information.
class LogAnalytics {
  /// The log type to be used.
  final pulumi.Input<String>? logType;
  /// Metadata for log analytics.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The workspace id for log analytics
  final pulumi.Input<String> workspaceId;
  /// The workspace key for log analytics
  final pulumi.Input<String> workspaceKey;
  /// The workspace resource id for log analytics
  final pulumi.Input<String>? workspaceResourceId;

  /// Creates a new [LogAnalytics].
  /// [logType] The log type to be used.
  /// [metadata] Metadata for log analytics.
  /// [workspaceId] The workspace id for log analytics
  /// [workspaceKey] The workspace key for log analytics
  /// [workspaceResourceId] The workspace resource id for log analytics
  LogAnalytics({
    this.logType,
    this.metadata,
    required this.workspaceId,
    required this.workspaceKey,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logType': ?logType,
      'metadata': ?metadata,
      'workspaceId': workspaceId,
      'workspaceKey': workspaceKey,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory LogAnalytics.fromMap(Map<String, dynamic> map) {
    return LogAnalytics(
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
      workspaceKey: pulumi.Input.fromValue(map['workspaceKey'] as String),
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

