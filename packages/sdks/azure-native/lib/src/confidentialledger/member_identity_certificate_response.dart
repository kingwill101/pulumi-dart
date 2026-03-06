// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_tags_response.dart';

/// Object representing MemberIdentityCertificate for Managed CCF.
class MemberIdentityCertificateResponse {
  /// Member Identity Certificate
  final pulumi.Input<String>? certificate;
  /// Member Identity Certificate Encryption Key
  final pulumi.Input<String>? encryptionkey;
  final pulumi.Input<List<CertificateTagsResponse>>? tags;

  /// Creates a new [MemberIdentityCertificateResponse].
  /// [certificate] Member Identity Certificate
  /// [encryptionkey] Member Identity Certificate Encryption Key
  /// [tags] Optional.
  const MemberIdentityCertificateResponse({
    this.certificate,
    this.encryptionkey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'encryptionkey': ?encryptionkey,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<CertificateTagsResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<CertificateTagsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MemberIdentityCertificateResponse.fromMap(Map<String, dynamic> map) {
    return MemberIdentityCertificateResponse(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionkey: (() { final guardedValue = map['encryptionkey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateTagsResponse>(guardedValue, (value) => CertificateTagsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

