// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AzureClient.
class AzureClientArgs {
  /// The Azure Active Directory Application ID.
  final pulumi.Input<String> applicationId;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// The name of this resource.
  final pulumi.Input<String>? name;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// The Azure Active Directory Tenant ID.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String> tenantId;

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
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
    );
  }
}
