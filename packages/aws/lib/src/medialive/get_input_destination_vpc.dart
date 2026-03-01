// ignore_for_file: unused_element, unnecessary_cast

class GetInputDestinationVpc {
  final String availabilityZone;
  final String networkInterfaceId;

  /// Creates a new [GetInputDestinationVpc].
  /// [availabilityZone] Required.
  /// [networkInterfaceId] Required.
  GetInputDestinationVpc({
    required this.availabilityZone,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'networkInterfaceId': networkInterfaceId,
    };
  }

  factory GetInputDestinationVpc.fromMap(Map<String, dynamic> map) {
    return GetInputDestinationVpc(
      availabilityZone: map['availabilityZone'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
    );
  }
}
