// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AzureClient.
class AzureClientArgs {
  /// The Azure Active Directory Application ID.
  final Input<String> applicationId;

  /// The location for the resource
  final Input<String> location;

  /// The name of this resource.
  final Input<String>? name;

  /// The project for the resource
  final Input<String>? project;

  /// The Azure Active Directory Tenant ID.
  ///
  ///
  ///
  /// - - -
  final Input<String> tenantId;

  AzureClientArgs({
    required this.applicationId,
    required this.location,
    this.name,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory AzureClientArgs.fromMap(Map<String, dynamic> map) {
    return AzureClientArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
