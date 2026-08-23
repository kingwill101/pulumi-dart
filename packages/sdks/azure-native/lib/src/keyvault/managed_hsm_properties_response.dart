// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hsmsecurity_domain_properties_response.dart';
import 'mhsmgeo_replicated_region_response.dart';
import 'mhsmnetwork_rule_set_response.dart';
import 'mhsmprivate_endpoint_connection_item_response.dart';

/// Properties of the managed HSM Pool
class ManagedHsmPropertiesResponse {
  /// Property specifying whether protection against purge is enabled for this managed HSM pool. Setting this property to true activates protection against purge for this managed HSM pool and its content - only the Managed HSM service may initiate a hard, irrecoverable deletion. Enabling this functionality is irreversible.
  final pulumi.Input<bool>? enablePurgeProtection;
  /// Property to specify whether the 'soft delete' functionality is enabled for this managed HSM pool. Soft delete is enabled by default for all managed HSMs and is immutable.
  final pulumi.Input<bool>? enableSoftDelete;
  /// The URI of the managed hsm pool for performing operations on keys.
  final pulumi.Input<String> hsmUri;
  /// Array of initial administrators object ids for this managed hsm pool.
  final pulumi.Input<List<String>>? initialAdminObjectIds;
  /// Rules governing the accessibility of the key vault from specific network locations.
  final pulumi.Input<MHSMNetworkRuleSetResponse>? networkAcls;
  /// List of private endpoint connections associated with the managed hsm pool.
  final pulumi.Input<List<MHSMPrivateEndpointConnectionItemResponse>> privateEndpointConnections;
  /// Provisioning state.
  final pulumi.Input<String> provisioningState;
  /// Control permission to the managed HSM from public networks.
  final pulumi.Input<String>? publicNetworkAccess;
  /// List of all regions associated with the managed hsm pool.
  final pulumi.Input<List<MHSMGeoReplicatedRegionResponse>>? regions;
  /// The scheduled purge date in UTC.
  final pulumi.Input<String> scheduledPurgeDate;
  /// Managed HSM security domain properties.
  final pulumi.Input<ManagedHSMSecurityDomainPropertiesResponse> securityDomainProperties;
  /// Soft deleted data retention days. When you delete an HSM or a key, it will remain recoverable for the configured retention period or for a default period of 90 days. It accepts values between 7 and 90.
  final pulumi.Input<int>? softDeleteRetentionInDays;
  /// Resource Status Message.
  final pulumi.Input<String> statusMessage;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the managed HSM pool.
  final pulumi.Input<String>? tenantId;

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
  const ManagedHsmPropertiesResponse({
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
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<MHSMNetworkRuleSetResponse, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<MHSMPrivateEndpointConnectionItemResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<MHSMPrivateEndpointConnectionItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'regions': ?pulumi.Input.mapOptionalInputValue<List<MHSMGeoReplicatedRegionResponse>, List<Map<String, dynamic>>>(regions, (value) => pulumi.Input.encodeList<MHSMGeoReplicatedRegionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scheduledPurgeDate': scheduledPurgeDate,
      'securityDomainProperties': pulumi.Input.mapInputValue<ManagedHSMSecurityDomainPropertiesResponse, Map<String, dynamic>>(securityDomainProperties, (value) => value.toMap()),
      'softDeleteRetentionInDays': ?softDeleteRetentionInDays,
      'statusMessage': statusMessage,
      'tenantId': ?tenantId,
    };
  }

  factory ManagedHsmPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedHsmPropertiesResponse(
      enablePurgeProtection: (() { final guardedValue = map['enablePurgeProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSoftDelete: (() { final guardedValue = map['enableSoftDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hsmUri: pulumi.Input.fromValue(map['hsmUri'] as String),
      initialAdminObjectIds: (() { final guardedValue = map['initialAdminObjectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MHSMNetworkRuleSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<MHSMPrivateEndpointConnectionItemResponse>(map['privateEndpointConnections']!, (value) => MHSMPrivateEndpointConnectionItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MHSMGeoReplicatedRegionResponse>(guardedValue, (value) => MHSMGeoReplicatedRegionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scheduledPurgeDate: pulumi.Input.fromValue(map['scheduledPurgeDate'] as String),
      securityDomainProperties: pulumi.Input.fromValue(ManagedHSMSecurityDomainPropertiesResponse.fromMap((map['securityDomainProperties']! as Map).cast<String, dynamic>())),
      softDeleteRetentionInDays: (() { final guardedValue = map['softDeleteRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
