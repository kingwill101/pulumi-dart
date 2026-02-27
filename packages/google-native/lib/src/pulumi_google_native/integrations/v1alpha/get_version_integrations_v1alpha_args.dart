// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVersion.
class GetVersionIntegrationsV1alphaArgs {
  final pulumi.Input<String> integrationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  GetVersionIntegrationsV1alphaArgs({
    required this.integrationId,
    required this.location,
    required this.productId,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['integrationId'] = integrationId;
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetVersionIntegrationsV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionIntegrationsV1alphaArgs(
      integrationId: pulumi.Input.asInput<String>(map['integrationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
