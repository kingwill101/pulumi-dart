// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_api_version_set_args_doc}
/// The set of arguments for WorkspaceApiVersionSet.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_api_version_set_args_doc}
class WorkspaceApiVersionSetArgs {
  /// Description of API Version Set.
  final pulumi.Input<String>? description;
  /// Name of API Version Set
  final pulumi.Input<String> displayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  final pulumi.Input<String>? versionHeaderName;
  /// Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  final pulumi.Input<String>? versionQueryName;
  /// Api Version Set identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? versionSetId;
  /// An value that determines where the API Version identifier will be located in a HTTP request.
  final pulumi.Input<String> versioningScheme;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceApiVersionSetArgs].
  /// [description] Description of API Version Set.
  /// [displayName] Name of API Version Set
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [versionHeaderName] Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  /// [versionQueryName] Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  /// [versionSetId] Api Version Set identifier. Must be unique in the current API Management service instance.
  /// [versioningScheme] An value that determines where the API Version identifier will be located in a HTTP request.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceApiVersionSetArgs({
    String? description,
    required String displayName,
    required String resourceGroupName,
    required String serviceName,
    String? versionHeaderName,
    String? versionQueryName,
    String? versionSetId,
    required String versioningScheme,
    required String workspaceId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      versionHeaderName = pulumi.Input.asOptionalInput<String>(versionHeaderName),
      versionQueryName = pulumi.Input.asOptionalInput<String>(versionQueryName),
      versionSetId = pulumi.Input.asOptionalInput<String>(versionSetId),
      versioningScheme = pulumi.Input.asInput<String>(versioningScheme),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'versionHeaderName': ?versionHeaderName,
      'versionQueryName': ?versionQueryName,
      'versionSetId': ?versionSetId,
      'versioningScheme': versioningScheme,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceApiVersionSetArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiVersionSetArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      versionHeaderName: map['versionHeaderName'] == null ? null : map['versionHeaderName'] as String,
      versionQueryName: map['versionQueryName'] == null ? null : map['versionQueryName'] as String,
      versionSetId: map['versionSetId'] == null ? null : map['versionSetId'] as String,
      versioningScheme: map['versioningScheme'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

