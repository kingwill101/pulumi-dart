// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_encryption_configuration.dart';

/// Elastic capacity pool properties
class ElasticCapacityPoolProperties {
  /// The Azure Resource URI for an Active Directory configuration. This is used by all the SMB volumes within the pool
  final pulumi.Input<String?>? activeDirectoryConfigResourceId;
  /// Encryption settings
  final pulumi.Input<ElasticEncryptionConfiguration?>? encryption;
  /// The service level of the elastic capacity pool
  final pulumi.Input<dynamic> serviceLevel;
  /// Provisioned size of the pool (in bytes). For zoneRedundant service level pool, value must be in the range 1TiB to 16TiB or 1TiB to 128TiB for supported region. Values expressed in bytes as multiples of 1TiB till 16TiB and in multiples of 8TiB from 24TiB to 128TiB. Pool size can't be shrunk once it is created.
  final pulumi.Input<double> size;
  /// The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/elasticVolumes, this is used by all the volumes within the pool
  final pulumi.Input<String> subnetResourceId;

  /// Creates a new [ElasticCapacityPoolProperties].
  /// [activeDirectoryConfigResourceId] The Azure Resource URI for an Active Directory configuration. This is used by all the SMB volumes within the pool
  /// [encryption] Encryption settings
  /// [serviceLevel] The service level of the elastic capacity pool
  /// [size] Provisioned size of the pool (in bytes). For zoneRedundant service level pool, value must be in the range 1TiB to 16TiB or 1TiB to 128TiB for supported region. Values expressed in bytes as multiples of 1TiB till 16TiB and in multiples of 8TiB from 24TiB to 128TiB. Pool size can't be shrunk once it is created.
  /// [subnetResourceId] The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/elasticVolumes, this is used by all the volumes within the pool
  const ElasticCapacityPoolProperties({
    this.activeDirectoryConfigResourceId,
    this.encryption,
    required this.serviceLevel,
    required this.size,
    required this.subnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfigResourceId': ?activeDirectoryConfigResourceId,
      'encryption': ?pulumi.Input.mapOptionalInputValue<ElasticEncryptionConfiguration, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'serviceLevel': serviceLevel,
      'size': size,
      'subnetResourceId': subnetResourceId,
    };
  }

  factory ElasticCapacityPoolProperties.fromMap(Map<String, dynamic> map) {
    return ElasticCapacityPoolProperties(
      activeDirectoryConfigResourceId: (() { final guardedValue = map['activeDirectoryConfigResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceLevel: pulumi.Input.fromValue(map['serviceLevel']),
      size: pulumi.Input.fromValue((map['size'] as num).toDouble()),
      subnetResourceId: pulumi.Input.fromValue(map['subnetResourceId'] as String),
    );
  }
}
