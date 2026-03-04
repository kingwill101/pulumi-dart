// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_version_set_args_doc}
/// Arguments for getApiVersionSet.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_version_set_args_doc}
class GetApiVersionSetArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Api Version Set identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> versionSetId;

  /// Creates a new [GetApiVersionSetArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [versionSetId] Api Version Set identifier. Must be unique in the current API Management service instance.
  GetApiVersionSetArgs({
    required this.resourceGroupName,
    required this.serviceName,
    required this.versionSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'versionSetId': versionSetId,
    };
  }

  factory GetApiVersionSetArgs.fromMap(Map<String, dynamic> map) {
    return GetApiVersionSetArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      versionSetId: pulumi.Input.fromValue(map['versionSetId'] as String),
    );
  }
}
