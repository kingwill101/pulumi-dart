// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tags for Managed CCF Certificates
class CertificateTags {
  /// Additional tags for Managed CCF Certificates
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CertificateTags].
  /// [tags] Additional tags for Managed CCF Certificates
  const CertificateTags({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory CertificateTags.fromMap(Map<String, dynamic> map) {
    return CertificateTags(
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
