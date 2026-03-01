// ignore_for_file: unused_element, unnecessary_cast


/// Loaded certificate payload
class LoadedCertificateResponse {
  /// Indicate whether the certificate will be loaded into default trust store, only work for Java runtime.
  final bool? loadTrustStore;
  /// Resource Id of loaded certificate
  final String resourceId;

  /// Creates a new [LoadedCertificateResponse].
  /// [loadTrustStore] Indicate whether the certificate will be loaded into default trust store, only work for Java runtime.
  /// [resourceId] Resource Id of loaded certificate
  LoadedCertificateResponse({
    this.loadTrustStore,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadTrustStore': ?loadTrustStore,
      'resourceId': resourceId,
    };
  }

  factory LoadedCertificateResponse.fromMap(Map<String, dynamic> map) {
    return LoadedCertificateResponse(
      loadTrustStore: map['loadTrustStore'] == null ? null : map['loadTrustStore'] as bool,
      resourceId: map['resourceId'] as String,
    );
  }
}

