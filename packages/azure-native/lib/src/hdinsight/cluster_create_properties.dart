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
  final ClusterDefinition? clusterDefinition;
  /// The version of the cluster.
  final String? clusterVersion;
  /// The compute isolation properties.
  final ComputeIsolationProperties? computeIsolationProperties;
  /// The compute profile.
  final ComputeProfile? computeProfile;
  /// The disk encryption properties.
  final DiskEncryptionProperties? diskEncryptionProperties;
  /// The encryption-in-transit properties.
  final EncryptionInTransitProperties? encryptionInTransitProperties;
  /// The cluster kafka rest proxy configuration.
  final KafkaRestProperties? kafkaRestProperties;
  /// The minimal supported tls version.
  final String? minSupportedTlsVersion;
  /// The network properties.
  final NetworkProperties? networkProperties;
  /// The type of operating system.
  final String? osType;
  /// The private link configurations.
  final List<PrivateLinkConfiguration>? privateLinkConfigurations;
  /// The security profile.
  final SecurityProfile? securityProfile;
  /// The storage profile.
  final StorageProfile? storageProfile;
  /// The cluster tier.
  final String? tier;

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
      'clusterDefinition': ?clusterDefinition == null ? null : clusterDefinition!.toMap(),
      'clusterVersion': ?clusterVersion,
      'computeIsolationProperties': ?computeIsolationProperties == null ? null : computeIsolationProperties!.toMap(),
      'computeProfile': ?computeProfile == null ? null : computeProfile!.toMap(),
      'diskEncryptionProperties': ?diskEncryptionProperties == null ? null : diskEncryptionProperties!.toMap(),
      'encryptionInTransitProperties': ?encryptionInTransitProperties == null ? null : encryptionInTransitProperties!.toMap(),
      'kafkaRestProperties': ?kafkaRestProperties == null ? null : kafkaRestProperties!.toMap(),
      'minSupportedTlsVersion': ?minSupportedTlsVersion,
      'networkProperties': ?networkProperties == null ? null : networkProperties!.toMap(),
      'osType': ?osType,
      'privateLinkConfigurations': ?privateLinkConfigurations == null ? null : pulumi.Input.encodeList<PrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfigurations!, (value) => value.toMap()),
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'tier': ?tier,
    };
  }

  factory ClusterCreateProperties.fromMap(Map<String, dynamic> map) {
    return ClusterCreateProperties(
      clusterDefinition: map['clusterDefinition'] == null ? null : ClusterDefinition.fromMap((map['clusterDefinition'] as Map).cast<String, dynamic>()),
      clusterVersion: map['clusterVersion'] == null ? null : map['clusterVersion'] as String,
      computeIsolationProperties: map['computeIsolationProperties'] == null ? null : ComputeIsolationProperties.fromMap((map['computeIsolationProperties'] as Map).cast<String, dynamic>()),
      computeProfile: map['computeProfile'] == null ? null : ComputeProfile.fromMap((map['computeProfile'] as Map).cast<String, dynamic>()),
      diskEncryptionProperties: map['diskEncryptionProperties'] == null ? null : DiskEncryptionProperties.fromMap((map['diskEncryptionProperties'] as Map).cast<String, dynamic>()),
      encryptionInTransitProperties: map['encryptionInTransitProperties'] == null ? null : EncryptionInTransitProperties.fromMap((map['encryptionInTransitProperties'] as Map).cast<String, dynamic>()),
      kafkaRestProperties: map['kafkaRestProperties'] == null ? null : KafkaRestProperties.fromMap((map['kafkaRestProperties'] as Map).cast<String, dynamic>()),
      minSupportedTlsVersion: map['minSupportedTlsVersion'] == null ? null : map['minSupportedTlsVersion'] as String,
      networkProperties: map['networkProperties'] == null ? null : NetworkProperties.fromMap((map['networkProperties'] as Map).cast<String, dynamic>()),
      osType: map['osType'] == null ? null : map['osType'] as String,
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : pulumi.Input.decodeList<PrivateLinkConfiguration>(map['privateLinkConfigurations'], (value) => PrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      securityProfile: map['securityProfile'] == null ? null : SecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

