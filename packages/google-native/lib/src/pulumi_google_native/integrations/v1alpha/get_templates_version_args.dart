// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTemplatesVersion.
class GetTemplatesVersionArgs {
  final pulumi.Input<String> integrationtemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  GetTemplatesVersionArgs({
    required this.integrationtemplateId,
    required this.location,
    required this.productId,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['integrationtemplateId'] = integrationtemplateId;
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetTemplatesVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplatesVersionArgs(
      integrationtemplateId:
          pulumi.Input.asInput<String>(map['integrationtemplateId']),
      location: pulumi.Input.asInput<String>(map['location']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
