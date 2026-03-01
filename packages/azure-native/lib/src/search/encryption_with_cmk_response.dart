// ignore_for_file: unused_element, unnecessary_cast


/// Describes a policy that determines how resources within the search service are to be encrypted with customer managed keys.
class EncryptionWithCmkResponse {
  /// Returns the status of search service compliance with respect to non-CMK-encrypted objects. If a service has more than one unencrypted object, and enforcement is enabled, the service is marked as noncompliant.
  final String encryptionComplianceStatus;
  /// Describes how a search service should enforce compliance if it finds objects that aren't encrypted with the customer-managed key.
  final String? enforcement;

  /// Creates a new [EncryptionWithCmkResponse].
  /// [encryptionComplianceStatus] Returns the status of search service compliance with respect to non-CMK-encrypted objects. If a service has more than one unencrypted object, and enforcement is enabled, the service is marked as noncompliant.
  /// [enforcement] Describes how a search service should enforce compliance if it finds objects that aren't encrypted with the customer-managed key.
  EncryptionWithCmkResponse({
    required this.encryptionComplianceStatus,
    this.enforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionComplianceStatus': encryptionComplianceStatus,
      'enforcement': ?enforcement,
    };
  }

  factory EncryptionWithCmkResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionWithCmkResponse(
      encryptionComplianceStatus: map['encryptionComplianceStatus'] as String,
      enforcement: map['enforcement'] == null ? null : map['enforcement'] as String,
    );
  }
}

