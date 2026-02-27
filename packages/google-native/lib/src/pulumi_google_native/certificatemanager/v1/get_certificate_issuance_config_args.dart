// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCertificateIssuanceConfig.
class GetCertificateIssuanceConfigArgs {
  final pulumi.Input<String> certificateIssuanceConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetCertificateIssuanceConfigArgs({
    required this.certificateIssuanceConfigId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateIssuanceConfigId'] = certificateIssuanceConfigId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateIssuanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateIssuanceConfigArgs(
      certificateIssuanceConfigId:
          pulumi.Input.asInput<String>(map['certificateIssuanceConfigId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
