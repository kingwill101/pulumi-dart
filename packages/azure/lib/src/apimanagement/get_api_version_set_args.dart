// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_version_set_get_api_version_set_args_doc}
/// Arguments for getApiVersionSet.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_version_set_get_api_version_set_args_doc}
class GetApiVersionSetArgs {
  /// The name of the API Management Service where the API Version Set exists.
  final pulumi.Input<String> apiManagementName;
  /// The name of the API Version Set.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the parent API Management Service exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApiVersionSetArgs].
  /// [apiManagementName] The name of the API Management Service where the API Version Set exists.
  /// [name] The name of the API Version Set.
  /// [resourceGroupName] The name of the Resource Group in which the parent API Management Service exists.
  GetApiVersionSetArgs({
    required String apiManagementName,
    required String name,
    required String resourceGroupName,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApiVersionSetArgs.fromMap(Map<String, dynamic> map) {
    return GetApiVersionSetArgs(
      apiManagementName: map['apiManagementName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

