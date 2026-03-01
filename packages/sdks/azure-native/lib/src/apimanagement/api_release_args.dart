// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_release_args_doc}
/// The set of arguments for ApiRelease.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_release_args_doc}
class ApiReleaseArgs {
  /// Identifier of the API the release belongs to.
  final pulumi.Input<String> apiId;
  /// Release Notes
  final pulumi.Input<String>? notes;
  /// Release identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? releaseId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ApiReleaseArgs].
  /// [apiId] Identifier of the API the release belongs to.
  /// [notes] Release Notes
  /// [releaseId] Release identifier within an API. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ApiReleaseArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? notes,
    pulumi.Output<String>? releaseId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      releaseId = pulumi.Input.asOptionalInput<String>(releaseId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'notes': ?notes,
      'releaseId': ?releaseId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ApiReleaseArgs.fromMap(Map<String, dynamic> map) {
    return ApiReleaseArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      releaseId: map['releaseId'] == null ? null : pulumi.Output.create<String>(map['releaseId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

