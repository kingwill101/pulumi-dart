// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_tags.dart';

/// Object representing MemberIdentityCertificate for Managed CCF.
class MemberIdentityCertificate {
  /// Member Identity Certificate
  final String? certificate;
  /// Member Identity Certificate Encryption Key
  final String? encryptionkey;
  final List<CertificateTags>? tags;

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
      'tags': ?tags == null ? null : pulumi.Input.encodeList<CertificateTags, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory MemberIdentityCertificate.fromMap(Map<String, dynamic> map) {
    return MemberIdentityCertificate(
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      encryptionkey: map['encryptionkey'] == null ? null : map['encryptionkey'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<CertificateTags>(map['tags'], (value) => CertificateTags.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

