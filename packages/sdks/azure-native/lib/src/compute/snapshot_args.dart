// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'copy_completion_error.dart';
import 'creation_data.dart';
import 'disk_purchase_plan.dart';
import 'disk_security_profile.dart';
import 'encryption.dart';
import 'encryption_settings_collection.dart';
import 'extended_location.dart';
import 'operating_system_types.dart';
import 'snapshot_sku.dart';
import 'supported_capabilities.dart';

/// {@template pulumi_compute_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_snapshot_args_doc}
class SnapshotArgs {
  /// Percentage complete for the background copy when a resource is created via the CopyStart operation.
  final pulumi.Input<double>? completionPercent;
  /// Indicates the error details if the background copy of a resource created via the CopyStart operation fails.
  final pulumi.Input<CopyCompletionError>? copyCompletionError;
  /// Disk source information. CreationData information cannot be changed after the disk has been created.
  final pulumi.Input<CreationData> creationData;
  /// Additional authentication requirements when exporting or uploading to a disk or snapshot.
  final pulumi.Input<String>? dataAccessAuthMode;
  /// ARM id of the DiskAccess resource for using private endpoints on disks.
  final pulumi.Input<String>? diskAccessId;
  /// If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  final pulumi.Input<int>? diskSizeGB;
  /// Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  final pulumi.Input<Encryption>? encryption;
  /// Encryption settings collection used be Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  final pulumi.Input<EncryptionSettingsCollection>? encryptionSettingsCollection;
  /// The extended location where the snapshot will be created. Extended location cannot be changed.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  final pulumi.Input<String>? hyperVGeneration;
  /// Whether a snapshot is incremental. Incremental snapshots on the same disk occupy less space than full snapshots and can be diffed.
  final pulumi.Input<bool>? incremental;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Policy for accessing the disk via network.
  final pulumi.Input<String>? networkAccessPolicy;
  /// The Operating System type.
  final pulumi.Input<OperatingSystemTypes>? osType;
  /// Policy for controlling export on the disk.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Purchase plan information for the image from which the source disk for the snapshot was originally created.
  final pulumi.Input<DiskPurchasePlan>? purchasePlan;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Contains the security related information for the resource.
  final pulumi.Input<DiskSecurityProfile>? securityProfile;
  /// The snapshots sku name. Can be Standard_LRS, Premium_LRS, or Standard_ZRS. This is an optional parameter for incremental snapshot and the default behavior is the SKU will be set to the same sku as the previous snapshot
  final pulumi.Input<SnapshotSku>? sku;
  /// The name of the snapshot that is being created. The name can't be changed after the snapshot is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The max name length is 80 characters.
  final pulumi.Input<String>? snapshotName;
  /// List of supported capabilities for the image from which the source disk from the snapshot was originally created.
  final pulumi.Input<SupportedCapabilities>? supportedCapabilities;
  /// Indicates the OS on a snapshot supports hibernation.
  final pulumi.Input<bool>? supportsHibernation;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SnapshotArgs].
  /// [completionPercent] Percentage complete for the background copy when a resource is created via the CopyStart operation.
  /// [copyCompletionError] Indicates the error details if the background copy of a resource created via the CopyStart operation fails.
  /// [creationData] Disk source information. CreationData information cannot be changed after the disk has been created.
  /// [dataAccessAuthMode] Additional authentication requirements when exporting or uploading to a disk or snapshot.
  /// [diskAccessId] ARM id of the DiskAccess resource for using private endpoints on disks.
  /// [diskSizeGB] If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  /// [encryption] Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  /// [encryptionSettingsCollection] Encryption settings collection used be Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  /// [extendedLocation] The extended location where the snapshot will be created. Extended location cannot be changed.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  /// [incremental] Whether a snapshot is incremental. Incremental snapshots on the same disk occupy less space than full snapshots and can be diffed.
  /// [location] The geo-location where the resource lives
  /// [networkAccessPolicy] Policy for accessing the disk via network.
  /// [osType] The Operating System type.
  /// [publicNetworkAccess] Policy for controlling export on the disk.
  /// [purchasePlan] Purchase plan information for the image from which the source disk for the snapshot was originally created.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityProfile] Contains the security related information for the resource.
  /// [sku] The snapshots sku name. Can be Standard_LRS, Premium_LRS, or Standard_ZRS. This is an optional parameter for incremental snapshot and the default behavior is the SKU will be set to the same sku as the previous snapshot
  /// [snapshotName] The name of the snapshot that is being created. The name can't be changed after the snapshot is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The max name length is 80 characters.
  /// [supportedCapabilities] List of supported capabilities for the image from which the source disk from the snapshot was originally created.
  /// [supportsHibernation] Indicates the OS on a snapshot supports hibernation.
  /// [tags] Resource tags.
  const SnapshotArgs({
    this.completionPercent,
    this.copyCompletionError,
    required this.creationData,
    this.dataAccessAuthMode,
    this.diskAccessId,
    this.diskSizeGB,
    this.encryption,
    this.encryptionSettingsCollection,
    this.extendedLocation,
    this.hyperVGeneration,
    this.incremental,
    this.location,
    this.networkAccessPolicy,
    this.osType,
    this.publicNetworkAccess,
    this.purchasePlan,
    required this.resourceGroupName,
    this.securityProfile,
    this.sku,
    this.snapshotName,
    this.supportedCapabilities,
    this.supportsHibernation,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionPercent': ?completionPercent,
      'copyCompletionError': ?pulumi.Input.mapOptionalInputValue<CopyCompletionError, Map<String, dynamic>>(copyCompletionError, (value) => value.toMap()),
      'creationData': pulumi.Input.mapInputValue<CreationData, Map<String, dynamic>>(creationData, (value) => value.toMap()),
      'dataAccessAuthMode': ?dataAccessAuthMode,
      'diskAccessId': ?diskAccessId,
      'diskSizeGB': ?diskSizeGB,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'encryptionSettingsCollection': ?pulumi.Input.mapOptionalInputValue<EncryptionSettingsCollection, Map<String, dynamic>>(encryptionSettingsCollection, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hyperVGeneration': ?hyperVGeneration,
      'incremental': ?incremental,
      'location': ?location,
      'networkAccessPolicy': ?networkAccessPolicy,
      'osType': ?pulumi.Input.mapOptionalInputValue<OperatingSystemTypes, String>(osType, (value) => value.wireValue),
      'publicNetworkAccess': ?publicNetworkAccess,
      'purchasePlan': ?pulumi.Input.mapOptionalInputValue<DiskPurchasePlan, Map<String, dynamic>>(purchasePlan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<DiskSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<SnapshotSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'snapshotName': ?snapshotName,
      'supportedCapabilities': ?pulumi.Input.mapOptionalInputValue<SupportedCapabilities, Map<String, dynamic>>(supportedCapabilities, (value) => value.toMap()),
      'supportsHibernation': ?supportsHibernation,
      'tags': ?tags,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      completionPercent: (() { final guardedValue = map['completionPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      copyCompletionError: (() { final guardedValue = map['copyCompletionError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CopyCompletionError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creationData: pulumi.Input.fromValue(CreationData.fromMap((map['creationData']! as Map).cast<String, dynamic>())),
      dataAccessAuthMode: (() { final guardedValue = map['dataAccessAuthMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskAccessId: (() { final guardedValue = map['diskAccessId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionSettingsCollection: (() { final guardedValue = map['encryptionSettingsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionSettingsCollection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incremental: (() { final guardedValue = map['incremental']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAccessPolicy: (() { final guardedValue = map['networkAccessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OperatingSystemTypes.fromValue(guardedValue as String)); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purchasePlan: (() { final guardedValue = map['purchasePlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskPurchasePlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotName: (() { final guardedValue = map['snapshotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedCapabilities: (() { final guardedValue = map['supportedCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SupportedCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportsHibernation: (() { final guardedValue = map['supportsHibernation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
