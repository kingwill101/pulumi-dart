// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceIpAddress {
  final String ipAddress;
  final String timeToRetire;
  final String type;

  /// Creates a new [GetDatabaseInstanceIpAddress].
  /// [ipAddress] Required.
  /// [timeToRetire] Required.
  /// [type] Required.
  GetDatabaseInstanceIpAddress({
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

  factory GetDatabaseInstanceIpAddress.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceIpAddress(
      ipAddress: map['ipAddress'] as String,
      timeToRetire: map['timeToRetire'] as String,
      type: map['type'] as String,
    );
  }
}
