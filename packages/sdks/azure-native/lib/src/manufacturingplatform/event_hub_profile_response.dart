// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to EventHub Resource
class EventHubProfileResponse {
  /// Resource Id of Adx Instance
  final String adxInstanceId;
  /// Host Name
  final String hostName;

  /// Creates a new [EventHubProfileResponse].
  /// [adxInstanceId] Resource Id of Adx Instance
  /// [hostName] Host Name
  EventHubProfileResponse({
    required this.adxInstanceId,
    required this.hostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adxInstanceId': adxInstanceId,
      'hostName': hostName,
    };
  }

  factory EventHubProfileResponse.fromMap(Map<String, dynamic> map) {
    return EventHubProfileResponse(
      adxInstanceId: map['adxInstanceId'] as String,
      hostName: map['hostName'] as String,
    );
  }
}

