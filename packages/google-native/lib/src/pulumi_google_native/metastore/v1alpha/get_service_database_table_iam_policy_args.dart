// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceDatabaseTableIamPolicy.
class GetServiceDatabaseTableIamPolicyArgs {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> tableId;

  GetServiceDatabaseTableIamPolicyArgs({
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

  factory GetServiceDatabaseTableIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetServiceDatabaseTableIamPolicyArgs(
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
      tableId: pulumi.Input.asInput<String>(map['tableId']),
    );
  }
}
