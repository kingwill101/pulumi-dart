// ignore_for_file: unused_element, unnecessary_cast


/// The availability zone rule.
class ResourceTypeRegistrationPropertiesAvailabilityZoneRule {
  final String? availabilityZonePolicy;

  /// Creates a new [ResourceTypeRegistrationPropertiesAvailabilityZoneRule].
  /// [availabilityZonePolicy] Optional.
  ResourceTypeRegistrationPropertiesAvailabilityZoneRule({
    this.availabilityZonePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZonePolicy': ?availabilityZonePolicy,
    };
  }

  factory ResourceTypeRegistrationPropertiesAvailabilityZoneRule.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesAvailabilityZoneRule(
      availabilityZonePolicy: map['availabilityZonePolicy'] == null ? null : map['availabilityZonePolicy'] as String,
    );
  }
}

