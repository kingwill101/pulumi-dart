// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acr_details.dart';
import 'storage_account_details.dart';

/// Details for each region the registry is in
class RegistryRegionArmDetails {
  /// List of ACR accounts
  final List<AcrDetails>? acrDetails;
  /// The location where the registry exists
  final String? location;
  /// List of storage accounts
  final List<StorageAccountDetails>? storageAccountDetails;

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
      'acrDetails': ?acrDetails == null ? null : pulumi.Input.encodeList<AcrDetails, Map<String, dynamic>>(acrDetails!, (value) => value.toMap()),
      'location': ?location,
      'storageAccountDetails': ?storageAccountDetails == null ? null : pulumi.Input.encodeList<StorageAccountDetails, Map<String, dynamic>>(storageAccountDetails!, (value) => value.toMap()),
    };
  }

  factory RegistryRegionArmDetails.fromMap(Map<String, dynamic> map) {
    return RegistryRegionArmDetails(
      acrDetails: map['acrDetails'] == null ? null : pulumi.Input.decodeList<AcrDetails>(map['acrDetails'], (value) => AcrDetails.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      storageAccountDetails: map['storageAccountDetails'] == null ? null : pulumi.Input.decodeList<StorageAccountDetails>(map['storageAccountDetails'], (value) => StorageAccountDetails.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

