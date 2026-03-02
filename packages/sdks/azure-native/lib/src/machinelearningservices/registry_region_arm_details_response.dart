// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acr_details_response.dart';
import 'storage_account_details_response.dart';

/// Details for each region the registry is in
class RegistryRegionArmDetailsResponse {
  /// List of ACR accounts
  final pulumi.Input<List<AcrDetailsResponse>>? acrDetails;
  /// The location where the registry exists
  final pulumi.Input<String>? location;
  /// List of storage accounts
  final pulumi.Input<List<StorageAccountDetailsResponse>>? storageAccountDetails;

  /// Creates a new [RegistryRegionArmDetailsResponse].
  /// [acrDetails] List of ACR accounts
  /// [location] The location where the registry exists
  /// [storageAccountDetails] List of storage accounts
  RegistryRegionArmDetailsResponse({
    this.acrDetails,
    this.location,
    this.storageAccountDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrDetails': ?pulumi.Input.mapOptionalInputValue<List<AcrDetailsResponse>, List<Map<String, dynamic>>>(acrDetails, (value) => pulumi.Input.encodeList<AcrDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'storageAccountDetails': ?pulumi.Input.mapOptionalInputValue<List<StorageAccountDetailsResponse>, List<Map<String, dynamic>>>(storageAccountDetails, (value) => pulumi.Input.encodeList<StorageAccountDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegistryRegionArmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RegistryRegionArmDetailsResponse(
      acrDetails: map['acrDetails'] == null ? null : (pulumi.Input.decodeList<AcrDetailsResponse>(map['acrDetails']!, (value) => AcrDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      storageAccountDetails: map['storageAccountDetails'] == null ? null : (pulumi.Input.decodeList<StorageAccountDetailsResponse>(map['storageAccountDetails']!, (value) => StorageAccountDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

