// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_documentation_args_doc}
/// Arguments for getDocumentation.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_documentation_args_doc}
class GetDocumentationArgs {
  /// Documentation identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> documentationId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetDocumentationArgs].
  /// [documentationId] Documentation identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const GetDocumentationArgs({
    required this.documentationId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentationId': documentationId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetDocumentationArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentationArgs(
      documentationId: pulumi.Input.fromValue(map['documentationId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

