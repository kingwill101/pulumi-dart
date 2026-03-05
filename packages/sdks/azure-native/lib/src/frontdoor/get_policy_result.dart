// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rule_list_response.dart';
import 'frontend_endpoint_link_response.dart';
import 'managed_rule_set_list_response.dart';
import 'policy_settings_response.dart';
import 'routing_rule_link_response.dart';
import 'security_policy_link_response.dart';
import 'sku_response.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Describes custom rules inside the policy.
  final CustomRuleListResponse? customRules;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Describes Frontend Endpoints associated with this Web Application Firewall policy.
  final List<FrontendEndpointLinkResponse> frontendEndpointLinks;
  /// Resource ID.
  final String id;
  /// Resource location.
  final String? location;
  /// Describes managed rules inside the policy.
  final ManagedRuleSetListResponse? managedRules;
  /// Resource name.
  final String name;
  /// Describes settings for the policy.
  final PolicySettingsResponse? policySettings;
  /// Provisioning state of the policy.
  final String provisioningState;
  final String resourceState;
  /// Describes Routing Rules associated with this Web Application Firewall policy.
  final List<RoutingRuleLinkResponse> routingRuleLinks;
  /// Describes Security Policy associated with this Web Application Firewall policy.
  final List<SecurityPolicyLinkResponse> securityPolicyLinks;
  /// The pricing tier of web application firewall policy. Defaults to Classic_AzureFrontDoor if not specified.
  final SkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customRules] Describes custom rules inside the policy.
  /// [etag] Gets a unique read-only string that changes whenever the resource is updated.
  /// [frontendEndpointLinks] Describes Frontend Endpoints associated with this Web Application Firewall policy.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [managedRules] Describes managed rules inside the policy.
  /// [name] Resource name.
  /// [policySettings] Describes settings for the policy.
  /// [provisioningState] Provisioning state of the policy.
  /// [resourceState] Required.
  /// [routingRuleLinks] Describes Routing Rules associated with this Web Application Firewall policy.
  /// [securityPolicyLinks] Describes Security Policy associated with this Web Application Firewall policy.
  /// [sku] The pricing tier of web application firewall policy. Defaults to Classic_AzureFrontDoor if not specified.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetPolicyResult({
    required this.azureApiVersion,
    this.customRules,
    this.etag,
    required this.frontendEndpointLinks,
    required this.id,
    this.location,
    this.managedRules,
    required this.name,
    this.policySettings,
    required this.provisioningState,
    required this.resourceState,
    required this.routingRuleLinks,
    required this.securityPolicyLinks,
    this.sku,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customRules': ?customRules?.toMap(),
      'etag': ?etag,
      'frontendEndpointLinks': pulumi.Input.encodeList<FrontendEndpointLinkResponse, Map<String, dynamic>>(frontendEndpointLinks, (value) => value.toMap()),
      'id': id,
      'location': ?location,
      'managedRules': ?managedRules?.toMap(),
      'name': name,
      'policySettings': ?policySettings?.toMap(),
      'provisioningState': provisioningState,
      'resourceState': resourceState,
      'routingRuleLinks': pulumi.Input.encodeList<RoutingRuleLinkResponse, Map<String, dynamic>>(routingRuleLinks, (value) => value.toMap()),
      'securityPolicyLinks': pulumi.Input.encodeList<SecurityPolicyLinkResponse, Map<String, dynamic>>(securityPolicyLinks, (value) => value.toMap()),
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return CustomRuleListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frontendEndpointLinks: pulumi.Input.decodeList<FrontendEndpointLinkResponse>(map['frontendEndpointLinks']!, (value) => FrontendEndpointLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return ManagedRuleSetListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      policySettings: (() { final guardedValue = map['policySettings']; if (guardedValue == null) return null; return PolicySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      resourceState: map['resourceState'] as String,
      routingRuleLinks: pulumi.Input.decodeList<RoutingRuleLinkResponse>(map['routingRuleLinks']!, (value) => RoutingRuleLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      securityPolicyLinks: pulumi.Input.decodeList<SecurityPolicyLinkResponse>(map['securityPolicyLinks']!, (value) => SecurityPolicyLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

