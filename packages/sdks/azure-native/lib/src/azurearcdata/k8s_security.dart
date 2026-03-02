// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_active_directory.dart';
import 'k8stransparent_data_encryption.dart';

/// The kubernetes security information.
class K8sSecurity {
  /// The kubernetes active directory information.
  final pulumi.Input<K8sActiveDirectory>? activeDirectory;
  /// Admin login secret key
  final pulumi.Input<String>? adminLoginSecret;
  /// Service certificate secret used
  final pulumi.Input<String>? serviceCertificateSecret;
  /// Transparent data encryption information.
  final pulumi.Input<K8stransparentDataEncryption>? transparentDataEncryption;

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
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<K8sActiveDirectory, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'adminLoginSecret': ?adminLoginSecret,
      'serviceCertificateSecret': ?serviceCertificateSecret,
      'transparentDataEncryption': ?pulumi.Input.mapOptionalInputValue<K8stransparentDataEncryption, Map<String, dynamic>>(transparentDataEncryption, (value) => value.toMap()),
    };
  }

  factory K8sSecurity.fromMap(Map<String, dynamic> map) {
    return K8sSecurity(
      activeDirectory: map['activeDirectory'] == null ? null : (K8sActiveDirectory.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>())).input(),
      adminLoginSecret: map['adminLoginSecret'] == null ? null : (map['adminLoginSecret'] as String).input(),
      serviceCertificateSecret: map['serviceCertificateSecret'] == null ? null : (map['serviceCertificateSecret'] as String).input(),
      transparentDataEncryption: map['transparentDataEncryption'] == null ? null : (K8stransparentDataEncryption.fromMap((map['transparentDataEncryption'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

