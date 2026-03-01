// ignore_for_file: unused_element, unnecessary_cast

import 'k8s_active_directory.dart';
import 'k8stransparent_data_encryption.dart';

/// The kubernetes security information.
class K8sSecurity {
  /// The kubernetes active directory information.
  final K8sActiveDirectory? activeDirectory;
  /// Admin login secret key
  final String? adminLoginSecret;
  /// Service certificate secret used
  final String? serviceCertificateSecret;
  /// Transparent data encryption information.
  final K8stransparentDataEncryption? transparentDataEncryption;

  /// Creates a new [K8sSecurity].
  /// [activeDirectory] The kubernetes active directory information.
  /// [adminLoginSecret] Admin login secret key
  /// [serviceCertificateSecret] Service certificate secret used
  /// [transparentDataEncryption] Transparent data encryption information.
  K8sSecurity({
    this.activeDirectory,
    this.adminLoginSecret,
    this.serviceCertificateSecret,
    this.transparentDataEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?activeDirectory == null ? null : activeDirectory!.toMap(),
      'adminLoginSecret': ?adminLoginSecret,
      'serviceCertificateSecret': ?serviceCertificateSecret,
      'transparentDataEncryption': ?transparentDataEncryption == null ? null : transparentDataEncryption!.toMap(),
    };
  }

  factory K8sSecurity.fromMap(Map<String, dynamic> map) {
    return K8sSecurity(
      activeDirectory: map['activeDirectory'] == null ? null : K8sActiveDirectory.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>()),
      adminLoginSecret: map['adminLoginSecret'] == null ? null : map['adminLoginSecret'] as String,
      serviceCertificateSecret: map['serviceCertificateSecret'] == null ? null : map['serviceCertificateSecret'] as String,
      transparentDataEncryption: map['transparentDataEncryption'] == null ? null : K8stransparentDataEncryption.fromMap((map['transparentDataEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

