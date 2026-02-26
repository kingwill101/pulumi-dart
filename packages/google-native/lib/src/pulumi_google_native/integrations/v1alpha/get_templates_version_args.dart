// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTemplatesVersion.
class GetTemplatesVersionArgs {
  final Input<String> integrationtemplateId;
  final Input<String> location;
  final Input<String> productId;
  final Input<String>? project;
  final Input<String> versionId;

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
          Input.asInput<String>(map['integrationtemplateId']),
      location: Input.asInput<String>(map['location']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
