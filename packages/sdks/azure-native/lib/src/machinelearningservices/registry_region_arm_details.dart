// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acr_details.dart';
import 'storage_account_details.dart';

/// Details for each region the registry is in
class RegistryRegionArmDetails {
  /// List of ACR accounts
  final pulumi.Input<List<AcrDetails>>? acrDetails;
  /// The location where the registry exists
  final pulumi.Input<String>? location;
  /// List of storage accounts
  final pulumi.Input<List<StorageAccountDetails>>? storageAccountDetails;

  /// Creates a new [RegistryRegionArmDetails].
  /// [acrDetails] List of ACR accounts
  /// [location] The location where the registry exists
  /// [storageAccountDetails] List of storage accounts
  RegistryRegionArmDetails({
    this.acrDetails,
    this.location,
    this.storageAccountDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrDetails': ?pulumi.Input.mapOptionalInputValue<List<AcrDetails>, List<Map<String, dynamic>>>(acrDetails, (value) => pulumi.Input.encodeList<AcrDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'storageAccountDetails': ?pulumi.Input.mapOptionalInputValue<List<StorageAccountDetails>, List<Map<String, dynamic>>>(storageAccountDetails, (value) => pulumi.Input.encodeList<StorageAccountDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegistryRegionArmDetails.fromMap(Map<String, dynamic> map) {
    return RegistryRegionArmDetails(
      acrDetails: map['acrDetails'] == null ? null : (pulumi.Input.decodeList<AcrDetails>(map['acrDetails'], (value) => AcrDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      storageAccountDetails: map['storageAccountDetails'] == null ? null : (pulumi.Input.decodeList<StorageAccountDetails>(map['storageAccountDetails'], (value) => StorageAccountDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

