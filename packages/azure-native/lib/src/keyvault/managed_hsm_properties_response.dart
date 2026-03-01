// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hsmsecurity_domain_properties_response.dart';
import 'mhsmgeo_replicated_region_response.dart';
import 'mhsmnetwork_rule_set_response.dart';
import 'mhsmprivate_endpoint_connection_item_response.dart';

/// Properties of the managed HSM Pool
class ManagedHsmPropertiesResponse {
  /// Property specifying whether protection against purge is enabled for this managed HSM pool. Setting this property to true activates protection against purge for this managed HSM pool and its content - only the Managed HSM service may initiate a hard, irrecoverable deletion. Enabling this functionality is irreversible.
  final bool? enablePurgeProtection;
  /// Property to specify whether the 'soft delete' functionality is enabled for this managed HSM pool. Soft delete is enabled by default for all managed HSMs and is immutable.
  final bool? enableSoftDelete;
  /// The URI of the managed hsm pool for performing operations on keys.
  final String hsmUri;
  /// Array of initial administrators object ids for this managed hsm pool.
  final List<String>? initialAdminObjectIds;
  /// Rules governing the accessibility of the key vault from specific network locations.
  final MHSMNetworkRuleSetResponse? networkAcls;
  /// List of private endpoint connections associated with the managed hsm pool.
  final List<MHSMPrivateEndpointConnectionItemResponse> privateEndpointConnections;
  /// Provisioning state.
  final String provisioningState;
  /// Control permission to the managed HSM from public networks.
  final String? publicNetworkAccess;
  /// List of all regions associated with the managed hsm pool.
  final List<MHSMGeoReplicatedRegionResponse>? regions;
  /// The scheduled purge date in UTC.
  final String scheduledPurgeDate;
  /// Managed HSM security domain properties.
  final ManagedHSMSecurityDomainPropertiesResponse securityDomainProperties;
  /// Soft deleted data retention days. When you delete an HSM or a key, it will remain recoverable for the configured retention period or for a default period of 90 days. It accepts values between 7 and 90.
  final int? softDeleteRetentionInDays;
  /// Resource Status Message.
  final String statusMessage;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the managed HSM pool.
  final String? tenantId;

  /// Creates a new [ManagedHsmPropertiesResponse].
  /// [enablePurgeProtection] Property specifying whether protection against purge is enabled for this managed HSM pool. Setting this property to true activates protection against purge for this managed HSM pool and its content - only the Managed HSM service may initiate a hard, irrecoverable deletion. Enabling this functionality is irreversible.
  /// [enableSoftDelete] Property to specify whether the 'soft delete' functionality is enabled for this managed HSM pool. Soft delete is enabled by default for all managed HSMs and is immutable.
  /// [hsmUri] The URI of the managed hsm pool for performing operations on keys.
  /// [initialAdminObjectIds] Array of initial administrators object ids for this managed hsm pool.
  /// [networkAcls] Rules governing the accessibility of the key vault from specific network locations.
  /// [privateEndpointConnections] List of private endpoint connections associated with the managed hsm pool.
  /// [provisioningState] Provisioning state.
  /// [publicNetworkAccess] Control permission to the managed HSM from public networks.
  /// [regions] List of all regions associated with the managed hsm pool.
  /// [scheduledPurgeDate] The scheduled purge date in UTC.
  /// [securityDomainProperties] Managed HSM security domain properties.
  /// [softDeleteRetentionInDays] Soft deleted data retention days. When you delete an HSM or a key, it will remain recoverable for the configured retention period or for a default period of 90 days. It accepts values between 7 and 90.
  /// [statusMessage] Resource Status Message.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the managed HSM pool.
  ManagedHsmPropertiesResponse({
    this.enablePurgeProtection,
    this.enableSoftDelete,
    required this.hsmUri,
    this.initialAdminObjectIds,
    this.networkAcls,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.regions,
    required this.scheduledPurgeDate,
    required this.securityDomainProperties,
    this.softDeleteRetentionInDays,
    required this.statusMessage,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePurgeProtection': ?enablePurgeProtection,
      'enableSoftDelete': ?enableSoftDelete,
      'hsmUri': hsmUri,
      'initialAdminObjectIds': ?initialAdminObjectIds,
      'networkAcls': ?networkAcls == null ? null : networkAcls!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<MHSMPrivateEndpointConnectionItemResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'regions': ?regions == null ? null : pulumi.Input.encodeList<MHSMGeoReplicatedRegionResponse, Map<String, dynamic>>(regions!, (value) => value.toMap()),
      'scheduledPurgeDate': scheduledPurgeDate,
      'securityDomainProperties': securityDomainProperties.toMap(),
      'softDeleteRetentionInDays': ?softDeleteRetentionInDays,
      'statusMessage': statusMessage,
      'tenantId': ?tenantId,
    };
  }

  factory ManagedHsmPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedHsmPropertiesResponse(
      enablePurgeProtection: map['enablePurgeProtection'] == null ? null : map['enablePurgeProtection'] as bool,
      enableSoftDelete: map['enableSoftDelete'] == null ? null : map['enableSoftDelete'] as bool,
      hsmUri: map['hsmUri'] as String,
      initialAdminObjectIds: map['initialAdminObjectIds'] == null ? null : (map['initialAdminObjectIds'] as List).cast<String>(),
      networkAcls: map['networkAcls'] == null ? null : MHSMNetworkRuleSetResponse.fromMap((map['networkAcls'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<MHSMPrivateEndpointConnectionItemResponse>(map['privateEndpointConnections'], (value) => MHSMPrivateEndpointConnectionItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      regions: map['regions'] == null ? null : pulumi.Input.decodeList<MHSMGeoReplicatedRegionResponse>(map['regions'], (value) => MHSMGeoReplicatedRegionResponse.fromMap((value as Map).cast<String, dynamic>())),
      scheduledPurgeDate: map['scheduledPurgeDate'] as String,
      securityDomainProperties: ManagedHSMSecurityDomainPropertiesResponse.fromMap((map['securityDomainProperties'] as Map).cast<String, dynamic>()),
      softDeleteRetentionInDays: map['softDeleteRetentionInDays'] == null ? null : map['softDeleteRetentionInDays'] as int,
      statusMessage: map['statusMessage'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

