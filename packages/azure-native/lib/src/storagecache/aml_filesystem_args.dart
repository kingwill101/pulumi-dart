// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_filesystem_encryption_settings.dart';
import 'aml_filesystem_hsm.dart';
import 'aml_filesystem_identity.dart';
import 'aml_filesystem_maintenance_window.dart';
import 'aml_filesystem_root_squash_settings.dart';
import 'sku_name.dart';

/// {@template pulumi_storagecache_aml_filesystem_args_doc}
/// The set of arguments for AmlFilesystem.
/// {@endtemplate}
/// {@macro pulumi_storagecache_aml_filesystem_args_doc}
class AmlFilesystemArgs {
  /// Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String>? amlFilesystemName;
  /// Specifies encryption settings of the AML file system.
  final pulumi.Input<AmlFilesystemEncryptionSettings>? encryptionSettings;
  /// Subnet used for managing the AML file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the VNET's address space.
  final pulumi.Input<String> filesystemSubnet;
  /// Hydration and archive settings and status
  final pulumi.Input<AmlFilesystemHsm>? hsm;
  /// The managed identity used by the AML file system, if configured.
  final pulumi.Input<AmlFilesystemIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Start time of a 30-minute weekly maintenance window.
  final pulumi.Input<AmlFilesystemMaintenanceWindow> maintenanceWindow;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies root squash settings of the AML file system.
  final pulumi.Input<AmlFilesystemRootSquashSettings>? rootSquashSettings;
  /// SKU for the resource.
  final pulumi.Input<SkuName>? sku;
  /// The size of the AML file system, in TiB. This might be rounded up.
  final pulumi.Input<double> storageCapacityTiB;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Availability zones for resources. This field should only contain a single element in the array.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [AmlFilesystemArgs].
  /// [amlFilesystemName] Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [encryptionSettings] Specifies encryption settings of the AML file system.
  /// [filesystemSubnet] Subnet used for managing the AML file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the VNET's address space.
  /// [hsm] Hydration and archive settings and status
  /// [identity] The managed identity used by the AML file system, if configured.
  /// [location] The geo-location where the resource lives
  /// [maintenanceWindow] Start time of a 30-minute weekly maintenance window.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rootSquashSettings] Specifies root squash settings of the AML file system.
  /// [sku] SKU for the resource.
  /// [storageCapacityTiB] The size of the AML file system, in TiB. This might be rounded up.
  /// [tags] Resource tags.
  /// [zones] Availability zones for resources. This field should only contain a single element in the array.
  AmlFilesystemArgs({
    String? amlFilesystemName,
    AmlFilesystemEncryptionSettings? encryptionSettings,
    required String filesystemSubnet,
    AmlFilesystemHsm? hsm,
    AmlFilesystemIdentity? identity,
    String? location,
    required AmlFilesystemMaintenanceWindow maintenanceWindow,
    required String resourceGroupName,
    AmlFilesystemRootSquashSettings? rootSquashSettings,
    SkuName? sku,
    required double storageCapacityTiB,
    Map<String, String>? tags,
    List<String>? zones,
  }) :
      amlFilesystemName = pulumi.Input.asOptionalInput<String>(amlFilesystemName),
      encryptionSettings = pulumi.Input.asOptionalInput<AmlFilesystemEncryptionSettings>(encryptionSettings),
      filesystemSubnet = pulumi.Input.asInput<String>(filesystemSubnet),
      hsm = pulumi.Input.asOptionalInput<AmlFilesystemHsm>(hsm),
      identity = pulumi.Input.asOptionalInput<AmlFilesystemIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceWindow = pulumi.Input.asInput<AmlFilesystemMaintenanceWindow>(maintenanceWindow),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rootSquashSettings = pulumi.Input.asOptionalInput<AmlFilesystemRootSquashSettings>(rootSquashSettings),
      sku = pulumi.Input.asOptionalInput<SkuName>(sku),
      storageCapacityTiB = pulumi.Input.asInput<double>(storageCapacityTiB),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amlFilesystemName': ?amlFilesystemName,
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemEncryptionSettings, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'filesystemSubnet': filesystemSubnet,
      'hsm': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemHsm, Map<String, dynamic>>(hsm, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow': pulumi.Input.mapInputValue<AmlFilesystemMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'rootSquashSettings': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemRootSquashSettings, Map<String, dynamic>>(rootSquashSettings, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<SkuName, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageCapacityTiB': storageCapacityTiB,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory AmlFilesystemArgs.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemArgs(
      amlFilesystemName: map['amlFilesystemName'] == null ? null : map['amlFilesystemName'] as String,
      encryptionSettings: map['encryptionSettings'] == null ? null : AmlFilesystemEncryptionSettings.fromMap((map['encryptionSettings'] as Map).cast<String, dynamic>()),
      filesystemSubnet: map['filesystemSubnet'] as String,
      hsm: map['hsm'] == null ? null : AmlFilesystemHsm.fromMap((map['hsm'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : AmlFilesystemIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceWindow: AmlFilesystemMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      rootSquashSettings: map['rootSquashSettings'] == null ? null : AmlFilesystemRootSquashSettings.fromMap((map['rootSquashSettings'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuName.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      storageCapacityTiB: map['storageCapacityTiB'] as double,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

