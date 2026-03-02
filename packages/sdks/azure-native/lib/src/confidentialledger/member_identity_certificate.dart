// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_tags.dart';

/// Object representing MemberIdentityCertificate for Managed CCF.
class MemberIdentityCertificate {
  /// Member Identity Certificate
  final pulumi.Input<String>? certificate;
  /// Member Identity Certificate Encryption Key
  final pulumi.Input<String>? encryptionkey;
  final pulumi.Input<List<CertificateTags>>? tags;

  /// Creates a new [MemberIdentityCertificate].
  /// [certificate] Member Identity Certificate
  /// [encryptionkey] Member Identity Certificate Encryption Key
  /// [tags] Optional.
  MemberIdentityCertificate({
    this.certificate,
    this.encryptionkey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'encryptionkey': ?encryptionkey,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<CertificateTags>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<CertificateTags, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MemberIdentityCertificate.fromMap(Map<String, dynamic> map) {
    return MemberIdentityCertificate(
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      encryptionkey: map['encryptionkey'] == null ? null : (map['encryptionkey'] as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<CertificateTags>(map['tags'], (value) => CertificateTags.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

