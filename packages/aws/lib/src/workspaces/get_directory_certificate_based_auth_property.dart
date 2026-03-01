// ignore_for_file: unused_element, unnecessary_cast

class GetDirectoryCertificateBasedAuthProperty {
  final String certificateAuthorityArn;
  final String status;

  /// Creates a new [GetDirectoryCertificateBasedAuthProperty].
  /// [certificateAuthorityArn] Required.
  /// [status] Required.
  GetDirectoryCertificateBasedAuthProperty({
    required this.certificateAuthorityArn,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArn': certificateAuthorityArn,
      'status': status,
    };
  }

  factory GetDirectoryCertificateBasedAuthProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDirectoryCertificateBasedAuthProperty(
      certificateAuthorityArn: map['certificateAuthorityArn'] as String,
      status: map['status'] as String,
    );
  }
}
