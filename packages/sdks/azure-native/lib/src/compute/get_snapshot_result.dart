// ignore_for_file: unused_element, unnecessary_cast

import 'copy_completion_error_response.dart';
import 'creation_data_response.dart';
import 'disk_purchase_plan_response.dart';
import 'disk_security_profile_response.dart';
import 'encryption_response.dart';
import 'encryption_settings_collection_response.dart';
import 'extended_location_response.dart';
import 'snapshot_sku_response.dart';
import 'supported_capabilities_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Percentage complete for the background copy when a resource is created via the CopyStart operation.
  final double? completionPercent;
  /// Indicates the error details if the background copy of a resource created via the CopyStart operation fails.
  final CopyCompletionErrorResponse? copyCompletionError;
  /// Disk source information. CreationData information cannot be changed after the disk has been created.
  final CreationDataResponse? creationData;
  /// Additional authentication requirements when exporting or uploading to a disk or snapshot.
  final String? dataAccessAuthMode;
  /// ARM id of the DiskAccess resource for using private endpoints on disks.
  final String? diskAccessId;
  /// The size of the disk in bytes. This field is read only.
  final double? diskSizeBytes;
  /// If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  final int? diskSizeGB;
  /// The state of the snapshot.
  final String? diskState;
  /// Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  final EncryptionResponse? encryption;
  /// Encryption settings collection used be Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  final EncryptionSettingsCollectionResponse? encryptionSettingsCollection;
  /// The extended location where the snapshot will be created. Extended location cannot be changed.
  final ExtendedLocationResponse? extendedLocation;
  /// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  final String? hyperVGeneration;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Whether a snapshot is incremental. Incremental snapshots on the same disk occupy less space than full snapshots and can be diffed.
  final bool? incremental;
  /// Incremental snapshots for a disk share an incremental snapshot family id. The Get Page Range Diff API can only be called on incremental snapshots with the same family id.
  final String? incrementalSnapshotFamilyId;
  /// The geo-location where the resource lives
  final String? location;
  /// Unused. Always Null.
  final String? managedBy;
  /// The name of the resource
  final String? name;
  /// Policy for accessing the disk via network.
  final String? networkAccessPolicy;
  /// The Operating System type.
  final String? osType;
  /// The disk provisioning state.
  final String? provisioningState;
  /// Policy for controlling export on the disk.
  final String? publicNetworkAccess;
  /// Purchase plan information for the image from which the source disk for the snapshot was originally created.
  final DiskPurchasePlanResponse? purchasePlan;
  /// Contains the security related information for the resource.
  final DiskSecurityProfileResponse? securityProfile;
  /// The snapshots sku name. Can be Standard_LRS, Premium_LRS, or Standard_ZRS. This is an optional parameter for incremental snapshot and the default behavior is the SKU will be set to the same sku as the previous snapshot
  final SnapshotSkuResponse? sku;
  /// List of supported capabilities for the image from which the source disk from the snapshot was originally created.
  final SupportedCapabilitiesResponse? supportedCapabilities;
  /// Indicates the OS on a snapshot supports hibernation.
  final bool? supportsHibernation;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The time when the snapshot was created.
  final String? timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Unique Guid identifying the resource.
  final String? uniqueId;

  /// Creates a new [GetSnapshotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [completionPercent] Percentage complete for the background copy when a resource is created via the CopyStart operation.
  /// [copyCompletionError] Indicates the error details if the background copy of a resource created via the CopyStart operation fails.
  /// [creationData] Disk source information. CreationData information cannot be changed after the disk has been created.
  /// [dataAccessAuthMode] Additional authentication requirements when exporting or uploading to a disk or snapshot.
  /// [diskAccessId] ARM id of the DiskAccess resource for using private endpoints on disks.
  /// [diskSizeBytes] The size of the disk in bytes. This field is read only.
  /// [diskSizeGB] If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  /// [diskState] The state of the snapshot.
  /// [encryption] Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  /// [encryptionSettingsCollection] Encryption settings collection used be Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  /// [extendedLocation] The extended location where the snapshot will be created. Extended location cannot be changed.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [incremental] Whether a snapshot is incremental. Incremental snapshots on the same disk occupy less space than full snapshots and can be diffed.
  /// [incrementalSnapshotFamilyId] Incremental snapshots for a disk share an incremental snapshot family id. The Get Page Range Diff API can only be called on incremental snapshots with the same family id.
  /// [location] The geo-location where the resource lives
  /// [managedBy] Unused. Always Null.
  /// [name] The name of the resource
  /// [networkAccessPolicy] Policy for accessing the disk via network.
  /// [osType] The Operating System type.
  /// [provisioningState] The disk provisioning state.
  /// [publicNetworkAccess] Policy for controlling export on the disk.
  /// [purchasePlan] Purchase plan information for the image from which the source disk for the snapshot was originally created.
  /// [securityProfile] Contains the security related information for the resource.
  /// [sku] The snapshots sku name. Can be Standard_LRS, Premium_LRS, or Standard_ZRS. This is an optional parameter for incremental snapshot and the default behavior is the SKU will be set to the same sku as the previous snapshot
  /// [supportedCapabilities] List of supported capabilities for the image from which the source disk from the snapshot was originally created.
  /// [supportsHibernation] Indicates the OS on a snapshot supports hibernation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeCreated] The time when the snapshot was created.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueId] Unique Guid identifying the resource.
  const GetSnapshotResult({
    this.azureApiVersion,
    this.completionPercent,
    this.copyCompletionError,
    this.creationData,
    this.dataAccessAuthMode,
    this.diskAccessId,
    this.diskSizeBytes,
    this.diskSizeGB,
    this.diskState,
    this.encryption,
    this.encryptionSettingsCollection,
    this.extendedLocation,
    this.hyperVGeneration,
    this.id,
    this.incremental,
    this.incrementalSnapshotFamilyId,
    this.location,
    this.managedBy,
    this.name,
    this.networkAccessPolicy,
    this.osType,
    this.provisioningState,
    this.publicNetworkAccess,
    this.purchasePlan,
    this.securityProfile,
    this.sku,
    this.supportedCapabilities,
    this.supportsHibernation,
    this.systemData,
    this.tags,
    this.timeCreated,
    this.type,
    this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'completionPercent': ?completionPercent,
      'copyCompletionError': ?copyCompletionError?.toMap(),
      'creationData': ?creationData?.toMap(),
      'dataAccessAuthMode': ?dataAccessAuthMode,
      'diskAccessId': ?diskAccessId,
      'diskSizeBytes': ?diskSizeBytes,
      'diskSizeGB': ?diskSizeGB,
      'diskState': ?diskState,
      'encryption': ?encryption?.toMap(),
      'encryptionSettingsCollection': ?encryptionSettingsCollection?.toMap(),
      'extendedLocation': ?extendedLocation?.toMap(),
      'hyperVGeneration': ?hyperVGeneration,
      'id': ?id,
      'incremental': ?incremental,
      'incrementalSnapshotFamilyId': ?incrementalSnapshotFamilyId,
      'location': ?location,
      'managedBy': ?managedBy,
      'name': ?name,
      'networkAccessPolicy': ?networkAccessPolicy,
      'osType': ?osType,
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'purchasePlan': ?purchasePlan?.toMap(),
      'securityProfile': ?securityProfile?.toMap(),
      'sku': ?sku?.toMap(),
      'supportedCapabilities': ?supportedCapabilities?.toMap(),
      'supportsHibernation': ?supportsHibernation,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'timeCreated': ?timeCreated,
      'type': ?type,
      'uniqueId': ?uniqueId,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      completionPercent: (() { final guardedValue = map['completionPercent']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      copyCompletionError: (() { final guardedValue = map['copyCompletionError']; if (guardedValue == null) return null; return CopyCompletionErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationData: (() { final guardedValue = map['creationData']; if (guardedValue == null) return null; return CreationDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataAccessAuthMode: (() { final guardedValue = map['dataAccessAuthMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskAccessId: (() { final guardedValue = map['diskAccessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskSizeBytes: (() { final guardedValue = map['diskSizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      diskState: (() { final guardedValue = map['diskState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryptionSettingsCollection: (() { final guardedValue = map['encryptionSettingsCollection']; if (guardedValue == null) return null; return EncryptionSettingsCollectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      incremental: (() { final guardedValue = map['incremental']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      incrementalSnapshotFamilyId: (() { final guardedValue = map['incrementalSnapshotFamilyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkAccessPolicy: (() { final guardedValue = map['networkAccessPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purchasePlan: (() { final guardedValue = map['purchasePlan']; if (guardedValue == null) return null; return DiskPurchasePlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return DiskSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SnapshotSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportedCapabilities: (() { final guardedValue = map['supportedCapabilities']; if (guardedValue == null) return null; return SupportedCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportsHibernation: (() { final guardedValue = map['supportsHibernation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
