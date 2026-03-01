// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'creation_data.dart';
import 'disk_purchase_plan.dart';
import 'disk_security_profile.dart';
import 'disk_sku.dart';
import 'encryption.dart';
import 'encryption_settings_collection.dart';
import 'extended_location.dart';
import 'operating_system_types.dart';
import 'supported_capabilities.dart';

/// {@template pulumi_compute_disk_args_doc}
/// The set of arguments for Disk.
/// {@endtemplate}
/// {@macro pulumi_compute_disk_args_doc}
class DiskArgs {
  /// Set to true to enable bursting beyond the provisioned performance target of the disk. Bursting is disabled by default. Does not apply to Ultra disks.
  final pulumi.Input<bool>? burstingEnabled;
  /// Percentage complete for the background copy when a resource is created via the CopyStart operation.
  final pulumi.Input<double>? completionPercent;
  /// Disk source information. CreationData information cannot be changed after the disk has been created.
  final pulumi.Input<CreationData> creationData;
  /// Additional authentication requirements when exporting or uploading to a disk or snapshot.
  final pulumi.Input<String>? dataAccessAuthMode;
  /// ARM id of the DiskAccess resource for using private endpoints on disks.
  final pulumi.Input<String>? diskAccessId;
  /// The total number of IOPS that will be allowed across all VMs mounting the shared disk as ReadOnly. One operation can transfer between 4k and 256k bytes.
  final pulumi.Input<double>? diskIOPSReadOnly;
  /// The number of IOPS allowed for this disk; only settable for UltraSSD disks. One operation can transfer between 4k and 256k bytes.
  final pulumi.Input<double>? diskIOPSReadWrite;
  /// The total throughput (MBps) that will be allowed across all VMs mounting the shared disk as ReadOnly. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
  final pulumi.Input<double>? diskMBpsReadOnly;
  /// The bandwidth allowed for this disk; only settable for UltraSSD disks. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
  final pulumi.Input<double>? diskMBpsReadWrite;
  /// The name of the managed disk that is being created. The name can't be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  final pulumi.Input<String>? diskName;
  /// If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  final pulumi.Input<int>? diskSizeGB;
  /// Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  final pulumi.Input<Encryption>? encryption;
  /// Encryption settings collection used for Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  final pulumi.Input<EncryptionSettingsCollection>? encryptionSettingsCollection;
  /// The extended location where the disk will be created. Extended location cannot be changed.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  final pulumi.Input<String>? hyperVGeneration;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time.
  final pulumi.Input<int>? maxShares;
  /// Policy for accessing the disk via network.
  final pulumi.Input<String>? networkAccessPolicy;
  /// Setting this property to true improves reliability and performance of data disks that are frequently (more than 5 times a day) by detached from one virtual machine and attached to another. This property should not be set for disks that are not detached and attached frequently as it causes the disks to not align with the fault domain of the virtual machine.
  final pulumi.Input<bool>? optimizedForFrequentAttach;
  /// The Operating System type.
  final pulumi.Input<OperatingSystemTypes>? osType;
  /// Policy for controlling export on the disk.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Purchase plan information for the the image from which the OS disk was created. E.g. - {name: 2019-Datacenter, publisher: MicrosoftWindowsServer, product: WindowsServer}
  final pulumi.Input<DiskPurchasePlan>? purchasePlan;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Contains the security related information for the resource.
  final pulumi.Input<DiskSecurityProfile>? securityProfile;
  /// The disks sku name. Can be Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS, Premium_ZRS, StandardSSD_ZRS, or PremiumV2_LRS.
  final pulumi.Input<DiskSku>? sku;
  /// List of supported capabilities for the image from which the OS disk was created.
  final pulumi.Input<SupportedCapabilities>? supportedCapabilities;
  /// Indicates the OS on a disk supports hibernation.
  final pulumi.Input<bool>? supportsHibernation;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Performance tier of the disk (e.g, P4, S10) as described here: https://azure.microsoft.com/en-us/pricing/details/managed-disks/. Does not apply to Ultra disks.
  final pulumi.Input<String>? tier;
  /// The Logical zone list for Disk.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [DiskArgs].
  /// [burstingEnabled] Set to true to enable bursting beyond the provisioned performance target of the disk. Bursting is disabled by default. Does not apply to Ultra disks.
  /// [completionPercent] Percentage complete for the background copy when a resource is created via the CopyStart operation.
  /// [creationData] Disk source information. CreationData information cannot be changed after the disk has been created.
  /// [dataAccessAuthMode] Additional authentication requirements when exporting or uploading to a disk or snapshot.
  /// [diskAccessId] ARM id of the DiskAccess resource for using private endpoints on disks.
  /// [diskIOPSReadOnly] The total number of IOPS that will be allowed across all VMs mounting the shared disk as ReadOnly. One operation can transfer between 4k and 256k bytes.
  /// [diskIOPSReadWrite] The number of IOPS allowed for this disk; only settable for UltraSSD disks. One operation can transfer between 4k and 256k bytes.
  /// [diskMBpsReadOnly] The total throughput (MBps) that will be allowed across all VMs mounting the shared disk as ReadOnly. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
  /// [diskMBpsReadWrite] The bandwidth allowed for this disk; only settable for UltraSSD disks. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
  /// [diskName] The name of the managed disk that is being created. The name can't be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  /// [diskSizeGB] If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  /// [encryption] Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  /// [encryptionSettingsCollection] Encryption settings collection used for Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  /// [extendedLocation] The extended location where the disk will be created. Extended location cannot be changed.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  /// [location] The geo-location where the resource lives
  /// [maxShares] The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time.
  /// [networkAccessPolicy] Policy for accessing the disk via network.
  /// [optimizedForFrequentAttach] Setting this property to true improves reliability and performance of data disks that are frequently (more than 5 times a day) by detached from one virtual machine and attached to another. This property should not be set for disks that are not detached and attached frequently as it causes the disks to not align with the fault domain of the virtual machine.
  /// [osType] The Operating System type.
  /// [publicNetworkAccess] Policy for controlling export on the disk.
  /// [purchasePlan] Purchase plan information for the the image from which the OS disk was created. E.g. - {name: 2019-Datacenter, publisher: MicrosoftWindowsServer, product: WindowsServer}
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityProfile] Contains the security related information for the resource.
  /// [sku] The disks sku name. Can be Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS, Premium_ZRS, StandardSSD_ZRS, or PremiumV2_LRS.
  /// [supportedCapabilities] List of supported capabilities for the image from which the OS disk was created.
  /// [supportsHibernation] Indicates the OS on a disk supports hibernation.
  /// [tags] Resource tags.
  /// [tier] Performance tier of the disk (e.g, P4, S10) as described here: https://azure.microsoft.com/en-us/pricing/details/managed-disks/. Does not apply to Ultra disks.
  /// [zones] The Logical zone list for Disk.
  DiskArgs({
    bool? burstingEnabled,
    double? completionPercent,
    required CreationData creationData,
    String? dataAccessAuthMode,
    String? diskAccessId,
    double? diskIOPSReadOnly,
    double? diskIOPSReadWrite,
    double? diskMBpsReadOnly,
    double? diskMBpsReadWrite,
    String? diskName,
    int? diskSizeGB,
    Encryption? encryption,
    EncryptionSettingsCollection? encryptionSettingsCollection,
    ExtendedLocation? extendedLocation,
    String? hyperVGeneration,
    String? location,
    int? maxShares,
    String? networkAccessPolicy,
    bool? optimizedForFrequentAttach,
    OperatingSystemTypes? osType,
    String? publicNetworkAccess,
    DiskPurchasePlan? purchasePlan,
    required String resourceGroupName,
    DiskSecurityProfile? securityProfile,
    DiskSku? sku,
    SupportedCapabilities? supportedCapabilities,
    bool? supportsHibernation,
    Map<String, String>? tags,
    String? tier,
    List<String>? zones,
  }) :
      burstingEnabled = pulumi.Input.asOptionalInput<bool>(burstingEnabled),
      completionPercent = pulumi.Input.asOptionalInput<double>(completionPercent),
      creationData = pulumi.Input.asInput<CreationData>(creationData),
      dataAccessAuthMode = pulumi.Input.asOptionalInput<String>(dataAccessAuthMode),
      diskAccessId = pulumi.Input.asOptionalInput<String>(diskAccessId),
      diskIOPSReadOnly = pulumi.Input.asOptionalInput<double>(diskIOPSReadOnly),
      diskIOPSReadWrite = pulumi.Input.asOptionalInput<double>(diskIOPSReadWrite),
      diskMBpsReadOnly = pulumi.Input.asOptionalInput<double>(diskMBpsReadOnly),
      diskMBpsReadWrite = pulumi.Input.asOptionalInput<double>(diskMBpsReadWrite),
      diskName = pulumi.Input.asOptionalInput<String>(diskName),
      diskSizeGB = pulumi.Input.asOptionalInput<int>(diskSizeGB),
      encryption = pulumi.Input.asOptionalInput<Encryption>(encryption),
      encryptionSettingsCollection = pulumi.Input.asOptionalInput<EncryptionSettingsCollection>(encryptionSettingsCollection),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      hyperVGeneration = pulumi.Input.asOptionalInput<String>(hyperVGeneration),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxShares = pulumi.Input.asOptionalInput<int>(maxShares),
      networkAccessPolicy = pulumi.Input.asOptionalInput<String>(networkAccessPolicy),
      optimizedForFrequentAttach = pulumi.Input.asOptionalInput<bool>(optimizedForFrequentAttach),
      osType = pulumi.Input.asOptionalInput<OperatingSystemTypes>(osType),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      purchasePlan = pulumi.Input.asOptionalInput<DiskPurchasePlan>(purchasePlan),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityProfile = pulumi.Input.asOptionalInput<DiskSecurityProfile>(securityProfile),
      sku = pulumi.Input.asOptionalInput<DiskSku>(sku),
      supportedCapabilities = pulumi.Input.asOptionalInput<SupportedCapabilities>(supportedCapabilities),
      supportsHibernation = pulumi.Input.asOptionalInput<bool>(supportsHibernation),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'burstingEnabled': ?burstingEnabled,
      'completionPercent': ?completionPercent,
      'creationData': pulumi.Input.mapInputValue<CreationData, Map<String, dynamic>>(creationData, (value) => value.toMap()),
      'dataAccessAuthMode': ?dataAccessAuthMode,
      'diskAccessId': ?diskAccessId,
      'diskIOPSReadOnly': ?diskIOPSReadOnly,
      'diskIOPSReadWrite': ?diskIOPSReadWrite,
      'diskMBpsReadOnly': ?diskMBpsReadOnly,
      'diskMBpsReadWrite': ?diskMBpsReadWrite,
      'diskName': ?diskName,
      'diskSizeGB': ?diskSizeGB,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'encryptionSettingsCollection': ?pulumi.Input.mapOptionalInputValue<EncryptionSettingsCollection, Map<String, dynamic>>(encryptionSettingsCollection, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hyperVGeneration': ?hyperVGeneration,
      'location': ?location,
      'maxShares': ?maxShares,
      'networkAccessPolicy': ?networkAccessPolicy,
      'optimizedForFrequentAttach': ?optimizedForFrequentAttach,
      'osType': ?pulumi.Input.mapOptionalInputValue<OperatingSystemTypes, String>(osType, (value) => value.value),
      'publicNetworkAccess': ?publicNetworkAccess,
      'purchasePlan': ?pulumi.Input.mapOptionalInputValue<DiskPurchasePlan, Map<String, dynamic>>(purchasePlan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<DiskSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<DiskSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'supportedCapabilities': ?pulumi.Input.mapOptionalInputValue<SupportedCapabilities, Map<String, dynamic>>(supportedCapabilities, (value) => value.toMap()),
      'supportsHibernation': ?supportsHibernation,
      'tags': ?tags,
      'tier': ?tier,
      'zones': ?zones,
    };
  }

  factory DiskArgs.fromMap(Map<String, dynamic> map) {
    return DiskArgs(
      burstingEnabled: map['burstingEnabled'] == null ? null : map['burstingEnabled'] as bool,
      completionPercent: map['completionPercent'] == null ? null : map['completionPercent'] as double,
      creationData: CreationData.fromMap((map['creationData'] as Map).cast<String, dynamic>()),
      dataAccessAuthMode: map['dataAccessAuthMode'] == null ? null : map['dataAccessAuthMode'] as String,
      diskAccessId: map['diskAccessId'] == null ? null : map['diskAccessId'] as String,
      diskIOPSReadOnly: map['diskIOPSReadOnly'] == null ? null : map['diskIOPSReadOnly'] as double,
      diskIOPSReadWrite: map['diskIOPSReadWrite'] == null ? null : map['diskIOPSReadWrite'] as double,
      diskMBpsReadOnly: map['diskMBpsReadOnly'] == null ? null : map['diskMBpsReadOnly'] as double,
      diskMBpsReadWrite: map['diskMBpsReadWrite'] == null ? null : map['diskMBpsReadWrite'] as double,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      encryption: map['encryption'] == null ? null : Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      encryptionSettingsCollection: map['encryptionSettingsCollection'] == null ? null : EncryptionSettingsCollection.fromMap((map['encryptionSettingsCollection'] as Map).cast<String, dynamic>()),
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : map['hyperVGeneration'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maxShares: map['maxShares'] == null ? null : map['maxShares'] as int,
      networkAccessPolicy: map['networkAccessPolicy'] == null ? null : map['networkAccessPolicy'] as String,
      optimizedForFrequentAttach: map['optimizedForFrequentAttach'] == null ? null : map['optimizedForFrequentAttach'] as bool,
      osType: map['osType'] == null ? null : OperatingSystemTypes.fromValue(map['osType'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      purchasePlan: map['purchasePlan'] == null ? null : DiskPurchasePlan.fromMap((map['purchasePlan'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      securityProfile: map['securityProfile'] == null ? null : DiskSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : DiskSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      supportedCapabilities: map['supportedCapabilities'] == null ? null : SupportedCapabilities.fromMap((map['supportedCapabilities'] as Map).cast<String, dynamic>()),
      supportsHibernation: map['supportsHibernation'] == null ? null : map['supportsHibernation'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tier: map['tier'] == null ? null : map['tier'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

