// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAuthorizedCertificate.
class GetAuthorizedCertificateAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> authorizedCertificateId;
  final pulumi.Input<String>? view;

  GetAuthorizedCertificateAppengineV1betaArgs({
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

  factory GetAuthorizedCertificateAppengineV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorizedCertificateAppengineV1betaArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      authorizedCertificateId:
          pulumi.Input.asInput<String>(map['authorizedCertificateId']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
