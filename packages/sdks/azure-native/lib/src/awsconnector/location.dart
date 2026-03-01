// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Location
class Location {
  /// The Availability Zone in which to create your instance. Use the following format: us-east-2a (case sensitive). Be sure to add the include Availability Zones parameter to your request.
  final String? availabilityZone;
  /// The Region Name in which to create your instance.
  final String? regionName;

  /// Creates a new [Location].
  /// [availabilityZone] The Availability Zone in which to create your instance. Use the following format: us-east-2a (case sensitive). Be sure to add the include Availability Zones parameter to your request.
  /// [regionName] The Region Name in which to create your instance.
  Location({
    this.availabilityZone,
    this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'regionName': ?regionName,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      regionName: map['regionName'] == null ? null : map['regionName'] as String,
    );
  }
}

