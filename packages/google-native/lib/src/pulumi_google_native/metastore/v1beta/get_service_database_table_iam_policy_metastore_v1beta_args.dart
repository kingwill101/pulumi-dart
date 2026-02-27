// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceDatabaseTableIamPolicy.
class GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> tableId;

  GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs({
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

  factory GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs(
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
