// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acr_details_response.dart';
import 'storage_account_details_response.dart';

/// Details for each region the registry is in
class RegistryRegionArmDetailsResponse {
  /// List of ACR accounts
  final List<AcrDetailsResponse>? acrDetails;
  /// The location where the registry exists
  final String? location;
  /// List of storage accounts
  final List<StorageAccountDetailsResponse>? storageAccountDetails;

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
      'acrDetails': ?acrDetails == null ? null : pulumi.Input.encodeList<AcrDetailsResponse, Map<String, dynamic>>(acrDetails!, (value) => value.toMap()),
      'location': ?location,
      'storageAccountDetails': ?storageAccountDetails == null ? null : pulumi.Input.encodeList<StorageAccountDetailsResponse, Map<String, dynamic>>(storageAccountDetails!, (value) => value.toMap()),
    };
  }

  factory RegistryRegionArmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RegistryRegionArmDetailsResponse(
      acrDetails: map['acrDetails'] == null ? null : pulumi.Input.decodeList<AcrDetailsResponse>(map['acrDetails'], (value) => AcrDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      storageAccountDetails: map['storageAccountDetails'] == null ? null : pulumi.Input.decodeList<StorageAccountDetailsResponse>(map['storageAccountDetails'], (value) => StorageAccountDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

