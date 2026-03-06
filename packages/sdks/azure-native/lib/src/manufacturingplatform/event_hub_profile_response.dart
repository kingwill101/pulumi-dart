// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to EventHub Resource
class EventHubProfileResponse {
  /// Resource Id of Adx Instance
  final pulumi.Input<String> adxInstanceId;
  /// Host Name
  final pulumi.Input<String> hostName;

  /// Creates a new [EventHubProfileResponse].
  /// [adxInstanceId] Resource Id of Adx Instance
  /// [hostName] Host Name
  const EventHubProfileResponse({
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
      adxInstanceId: pulumi.Input.fromValue(map['adxInstanceId'] as String),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
    );
  }
}

