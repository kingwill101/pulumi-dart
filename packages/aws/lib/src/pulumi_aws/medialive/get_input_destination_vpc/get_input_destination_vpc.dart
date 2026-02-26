// ignore_for_file: unused_element, unnecessary_cast

class GetInputDestinationVpc {
  final String availabilityZone;
  final String networkInterfaceId;

  GetInputDestinationVpc({
    required this.availabilityZone,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZone'] = availabilityZone;
    map['networkInterfaceId'] = networkInterfaceId;
    return map;
  }

  factory GetInputDestinationVpc.fromMap(Map<String, dynamic> map) {
    return GetInputDestinationVpc(
      availabilityZone: map['availabilityZone'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
    );
  }
}
