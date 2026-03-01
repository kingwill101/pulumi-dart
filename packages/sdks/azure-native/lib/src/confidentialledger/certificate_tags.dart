// ignore_for_file: unused_element, unnecessary_cast


/// Tags for Managed CCF Certificates
class CertificateTags {
  /// Additional tags for Managed CCF Certificates
  final Map<String, String>? tags;

  /// Creates a new [CertificateTags].
  /// [tags] Additional tags for Managed CCF Certificates
  CertificateTags({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory CertificateTags.fromMap(Map<String, dynamic> map) {
    return CertificateTags(
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

