// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MonitorLog configurations
class MonitorLogResponse {
  /// Resource ID of MonitorLog
  final pulumi.Input<String>? id;
  /// Primary Key value for Monitor
  final pulumi.Input<String>? primaryKey;
  /// Secondary Key value for Monitor
  final pulumi.Input<String>? secondaryKey;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;
  /// MonitorLog workspace
  final pulumi.Input<String>? workspace;

  /// Creates a new [MonitorLogResponse].
  /// [id] Resource ID of MonitorLog
  /// [primaryKey] Primary Key value for Monitor
  /// [secondaryKey] Secondary Key value for Monitor
  /// [subscriptionId] Subscription Id
  /// [workspace] MonitorLog workspace
  MonitorLogResponse({
    this.id,
    this.primaryKey,
    this.secondaryKey,
    this.subscriptionId,
    this.workspace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
      'subscriptionId': ?subscriptionId,
      'workspace': ?workspace,
    };
  }

  factory MonitorLogResponse.fromMap(Map<String, dynamic> map) {
    return MonitorLogResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspace: (() { final guardedValue = map['workspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

