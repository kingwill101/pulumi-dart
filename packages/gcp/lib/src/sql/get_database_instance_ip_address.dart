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
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'timeToRetire': timeToRetire,
      'type': type,
    };
  }

  factory GetDatabaseInstanceIpAddress.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceIpAddress(
      ipAddress: map['ipAddress'] as String,
      timeToRetire: map['timeToRetire'] as String,
      type: map['type'] as String,
    );
  }
}
