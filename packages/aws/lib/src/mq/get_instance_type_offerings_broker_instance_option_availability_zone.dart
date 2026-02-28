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
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone(
      name: map['name'] as String,
    );
  }
}
