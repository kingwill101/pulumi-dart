// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the messaging endpoints used by this IoT hub.
class MessagingEndpointPropertiesResponse {
  /// The lock duration. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  final String? lockDurationAsIso8601;
  /// The number of times the IoT hub attempts to deliver a message. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  final int? maxDeliveryCount;
  /// The period of time for which a message is available to consume before it is expired by the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  final String? ttlAsIso8601;

  /// Creates a new [MessagingEndpointPropertiesResponse].
  /// [lockDurationAsIso8601] The lock duration. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  /// [maxDeliveryCount] The number of times the IoT hub attempts to deliver a message. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  /// [ttlAsIso8601] The period of time for which a message is available to consume before it is expired by the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  MessagingEndpointPropertiesResponse({
    this.lockDurationAsIso8601,
    this.maxDeliveryCount,
    this.ttlAsIso8601,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockDurationAsIso8601': ?lockDurationAsIso8601,
      'maxDeliveryCount': ?maxDeliveryCount,
      'ttlAsIso8601': ?ttlAsIso8601,
    };
  }

  factory MessagingEndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MessagingEndpointPropertiesResponse(
      lockDurationAsIso8601: map['lockDurationAsIso8601'] == null ? null : map['lockDurationAsIso8601'] as String,
      maxDeliveryCount: map['maxDeliveryCount'] == null ? null : map['maxDeliveryCount'] as int,
      ttlAsIso8601: map['ttlAsIso8601'] == null ? null : map['ttlAsIso8601'] as String,
    );
  }
}

