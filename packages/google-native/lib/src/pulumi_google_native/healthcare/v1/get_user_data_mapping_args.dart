// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUserDataMapping.
class GetUserDataMappingArgs {
  final Input<String> consentStoreId;
  final Input<String> datasetId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> userDataMappingId;

  GetUserDataMappingArgs({
    required this.consentStoreId,
    required this.datasetId,
    required this.location,
    this.project,
    required this.userDataMappingId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consentStoreId'] = consentStoreId;
    map['datasetId'] = datasetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['userDataMappingId'] = userDataMappingId;
    return map;
  }

  factory GetUserDataMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetUserDataMappingArgs(
      consentStoreId: Input.asInput<String>(map['consentStoreId']),
      datasetId: Input.asInput<String>(map['datasetId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      userDataMappingId: Input.asInput<String>(map['userDataMappingId']),
    );
  }
}
