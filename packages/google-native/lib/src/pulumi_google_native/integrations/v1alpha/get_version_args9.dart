// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVersion.
class GetVersionArgs9 {
  final Input<String> integrationId;
  final Input<String> location;
  final Input<String> productId;
  final Input<String>? project;
  final Input<String> versionId;

  GetVersionArgs9({
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

  factory GetVersionArgs9.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs9(
      integrationId: Input.asInput<String>(map['integrationId']),
      location: Input.asInput<String>(map['location']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
