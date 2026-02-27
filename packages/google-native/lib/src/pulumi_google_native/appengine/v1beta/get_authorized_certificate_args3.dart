// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAuthorizedCertificate.
class GetAuthorizedCertificateArgs3 {
  final Input<String> appId;
  final Input<String> authorizedCertificateId;
  final Input<String>? view;

  GetAuthorizedCertificateArgs3({
    required this.appId,
    required this.authorizedCertificateId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['authorizedCertificateId'] = authorizedCertificateId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetAuthorizedCertificateArgs3.fromMap(Map<String, dynamic> map) {
    return GetAuthorizedCertificateArgs3(
      appId: Input.asInput<String>(map['appId']),
      authorizedCertificateId:
          Input.asInput<String>(map['authorizedCertificateId']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
