// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_definition_description.dart';
import 'ip_filter_rule.dart';
import 'private_endpoint_connection.dart';
import 'shared_access_signature_authorization_rule_access_rights_description.dart';

/// the service specific properties of a provisioning service, including keys, linked iot hubs, current state, and system generated properties such as hostname and idScope
class IotDpsPropertiesDescription {
  /// Allocation policy to be used by this provisioning service.
  final String? allocationPolicy;
  /// List of authorization keys for a provisioning service.
  final List<SharedAccessSignatureAuthorizationRuleAccessRightsDescription>? authorizationPolicies;
  /// Optional.
  /// Indicates if the DPS instance has Data Residency enabled, removing the cross geo-pair disaster recovery.
  final bool? enableDataResidency;
  /// List of IoT hubs associated with this provisioning service.
  final List<IotHubDefinitionDescription>? iotHubs;
  /// The IP filter rules.
  final List<IpFilterRule>? ipFilterRules;
  /// Portal endpoint to enable CORS for this provisioning service.
  final String? portalOperationsHostName;
  /// Private endpoint connections created on this IotHub
  final List<PrivateEndpointConnection>? privateEndpointConnections;
  /// The ARM provisioning state of the provisioning service.
  final String? provisioningState;
  /// Whether requests from Public Network are allowed
  final String? publicNetworkAccess;
  /// Current state of the provisioning service.
  final String? state;

  /// Creates a new [IotDpsPropertiesDescription].
  /// [allocationPolicy] Allocation policy to be used by this provisioning service.
  /// [authorizationPolicies] List of authorization keys for a provisioning service.
  /// [enableDataResidency] Optional.
  /// [iotHubs] List of IoT hubs associated with this provisioning service.
  /// [ipFilterRules] The IP filter rules.
  /// [portalOperationsHostName] Portal endpoint to enable CORS for this provisioning service.
  /// [privateEndpointConnections] Private endpoint connections created on this IotHub
  /// [provisioningState] The ARM provisioning state of the provisioning service.
  /// [publicNetworkAccess] Whether requests from Public Network are allowed
  /// [state] Current state of the provisioning service.
  IotDpsPropertiesDescription({
    this.allocationPolicy,
    this.authorizationPolicies,
    this.enableDataResidency,
    this.iotHubs,
    this.ipFilterRules,
    this.portalOperationsHostName,
    this.privateEndpointConnections,
    this.provisioningState,
    this.publicNetworkAccess,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': ?allocationPolicy,
      'authorizationPolicies': ?authorizationPolicies == null ? null : pulumi.Input.encodeList<SharedAccessSignatureAuthorizationRuleAccessRightsDescription, Map<String, dynamic>>(authorizationPolicies!, (value) => value.toMap()),
      'enableDataResidency': ?enableDataResidency,
      'iotHubs': ?iotHubs == null ? null : pulumi.Input.encodeList<IotHubDefinitionDescription, Map<String, dynamic>>(iotHubs!, (value) => value.toMap()),
      'ipFilterRules': ?ipFilterRules == null ? null : pulumi.Input.encodeList<IpFilterRule, Map<String, dynamic>>(ipFilterRules!, (value) => value.toMap()),
      'portalOperationsHostName': ?portalOperationsHostName,
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<PrivateEndpointConnection, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'state': ?state,
    };
  }

  factory IotDpsPropertiesDescription.fromMap(Map<String, dynamic> map) {
    return IotDpsPropertiesDescription(
      allocationPolicy: map['allocationPolicy'] == null ? null : map['allocationPolicy'] as String,
      authorizationPolicies: map['authorizationPolicies'] == null ? null : pulumi.Input.decodeList<SharedAccessSignatureAuthorizationRuleAccessRightsDescription>(map['authorizationPolicies'], (value) => SharedAccessSignatureAuthorizationRuleAccessRightsDescription.fromMap((value as Map).cast<String, dynamic>())),
      enableDataResidency: map['enableDataResidency'] == null ? null : map['enableDataResidency'] as bool,
      iotHubs: map['iotHubs'] == null ? null : pulumi.Input.decodeList<IotHubDefinitionDescription>(map['iotHubs'], (value) => IotHubDefinitionDescription.fromMap((value as Map).cast<String, dynamic>())),
      ipFilterRules: map['ipFilterRules'] == null ? null : pulumi.Input.decodeList<IpFilterRule>(map['ipFilterRules'], (value) => IpFilterRule.fromMap((value as Map).cast<String, dynamic>())),
      portalOperationsHostName: map['portalOperationsHostName'] == null ? null : map['portalOperationsHostName'] as String,
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<PrivateEndpointConnection>(map['privateEndpointConnections'], (value) => PrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

