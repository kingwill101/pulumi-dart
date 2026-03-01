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
  final ClusterDefinitionResponse clusterDefinition;
  /// The hdp version of the cluster.
  final String? clusterHdpVersion;
  /// The cluster id.
  final String? clusterId;
  /// The state of the cluster.
  final String? clusterState;
  /// The version of the cluster.
  final String? clusterVersion;
  /// The compute isolation properties.
  final ComputeIsolationPropertiesResponse? computeIsolationProperties;
  /// The compute profile.
  final ComputeProfileResponse? computeProfile;
  /// The list of connectivity endpoints.
  final List<ConnectivityEndpointResponse>? connectivityEndpoints;
  /// The date on which the cluster was created.
  final String? createdDate;
  /// The disk encryption properties.
  final DiskEncryptionPropertiesResponse? diskEncryptionProperties;
  /// The encryption-in-transit properties.
  final EncryptionInTransitPropertiesResponse? encryptionInTransitProperties;
  /// The list of errors.
  final List<ErrorsResponse>? errors;
  /// The excluded services config.
  final ExcludedServicesConfigResponse? excludedServicesConfig;
  /// The cluster kafka rest proxy configuration.
  final KafkaRestPropertiesResponse? kafkaRestProperties;
  /// The minimal supported tls version.
  final String? minSupportedTlsVersion;
  /// The network properties.
  final NetworkPropertiesResponse? networkProperties;
  /// The type of operating system.
  final String? osType;
  /// The list of private endpoint connections.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The private link configurations.
  final List<PrivateLinkConfigurationResponse>? privateLinkConfigurations;
  /// The provisioning state, which only appears in the response.
  final String? provisioningState;
  /// The quota information.
  final QuotaInfoResponse? quotaInfo;
  /// The security profile.
  final SecurityProfileResponse? securityProfile;
  /// The storage profile.
  final StorageProfileResponse? storageProfile;
  /// The cluster tier.
  final String? tier;

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
      'clusterDefinition': clusterDefinition.toMap(),
      'clusterHdpVersion': ?clusterHdpVersion,
      'clusterId': ?clusterId,
      'clusterState': ?clusterState,
      'clusterVersion': ?clusterVersion,
      'computeIsolationProperties': ?computeIsolationProperties == null ? null : computeIsolationProperties!.toMap(),
      'computeProfile': ?computeProfile == null ? null : computeProfile!.toMap(),
      'connectivityEndpoints': ?connectivityEndpoints == null ? null : pulumi.Input.encodeList<ConnectivityEndpointResponse, Map<String, dynamic>>(connectivityEndpoints!, (value) => value.toMap()),
      'createdDate': ?createdDate,
      'diskEncryptionProperties': ?diskEncryptionProperties == null ? null : diskEncryptionProperties!.toMap(),
      'encryptionInTransitProperties': ?encryptionInTransitProperties == null ? null : encryptionInTransitProperties!.toMap(),
      'errors': ?errors == null ? null : pulumi.Input.encodeList<ErrorsResponse, Map<String, dynamic>>(errors!, (value) => value.toMap()),
      'excludedServicesConfig': ?excludedServicesConfig == null ? null : excludedServicesConfig!.toMap(),
      'kafkaRestProperties': ?kafkaRestProperties == null ? null : kafkaRestProperties!.toMap(),
      'minSupportedTlsVersion': ?minSupportedTlsVersion,
      'networkProperties': ?networkProperties == null ? null : networkProperties!.toMap(),
      'osType': ?osType,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'privateLinkConfigurations': ?privateLinkConfigurations == null ? null : pulumi.Input.encodeList<PrivateLinkConfigurationResponse, Map<String, dynamic>>(privateLinkConfigurations!, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'quotaInfo': ?quotaInfo == null ? null : quotaInfo!.toMap(),
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'tier': ?tier,
    };
  }

  factory ClusterGetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ClusterGetPropertiesResponse(
      clusterDefinition: ClusterDefinitionResponse.fromMap((map['clusterDefinition'] as Map).cast<String, dynamic>()),
      clusterHdpVersion: map['clusterHdpVersion'] == null ? null : map['clusterHdpVersion'] as String,
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      clusterState: map['clusterState'] == null ? null : map['clusterState'] as String,
      clusterVersion: map['clusterVersion'] == null ? null : map['clusterVersion'] as String,
      computeIsolationProperties: map['computeIsolationProperties'] == null ? null : ComputeIsolationPropertiesResponse.fromMap((map['computeIsolationProperties'] as Map).cast<String, dynamic>()),
      computeProfile: map['computeProfile'] == null ? null : ComputeProfileResponse.fromMap((map['computeProfile'] as Map).cast<String, dynamic>()),
      connectivityEndpoints: map['connectivityEndpoints'] == null ? null : pulumi.Input.decodeList<ConnectivityEndpointResponse>(map['connectivityEndpoints'], (value) => ConnectivityEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      createdDate: map['createdDate'] == null ? null : map['createdDate'] as String,
      diskEncryptionProperties: map['diskEncryptionProperties'] == null ? null : DiskEncryptionPropertiesResponse.fromMap((map['diskEncryptionProperties'] as Map).cast<String, dynamic>()),
      encryptionInTransitProperties: map['encryptionInTransitProperties'] == null ? null : EncryptionInTransitPropertiesResponse.fromMap((map['encryptionInTransitProperties'] as Map).cast<String, dynamic>()),
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<ErrorsResponse>(map['errors'], (value) => ErrorsResponse.fromMap((value as Map).cast<String, dynamic>())),
      excludedServicesConfig: map['excludedServicesConfig'] == null ? null : ExcludedServicesConfigResponse.fromMap((map['excludedServicesConfig'] as Map).cast<String, dynamic>()),
      kafkaRestProperties: map['kafkaRestProperties'] == null ? null : KafkaRestPropertiesResponse.fromMap((map['kafkaRestProperties'] as Map).cast<String, dynamic>()),
      minSupportedTlsVersion: map['minSupportedTlsVersion'] == null ? null : map['minSupportedTlsVersion'] as String,
      networkProperties: map['networkProperties'] == null ? null : NetworkPropertiesResponse.fromMap((map['networkProperties'] as Map).cast<String, dynamic>()),
      osType: map['osType'] == null ? null : map['osType'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : pulumi.Input.decodeList<PrivateLinkConfigurationResponse>(map['privateLinkConfigurations'], (value) => PrivateLinkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      quotaInfo: map['quotaInfo'] == null ? null : QuotaInfoResponse.fromMap((map['quotaInfo'] as Map).cast<String, dynamic>()),
      securityProfile: map['securityProfile'] == null ? null : SecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

