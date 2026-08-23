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
  const ClusterGetPropertiesResponse({
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
      clusterDefinition: pulumi.Input.fromValue(ClusterDefinitionResponse.fromMap((map['clusterDefinition']! as Map).cast<String, dynamic>())),
      clusterHdpVersion: (() { final guardedValue = map['clusterHdpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterState: (() { final guardedValue = map['clusterState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeIsolationProperties: (() { final guardedValue = map['computeIsolationProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeIsolationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computeProfile: (() { final guardedValue = map['computeProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectivityEndpoints: (() { final guardedValue = map['connectivityEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectivityEndpointResponse>(guardedValue, (value) => ConnectivityEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionProperties: (() { final guardedValue = map['diskEncryptionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionInTransitProperties: (() { final guardedValue = map['encryptionInTransitProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionInTransitPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorsResponse>(guardedValue, (value) => ErrorsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      excludedServicesConfig: (() { final guardedValue = map['excludedServicesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExcludedServicesConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kafkaRestProperties: (() { final guardedValue = map['kafkaRestProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KafkaRestPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minSupportedTlsVersion: (() { final guardedValue = map['minSupportedTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProperties: (() { final guardedValue = map['networkProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateLinkConfigurations: (() { final guardedValue = map['privateLinkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkConfigurationResponse>(guardedValue, (value) => PrivateLinkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaInfo: (() { final guardedValue = map['quotaInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuotaInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
