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
  final String azureApiVersion;
  /// Percentage complete for the background copy when a resource is created via the CopyStart operation.
  final double? completionPercent;
  /// Indicates the error details if the background copy of a resource created via the CopyStart operation fails.
  final CopyCompletionErrorResponse? copyCompletionError;
  /// Disk source information. CreationData information cannot be changed after the disk has been created.
  final CreationDataResponse creationData;
  /// Additional authentication requirements when exporting or uploading to a disk or snapshot.
  final String? dataAccessAuthMode;
  /// ARM id of the DiskAccess resource for using private endpoints on disks.
  final String? diskAccessId;
  /// The size of the disk in bytes. This field is read only.
  final double diskSizeBytes;
  /// If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  final int? diskSizeGB;
  /// The state of the snapshot.
  final String diskState;
  /// Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  final EncryptionResponse? encryption;
  /// Encryption settings collection used be Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  final EncryptionSettingsCollectionResponse? encryptionSettingsCollection;
  /// The extended location where the snapshot will be created. Extended location cannot be changed.
  final ExtendedLocationResponse? extendedLocation;
  /// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  final String? hyperVGeneration;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Whether a snapshot is incremental. Incremental snapshots on the same disk occupy less space than full snapshots and can be diffed.
  final bool? incremental;
  /// Incremental snapshots for a disk share an incremental snapshot family id. The Get Page Range Diff API can only be called on incremental snapshots with the same family id.
  final String incrementalSnapshotFamilyId;
  /// The geo-location where the resource lives
  final String location;
  /// Unused. Always Null.
  final String managedBy;
  /// The name of the resource
  final String name;
  /// Policy for accessing the disk via network.
  final String? networkAccessPolicy;
  /// The Operating System type.
  final String? osType;
  /// The disk provisioning state.
  final String provisioningState;
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
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The time when the snapshot was created.
  final String timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Unique Guid identifying the resource.
  final String uniqueId;

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
  GetSnapshotResult({
    required this.azureApiVersion,
    this.completionPercent,
    this.copyCompletionError,
    required this.creationData,
    this.dataAccessAuthMode,
    this.diskAccessId,
    required this.diskSizeBytes,
    this.diskSizeGB,
    required this.diskState,
    this.encryption,
    this.encryptionSettingsCollection,
    this.extendedLocation,
    this.hyperVGeneration,
    required this.id,
    this.incremental,
    required this.incrementalSnapshotFamilyId,
    required this.location,
    required this.managedBy,
    required this.name,
    this.networkAccessPolicy,
    this.osType,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.purchasePlan,
    this.securityProfile,
    this.sku,
    this.supportedCapabilities,
    this.supportsHibernation,
    required this.systemData,
    this.tags,
    required this.timeCreated,
    required this.type,
    required this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'completionPercent': ?completionPercent,
      'copyCompletionError': ?copyCompletionError == null ? null : copyCompletionError!.toMap(),
      'creationData': creationData.toMap(),
      'dataAccessAuthMode': ?dataAccessAuthMode,
      'diskAccessId': ?diskAccessId,
      'diskSizeBytes': diskSizeBytes,
      'diskSizeGB': ?diskSizeGB,
      'diskState': diskState,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'encryptionSettingsCollection': ?encryptionSettingsCollection == null ? null : encryptionSettingsCollection!.toMap(),
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'hyperVGeneration': ?hyperVGeneration,
      'id': id,
      'incremental': ?incremental,
      'incrementalSnapshotFamilyId': incrementalSnapshotFamilyId,
      'location': location,
      'managedBy': managedBy,
      'name': name,
      'networkAccessPolicy': ?networkAccessPolicy,
      'osType': ?osType,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'purchasePlan': ?purchasePlan == null ? null : purchasePlan!.toMap(),
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'supportedCapabilities': ?supportedCapabilities == null ? null : supportedCapabilities!.toMap(),
      'supportsHibernation': ?supportsHibernation,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeCreated': timeCreated,
      'type': type,
      'uniqueId': uniqueId,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      completionPercent: map['completionPercent'] == null ? null : map['completionPercent']! as double,
      copyCompletionError: map['copyCompletionError'] == null ? null : CopyCompletionErrorResponse.fromMap((map['copyCompletionError']! as Map).cast<String, dynamic>()),
      creationData: CreationDataResponse.fromMap((map['creationData'] as Map).cast<String, dynamic>()),
      dataAccessAuthMode: map['dataAccessAuthMode'] == null ? null : map['dataAccessAuthMode']! as String,
      diskAccessId: map['diskAccessId'] == null ? null : map['diskAccessId']! as String,
      diskSizeBytes: map['diskSizeBytes'] as double,
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB']! as int,
      diskState: map['diskState'] as String,
      encryption: map['encryption'] == null ? null : EncryptionResponse.fromMap((map['encryption']! as Map).cast<String, dynamic>()),
      encryptionSettingsCollection: map['encryptionSettingsCollection'] == null ? null : EncryptionSettingsCollectionResponse.fromMap((map['encryptionSettingsCollection']! as Map).cast<String, dynamic>()),
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : map['hyperVGeneration']! as String,
      id: map['id'] as String,
      incremental: map['incremental'] == null ? null : map['incremental']! as bool,
      incrementalSnapshotFamilyId: map['incrementalSnapshotFamilyId'] as String,
      location: map['location'] as String,
      managedBy: map['managedBy'] as String,
      name: map['name'] as String,
      networkAccessPolicy: map['networkAccessPolicy'] == null ? null : map['networkAccessPolicy']! as String,
      osType: map['osType'] == null ? null : map['osType']! as String,
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess']! as String,
      purchasePlan: map['purchasePlan'] == null ? null : DiskPurchasePlanResponse.fromMap((map['purchasePlan']! as Map).cast<String, dynamic>()),
      securityProfile: map['securityProfile'] == null ? null : DiskSecurityProfileResponse.fromMap((map['securityProfile']! as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SnapshotSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      supportedCapabilities: map['supportedCapabilities'] == null ? null : SupportedCapabilitiesResponse.fromMap((map['supportedCapabilities']! as Map).cast<String, dynamic>()),
      supportsHibernation: map['supportsHibernation'] == null ? null : map['supportsHibernation']! as bool,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      timeCreated: map['timeCreated'] as String,
      type: map['type'] as String,
      uniqueId: map['uniqueId'] as String,
    );
  }
}

