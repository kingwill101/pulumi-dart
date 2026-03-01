// ignore_for_file: unused_element, unnecessary_cast


/// Warning: This object is deprecated and will be removed after February, 2024. Please use the [Azure KeyVault Extension](https://learn.microsoft.com/azure/batch/batch-certificate-migration-guide) instead.
class CertificateReferenceResponse {
  /// The fully qualified ID of the certificate to install on the pool. This must be inside the same batch account as the pool.
  final String id;
  /// The default value is currentUser. This property is applicable only for pools configured with Windows compute nodes. For Linux compute nodes, the certificates are stored in a directory inside the task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the task to query for this location. For certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and certificates are placed in that directory.
  final String? storeLocation;
  /// This property is applicable only for pools configured with Windows compute nodes. Common store names include: My, Root, CA, Trust, Disallowed, TrustedPeople, TrustedPublisher, AuthRoot, AddressBook, but any custom store name can also be used. The default value is My.
  final String? storeName;
  /// Which user accounts on the compute node should have access to the private data of the certificate.
  final List<String>? visibility;

  /// Creates a new [CertificateReferenceResponse].
  /// [id] The fully qualified ID of the certificate to install on the pool. This must be inside the same batch account as the pool.
  /// [storeLocation] The default value is currentUser. This property is applicable only for pools configured with Windows compute nodes. For Linux compute nodes, the certificates are stored in a directory inside the task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the task to query for this location. For certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and certificates are placed in that directory.
  /// [storeName] This property is applicable only for pools configured with Windows compute nodes. Common store names include: My, Root, CA, Trust, Disallowed, TrustedPeople, TrustedPublisher, AuthRoot, AddressBook, but any custom store name can also be used. The default value is My.
  /// [visibility] Which user accounts on the compute node should have access to the private data of the certificate.
  CertificateReferenceResponse({
    required this.id,
    this.storeLocation,
    this.storeName,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storeLocation': ?storeLocation,
      'storeName': ?storeName,
      'visibility': ?visibility,
    };
  }

  factory CertificateReferenceResponse.fromMap(Map<String, dynamic> map) {
    return CertificateReferenceResponse(
      id: map['id'] as String,
      storeLocation: map['storeLocation'] == null ? null : map['storeLocation'] as String,
      storeName: map['storeName'] == null ? null : map['storeName'] as String,
      visibility: map['visibility'] == null ? null : (map['visibility'] as List).cast<String>(),
    );
  }
}

