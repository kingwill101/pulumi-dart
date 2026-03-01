// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_azure_client_azure_client_args_doc}
/// The set of arguments for AzureClient.
/// {@endtemplate}
/// {@macro pulumi_container_azure_client_azure_client_args_doc}
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

  /// Creates a new [AzureClientArgs].
  /// [applicationId] The Azure Active Directory Application ID.
  /// [location] The location for the resource
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [tenantId] The Azure Active Directory Tenant ID.
  AzureClientArgs({
    required String applicationId,
    required String location,
    String? name,
    String? project,
    required String tenantId,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'location': location,
      'name': ?name,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory AzureClientArgs.fromMap(Map<String, dynamic> map) {
    return AzureClientArgs(
      applicationId: map['applicationId'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

