// ignore_for_file: unused_element, unnecessary_cast


class SecurityDeviceGroupRangeRule {
  /// Specifies the time range. represented in ISO 8601 duration format.
  final String duration;
  /// The maximum threshold in the given time window.
  final int max;
  /// The minimum threshold in the given time window.
  final int min;
  /// The type of supported rule type. Possible Values are `ActiveConnectionsNotInAllowedRange`, `AmqpC2DMessagesNotInAllowedRange`, `MqttC2DMessagesNotInAllowedRange`, `HttpC2DMessagesNotInAllowedRange`, `AmqpC2DRejectedMessagesNotInAllowedRange`, `MqttC2DRejectedMessagesNotInAllowedRange`, `HttpC2DRejectedMessagesNotInAllowedRange`, `AmqpD2CMessagesNotInAllowedRange`, `MqttD2CMessagesNotInAllowedRange`, `HttpD2CMessagesNotInAllowedRange`, `DirectMethodInvokesNotInAllowedRange`, `FailedLocalLoginsNotInAllowedRange`, `FileUploadsNotInAllowedRange`, `QueuePurgesNotInAllowedRange`, `TwinUpdatesNotInAllowedRange` and `UnauthorizedOperationsNotInAllowedRange`.
  final String type;

  /// Creates a new [SecurityDeviceGroupRangeRule].
  /// [duration] Specifies the time range. represented in ISO 8601 duration format.
  /// [max] The maximum threshold in the given time window.
  /// [min] The minimum threshold in the given time window.
  /// [type] The type of supported rule type. Possible Values are `ActiveConnectionsNotInAllowedRange`, `AmqpC2DMessagesNotInAllowedRange`, `MqttC2DMessagesNotInAllowedRange`, `HttpC2DMessagesNotInAllowedRange`, `AmqpC2DRejectedMessagesNotInAllowedRange`, `MqttC2DRejectedMessagesNotInAllowedRange`, `HttpC2DRejectedMessagesNotInAllowedRange`, `AmqpD2CMessagesNotInAllowedRange`, `MqttD2CMessagesNotInAllowedRange`, `HttpD2CMessagesNotInAllowedRange`, `DirectMethodInvokesNotInAllowedRange`, `FailedLocalLoginsNotInAllowedRange`, `FileUploadsNotInAllowedRange`, `QueuePurgesNotInAllowedRange`, `TwinUpdatesNotInAllowedRange` and `UnauthorizedOperationsNotInAllowedRange`.
  SecurityDeviceGroupRangeRule({
    required this.duration,
    required this.max,
    required this.min,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'max': max,
      'min': min,
      'type': type,
    };
  }

  factory SecurityDeviceGroupRangeRule.fromMap(Map<String, dynamic> map) {
    return SecurityDeviceGroupRangeRule(
      duration: map['duration'] as String,
      max: map['max'] as int,
      min: map['min'] as int,
      type: map['type'] as String,
    );
  }
}

