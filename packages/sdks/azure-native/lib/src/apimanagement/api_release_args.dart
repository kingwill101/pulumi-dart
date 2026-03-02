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
    required this.apiId,
    this.notes,
    this.releaseId,
    required this.resourceGroupName,
    required this.serviceName,
  });

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
      apiId: (map['apiId'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes']! as String).input(),
      releaseId: map['releaseId'] == null ? null : (map['releaseId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

