// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_manager_private_key.dart';

/// Cert Manager CA Cert properties
class CertManagerCertOptions {
  /// Duration of CA cert.
  final pulumi.Input<String> duration;
  /// Cert Manager private key.
  final pulumi.Input<CertManagerPrivateKey> privateKey;
  /// Renew before time of CA cert.
  final pulumi.Input<String> renewBefore;

  /// Creates a new [CertManagerCertOptions].
  /// [duration] Duration of CA cert.
  /// [privateKey] Cert Manager private key.
  /// [renewBefore] Renew before time of CA cert.
  CertManagerCertOptions({
    required this.duration,
    required this.privateKey,
    required this.renewBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'privateKey': pulumi.Input.mapInputValue<CertManagerPrivateKey, Map<String, dynamic>>(privateKey, (value) => value.toMap()),
      'renewBefore': renewBefore,
    };
  }

  factory CertManagerCertOptions.fromMap(Map<String, dynamic> map) {
    return CertManagerCertOptions(
      duration: (map['duration'] as String).input(),
      privateKey: (CertManagerPrivateKey.fromMap((map['privateKey'] as Map).cast<String, dynamic>())).input(),
      renewBefore: (map['renewBefore'] as String).input(),
    );
  }
}

