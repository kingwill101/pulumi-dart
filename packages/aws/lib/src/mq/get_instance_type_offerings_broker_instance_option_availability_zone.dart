// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone {
  /// Name of the Availability Zone.
  final String name;

  /// Creates a new [GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone].
  /// [name] Name of the Availability Zone.
  GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone(
      name: map['name'] as String,
    );
  }
}

