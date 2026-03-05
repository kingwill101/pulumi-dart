// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A ShareSynchronization data transfer object.
class ShareSynchronizationResponse {
  /// Email of the user who created the synchronization
  final pulumi.Input<String>? consumerEmail;
  /// Name of the user who created the synchronization
  final pulumi.Input<String>? consumerName;
  /// Tenant name of the consumer who created the synchronization
  final pulumi.Input<String>? consumerTenantName;
  /// synchronization duration
  final pulumi.Input<int>? durationMs;
  /// End time of synchronization
  final pulumi.Input<String>? endTime;
  /// message of synchronization
  final pulumi.Input<String>? message;
  /// start time of synchronization
  final pulumi.Input<String>? startTime;
  /// Raw Status
  final pulumi.Input<String>? status;
  /// Synchronization id
  final pulumi.Input<String>? synchronizationId;
  /// Synchronization mode
  final pulumi.Input<String> synchronizationMode;

  /// Creates a new [ShareSynchronizationResponse].
  /// [consumerEmail] Email of the user who created the synchronization
  /// [consumerName] Name of the user who created the synchronization
  /// [consumerTenantName] Tenant name of the consumer who created the synchronization
  /// [durationMs] synchronization duration
  /// [endTime] End time of synchronization
  /// [message] message of synchronization
  /// [startTime] start time of synchronization
  /// [status] Raw Status
  /// [synchronizationId] Synchronization id
  /// [synchronizationMode] Synchronization mode
  ShareSynchronizationResponse({
    this.consumerEmail,
    this.consumerName,
    this.consumerTenantName,
    this.durationMs,
    this.endTime,
    this.message,
    this.startTime,
    this.status,
    this.synchronizationId,
    required this.synchronizationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerEmail': ?consumerEmail,
      'consumerName': ?consumerName,
      'consumerTenantName': ?consumerTenantName,
      'durationMs': ?durationMs,
      'endTime': ?endTime,
      'message': ?message,
      'startTime': ?startTime,
      'status': ?status,
      'synchronizationId': ?synchronizationId,
      'synchronizationMode': synchronizationMode,
    };
  }

  factory ShareSynchronizationResponse.fromMap(Map<String, dynamic> map) {
    return ShareSynchronizationResponse(
      consumerEmail: (() { final guardedValue = map['consumerEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerName: (() { final guardedValue = map['consumerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerTenantName: (() { final guardedValue = map['consumerTenantName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      durationMs: (() { final guardedValue = map['durationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synchronizationId: (() { final guardedValue = map['synchronizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synchronizationMode: pulumi.Input.fromValue(map['synchronizationMode'] as String),
    );
  }
}

