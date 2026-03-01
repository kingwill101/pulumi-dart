// ignore_for_file: unused_element, unnecessary_cast


class GetEncryptionIdentity {
  /// The User Assigned Identity ID that is assigned to this Load Test Encryption.
  final String identityId;
  /// Type of Managed Service Identity that is assigned to this Load Test Encryption.
  final String type;

  /// Creates a new [GetEncryptionIdentity].
  /// [identityId] The User Assigned Identity ID that is assigned to this Load Test Encryption.
  /// [type] Type of Managed Service Identity that is assigned to this Load Test Encryption.
  GetEncryptionIdentity({
    required this.identityId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityId': identityId,
      'type': type,
    };
  }

  factory GetEncryptionIdentity.fromMap(Map<String, dynamic> map) {
    return GetEncryptionIdentity(
      identityId: map['identityId'] as String,
      type: map['type'] as String,
    );
  }
}

