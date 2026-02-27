// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMetadataImport.
class GetMetadataImportMetastoreV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataImportId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  GetMetadataImportMetastoreV1betaArgs({
    required this.location,
    required this.metadataImportId,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['metadataImportId'] = metadataImportId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetMetadataImportMetastoreV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetMetadataImportMetastoreV1betaArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      metadataImportId: pulumi.Input.asInput<String>(map['metadataImportId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
    );
  }
}
