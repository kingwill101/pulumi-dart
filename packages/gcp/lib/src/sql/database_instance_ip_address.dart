// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceIpAddress {
  /// The IPv4 address assigned.
  final String? ipAddress;

  /// The time this IP address will be retired, in RFC
  /// 3339 format.
  final String? timeToRetire;

  /// The type of this IP address.
  final String? type;

  /// Creates a new [DatabaseInstanceIpAddress].
  /// [ipAddress] The IPv4 address assigned.
  /// [timeToRetire] The time this IP address will be retired, in RFC
  /// [type] The type of this IP address.
  DatabaseInstanceIpAddress({this.ipAddress, this.timeToRetire, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'timeToRetire': ?timeToRetire,
      'type': ?type,
    };
  }

  factory DatabaseInstanceIpAddress.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceIpAddress(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      timeToRetire: map['timeToRetire'] == null
          ? null
          : map['timeToRetire'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
