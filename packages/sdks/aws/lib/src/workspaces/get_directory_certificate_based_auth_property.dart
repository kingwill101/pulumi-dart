// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoryCertificateBasedAuthProperty {
  final pulumi.Input<String> certificateAuthorityArn;
  final pulumi.Input<String> status;

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
      certificateAuthorityArn: pulumi.Input.fromValue(
        map['certificateAuthorityArn'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
