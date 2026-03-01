// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_apicollection_args_doc}
/// Arguments for getAPICollection.
/// {@endtemplate}
/// {@macro pulumi_security_get_apicollection_args_doc}
class GetAPICollectionArgs {
  /// A string representing the apiCollections resource within the Microsoft.Security provider namespace. This string matches the Azure API Management API name.
  final pulumi.Input<String> apiCollectionId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetAPICollectionArgs].
  /// [apiCollectionId] A string representing the apiCollections resource within the Microsoft.Security provider namespace. This string matches the Azure API Management API name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetAPICollectionArgs({
    required String apiCollectionId,
    required String resourceGroupName,
    required String serviceName,
  }) :
      apiCollectionId = pulumi.Input.asInput<String>(apiCollectionId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiCollectionId': apiCollectionId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetAPICollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetAPICollectionArgs(
      apiCollectionId: map['apiCollectionId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

