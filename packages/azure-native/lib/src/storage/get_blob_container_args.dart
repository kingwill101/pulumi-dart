// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_blob_container_args_doc}
/// Arguments for getBlobContainer.
/// {@endtemplate}
/// {@macro pulumi_storage_get_blob_container_args_doc}
class GetBlobContainerArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  final pulumi.Input<String> containerName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBlobContainerArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [containerName] The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetBlobContainerArgs({
    required String accountName,
    required String containerName,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asInput<String>(containerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBlobContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetBlobContainerArgs(
      accountName: map['accountName'] as String,
      containerName: map['containerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

