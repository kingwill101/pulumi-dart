// ignore_for_file: unused_element, unnecessary_cast

class GetDirectoryCertificateBasedAuthProperty {
  final String certificateAuthorityArn;
  final String status;

  GetDirectoryCertificateBasedAuthProperty({
    required this.certificateAuthorityArn,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthorityArn'] = certificateAuthorityArn;
    map['status'] = status;
    return map;
  }

  factory GetDirectoryCertificateBasedAuthProperty.fromMap(
      Map<String, dynamic> map) {
    return GetDirectoryCertificateBasedAuthProperty(
      certificateAuthorityArn: map['certificateAuthorityArn'] as String,
      status: map['status'] as String,
    );
  }
}
