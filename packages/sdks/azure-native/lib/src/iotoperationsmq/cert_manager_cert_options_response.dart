// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_manager_private_key_response.dart';

/// Cert Manager CA Cert properties
class CertManagerCertOptionsResponse {
  /// Duration of CA cert.
  final pulumi.Input<String> duration;
  /// Cert Manager private key.
  final pulumi.Input<CertManagerPrivateKeyResponse> privateKey;
  /// Renew before time of CA cert.
  final pulumi.Input<String> renewBefore;

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
      'privateKey': pulumi.Input.mapInputValue<CertManagerPrivateKeyResponse, Map<String, dynamic>>(privateKey, (value) => value.toMap()),
      'renewBefore': renewBefore,
    };
  }

  factory CertManagerCertOptionsResponse.fromMap(Map<String, dynamic> map) {
    return CertManagerCertOptionsResponse(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      privateKey: pulumi.Input.fromValue(CertManagerPrivateKeyResponse.fromMap((map['privateKey']! as Map).cast<String, dynamic>())),
      renewBefore: pulumi.Input.fromValue(map['renewBefore'] as String),
    );
  }
}

