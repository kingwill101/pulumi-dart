// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for Operational-Tier DataStore
class AzureOperationalStoreParametersResponse {
  /// type of datastore; Operational/Vault/Archive
  final pulumi.Input<String> dataStoreType;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'AzureOperationalStoreParameters'.
  final pulumi.Input<String> objectType;
  /// Gets or sets the Snapshot Resource Group Uri.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [AzureOperationalStoreParametersResponse].
  /// [dataStoreType] type of datastore; Operational/Vault/Archive
  /// [objectType] Type of the specific object - used for deserializing
  /// [resourceGroupId] Gets or sets the Snapshot Resource Group Uri.
  AzureOperationalStoreParametersResponse({
    required this.dataStoreType,
    required this.objectType,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreType': dataStoreType,
      'objectType': objectType,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory AzureOperationalStoreParametersResponse.fromMap(Map<String, dynamic> map) {
    return AzureOperationalStoreParametersResponse(
      dataStoreType: (map['dataStoreType'] as String).input(),
      objectType: (map['objectType'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
    );
  }
}

