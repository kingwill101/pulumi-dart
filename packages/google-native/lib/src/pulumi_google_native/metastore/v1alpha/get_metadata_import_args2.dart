// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getMetadataImport.
class GetMetadataImportArgs2 {
  final Input<String> location;
  final Input<String> metadataImportId;
  final Input<String>? project;
  final Input<String> serviceId;

  GetMetadataImportArgs2({
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

  factory GetMetadataImportArgs2.fromMap(Map<String, dynamic> map) {
    return GetMetadataImportArgs2(
      location: Input.asInput<String>(map['location']),
      metadataImportId: Input.asInput<String>(map['metadataImportId']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
