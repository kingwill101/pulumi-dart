// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_for_containers_reference_definition_response.dart';
import 'application_gateway_response.dart';
import 'managed_rules_definition_response.dart';
import 'policy_settings_response.dart';
import 'sub_resource_response.dart';
import 'web_application_firewall_custom_rule_response.dart';

/// Result data returned by getWebApplicationFirewallPolicy.
class GetWebApplicationFirewallPolicyResult {
  /// A collection of references to application gateway for containers.
  final List<ApplicationGatewayForContainersReferenceDefinitionResponse> applicationGatewayForContainers;
  /// A collection of references to application gateways.
  final List<ApplicationGatewayResponse> applicationGateways;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The custom rules inside the policy.
  final List<WebApplicationFirewallCustomRuleResponse>? customRules;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// A collection of references to application gateway http listeners.
  final List<SubResourceResponse> httpListeners;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Describes the managedRules structure.
  final ManagedRulesDefinitionResponse managedRules;
  /// Resource name.
  final String name;
  /// A collection of references to application gateway path rules.
  final List<SubResourceResponse> pathBasedRules;
  /// The PolicySettings for policy.
  final PolicySettingsResponse? policySettings;
  /// The provisioning state of the web application firewall policy resource.
  final String provisioningState;
  /// Resource status of the policy.
  final String resourceState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebApplicationFirewallPolicyResult].
  /// [applicationGatewayForContainers] A collection of references to application gateway for containers.
  /// [applicationGateways] A collection of references to application gateways.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customRules] The custom rules inside the policy.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [httpListeners] A collection of references to application gateway http listeners.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [managedRules] Describes the managedRules structure.
  /// [name] Resource name.
  /// [pathBasedRules] A collection of references to application gateway path rules.
  /// [policySettings] The PolicySettings for policy.
  /// [provisioningState] The provisioning state of the web application firewall policy resource.
  /// [resourceState] Resource status of the policy.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetWebApplicationFirewallPolicyResult({
    required this.applicationGatewayForContainers,
    required this.applicationGateways,
    required this.azureApiVersion,
    this.customRules,
    required this.etag,
    required this.httpListeners,
    this.id,
    this.location,
    required this.managedRules,
    required this.name,
    required this.pathBasedRules,
    this.policySettings,
    required this.provisioningState,
    required this.resourceState,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayForContainers': pulumi.Input.encodeList<ApplicationGatewayForContainersReferenceDefinitionResponse, Map<String, dynamic>>(applicationGatewayForContainers, (value) => value.toMap()),
      'applicationGateways': pulumi.Input.encodeList<ApplicationGatewayResponse, Map<String, dynamic>>(applicationGateways, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'customRules': ?customRules == null ? null : pulumi.Input.encodeList<WebApplicationFirewallCustomRuleResponse, Map<String, dynamic>>(customRules!, (value) => value.toMap()),
      'etag': etag,
      'httpListeners': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(httpListeners, (value) => value.toMap()),
      'id': ?id,
      'location': ?location,
      'managedRules': managedRules.toMap(),
      'name': name,
      'pathBasedRules': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(pathBasedRules, (value) => value.toMap()),
      'policySettings': ?policySettings == null ? null : policySettings!.toMap(),
      'provisioningState': provisioningState,
      'resourceState': resourceState,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetWebApplicationFirewallPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetWebApplicationFirewallPolicyResult(
      applicationGatewayForContainers: pulumi.Input.decodeList<ApplicationGatewayForContainersReferenceDefinitionResponse>(map['applicationGatewayForContainers'], (value) => ApplicationGatewayForContainersReferenceDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      applicationGateways: pulumi.Input.decodeList<ApplicationGatewayResponse>(map['applicationGateways'], (value) => ApplicationGatewayResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      customRules: map['customRules'] == null ? null : pulumi.Input.decodeList<WebApplicationFirewallCustomRuleResponse>(map['customRules'], (value) => WebApplicationFirewallCustomRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      httpListeners: pulumi.Input.decodeList<SubResourceResponse>(map['httpListeners'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managedRules: ManagedRulesDefinitionResponse.fromMap((map['managedRules'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      pathBasedRules: pulumi.Input.decodeList<SubResourceResponse>(map['pathBasedRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      policySettings: map['policySettings'] == null ? null : PolicySettingsResponse.fromMap((map['policySettings'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      resourceState: map['resourceState'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

