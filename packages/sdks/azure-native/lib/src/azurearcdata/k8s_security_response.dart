// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_active_directory_response.dart';
import 'k8stransparent_data_encryption_response.dart';

/// The kubernetes security information.
class K8sSecurityResponse {
  /// The kubernetes active directory information.
  final pulumi.Input<K8sActiveDirectoryResponse>? activeDirectory;
  /// Admin login secret key
  final pulumi.Input<String>? adminLoginSecret;
  /// Service certificate secret used
  final pulumi.Input<String>? serviceCertificateSecret;
  /// Transparent data encryption information.
  final pulumi.Input<K8stransparentDataEncryptionResponse>? transparentDataEncryption;

  /// Creates a new [K8sSecurityResponse].
  /// [activeDirectory] The kubernetes active directory information.
  /// [adminLoginSecret] Admin login secret key
  /// [serviceCertificateSecret] Service certificate secret used
  /// [transparentDataEncryption] Transparent data encryption information.
  K8sSecurityResponse({
    this.activeDirectory,
    this.adminLoginSecret,
    this.serviceCertificateSecret,
    this.transparentDataEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<K8sActiveDirectoryResponse, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'adminLoginSecret': ?adminLoginSecret,
      'serviceCertificateSecret': ?serviceCertificateSecret,
      'transparentDataEncryption': ?pulumi.Input.mapOptionalInputValue<K8stransparentDataEncryptionResponse, Map<String, dynamic>>(transparentDataEncryption, (value) => value.toMap()),
    };
  }

  factory K8sSecurityResponse.fromMap(Map<String, dynamic> map) {
    return K8sSecurityResponse(
      activeDirectory: (() { final guardedValue = map['activeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(K8sActiveDirectoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      adminLoginSecret: (() { final guardedValue = map['adminLoginSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceCertificateSecret: (() { final guardedValue = map['serviceCertificateSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentDataEncryption: (() { final guardedValue = map['transparentDataEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(K8stransparentDataEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

