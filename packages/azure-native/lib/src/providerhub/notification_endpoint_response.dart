// ignore_for_file: unused_element, unnecessary_cast


class NotificationEndpointResponse {
  /// The locations.
  final List<String>? locations;
  /// The notification destination.
  final String? notificationDestination;

  /// Creates a new [NotificationEndpointResponse].
  /// [locations] The locations.
  /// [notificationDestination] The notification destination.
  NotificationEndpointResponse({
    this.locations,
    this.notificationDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'notificationDestination': ?notificationDestination,
    };
  }

  factory NotificationEndpointResponse.fromMap(Map<String, dynamic> map) {
    return NotificationEndpointResponse(
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      notificationDestination: map['notificationDestination'] == null ? null : map['notificationDestination'] as String,
    );
  }
}

