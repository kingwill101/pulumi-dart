// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_encryption_configuration_response.dart';

/// Elastic capacity pool properties
class ElasticCapacityPoolPropertiesResponse {
  /// The Azure Resource URI for an Active Directory configuration. This is used by all the SMB volumes within the pool
  final String? activeDirectoryConfigResourceId;
  /// Current availability status of the resource.
  final String availabilityStatus;
  /// Indicates the current zone of the pool. This can be changed for zoneRedundant service level pool with the changeZone action
  final String currentZone;
  /// Encryption settings
  final ElasticEncryptionConfigurationResponse? encryption;
  /// Azure lifecycle management.
  final String provisioningState;
  /// The service level of the elastic capacity pool
  final String serviceLevel;
  /// Provisioned size of the pool (in bytes). For zoneRedundant service level pool, value must be in the range 1TiB to 16TiB or 1TiB to 128TiB for supported region. Values expressed in bytes as multiples of 1TiB till 16TiB and in multiples of 8TiB from 24TiB to 128TiB. Pool size can't be shrunk once it is created.
  final double size;
  /// The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/elasticVolumes, this is used by all the volumes within the pool
  final String subnetResourceId;
  /// Total throughput of the pool in MiB/s
  final double totalThroughputMibps;

  /// Creates a new [ElasticCapacityPoolPropertiesResponse].
  /// [activeDirectoryConfigResourceId] The Azure Resource URI for an Active Directory configuration. This is used by all the SMB volumes within the pool
  /// [availabilityStatus] Current availability status of the resource.
  /// [currentZone] Indicates the current zone of the pool. This can be changed for zoneRedundant service level pool with the changeZone action
  /// [encryption] Encryption settings
  /// [provisioningState] Azure lifecycle management.
  /// [serviceLevel] The service level of the elastic capacity pool
  /// [size] Provisioned size of the pool (in bytes). For zoneRedundant service level pool, value must be in the range 1TiB to 16TiB or 1TiB to 128TiB for supported region. Values expressed in bytes as multiples of 1TiB till 16TiB and in multiples of 8TiB from 24TiB to 128TiB. Pool size can't be shrunk once it is created.
  /// [subnetResourceId] The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/elasticVolumes, this is used by all the volumes within the pool
  /// [totalThroughputMibps] Total throughput of the pool in MiB/s
  ElasticCapacityPoolPropertiesResponse({
    this.activeDirectoryConfigResourceId,
    required this.availabilityStatus,
    required this.currentZone,
    this.encryption,
    required this.provisioningState,
    required this.serviceLevel,
    required this.size,
    required this.subnetResourceId,
    required this.totalThroughputMibps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfigResourceId': ?activeDirectoryConfigResourceId,
      'availabilityStatus': availabilityStatus,
      'currentZone': currentZone,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'provisioningState': provisioningState,
      'serviceLevel': serviceLevel,
      'size': size,
      'subnetResourceId': subnetResourceId,
      'totalThroughputMibps': totalThroughputMibps,
    };
  }

  factory ElasticCapacityPoolPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticCapacityPoolPropertiesResponse(
      activeDirectoryConfigResourceId: map['activeDirectoryConfigResourceId'] == null ? null : map['activeDirectoryConfigResourceId'] as String,
      availabilityStatus: map['availabilityStatus'] as String,
      currentZone: map['currentZone'] as String,
      encryption: map['encryption'] == null ? null : ElasticEncryptionConfigurationResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      serviceLevel: map['serviceLevel'] as String,
      size: map['size'] as double,
      subnetResourceId: map['subnetResourceId'] as String,
      totalThroughputMibps: map['totalThroughputMibps'] as double,
    );
  }
}

