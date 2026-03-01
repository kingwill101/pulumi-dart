// ignore_for_file: unused_element, unnecessary_cast

import 'site_agent_properties_response.dart';
import 'site_spn_properties_response.dart';

/// Class for site properties.
class SitePropertiesResponse {
  /// On-premises agent details.
  final SiteAgentPropertiesResponse? agentDetails;
  /// Appliance Name.
  final String? applianceName;
  /// ARM ID of migration hub solution for SDS.
  final String? discoverySolutionId;
  /// Service endpoint.
  final String serviceEndpoint;
  /// Service principal identity details used by agent for communication to the service.
  final SiteSpnPropertiesResponse? servicePrincipalIdentityDetails;

  /// Creates a new [SitePropertiesResponse].
  /// [agentDetails] On-premises agent details.
  /// [applianceName] Appliance Name.
  /// [discoverySolutionId] ARM ID of migration hub solution for SDS.
  /// [serviceEndpoint] Service endpoint.
  /// [servicePrincipalIdentityDetails] Service principal identity details used by agent for communication to the service.
  SitePropertiesResponse({
    this.agentDetails,
    this.applianceName,
    this.discoverySolutionId,
    required this.serviceEndpoint,
    this.servicePrincipalIdentityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDetails': ?agentDetails == null ? null : agentDetails!.toMap(),
      'applianceName': ?applianceName,
      'discoverySolutionId': ?discoverySolutionId,
      'serviceEndpoint': serviceEndpoint,
      'servicePrincipalIdentityDetails': ?servicePrincipalIdentityDetails == null ? null : servicePrincipalIdentityDetails!.toMap(),
    };
  }

  factory SitePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SitePropertiesResponse(
      agentDetails: map['agentDetails'] == null ? null : SiteAgentPropertiesResponse.fromMap((map['agentDetails'] as Map).cast<String, dynamic>()),
      applianceName: map['applianceName'] == null ? null : map['applianceName'] as String,
      discoverySolutionId: map['discoverySolutionId'] == null ? null : map['discoverySolutionId'] as String,
      serviceEndpoint: map['serviceEndpoint'] as String,
      servicePrincipalIdentityDetails: map['servicePrincipalIdentityDetails'] == null ? null : SiteSpnPropertiesResponse.fromMap((map['servicePrincipalIdentityDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

