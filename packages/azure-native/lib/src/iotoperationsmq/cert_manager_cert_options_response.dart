// ignore_for_file: unused_element, unnecessary_cast

import 'cert_manager_private_key_response.dart';

/// Cert Manager CA Cert properties
class CertManagerCertOptionsResponse {
  /// Duration of CA cert.
  final String duration;
  /// Cert Manager private key.
  final CertManagerPrivateKeyResponse privateKey;
  /// Renew before time of CA cert.
  final String renewBefore;

  /// Creates a new [CertManagerCertOptionsResponse].
  /// [duration] Duration of CA cert.
  /// [privateKey] Cert Manager private key.
  /// [renewBefore] Renew before time of CA cert.
  CertManagerCertOptionsResponse({
    required this.duration,
    required this.privateKey,
    required this.renewBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'privateKey': privateKey.toMap(),
      'renewBefore': renewBefore,
    };
  }

  factory CertManagerCertOptionsResponse.fromMap(Map<String, dynamic> map) {
    return CertManagerCertOptionsResponse(
      duration: map['duration'] as String,
      privateKey: CertManagerPrivateKeyResponse.fromMap((map['privateKey'] as Map).cast<String, dynamic>()),
      renewBefore: map['renewBefore'] as String,
    );
  }
}

