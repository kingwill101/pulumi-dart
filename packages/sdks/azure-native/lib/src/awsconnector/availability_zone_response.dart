// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AvailabilityZone
class AvailabilityZoneResponse {
  /// <p>The name of the Availability Zone.</p>
  final String? name;

  /// Creates a new [AvailabilityZoneResponse].
  /// [name] <p>The name of the Availability Zone.</p>
  AvailabilityZoneResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory AvailabilityZoneResponse.fromMap(Map<String, dynamic> map) {
    return AvailabilityZoneResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

