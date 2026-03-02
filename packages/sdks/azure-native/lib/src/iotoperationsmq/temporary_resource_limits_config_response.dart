// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Internal knobs of Resource Limits for FE and BE
class TemporaryResourceLimitsConfigResponse {
  /// Maximum number of messages a client can have inflight.
  final pulumi.Input<int> maxInflightMessages;
  /// Maximum number of patch inflight per node.
  final pulumi.Input<int> maxInflightPatches;
  /// Maximum number of patch a client can have in flight.
  final pulumi.Input<int> maxInflightPatchesPerClient;
  /// Maximum message expiry interval, in seconds.
  final pulumi.Input<double>? maxMessageExpirySecs;
  /// Maximum receive for external clients.
  final pulumi.Input<double> maxQueuedMessages;
  /// Maximum receive QoS0 for external clients.
  final pulumi.Input<double> maxQueuedQos0Messages;
  /// Maximum session expiry interval, in seconds.
  final pulumi.Input<double> maxSessionExpirySecs;

  /// Creates a new [TemporaryResourceLimitsConfigResponse].
  /// [maxInflightMessages] Maximum number of messages a client can have inflight.
  /// [maxInflightPatches] Maximum number of patch inflight per node.
  /// [maxInflightPatchesPerClient] Maximum number of patch a client can have in flight.
  /// [maxMessageExpirySecs] Maximum message expiry interval, in seconds.
  /// [maxQueuedMessages] Maximum receive for external clients.
  /// [maxQueuedQos0Messages] Maximum receive QoS0 for external clients.
  /// [maxSessionExpirySecs] Maximum session expiry interval, in seconds.
  TemporaryResourceLimitsConfigResponse({
    required this.maxInflightMessages,
    required this.maxInflightPatches,
    required this.maxInflightPatchesPerClient,
    this.maxMessageExpirySecs,
    required this.maxQueuedMessages,
    required this.maxQueuedQos0Messages,
    required this.maxSessionExpirySecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInflightMessages': maxInflightMessages,
      'maxInflightPatches': maxInflightPatches,
      'maxInflightPatchesPerClient': maxInflightPatchesPerClient,
      'maxMessageExpirySecs': ?maxMessageExpirySecs,
      'maxQueuedMessages': maxQueuedMessages,
      'maxQueuedQos0Messages': maxQueuedQos0Messages,
      'maxSessionExpirySecs': maxSessionExpirySecs,
    };
  }

  factory TemporaryResourceLimitsConfigResponse.fromMap(Map<String, dynamic> map) {
    return TemporaryResourceLimitsConfigResponse(
      maxInflightMessages: (map['maxInflightMessages'] as int).input(),
      maxInflightPatches: (map['maxInflightPatches'] as int).input(),
      maxInflightPatchesPerClient: (map['maxInflightPatchesPerClient'] as int).input(),
      maxMessageExpirySecs: map['maxMessageExpirySecs'] == null ? null : (map['maxMessageExpirySecs']! as double).input(),
      maxQueuedMessages: (map['maxQueuedMessages'] as double).input(),
      maxQueuedQos0Messages: (map['maxQueuedQos0Messages'] as double).input(),
      maxSessionExpirySecs: (map['maxSessionExpirySecs'] as double).input(),
    );
  }
}

