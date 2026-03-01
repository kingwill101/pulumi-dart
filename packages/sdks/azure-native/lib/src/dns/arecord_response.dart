// ignore_for_file: unused_element, unnecessary_cast


/// An A record.
class ARecordResponse {
  /// The IPv4 address of this A record.
  final String? ipv4Address;

  /// Creates a new [ARecordResponse].
  /// [ipv4Address] The IPv4 address of this A record.
  ARecordResponse({
    this.ipv4Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Address': ?ipv4Address,
    };
  }

  factory ARecordResponse.fromMap(Map<String, dynamic> map) {
    return ARecordResponse(
      ipv4Address: map['ipv4Address'] == null ? null : map['ipv4Address'] as String,
    );
  }
}

