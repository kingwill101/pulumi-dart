// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMetastoreTableIamPolicy.
class GetMetastoreTableIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> databaseId;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> serviceId;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> table;

  GetMetastoreTableIamPolicyArgs({
    required this.databaseId,
    this.location,
    this.project,
    required this.serviceId,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseId'] = databaseId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    map['table'] = table;
    return map;
  }

  factory GetMetastoreTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMetastoreTableIamPolicyArgs(
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
      table: pulumi.Input.asInput<String>(map['table']),
    );
  }
}
