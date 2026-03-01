// ignore_for_file: unused_element, unnecessary_cast


/// Loaded certificate payload
class LoadedCertificate {
  /// Indicate whether the certificate will be loaded into default trust store, only work for Java runtime.
  final bool? loadTrustStore;
  /// Resource Id of loaded certificate
  final String resourceId;

  /// Creates a new [LoadedCertificate].
  /// [loadTrustStore] Indicate whether the certificate will be loaded into default trust store, only work for Java runtime.
  /// [resourceId] Resource Id of loaded certificate
  LoadedCertificate({
    this.loadTrustStore,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadTrustStore': ?loadTrustStore,
      'resourceId': resourceId,
    };
  }

  factory LoadedCertificate.fromMap(Map<String, dynamic> map) {
    return LoadedCertificate(
      loadTrustStore: map['loadTrustStore'] == null ? null : map['loadTrustStore'] as bool,
      resourceId: map['resourceId'] as String,
    );
  }
}

