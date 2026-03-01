// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_encryption_configuration.dart';

/// Elastic capacity pool properties
class ElasticCapacityPoolProperties {
  /// The Azure Resource URI for an Active Directory configuration. This is used by all the SMB volumes within the pool
  final String? activeDirectoryConfigResourceId;
  /// Encryption settings
  final ElasticEncryptionConfiguration? encryption;
  /// The service level of the elastic capacity pool
  final String serviceLevel;
  /// Provisioned size of the pool (in bytes). For zoneRedundant service level pool, value must be in the range 1TiB to 16TiB or 1TiB to 128TiB for supported region. Values expressed in bytes as multiples of 1TiB till 16TiB and in multiples of 8TiB from 24TiB to 128TiB. Pool size can't be shrunk once it is created.
  final double size;
  /// The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/elasticVolumes, this is used by all the volumes within the pool
  final String subnetResourceId;

  /// Creates a new [ElasticCapacityPoolProperties].
  /// [activeDirectoryConfigResourceId] The Azure Resource URI for an Active Directory configuration. This is used by all the SMB volumes within the pool
  /// [encryption] Encryption settings
  /// [serviceLevel] The service level of the elastic capacity pool
  /// [size] Provisioned size of the pool (in bytes). For zoneRedundant service level pool, value must be in the range 1TiB to 16TiB or 1TiB to 128TiB for supported region. Values expressed in bytes as multiples of 1TiB till 16TiB and in multiples of 8TiB from 24TiB to 128TiB. Pool size can't be shrunk once it is created.
  /// [subnetResourceId] The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/elasticVolumes, this is used by all the volumes within the pool
  ElasticCapacityPoolProperties({
    this.activeDirectoryConfigResourceId,
    this.encryption,
    required this.serviceLevel,
    required this.size,
    required this.subnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfigResourceId': ?activeDirectoryConfigResourceId,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'serviceLevel': serviceLevel,
      'size': size,
      'subnetResourceId': subnetResourceId,
    };
  }

  factory ElasticCapacityPoolProperties.fromMap(Map<String, dynamic> map) {
    return ElasticCapacityPoolProperties(
      activeDirectoryConfigResourceId: map['activeDirectoryConfigResourceId'] == null ? null : map['activeDirectoryConfigResourceId'] as String,
      encryption: map['encryption'] == null ? null : ElasticEncryptionConfiguration.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      serviceLevel: map['serviceLevel'] as String,
      size: map['size'] as double,
      subnetResourceId: map['subnetResourceId'] as String,
    );
  }
}

