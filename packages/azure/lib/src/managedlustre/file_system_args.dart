// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_encryption_key.dart';
import 'file_system_hsm_setting.dart';
import 'file_system_identity.dart';
import 'file_system_maintenance_window.dart';
import 'file_system_root_squash.dart';

/// {@template pulumi_managedlustre_file_system_file_system_args_doc}
/// The set of arguments for FileSystem.
/// {@endtemplate}
/// {@macro pulumi_managedlustre_file_system_file_system_args_doc}
class FileSystemArgs {
  /// An `encryption_key` block as defined below.
  ///
  /// > **Note:** Removing `encryption_key` forces a new resource to be created.
  final pulumi.Input<FileSystemEncryptionKey>? encryptionKey;
  /// A `hsm_setting` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<FileSystemHsmSetting>? hsmSetting;
  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<FileSystemIdentity>? identity;
  /// The Azure Region where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `maintenance_window` block as defined below.
  final pulumi.Input<FileSystemMaintenanceWindow> maintenanceWindow;
  /// The name which should be used for this Azure Managed Lustre File System. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `root_squash` block as defined below.
  final pulumi.Input<FileSystemRootSquash>? rootSquash;
  /// The SKU name for the Azure Managed Lustre File System. Possible values are `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250` and `AMLFS-Durable-Premium-500`. Changing this forces a new resource to be created.
  final pulumi.Input<String> skuName;
  /// The size of the Azure Managed Lustre File System in TiB. The valid values for this field are dependant on which `sku_name` has been defined in the configuration file. For more information on the valid values for this field please see the [product documentation](https://learn.microsoft.com/azure/azure-managed-lustre/create-file-system-resource-manager#file-system-type-and-size-options). Changing this forces a new resource to be created.
  final pulumi.Input<int> storageCapacityInTb;
  /// The resource ID of the Subnet that is used for managing the Azure Managed Lustre file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the Virtual Network's address space. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags which should be assigned to the Azure Managed Lustre File System.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of availability zones for the Azure Managed Lustre File System. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [FileSystemArgs].
  /// [encryptionKey] An `encryption_key` block as defined below.
  /// [hsmSetting] A `hsm_setting` block as defined below. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created.
  /// [maintenanceWindow] A `maintenance_window` block as defined below.
  /// [name] The name which should be used for this Azure Managed Lustre File System. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created.
  /// [rootSquash] A `root_squash` block as defined below.
  /// [skuName] The SKU name for the Azure Managed Lustre File System. Possible values are `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250` and `AMLFS-Durable-Premium-500`. Changing this forces a new resource to be created.
  /// [storageCapacityInTb] The size of the Azure Managed Lustre File System in TiB. The valid values for this field are dependant on which `sku_name` has been defined in the configuration file. For more information on the valid values for this field please see the [product documentation](https://learn.microsoft.com/azure/azure-managed-lustre/create-file-system-resource-manager#file-system-type-and-size-options). Changing this forces a new resource to be created.
  /// [subnetId] The resource ID of the Subnet that is used for managing the Azure Managed Lustre file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the Virtual Network's address space. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Managed Lustre File System.
  /// [zones] A list of availability zones for the Azure Managed Lustre File System. Changing this forces a new resource to be created.
  FileSystemArgs({
    FileSystemEncryptionKey? encryptionKey,
    FileSystemHsmSetting? hsmSetting,
    FileSystemIdentity? identity,
    String? location,
    required FileSystemMaintenanceWindow maintenanceWindow,
    String? name,
    required String resourceGroupName,
    FileSystemRootSquash? rootSquash,
    required String skuName,
    required int storageCapacityInTb,
    required String subnetId,
    Map<String, String>? tags,
    required List<String> zones,
  }) :
      encryptionKey = pulumi.Input.asOptionalInput<FileSystemEncryptionKey>(encryptionKey),
      hsmSetting = pulumi.Input.asOptionalInput<FileSystemHsmSetting>(hsmSetting),
      identity = pulumi.Input.asOptionalInput<FileSystemIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceWindow = pulumi.Input.asInput<FileSystemMaintenanceWindow>(maintenanceWindow),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rootSquash = pulumi.Input.asOptionalInput<FileSystemRootSquash>(rootSquash),
      skuName = pulumi.Input.asInput<String>(skuName),
      storageCapacityInTb = pulumi.Input.asInput<int>(storageCapacityInTb),
      subnetId = pulumi.Input.asInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKey': ?pulumi.Input.mapOptionalInputValue<FileSystemEncryptionKey, Map<String, dynamic>>(encryptionKey, (value) => value.toMap()),
      'hsmSetting': ?pulumi.Input.mapOptionalInputValue<FileSystemHsmSetting, Map<String, dynamic>>(hsmSetting, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<FileSystemIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow': pulumi.Input.mapInputValue<FileSystemMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'rootSquash': ?pulumi.Input.mapOptionalInputValue<FileSystemRootSquash, Map<String, dynamic>>(rootSquash, (value) => value.toMap()),
      'skuName': skuName,
      'storageCapacityInTb': storageCapacityInTb,
      'subnetId': subnetId,
      'tags': ?tags,
      'zones': zones,
    };
  }

  factory FileSystemArgs.fromMap(Map<String, dynamic> map) {
    return FileSystemArgs(
      encryptionKey: map['encryptionKey'] == null ? null : FileSystemEncryptionKey.fromMap((map['encryptionKey'] as Map).cast<String, dynamic>()),
      hsmSetting: map['hsmSetting'] == null ? null : FileSystemHsmSetting.fromMap((map['hsmSetting'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : FileSystemIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceWindow: FileSystemMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      rootSquash: map['rootSquash'] == null ? null : FileSystemRootSquash.fromMap((map['rootSquash'] as Map).cast<String, dynamic>()),
      skuName: map['skuName'] as String,
      storageCapacityInTb: map['storageCapacityInTb'] as int,
      subnetId: map['subnetId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

