// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Loaded certificate payload
class LoadedCertificateResponse {
  /// Indicate whether the certificate will be loaded into default trust store, only work for Java runtime.
  final pulumi.Input<bool>? loadTrustStore;
  /// Resource Id of loaded certificate
  final pulumi.Input<String> resourceId;

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
      loadTrustStore: map['loadTrustStore'] == null ? null : (map['loadTrustStore'] as bool).input(),
      resourceId: (map['resourceId'] as String).input(),
    );
  }
}

