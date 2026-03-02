// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_storage_account_credential_args_doc}
/// Arguments for getStorageAccountCredential.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_storage_account_credential_args_doc}
class GetStorageAccountCredentialArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The storage account credential name.
  final pulumi.Input<String> name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStorageAccountCredentialArgs].
  /// [deviceName] The device name.
  /// [name] The storage account credential name.
  /// [resourceGroupName] The resource group name.
  GetStorageAccountCredentialArgs({
    required this.deviceName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStorageAccountCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageAccountCredentialArgs(
      deviceName: (map['deviceName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

