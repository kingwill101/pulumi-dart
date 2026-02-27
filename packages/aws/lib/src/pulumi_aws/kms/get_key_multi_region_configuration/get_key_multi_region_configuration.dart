// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_key_multi_region_configuration_primary_key/get_key_multi_region_configuration_primary_key.dart';
import '../get_key_multi_region_configuration_replica_key/get_key_multi_region_configuration_replica_key.dart';

class GetKeyMultiRegionConfiguration {
  /// Indicates whether the KMS key is a `PRIMARY` or `REPLICA` key.
  final String multiRegionKeyType;

  /// The key ARN and Region of the primary key. This is the current KMS key if it is the primary key.
  final List<GetKeyMultiRegionConfigurationPrimaryKey> primaryKeys;

  /// The key ARNs and Regions of all replica keys. Includes the current KMS key if it is a replica key.
  final List<GetKeyMultiRegionConfigurationReplicaKey> replicaKeys;

  GetKeyMultiRegionConfiguration({
    required this.multiRegionKeyType,
    required this.primaryKeys,
    required this.replicaKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['multiRegionKeyType'] = multiRegionKeyType;
    map['primaryKeys'] = pulumi.Input.encodeList<
        GetKeyMultiRegionConfigurationPrimaryKey,
        Map<String, dynamic>>(primaryKeys, (value) => value.toMap());
    map['replicaKeys'] = pulumi.Input.encodeList<
        GetKeyMultiRegionConfigurationReplicaKey,
        Map<String, dynamic>>(replicaKeys, (value) => value.toMap());
    return map;
  }

  factory GetKeyMultiRegionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetKeyMultiRegionConfiguration(
      multiRegionKeyType: map['multiRegionKeyType'] as String,
      primaryKeys:
          pulumi.Input.decodeList<GetKeyMultiRegionConfigurationPrimaryKey>(
              map['primaryKeys'],
              (value) => GetKeyMultiRegionConfigurationPrimaryKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      replicaKeys:
          pulumi.Input.decodeList<GetKeyMultiRegionConfigurationReplicaKey>(
              map['replicaKeys'],
              (value) => GetKeyMultiRegionConfigurationReplicaKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
