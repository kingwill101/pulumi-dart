// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_ops_azure_sku_response.dart';
import 'network_profile_response.dart';
import 'os_profile_response.dart';
import 'pool_image_response.dart';
import 'storage_profile_response.dart';

/// The agents will run on Virtual Machine Scale Sets.
class VmssFabricProfileResponse {
  /// The VM images of the machines in the pool.
  final List<PoolImageResponse> images;
  /// Discriminator property for FabricProfile.
  /// Expected value is 'Vmss'.
  final String kind;
  /// The network profile of the machines in the pool.
  final NetworkProfileResponse? networkProfile;
  /// The OS profile of the machines in the pool.
  final OsProfileResponse? osProfile;
  /// The Azure SKU of the machines in the pool.
  final DevOpsAzureSkuResponse sku;
  /// The storage profile of the machines in the pool.
  final StorageProfileResponse? storageProfile;

  /// Creates a new [VmssFabricProfileResponse].
  /// [images] The VM images of the machines in the pool.
  /// [kind] Discriminator property for FabricProfile.
  /// [networkProfile] The network profile of the machines in the pool.
  /// [osProfile] The OS profile of the machines in the pool.
  /// [sku] The Azure SKU of the machines in the pool.
  /// [storageProfile] The storage profile of the machines in the pool.
  VmssFabricProfileResponse({
    required this.images,
    required this.kind,
    this.networkProfile,
    this.osProfile,
    required this.sku,
    this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': pulumi.Input.encodeList<PoolImageResponse, Map<String, dynamic>>(images, (value) => value.toMap()),
      'kind': kind,
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'sku': sku.toMap(),
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
    };
  }

  factory VmssFabricProfileResponse.fromMap(Map<String, dynamic> map) {
    return VmssFabricProfileResponse(
      images: pulumi.Input.decodeList<PoolImageResponse>(map['images'], (value) => PoolImageResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      networkProfile: map['networkProfile'] == null ? null : NetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : OsProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      sku: DevOpsAzureSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

