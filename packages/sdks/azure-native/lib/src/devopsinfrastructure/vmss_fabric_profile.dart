// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_ops_azure_sku.dart';
import 'network_profile.dart';
import 'os_profile.dart';
import 'pool_image.dart';
import 'storage_profile.dart';

/// The agents will run on Virtual Machine Scale Sets.
class VmssFabricProfile {
  /// The VM images of the machines in the pool.
  final pulumi.Input<List<PoolImage>> images;
  /// Discriminator property for FabricProfile.
  /// Expected value is 'Vmss'.
  final pulumi.Input<String> kind;
  /// The network profile of the machines in the pool.
  final pulumi.Input<NetworkProfile?>? networkProfile;
  /// The OS profile of the machines in the pool.
  final pulumi.Input<OsProfile?>? osProfile;
  /// The Azure SKU of the machines in the pool.
  final pulumi.Input<DevOpsAzureSku> sku;
  /// The storage profile of the machines in the pool.
  final pulumi.Input<StorageProfile?>? storageProfile;

  /// Creates a new [VmssFabricProfile].
  /// [images] The VM images of the machines in the pool.
  /// [kind] Discriminator property for FabricProfile.
  /// [networkProfile] The network profile of the machines in the pool.
  /// [osProfile] The OS profile of the machines in the pool.
  /// [sku] The Azure SKU of the machines in the pool.
  /// [storageProfile] The storage profile of the machines in the pool.
  const VmssFabricProfile({
    required this.images,
    required this.kind,
    this.networkProfile,
    this.osProfile,
    required this.sku,
    this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': pulumi.Input.mapInputValue<List<PoolImage>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<PoolImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'sku': pulumi.Input.mapInputValue<DevOpsAzureSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
    };
  }

  factory VmssFabricProfile.fromMap(Map<String, dynamic> map) {
    return VmssFabricProfile(
      images: pulumi.Input.fromValue(pulumi.Input.decodeList<PoolImage>(map['images']!, (value) => PoolImage.fromMap((value as Map).cast<String, dynamic>()))),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: pulumi.Input.fromValue(DevOpsAzureSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
