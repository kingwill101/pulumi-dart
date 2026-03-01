// ignore_for_file: unused_element, unnecessary_cast


/// MonitorLog configurations
class MonitorLogResponse {
  /// Resource ID of MonitorLog
  final String? id;
  /// Primary Key value for Monitor
  final String? primaryKey;
  /// Secondary Key value for Monitor
  final String? secondaryKey;
  /// Subscription Id
  final String? subscriptionId;
  /// MonitorLog workspace
  final String? workspace;

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
      id: map['id'] == null ? null : map['id'] as String,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      workspace: map['workspace'] == null ? null : map['workspace'] as String,
    );
  }
}

