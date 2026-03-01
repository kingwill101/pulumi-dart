// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_blob_service_properties_args_doc}
/// Arguments for getBlobServiceProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_get_blob_service_properties_args_doc}
class GetBlobServicePropertiesArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the blob Service within the specified storage account. Blob Service Name must be 'default'
  final pulumi.Input<String> blobServicesName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBlobServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [blobServicesName] The name of the blob Service within the specified storage account. Blob Service Name must be 'default'
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetBlobServicePropertiesArgs({
    required String accountName,
    required String blobServicesName,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      blobServicesName = pulumi.Input.asInput<String>(blobServicesName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'blobServicesName': blobServicesName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBlobServicePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return GetBlobServicePropertiesArgs(
      accountName: map['accountName'] as String,
      blobServicesName: map['blobServicesName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

