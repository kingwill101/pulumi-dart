// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegation_signer_info_response.dart';

/// Represents the signing key.
class SigningKeyResponse {
  /// The delegation signer information.
  final List<DelegationSignerInfoResponse> delegationSignerInfo;
  /// The flags specifies how the key is used.
  final int flags;
  /// The key tag value of the DNSKEY Resource Record.
  final int keyTag;
  /// The protocol value. The value is always 3.
  final int protocol;
  /// The public key, represented as a Base64 encoding.
  final String publicKey;
  /// The security algorithm type represents the standard security algorithm number of the DNSKEY Resource Record. See: https://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xhtml
  final int securityAlgorithmType;

  /// Creates a new [SigningKeyResponse].
  /// [delegationSignerInfo] The delegation signer information.
  /// [flags] The flags specifies how the key is used.
  /// [keyTag] The key tag value of the DNSKEY Resource Record.
  /// [protocol] The protocol value. The value is always 3.
  /// [publicKey] The public key, represented as a Base64 encoding.
  /// [securityAlgorithmType] The security algorithm type represents the standard security algorithm number of the DNSKEY Resource Record. See: https://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xhtml
  SigningKeyResponse({
    required this.delegationSignerInfo,
    required this.flags,
    required this.keyTag,
    required this.protocol,
    required this.publicKey,
    required this.securityAlgorithmType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegationSignerInfo': pulumi.Input.encodeList<DelegationSignerInfoResponse, Map<String, dynamic>>(delegationSignerInfo, (value) => value.toMap()),
      'flags': flags,
      'keyTag': keyTag,
      'protocol': protocol,
      'publicKey': publicKey,
      'securityAlgorithmType': securityAlgorithmType,
    };
  }

  factory SigningKeyResponse.fromMap(Map<String, dynamic> map) {
    return SigningKeyResponse(
      delegationSignerInfo: pulumi.Input.decodeList<DelegationSignerInfoResponse>(map['delegationSignerInfo'], (value) => DelegationSignerInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      flags: map['flags'] as int,
      keyTag: map['keyTag'] as int,
      protocol: map['protocol'] as int,
      publicKey: map['publicKey'] as String,
      securityAlgorithmType: map['securityAlgorithmType'] as int,
    );
  }
}

