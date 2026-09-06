// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digest.dart';

/// A DS record. For more information about the DS record format, see RFC 4034: https://www.rfc-editor.org/rfc/rfc4034
class DsRecord {
  /// The security algorithm type represents the standard security algorithm number of the DNSKEY Resource Record. See: https://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xhtml
  final pulumi.Input<int?>? algorithm;
  /// The digest entity.
  final pulumi.Input<Digest?>? digest;
  /// The key tag value is used to determine which DNSKEY Resource Record is used for signature verification.
  final pulumi.Input<int?>? keyTag;

  /// Creates a new [DsRecord].
  /// [algorithm] The security algorithm type represents the standard security algorithm number of the DNSKEY Resource Record. See: https://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xhtml
  /// [digest] The digest entity.
  /// [keyTag] The key tag value is used to determine which DNSKEY Resource Record is used for signature verification.
  const DsRecord({
    this.algorithm,
    this.digest,
    this.keyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'digest': ?pulumi.Input.mapOptionalInputValue<Digest, Map<String, dynamic>>(digest, (value) => value.toMap()),
      'keyTag': ?keyTag,
    };
  }

  factory DsRecord.fromMap(Map<String, dynamic> map) {
    return DsRecord(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Digest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyTag: (() { final guardedValue = map['keyTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
