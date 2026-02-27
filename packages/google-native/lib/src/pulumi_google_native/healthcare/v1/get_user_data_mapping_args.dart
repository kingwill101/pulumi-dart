// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUserDataMapping.
class GetUserDataMappingArgs {
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> userDataMappingId;

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
      consentStoreId: pulumi.Input.asInput<String>(map['consentStoreId']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      userDataMappingId: pulumi.Input.asInput<String>(map['userDataMappingId']),
    );
  }
}
