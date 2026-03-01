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
  final List<PoolImage> images;
  /// Discriminator property for FabricProfile.
  /// Expected value is 'Vmss'.
  final String kind;
  /// The network profile of the machines in the pool.
  final NetworkProfile? networkProfile;
  /// The OS profile of the machines in the pool.
  final OsProfile? osProfile;
  /// The Azure SKU of the machines in the pool.
  final DevOpsAzureSku sku;
  /// The storage profile of the machines in the pool.
  final StorageProfile? storageProfile;

  /// Creates a new [VmssFabricProfile].
  /// [images] The VM images of the machines in the pool.
  /// [kind] Discriminator property for FabricProfile.
  /// [networkProfile] The network profile of the machines in the pool.
  /// [osProfile] The OS profile of the machines in the pool.
  /// [sku] The Azure SKU of the machines in the pool.
  /// [storageProfile] The storage profile of the machines in the pool.
  VmssFabricProfile({
    required this.images,
    required this.kind,
    this.networkProfile,
    this.osProfile,
    required this.sku,
    this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': pulumi.Input.encodeList<PoolImage, Map<String, dynamic>>(images, (value) => value.toMap()),
      'kind': kind,
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'sku': sku.toMap(),
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
    };
  }

  factory VmssFabricProfile.fromMap(Map<String, dynamic> map) {
    return VmssFabricProfile(
      images: pulumi.Input.decodeList<PoolImage>(map['images'], (value) => PoolImage.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      networkProfile: map['networkProfile'] == null ? null : NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : OsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      sku: DevOpsAzureSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

