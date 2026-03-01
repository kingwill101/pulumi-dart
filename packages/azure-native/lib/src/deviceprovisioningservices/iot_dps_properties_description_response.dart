// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_definition_description_response.dart';
import 'ip_filter_rule_response.dart';
import 'private_endpoint_connection_response.dart';
import 'shared_access_signature_authorization_rule_access_rights_description_response.dart';

/// the service specific properties of a provisioning service, including keys, linked iot hubs, current state, and system generated properties such as hostname and idScope
class IotDpsPropertiesDescriptionResponse {
  /// Allocation policy to be used by this provisioning service.
  final String? allocationPolicy;
  /// List of authorization keys for a provisioning service.
  final List<SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse>? authorizationPolicies;
  /// Device endpoint for this provisioning service.
  final String deviceProvisioningHostName;
  /// Optional.
  /// Indicates if the DPS instance has Data Residency enabled, removing the cross geo-pair disaster recovery.
  final bool? enableDataResidency;
  /// Unique identifier of this provisioning service.
  final String idScope;
  /// List of IoT hubs associated with this provisioning service.
  final List<IotHubDefinitionDescriptionResponse>? iotHubs;
  /// The IP filter rules.
  final List<IpFilterRuleResponse>? ipFilterRules;
  /// Portal endpoint to enable CORS for this provisioning service.
  final String? portalOperationsHostName;
  /// Private endpoint connections created on this IotHub
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The ARM provisioning state of the provisioning service.
  final String? provisioningState;
  /// Whether requests from Public Network are allowed
  final String? publicNetworkAccess;
  /// Service endpoint for provisioning service.
  final String serviceOperationsHostName;
  /// Current state of the provisioning service.
  final String? state;

  /// Creates a new [IotDpsPropertiesDescriptionResponse].
  /// [allocationPolicy] Allocation policy to be used by this provisioning service.
  /// [authorizationPolicies] List of authorization keys for a provisioning service.
  /// [deviceProvisioningHostName] Device endpoint for this provisioning service.
  /// [enableDataResidency] Optional.
  /// [idScope] Unique identifier of this provisioning service.
  /// [iotHubs] List of IoT hubs associated with this provisioning service.
  /// [ipFilterRules] The IP filter rules.
  /// [portalOperationsHostName] Portal endpoint to enable CORS for this provisioning service.
  /// [privateEndpointConnections] Private endpoint connections created on this IotHub
  /// [provisioningState] The ARM provisioning state of the provisioning service.
  /// [publicNetworkAccess] Whether requests from Public Network are allowed
  /// [serviceOperationsHostName] Service endpoint for provisioning service.
  /// [state] Current state of the provisioning service.
  IotDpsPropertiesDescriptionResponse({
    this.allocationPolicy,
    this.authorizationPolicies,
    required this.deviceProvisioningHostName,
    this.enableDataResidency,
    required this.idScope,
    this.iotHubs,
    this.ipFilterRules,
    this.portalOperationsHostName,
    this.privateEndpointConnections,
    this.provisioningState,
    this.publicNetworkAccess,
    required this.serviceOperationsHostName,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': ?allocationPolicy,
      'authorizationPolicies': ?authorizationPolicies == null ? null : pulumi.Input.encodeList<SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse, Map<String, dynamic>>(authorizationPolicies!, (value) => value.toMap()),
      'deviceProvisioningHostName': deviceProvisioningHostName,
      'enableDataResidency': ?enableDataResidency,
      'idScope': idScope,
      'iotHubs': ?iotHubs == null ? null : pulumi.Input.encodeList<IotHubDefinitionDescriptionResponse, Map<String, dynamic>>(iotHubs!, (value) => value.toMap()),
      'ipFilterRules': ?ipFilterRules == null ? null : pulumi.Input.encodeList<IpFilterRuleResponse, Map<String, dynamic>>(ipFilterRules!, (value) => value.toMap()),
      'portalOperationsHostName': ?portalOperationsHostName,
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serviceOperationsHostName': serviceOperationsHostName,
      'state': ?state,
    };
  }

  factory IotDpsPropertiesDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return IotDpsPropertiesDescriptionResponse(
      allocationPolicy: map['allocationPolicy'] == null ? null : map['allocationPolicy'] as String,
      authorizationPolicies: map['authorizationPolicies'] == null ? null : pulumi.Input.decodeList<SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse>(map['authorizationPolicies'], (value) => SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      deviceProvisioningHostName: map['deviceProvisioningHostName'] as String,
      enableDataResidency: map['enableDataResidency'] == null ? null : map['enableDataResidency'] as bool,
      idScope: map['idScope'] as String,
      iotHubs: map['iotHubs'] == null ? null : pulumi.Input.decodeList<IotHubDefinitionDescriptionResponse>(map['iotHubs'], (value) => IotHubDefinitionDescriptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipFilterRules: map['ipFilterRules'] == null ? null : pulumi.Input.decodeList<IpFilterRuleResponse>(map['ipFilterRules'], (value) => IpFilterRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      portalOperationsHostName: map['portalOperationsHostName'] == null ? null : map['portalOperationsHostName'] as String,
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      serviceOperationsHostName: map['serviceOperationsHostName'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

