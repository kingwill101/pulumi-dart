// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_definition_description_response.dart';
import 'ip_filter_rule_response.dart';
import 'private_endpoint_connection_response.dart';
import 'shared_access_signature_authorization_rule_access_rights_description_response.dart';

/// the service specific properties of a provisioning service, including keys, linked iot hubs, current state, and system generated properties such as hostname and idScope
class IotDpsPropertiesDescriptionResponse {
  /// Allocation policy to be used by this provisioning service.
  final pulumi.Input<String>? allocationPolicy;
  /// List of authorization keys for a provisioning service.
  final pulumi.Input<List<SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse>>? authorizationPolicies;
  /// Device endpoint for this provisioning service.
  final pulumi.Input<String> deviceProvisioningHostName;
  /// Optional.
  /// Indicates if the DPS instance has Data Residency enabled, removing the cross geo-pair disaster recovery.
  final pulumi.Input<bool>? enableDataResidency;
  /// Unique identifier of this provisioning service.
  final pulumi.Input<String> idScope;
  /// List of IoT hubs associated with this provisioning service.
  final pulumi.Input<List<IotHubDefinitionDescriptionResponse>>? iotHubs;
  /// The IP filter rules.
  final pulumi.Input<List<IpFilterRuleResponse>>? ipFilterRules;
  /// Portal endpoint to enable CORS for this provisioning service.
  final pulumi.Input<String>? portalOperationsHostName;
  /// Private endpoint connections created on this IotHub
  final pulumi.Input<List<PrivateEndpointConnectionResponse>>? privateEndpointConnections;
  /// The ARM provisioning state of the provisioning service.
  final pulumi.Input<String>? provisioningState;
  /// Whether requests from Public Network are allowed
  final pulumi.Input<String>? publicNetworkAccess;
  /// Service endpoint for provisioning service.
  final pulumi.Input<String> serviceOperationsHostName;
  /// Current state of the provisioning service.
  final pulumi.Input<String>? state;

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
      'authorizationPolicies': ?pulumi.Input.mapOptionalInputValue<List<SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse>, List<Map<String, dynamic>>>(authorizationPolicies, (value) => pulumi.Input.encodeList<SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceProvisioningHostName': deviceProvisioningHostName,
      'enableDataResidency': ?enableDataResidency,
      'idScope': idScope,
      'iotHubs': ?pulumi.Input.mapOptionalInputValue<List<IotHubDefinitionDescriptionResponse>, List<Map<String, dynamic>>>(iotHubs, (value) => pulumi.Input.encodeList<IotHubDefinitionDescriptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipFilterRules': ?pulumi.Input.mapOptionalInputValue<List<IpFilterRuleResponse>, List<Map<String, dynamic>>>(ipFilterRules, (value) => pulumi.Input.encodeList<IpFilterRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portalOperationsHostName': ?portalOperationsHostName,
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serviceOperationsHostName': serviceOperationsHostName,
      'state': ?state,
    };
  }

  factory IotDpsPropertiesDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return IotDpsPropertiesDescriptionResponse(
      allocationPolicy: (() { final guardedValue = map['allocationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationPolicies: (() { final guardedValue = map['authorizationPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse>(guardedValue, (value) => SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deviceProvisioningHostName: pulumi.Input.fromValue(map['deviceProvisioningHostName'] as String),
      enableDataResidency: (() { final guardedValue = map['enableDataResidency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idScope: pulumi.Input.fromValue(map['idScope'] as String),
      iotHubs: (() { final guardedValue = map['iotHubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IotHubDefinitionDescriptionResponse>(guardedValue, (value) => IotHubDefinitionDescriptionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipFilterRules: (() { final guardedValue = map['ipFilterRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpFilterRuleResponse>(guardedValue, (value) => IpFilterRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      portalOperationsHostName: (() { final guardedValue = map['portalOperationsHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceOperationsHostName: pulumi.Input.fromValue(map['serviceOperationsHostName'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

