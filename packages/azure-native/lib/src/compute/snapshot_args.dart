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
  SnapshotArgs({
    double? completionPercent,
    CopyCompletionError? copyCompletionError,
    required CreationData creationData,
    String? dataAccessAuthMode,
    String? diskAccessId,
    int? diskSizeGB,
    Encryption? encryption,
    EncryptionSettingsCollection? encryptionSettingsCollection,
    ExtendedLocation? extendedLocation,
    String? hyperVGeneration,
    bool? incremental,
    String? location,
    String? networkAccessPolicy,
    OperatingSystemTypes? osType,
    String? publicNetworkAccess,
    DiskPurchasePlan? purchasePlan,
    required String resourceGroupName,
    DiskSecurityProfile? securityProfile,
    SnapshotSku? sku,
    String? snapshotName,
    SupportedCapabilities? supportedCapabilities,
    bool? supportsHibernation,
    Map<String, String>? tags,
  }) :
      completionPercent = pulumi.Input.asOptionalInput<double>(completionPercent),
      copyCompletionError = pulumi.Input.asOptionalInput<CopyCompletionError>(copyCompletionError),
      creationData = pulumi.Input.asInput<CreationData>(creationData),
      dataAccessAuthMode = pulumi.Input.asOptionalInput<String>(dataAccessAuthMode),
      diskAccessId = pulumi.Input.asOptionalInput<String>(diskAccessId),
      diskSizeGB = pulumi.Input.asOptionalInput<int>(diskSizeGB),
      encryption = pulumi.Input.asOptionalInput<Encryption>(encryption),
      encryptionSettingsCollection = pulumi.Input.asOptionalInput<EncryptionSettingsCollection>(encryptionSettingsCollection),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      hyperVGeneration = pulumi.Input.asOptionalInput<String>(hyperVGeneration),
      incremental = pulumi.Input.asOptionalInput<bool>(incremental),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkAccessPolicy = pulumi.Input.asOptionalInput<String>(networkAccessPolicy),
      osType = pulumi.Input.asOptionalInput<OperatingSystemTypes>(osType),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      purchasePlan = pulumi.Input.asOptionalInput<DiskPurchasePlan>(purchasePlan),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityProfile = pulumi.Input.asOptionalInput<DiskSecurityProfile>(securityProfile),
      sku = pulumi.Input.asOptionalInput<SnapshotSku>(sku),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      supportedCapabilities = pulumi.Input.asOptionalInput<SupportedCapabilities>(supportedCapabilities),
      supportsHibernation = pulumi.Input.asOptionalInput<bool>(supportsHibernation),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      'osType': ?pulumi.Input.mapOptionalInputValue<OperatingSystemTypes, String>(osType, (value) => value.value),
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
      completionPercent: map['completionPercent'] == null ? null : map['completionPercent'] as double,
      copyCompletionError: map['copyCompletionError'] == null ? null : CopyCompletionError.fromMap((map['copyCompletionError'] as Map).cast<String, dynamic>()),
      creationData: CreationData.fromMap((map['creationData'] as Map).cast<String, dynamic>()),
      dataAccessAuthMode: map['dataAccessAuthMode'] == null ? null : map['dataAccessAuthMode'] as String,
      diskAccessId: map['diskAccessId'] == null ? null : map['diskAccessId'] as String,
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      encryption: map['encryption'] == null ? null : Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      encryptionSettingsCollection: map['encryptionSettingsCollection'] == null ? null : EncryptionSettingsCollection.fromMap((map['encryptionSettingsCollection'] as Map).cast<String, dynamic>()),
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : map['hyperVGeneration'] as String,
      incremental: map['incremental'] == null ? null : map['incremental'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      networkAccessPolicy: map['networkAccessPolicy'] == null ? null : map['networkAccessPolicy'] as String,
      osType: map['osType'] == null ? null : OperatingSystemTypes.fromValue(map['osType'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      purchasePlan: map['purchasePlan'] == null ? null : DiskPurchasePlan.fromMap((map['purchasePlan'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      securityProfile: map['securityProfile'] == null ? null : DiskSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SnapshotSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      snapshotName: map['snapshotName'] == null ? null : map['snapshotName'] as String,
      supportedCapabilities: map['supportedCapabilities'] == null ? null : SupportedCapabilities.fromMap((map['supportedCapabilities'] as Map).cast<String, dynamic>()),
      supportsHibernation: map['supportsHibernation'] == null ? null : map['supportsHibernation'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

