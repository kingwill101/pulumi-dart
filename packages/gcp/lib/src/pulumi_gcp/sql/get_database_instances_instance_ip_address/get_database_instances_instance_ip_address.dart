// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceIpAddress {
  final String ipAddress;
  final String timeToRetire;
  final String type;

  GetDatabaseInstancesInstanceIpAddress({
    required this.ipAddress,
    required this.timeToRetire,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['timeToRetire'] = timeToRetire;
    map['type'] = type;
    return map;
  }

  factory GetDatabaseInstancesInstanceIpAddress.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceIpAddress(
      ipAddress: map['ipAddress'] as String,
      timeToRetire: map['timeToRetire'] as String,
      type: map['type'] as String,
    );
  }
}
