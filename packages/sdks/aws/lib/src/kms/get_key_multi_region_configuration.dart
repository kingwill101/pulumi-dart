// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_multi_region_configuration_primary_key.dart';
import 'get_key_multi_region_configuration_replica_key.dart';

class GetKeyMultiRegionConfiguration {
  /// Indicates whether the KMS key is a `PRIMARY` or `REPLICA` key.
  final pulumi.Input<String> multiRegionKeyType;
  /// The key ARN and Region of the primary key. This is the current KMS key if it is the primary key.
  final pulumi.Input<List<GetKeyMultiRegionConfigurationPrimaryKey>> primaryKeys;
  /// The key ARNs and Regions of all replica keys. Includes the current KMS key if it is a replica key.
  final pulumi.Input<List<GetKeyMultiRegionConfigurationReplicaKey>> replicaKeys;

  /// Creates a new [GetKeyMultiRegionConfiguration].
  /// [multiRegionKeyType] Indicates whether the KMS key is a `PRIMARY` or `REPLICA` key.
  /// [primaryKeys] The key ARN and Region of the primary key. This is the current KMS key if it is the primary key.
  /// [replicaKeys] The key ARNs and Regions of all replica keys. Includes the current KMS key if it is a replica key.
  const GetKeyMultiRegionConfiguration({
    required this.multiRegionKeyType,
    required this.primaryKeys,
    required this.replicaKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multiRegionKeyType': multiRegionKeyType,
      'primaryKeys': pulumi.Input.mapInputValue<List<GetKeyMultiRegionConfigurationPrimaryKey>, List<Map<String, dynamic>>>(primaryKeys, (value) => pulumi.Input.encodeList<GetKeyMultiRegionConfigurationPrimaryKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaKeys': pulumi.Input.mapInputValue<List<GetKeyMultiRegionConfigurationReplicaKey>, List<Map<String, dynamic>>>(replicaKeys, (value) => pulumi.Input.encodeList<GetKeyMultiRegionConfigurationReplicaKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetKeyMultiRegionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetKeyMultiRegionConfiguration(
      multiRegionKeyType: pulumi.Input.fromValue(map['multiRegionKeyType'] as String),
      primaryKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetKeyMultiRegionConfigurationPrimaryKey>(map['primaryKeys']!, (value) => GetKeyMultiRegionConfigurationPrimaryKey.fromMap((value as Map).cast<String, dynamic>()))),
      replicaKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetKeyMultiRegionConfigurationReplicaKey>(map['replicaKeys']!, (value) => GetKeyMultiRegionConfigurationReplicaKey.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

