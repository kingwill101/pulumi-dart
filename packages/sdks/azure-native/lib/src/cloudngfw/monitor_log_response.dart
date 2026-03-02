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
      id: map['id'] == null ? null : (map['id']! as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      workspace: map['workspace'] == null ? null : (map['workspace']! as String).input(),
    );
  }
}

