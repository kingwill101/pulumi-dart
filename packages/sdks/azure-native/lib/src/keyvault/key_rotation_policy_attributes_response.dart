// ignore_for_file: unused_element, unnecessary_cast


class KeyRotationPolicyAttributesResponse {
  /// Creation time in seconds since 1970-01-01T00:00:00Z.
  final double created;
  /// The expiration time for the new key version. It should be in ISO8601 format. Eg: 'P90D', 'P1Y'.
  final String? expiryTime;
  /// Last updated time in seconds since 1970-01-01T00:00:00Z.
  final double updated;

  /// Creates a new [KeyRotationPolicyAttributesResponse].
  /// [created] Creation time in seconds since 1970-01-01T00:00:00Z.
  /// [expiryTime] The expiration time for the new key version. It should be in ISO8601 format. Eg: 'P90D', 'P1Y'.
  /// [updated] Last updated time in seconds since 1970-01-01T00:00:00Z.
  KeyRotationPolicyAttributesResponse({
    required this.created,
    this.expiryTime,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'expiryTime': ?expiryTime,
      'updated': updated,
    };
  }

  factory KeyRotationPolicyAttributesResponse.fromMap(Map<String, dynamic> map) {
    return KeyRotationPolicyAttributesResponse(
      created: map['created'] as double,
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
      updated: map['updated'] as double,
    );
  }
}

