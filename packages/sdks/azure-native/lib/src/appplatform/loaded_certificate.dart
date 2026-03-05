// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Loaded certificate payload
class LoadedCertificate {
  /// Indicate whether the certificate will be loaded into default trust store, only work for Java runtime.
  final pulumi.Input<bool>? loadTrustStore;
  /// Resource Id of loaded certificate
  final pulumi.Input<String> resourceId;

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
      loadTrustStore: (() { final guardedValue = map['loadTrustStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

