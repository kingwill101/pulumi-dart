// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_app_sync_graphql_api_args_doc}
/// Arguments for getAppSyncGraphqlApi.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_app_sync_graphql_api_args_doc}
class GetAppSyncGraphqlApiArgs {
  /// Name of AppSyncGraphqlApi
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppSyncGraphqlApiArgs].
  /// [name] Name of AppSyncGraphqlApi
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAppSyncGraphqlApiArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppSyncGraphqlApiArgs.fromMap(Map<String, dynamic> map) {
    return GetAppSyncGraphqlApiArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

