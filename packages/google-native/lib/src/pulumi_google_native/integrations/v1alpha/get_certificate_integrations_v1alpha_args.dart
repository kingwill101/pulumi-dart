// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCertificate.
class GetCertificateIntegrationsV1alphaArgs {
  final pulumi.Input<String> certificateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  GetCertificateIntegrationsV1alphaArgs({
    required this.certificateId,
    required this.location,
    required this.productId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateId'] = certificateId;
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateIntegrationsV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetCertificateIntegrationsV1alphaArgs(
      certificateId: pulumi.Input.asInput<String>(map['certificateId']),
      location: pulumi.Input.asInput<String>(map['location']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
