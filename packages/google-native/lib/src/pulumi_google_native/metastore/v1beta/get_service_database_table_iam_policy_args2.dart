// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceDatabaseTableIamPolicy.
class GetServiceDatabaseTableIamPolicyArgs2 {
  final Input<String> databaseId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> serviceId;
  final Input<String> tableId;

  GetServiceDatabaseTableIamPolicyArgs2({
    required this.databaseId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.serviceId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseId'] = databaseId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    map['tableId'] = tableId;
    return map;
  }

  factory GetServiceDatabaseTableIamPolicyArgs2.fromMap(
      Map<String, dynamic> map) {
    return GetServiceDatabaseTableIamPolicyArgs2(
      databaseId: Input.asInput<String>(map['databaseId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceId: Input.asInput<String>(map['serviceId']),
      tableId: Input.asInput<String>(map['tableId']),
    );
  }
}
