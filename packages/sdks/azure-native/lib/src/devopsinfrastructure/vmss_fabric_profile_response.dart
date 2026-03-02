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
  final pulumi.Input<List<PoolImageResponse>> images;
  /// Discriminator property for FabricProfile.
  /// Expected value is 'Vmss'.
  final pulumi.Input<String> kind;
  /// The network profile of the machines in the pool.
  final pulumi.Input<NetworkProfileResponse>? networkProfile;
  /// The OS profile of the machines in the pool.
  final pulumi.Input<OsProfileResponse>? osProfile;
  /// The Azure SKU of the machines in the pool.
  final pulumi.Input<DevOpsAzureSkuResponse> sku;
  /// The storage profile of the machines in the pool.
  final pulumi.Input<StorageProfileResponse>? storageProfile;

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
      'images': pulumi.Input.mapInputValue<List<PoolImageResponse>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<PoolImageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfileResponse, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OsProfileResponse, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'sku': pulumi.Input.mapInputValue<DevOpsAzureSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfileResponse, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
    };
  }

  factory VmssFabricProfileResponse.fromMap(Map<String, dynamic> map) {
    return VmssFabricProfileResponse(
      images: (pulumi.Input.decodeList<PoolImageResponse>(map['images'], (value) => PoolImageResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kind: (map['kind'] as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (NetworkProfileResponse.fromMap((map['networkProfile']! as Map).cast<String, dynamic>())).input(),
      osProfile: map['osProfile'] == null ? null : (OsProfileResponse.fromMap((map['osProfile']! as Map).cast<String, dynamic>())).input(),
      sku: (DevOpsAzureSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      storageProfile: map['storageProfile'] == null ? null : (StorageProfileResponse.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

