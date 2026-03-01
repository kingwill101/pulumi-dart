// ignore_for_file: unused_element, unnecessary_cast


/// Internal knobs of Resource Limits for FE and BE
class TemporaryResourceLimitsConfig {
  /// Maximum number of messages a client can have inflight.
  final int maxInflightMessages;
  /// Maximum number of patch inflight per node.
  final int maxInflightPatches;
  /// Maximum number of patch a client can have in flight.
  final int maxInflightPatchesPerClient;
  /// Maximum message expiry interval, in seconds.
  final double? maxMessageExpirySecs;
  /// Maximum receive for external clients.
  final double maxQueuedMessages;
  /// Maximum receive QoS0 for external clients.
  final double maxQueuedQos0Messages;
  /// Maximum session expiry interval, in seconds.
  final double maxSessionExpirySecs;

  /// Creates a new [TemporaryResourceLimitsConfig].
  /// [maxInflightMessages] Maximum number of messages a client can have inflight.
  /// [maxInflightPatches] Maximum number of patch inflight per node.
  /// [maxInflightPatchesPerClient] Maximum number of patch a client can have in flight.
  /// [maxMessageExpirySecs] Maximum message expiry interval, in seconds.
  /// [maxQueuedMessages] Maximum receive for external clients.
  /// [maxQueuedQos0Messages] Maximum receive QoS0 for external clients.
  /// [maxSessionExpirySecs] Maximum session expiry interval, in seconds.
  TemporaryResourceLimitsConfig({
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

  factory TemporaryResourceLimitsConfig.fromMap(Map<String, dynamic> map) {
    return TemporaryResourceLimitsConfig(
      maxInflightMessages: map['maxInflightMessages'] as int,
      maxInflightPatches: map['maxInflightPatches'] as int,
      maxInflightPatchesPerClient: map['maxInflightPatchesPerClient'] as int,
      maxMessageExpirySecs: map['maxMessageExpirySecs'] == null ? null : map['maxMessageExpirySecs'] as double,
      maxQueuedMessages: map['maxQueuedMessages'] as double,
      maxQueuedQos0Messages: map['maxQueuedQos0Messages'] as double,
      maxSessionExpirySecs: map['maxSessionExpirySecs'] as double,
    );
  }
}

