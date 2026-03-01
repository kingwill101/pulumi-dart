// ignore_for_file: unused_element, unnecessary_cast

import 'cert_manager_private_key_response.dart';

/// Cert Manager Cert properties
class CertManagerCertOptionsResponse {
  /// Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final String duration;
  /// Configuration of certificate private key.
  final CertManagerPrivateKeyResponse privateKey;
  /// When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final String renewBefore;

  /// Creates a new [CertManagerCertOptionsResponse].
  /// [duration] Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  /// [privateKey] Configuration of certificate private key.
  /// [renewBefore] When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
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

