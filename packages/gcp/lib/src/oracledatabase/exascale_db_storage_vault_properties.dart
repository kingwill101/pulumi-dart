// ignore_for_file: unused_element, unnecessary_cast

import 'exascale_db_storage_vault_properties_exascale_db_storage_details.dart';
import 'exascale_db_storage_vault_properties_time_zone.dart';

class ExascaleDbStorageVaultProperties {
  /// The size of additional flash cache in percentage of high capacity
  /// database storage.
  final int? additionalFlashCachePercent;

  /// (Output)
  /// The shape attributes of the VM clusters attached to the
  /// ExascaleDbStorageVault.
  final List<String>? attachedShapeAttributes;

  /// (Output)
  /// The shape attributes available for the VM clusters to be attached to the
  /// ExascaleDbStorageVault.
  final List<String>? availableShapeAttributes;

  /// The storage details of the ExascaleDbStorageVault.
  /// Structure is documented below.
  final ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails
  exascaleDbStorageDetails;

  /// (Output)
  /// Deep link to the OCI console to view this resource.
  final String? ociUri;

  /// (Output)
  /// The OCID for the ExascaleDbStorageVault.
  final String? ocid;

  /// (Output)
  /// The state of the ExascaleDbStorageVault.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// TERMINATING
  /// TERMINATED
  /// FAILED
  final String? state;

  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  /// Structure is documented below.
  final ExascaleDbStorageVaultPropertiesTimeZone? timeZone;

  /// (Output)
  /// The number of VM clusters associated with the ExascaleDbStorageVault.
  final int? vmClusterCount;

  /// (Output)
  /// The list of VM cluster OCIDs associated with the ExascaleDbStorageVault.
  final List<String>? vmClusterIds;

  /// Creates a new [ExascaleDbStorageVaultProperties].
  /// [additionalFlashCachePercent] The size of additional flash cache in percentage of high capacity
  /// [attachedShapeAttributes] (Output)
  /// [availableShapeAttributes] (Output)
  /// [exascaleDbStorageDetails] The storage details of the ExascaleDbStorageVault.
  /// [ociUri] (Output)
  /// [ocid] (Output)
  /// [state] (Output)
  /// [timeZone] Represents a time zone from the
  /// [vmClusterCount] (Output)
  /// [vmClusterIds] (Output)
  ExascaleDbStorageVaultProperties({
    this.additionalFlashCachePercent,
    this.attachedShapeAttributes,
    this.availableShapeAttributes,
    required this.exascaleDbStorageDetails,
    this.ociUri,
    this.ocid,
    this.state,
    this.timeZone,
    this.vmClusterCount,
    this.vmClusterIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFlashCachePercent': ?additionalFlashCachePercent,
      'attachedShapeAttributes': ?attachedShapeAttributes,
      'availableShapeAttributes': ?availableShapeAttributes,
      'exascaleDbStorageDetails': exascaleDbStorageDetails.toMap(),
      'ociUri': ?ociUri,
      'ocid': ?ocid,
      'state': ?state,
      'timeZone': ?timeZone == null ? null : timeZone!.toMap(),
      'vmClusterCount': ?vmClusterCount,
      'vmClusterIds': ?vmClusterIds,
    };
  }

  factory ExascaleDbStorageVaultProperties.fromMap(Map<String, dynamic> map) {
    return ExascaleDbStorageVaultProperties(
      additionalFlashCachePercent: map['additionalFlashCachePercent'] == null
          ? null
          : map['additionalFlashCachePercent'] as int,
      attachedShapeAttributes: map['attachedShapeAttributes'] == null
          ? null
          : (map['attachedShapeAttributes'] as List).cast<String>(),
      availableShapeAttributes: map['availableShapeAttributes'] == null
          ? null
          : (map['availableShapeAttributes'] as List).cast<String>(),
      exascaleDbStorageDetails:
          ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails.fromMap(
            (map['exascaleDbStorageDetails'] as Map).cast<String, dynamic>(),
          ),
      ociUri: map['ociUri'] == null ? null : map['ociUri'] as String,
      ocid: map['ocid'] == null ? null : map['ocid'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      timeZone: map['timeZone'] == null
          ? null
          : ExascaleDbStorageVaultPropertiesTimeZone.fromMap(
              (map['timeZone'] as Map).cast<String, dynamic>(),
            ),
      vmClusterCount: map['vmClusterCount'] == null
          ? null
          : map['vmClusterCount'] as int,
      vmClusterIds: map['vmClusterIds'] == null
          ? null
          : (map['vmClusterIds'] as List).cast<String>(),
    );
  }
}
