/// Indicates whether Traffic View is 'Enabled' or 'Disabled' for the Traffic Manager profile. Null, indicates 'Disabled'. Enabling this feature will increase the cost of the Traffic Manage profile.
enum TrafficViewEnrollmentStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const TrafficViewEnrollmentStatus(this.value);
  final String value;

  static TrafficViewEnrollmentStatus fromValue(String value) {
    for (final item in TrafficViewEnrollmentStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrafficViewEnrollmentStatus value: $value');
  }
}

