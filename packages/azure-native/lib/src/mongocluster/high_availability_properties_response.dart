// ignore_for_file: unused_element, unnecessary_cast


/// The high availability properties of the cluster.
class HighAvailabilityPropertiesResponse {
  /// The target high availability mode requested for the cluster.
  final String? targetMode;

  /// Creates a new [HighAvailabilityPropertiesResponse].
  /// [targetMode] The target high availability mode requested for the cluster.
  HighAvailabilityPropertiesResponse({
    this.targetMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetMode': ?targetMode,
    };
  }

  factory HighAvailabilityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HighAvailabilityPropertiesResponse(
      targetMode: map['targetMode'] == null ? null : map['targetMode'] as String,
    );
  }
}

