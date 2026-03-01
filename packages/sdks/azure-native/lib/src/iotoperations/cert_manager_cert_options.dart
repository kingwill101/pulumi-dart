// ignore_for_file: unused_element, unnecessary_cast

import 'cert_manager_private_key.dart';

/// Cert Manager Cert properties
class CertManagerCertOptions {
  /// Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final String duration;
  /// Configuration of certificate private key.
  final CertManagerPrivateKey privateKey;
  /// When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final String renewBefore;

  /// Creates a new [CertManagerCertOptions].
  /// [duration] Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  /// [privateKey] Configuration of certificate private key.
  /// [renewBefore] When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  CertManagerCertOptions({
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

  factory CertManagerCertOptions.fromMap(Map<String, dynamic> map) {
    return CertManagerCertOptions(
      duration: map['duration'] as String,
      privateKey: CertManagerPrivateKey.fromMap((map['privateKey'] as Map).cast<String, dynamic>()),
      renewBefore: map['renewBefore'] as String,
    );
  }
}

