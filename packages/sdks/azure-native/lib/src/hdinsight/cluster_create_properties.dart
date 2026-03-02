// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_definition.dart';
import 'compute_isolation_properties.dart';
import 'compute_profile.dart';
import 'disk_encryption_properties.dart';
import 'encryption_in_transit_properties.dart';
import 'kafka_rest_properties.dart';
import 'network_properties.dart';
import 'private_link_configuration.dart';
import 'security_profile.dart';
import 'storage_profile.dart';

/// The cluster create parameters.
class ClusterCreateProperties {
  /// The cluster definition.
  final pulumi.Input<ClusterDefinition>? clusterDefinition;
  /// The version of the cluster.
  final pulumi.Input<String>? clusterVersion;
  /// The compute isolation properties.
  final pulumi.Input<ComputeIsolationProperties>? computeIsolationProperties;
  /// The compute profile.
  final pulumi.Input<ComputeProfile>? computeProfile;
  /// The disk encryption properties.
  final pulumi.Input<DiskEncryptionProperties>? diskEncryptionProperties;
  /// The encryption-in-transit properties.
  final pulumi.Input<EncryptionInTransitProperties>? encryptionInTransitProperties;
  /// The cluster kafka rest proxy configuration.
  final pulumi.Input<KafkaRestProperties>? kafkaRestProperties;
  /// The minimal supported tls version.
  final pulumi.Input<String>? minSupportedTlsVersion;
  /// The network properties.
  final pulumi.Input<NetworkProperties>? networkProperties;
  /// The type of operating system.
  final pulumi.Input<String>? osType;
  /// The private link configurations.
  final pulumi.Input<List<PrivateLinkConfiguration>>? privateLinkConfigurations;
  /// The security profile.
  final pulumi.Input<SecurityProfile>? securityProfile;
  /// The storage profile.
  final pulumi.Input<StorageProfile>? storageProfile;
  /// The cluster tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [ClusterCreateProperties].
  /// [clusterDefinition] The cluster definition.
  /// [clusterVersion] The version of the cluster.
  /// [computeIsolationProperties] The compute isolation properties.
  /// [computeProfile] The compute profile.
  /// [diskEncryptionProperties] The disk encryption properties.
  /// [encryptionInTransitProperties] The encryption-in-transit properties.
  /// [kafkaRestProperties] The cluster kafka rest proxy configuration.
  /// [minSupportedTlsVersion] The minimal supported tls version.
  /// [networkProperties] The network properties.
  /// [osType] The type of operating system.
  /// [privateLinkConfigurations] The private link configurations.
  /// [securityProfile] The security profile.
  /// [storageProfile] The storage profile.
  /// [tier] The cluster tier.
  ClusterCreateProperties({
    this.clusterDefinition,
    this.clusterVersion,
    this.computeIsolationProperties,
    this.computeProfile,
    this.diskEncryptionProperties,
    this.encryptionInTransitProperties,
    this.kafkaRestProperties,
    this.minSupportedTlsVersion,
    this.networkProperties,
    this.osType,
    this.privateLinkConfigurations,
    this.securityProfile,
    this.storageProfile,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDefinition': ?pulumi.Input.mapOptionalInputValue<ClusterDefinition, Map<String, dynamic>>(clusterDefinition, (value) => value.toMap()),
      'clusterVersion': ?clusterVersion,
      'computeIsolationProperties': ?pulumi.Input.mapOptionalInputValue<ComputeIsolationProperties, Map<String, dynamic>>(computeIsolationProperties, (value) => value.toMap()),
      'computeProfile': ?pulumi.Input.mapOptionalInputValue<ComputeProfile, Map<String, dynamic>>(computeProfile, (value) => value.toMap()),
      'diskEncryptionProperties': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionProperties, Map<String, dynamic>>(diskEncryptionProperties, (value) => value.toMap()),
      'encryptionInTransitProperties': ?pulumi.Input.mapOptionalInputValue<EncryptionInTransitProperties, Map<String, dynamic>>(encryptionInTransitProperties, (value) => value.toMap()),
      'kafkaRestProperties': ?pulumi.Input.mapOptionalInputValue<KafkaRestProperties, Map<String, dynamic>>(kafkaRestProperties, (value) => value.toMap()),
      'minSupportedTlsVersion': ?minSupportedTlsVersion,
      'networkProperties': ?pulumi.Input.mapOptionalInputValue<NetworkProperties, Map<String, dynamic>>(networkProperties, (value) => value.toMap()),
      'osType': ?osType,
      'privateLinkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkConfiguration>, List<Map<String, dynamic>>>(privateLinkConfigurations, (value) => pulumi.Input.encodeList<PrivateLinkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tier': ?tier,
    };
  }

  factory ClusterCreateProperties.fromMap(Map<String, dynamic> map) {
    return ClusterCreateProperties(
      clusterDefinition: map['clusterDefinition'] == null ? null : (ClusterDefinition.fromMap((map['clusterDefinition']! as Map).cast<String, dynamic>())).input(),
      clusterVersion: map['clusterVersion'] == null ? null : (map['clusterVersion']! as String).input(),
      computeIsolationProperties: map['computeIsolationProperties'] == null ? null : (ComputeIsolationProperties.fromMap((map['computeIsolationProperties']! as Map).cast<String, dynamic>())).input(),
      computeProfile: map['computeProfile'] == null ? null : (ComputeProfile.fromMap((map['computeProfile']! as Map).cast<String, dynamic>())).input(),
      diskEncryptionProperties: map['diskEncryptionProperties'] == null ? null : (DiskEncryptionProperties.fromMap((map['diskEncryptionProperties']! as Map).cast<String, dynamic>())).input(),
      encryptionInTransitProperties: map['encryptionInTransitProperties'] == null ? null : (EncryptionInTransitProperties.fromMap((map['encryptionInTransitProperties']! as Map).cast<String, dynamic>())).input(),
      kafkaRestProperties: map['kafkaRestProperties'] == null ? null : (KafkaRestProperties.fromMap((map['kafkaRestProperties']! as Map).cast<String, dynamic>())).input(),
      minSupportedTlsVersion: map['minSupportedTlsVersion'] == null ? null : (map['minSupportedTlsVersion']! as String).input(),
      networkProperties: map['networkProperties'] == null ? null : (NetworkProperties.fromMap((map['networkProperties']! as Map).cast<String, dynamic>())).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : (pulumi.Input.decodeList<PrivateLinkConfiguration>(map['privateLinkConfigurations']!, (value) => PrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityProfile: map['securityProfile'] == null ? null : (SecurityProfile.fromMap((map['securityProfile']! as Map).cast<String, dynamic>())).input(),
      storageProfile: map['storageProfile'] == null ? null : (StorageProfile.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

