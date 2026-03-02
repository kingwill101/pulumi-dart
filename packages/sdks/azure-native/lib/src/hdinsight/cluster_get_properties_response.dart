// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_definition_response.dart';
import 'compute_isolation_properties_response.dart';
import 'compute_profile_response.dart';
import 'connectivity_endpoint_response.dart';
import 'disk_encryption_properties_response.dart';
import 'encryption_in_transit_properties_response.dart';
import 'errors_response.dart';
import 'excluded_services_config_response.dart';
import 'kafka_rest_properties_response.dart';
import 'network_properties_response.dart';
import 'private_endpoint_connection_response.dart';
import 'private_link_configuration_response.dart';
import 'quota_info_response.dart';
import 'security_profile_response.dart';
import 'storage_profile_response.dart';

/// The properties of cluster.
class ClusterGetPropertiesResponse {
  /// The cluster definition.
  final pulumi.Input<ClusterDefinitionResponse> clusterDefinition;
  /// The hdp version of the cluster.
  final pulumi.Input<String>? clusterHdpVersion;
  /// The cluster id.
  final pulumi.Input<String>? clusterId;
  /// The state of the cluster.
  final pulumi.Input<String>? clusterState;
  /// The version of the cluster.
  final pulumi.Input<String>? clusterVersion;
  /// The compute isolation properties.
  final pulumi.Input<ComputeIsolationPropertiesResponse>? computeIsolationProperties;
  /// The compute profile.
  final pulumi.Input<ComputeProfileResponse>? computeProfile;
  /// The list of connectivity endpoints.
  final pulumi.Input<List<ConnectivityEndpointResponse>>? connectivityEndpoints;
  /// The date on which the cluster was created.
  final pulumi.Input<String>? createdDate;
  /// The disk encryption properties.
  final pulumi.Input<DiskEncryptionPropertiesResponse>? diskEncryptionProperties;
  /// The encryption-in-transit properties.
  final pulumi.Input<EncryptionInTransitPropertiesResponse>? encryptionInTransitProperties;
  /// The list of errors.
  final pulumi.Input<List<ErrorsResponse>>? errors;
  /// The excluded services config.
  final pulumi.Input<ExcludedServicesConfigResponse>? excludedServicesConfig;
  /// The cluster kafka rest proxy configuration.
  final pulumi.Input<KafkaRestPropertiesResponse>? kafkaRestProperties;
  /// The minimal supported tls version.
  final pulumi.Input<String>? minSupportedTlsVersion;
  /// The network properties.
  final pulumi.Input<NetworkPropertiesResponse>? networkProperties;
  /// The type of operating system.
  final pulumi.Input<String>? osType;
  /// The list of private endpoint connections.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// The private link configurations.
  final pulumi.Input<List<PrivateLinkConfigurationResponse>>? privateLinkConfigurations;
  /// The provisioning state, which only appears in the response.
  final pulumi.Input<String>? provisioningState;
  /// The quota information.
  final pulumi.Input<QuotaInfoResponse>? quotaInfo;
  /// The security profile.
  final pulumi.Input<SecurityProfileResponse>? securityProfile;
  /// The storage profile.
  final pulumi.Input<StorageProfileResponse>? storageProfile;
  /// The cluster tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [ClusterGetPropertiesResponse].
  /// [clusterDefinition] The cluster definition.
  /// [clusterHdpVersion] The hdp version of the cluster.
  /// [clusterId] The cluster id.
  /// [clusterState] The state of the cluster.
  /// [clusterVersion] The version of the cluster.
  /// [computeIsolationProperties] The compute isolation properties.
  /// [computeProfile] The compute profile.
  /// [connectivityEndpoints] The list of connectivity endpoints.
  /// [createdDate] The date on which the cluster was created.
  /// [diskEncryptionProperties] The disk encryption properties.
  /// [encryptionInTransitProperties] The encryption-in-transit properties.
  /// [errors] The list of errors.
  /// [excludedServicesConfig] The excluded services config.
  /// [kafkaRestProperties] The cluster kafka rest proxy configuration.
  /// [minSupportedTlsVersion] The minimal supported tls version.
  /// [networkProperties] The network properties.
  /// [osType] The type of operating system.
  /// [privateEndpointConnections] The list of private endpoint connections.
  /// [privateLinkConfigurations] The private link configurations.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [quotaInfo] The quota information.
  /// [securityProfile] The security profile.
  /// [storageProfile] The storage profile.
  /// [tier] The cluster tier.
  ClusterGetPropertiesResponse({
    required this.clusterDefinition,
    this.clusterHdpVersion,
    this.clusterId,
    this.clusterState,
    this.clusterVersion,
    this.computeIsolationProperties,
    this.computeProfile,
    this.connectivityEndpoints,
    this.createdDate,
    this.diskEncryptionProperties,
    this.encryptionInTransitProperties,
    this.errors,
    this.excludedServicesConfig,
    this.kafkaRestProperties,
    this.minSupportedTlsVersion,
    this.networkProperties,
    this.osType,
    required this.privateEndpointConnections,
    this.privateLinkConfigurations,
    this.provisioningState,
    this.quotaInfo,
    this.securityProfile,
    this.storageProfile,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDefinition': pulumi.Input.mapInputValue<ClusterDefinitionResponse, Map<String, dynamic>>(clusterDefinition, (value) => value.toMap()),
      'clusterHdpVersion': ?clusterHdpVersion,
      'clusterId': ?clusterId,
      'clusterState': ?clusterState,
      'clusterVersion': ?clusterVersion,
      'computeIsolationProperties': ?pulumi.Input.mapOptionalInputValue<ComputeIsolationPropertiesResponse, Map<String, dynamic>>(computeIsolationProperties, (value) => value.toMap()),
      'computeProfile': ?pulumi.Input.mapOptionalInputValue<ComputeProfileResponse, Map<String, dynamic>>(computeProfile, (value) => value.toMap()),
      'connectivityEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ConnectivityEndpointResponse>, List<Map<String, dynamic>>>(connectivityEndpoints, (value) => pulumi.Input.encodeList<ConnectivityEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdDate': ?createdDate,
      'diskEncryptionProperties': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionPropertiesResponse, Map<String, dynamic>>(diskEncryptionProperties, (value) => value.toMap()),
      'encryptionInTransitProperties': ?pulumi.Input.mapOptionalInputValue<EncryptionInTransitPropertiesResponse, Map<String, dynamic>>(encryptionInTransitProperties, (value) => value.toMap()),
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ErrorsResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ErrorsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedServicesConfig': ?pulumi.Input.mapOptionalInputValue<ExcludedServicesConfigResponse, Map<String, dynamic>>(excludedServicesConfig, (value) => value.toMap()),
      'kafkaRestProperties': ?pulumi.Input.mapOptionalInputValue<KafkaRestPropertiesResponse, Map<String, dynamic>>(kafkaRestProperties, (value) => value.toMap()),
      'minSupportedTlsVersion': ?minSupportedTlsVersion,
      'networkProperties': ?pulumi.Input.mapOptionalInputValue<NetworkPropertiesResponse, Map<String, dynamic>>(networkProperties, (value) => value.toMap()),
      'osType': ?osType,
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkConfigurationResponse>, List<Map<String, dynamic>>>(privateLinkConfigurations, (value) => pulumi.Input.encodeList<PrivateLinkConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': ?provisioningState,
      'quotaInfo': ?pulumi.Input.mapOptionalInputValue<QuotaInfoResponse, Map<String, dynamic>>(quotaInfo, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileResponse, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfileResponse, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tier': ?tier,
    };
  }

  factory ClusterGetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ClusterGetPropertiesResponse(
      clusterDefinition: (ClusterDefinitionResponse.fromMap((map['clusterDefinition'] as Map).cast<String, dynamic>())).input(),
      clusterHdpVersion: map['clusterHdpVersion'] == null ? null : (map['clusterHdpVersion']! as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      clusterState: map['clusterState'] == null ? null : (map['clusterState']! as String).input(),
      clusterVersion: map['clusterVersion'] == null ? null : (map['clusterVersion']! as String).input(),
      computeIsolationProperties: map['computeIsolationProperties'] == null ? null : (ComputeIsolationPropertiesResponse.fromMap((map['computeIsolationProperties']! as Map).cast<String, dynamic>())).input(),
      computeProfile: map['computeProfile'] == null ? null : (ComputeProfileResponse.fromMap((map['computeProfile']! as Map).cast<String, dynamic>())).input(),
      connectivityEndpoints: map['connectivityEndpoints'] == null ? null : (pulumi.Input.decodeList<ConnectivityEndpointResponse>(map['connectivityEndpoints']!, (value) => ConnectivityEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdDate: map['createdDate'] == null ? null : (map['createdDate']! as String).input(),
      diskEncryptionProperties: map['diskEncryptionProperties'] == null ? null : (DiskEncryptionPropertiesResponse.fromMap((map['diskEncryptionProperties']! as Map).cast<String, dynamic>())).input(),
      encryptionInTransitProperties: map['encryptionInTransitProperties'] == null ? null : (EncryptionInTransitPropertiesResponse.fromMap((map['encryptionInTransitProperties']! as Map).cast<String, dynamic>())).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<ErrorsResponse>(map['errors']!, (value) => ErrorsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      excludedServicesConfig: map['excludedServicesConfig'] == null ? null : (ExcludedServicesConfigResponse.fromMap((map['excludedServicesConfig']! as Map).cast<String, dynamic>())).input(),
      kafkaRestProperties: map['kafkaRestProperties'] == null ? null : (KafkaRestPropertiesResponse.fromMap((map['kafkaRestProperties']! as Map).cast<String, dynamic>())).input(),
      minSupportedTlsVersion: map['minSupportedTlsVersion'] == null ? null : (map['minSupportedTlsVersion']! as String).input(),
      networkProperties: map['networkProperties'] == null ? null : (NetworkPropertiesResponse.fromMap((map['networkProperties']! as Map).cast<String, dynamic>())).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      privateEndpointConnections: (pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : (pulumi.Input.decodeList<PrivateLinkConfigurationResponse>(map['privateLinkConfigurations']!, (value) => PrivateLinkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      quotaInfo: map['quotaInfo'] == null ? null : (QuotaInfoResponse.fromMap((map['quotaInfo']! as Map).cast<String, dynamic>())).input(),
      securityProfile: map['securityProfile'] == null ? null : (SecurityProfileResponse.fromMap((map['securityProfile']! as Map).cast<String, dynamic>())).input(),
      storageProfile: map['storageProfile'] == null ? null : (StorageProfileResponse.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

