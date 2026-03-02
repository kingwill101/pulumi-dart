// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digest_response.dart';

/// A DS record. For more information about the DS record format, see RFC 4034: https://www.rfc-editor.org/rfc/rfc4034
class DsRecordResponse {
  /// The security algorithm type represents the standard security algorithm number of the DNSKEY Resource Record. See: https://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xhtml
  final pulumi.Input<int>? algorithm;
  /// The digest entity.
  final pulumi.Input<DigestResponse>? digest;
  /// The key tag value is used to determine which DNSKEY Resource Record is used for signature verification.
  final pulumi.Input<int>? keyTag;

  /// Creates a new [DsRecordResponse].
  /// [algorithm] The security algorithm type represents the standard security algorithm number of the DNSKEY Resource Record. See: https://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xhtml
  /// [digest] The digest entity.
  /// [keyTag] The key tag value is used to determine which DNSKEY Resource Record is used for signature verification.
  DsRecordResponse({
    this.algorithm,
    this.digest,
    this.keyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'digest': ?pulumi.Input.mapOptionalInputValue<DigestResponse, Map<String, dynamic>>(digest, (value) => value.toMap()),
      'keyTag': ?keyTag,
    };
  }

  factory DsRecordResponse.fromMap(Map<String, dynamic> map) {
    return DsRecordResponse(
      algorithm: map['algorithm'] == null ? null : (map['algorithm'] as int).input(),
      digest: map['digest'] == null ? null : (DigestResponse.fromMap((map['digest'] as Map).cast<String, dynamic>())).input(),
      keyTag: map['keyTag'] == null ? null : (map['keyTag'] as int).input(),
    );
  }
}

