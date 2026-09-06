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
  final String? azureApiVersion;
  /// Describes custom rules inside the policy.
  final CustomRuleListResponse? customRules;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Describes Frontend Endpoints associated with this Web Application Firewall policy.
  final List<FrontendEndpointLinkResponse>? frontendEndpointLinks;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Describes managed rules inside the policy.
  final ManagedRuleSetListResponse? managedRules;
  /// Resource name.
  final String? name;
  /// Describes settings for the policy.
  final PolicySettingsResponse? policySettings;
  /// Provisioning state of the policy.
  final String? provisioningState;
  /// Resource status of the policy.
  final String? resourceState;
  /// Describes Routing Rules associated with this Web Application Firewall policy.
  final List<RoutingRuleLinkResponse>? routingRuleLinks;
  /// Describes Security Policy associated with this Web Application Firewall policy.
  final List<SecurityPolicyLinkResponse>? securityPolicyLinks;
  /// The pricing tier of web application firewall policy. Defaults to Classic_AzureFrontDoor if not specified.
  final SkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

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
  /// [resourceState] Resource status of the policy.
  /// [routingRuleLinks] Describes Routing Rules associated with this Web Application Firewall policy.
  /// [securityPolicyLinks] Describes Security Policy associated with this Web Application Firewall policy.
  /// [sku] The pricing tier of web application firewall policy. Defaults to Classic_AzureFrontDoor if not specified.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetPolicyResult({
    this.azureApiVersion,
    this.customRules,
    this.etag,
    this.frontendEndpointLinks,
    this.id,
    this.location,
    this.managedRules,
    this.name,
    this.policySettings,
    this.provisioningState,
    this.resourceState,
    this.routingRuleLinks,
    this.securityPolicyLinks,
    this.sku,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'customRules': ?customRules?.toMap(),
      'etag': ?etag,
      'frontendEndpointLinks': ?(() { final guardedValue = frontendEndpointLinks; if (guardedValue == null) return null; return pulumi.Input.encodeList<FrontendEndpointLinkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'managedRules': ?managedRules?.toMap(),
      'name': ?name,
      'policySettings': ?policySettings?.toMap(),
      'provisioningState': ?provisioningState,
      'resourceState': ?resourceState,
      'routingRuleLinks': ?(() { final guardedValue = routingRuleLinks; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoutingRuleLinkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'securityPolicyLinks': ?(() { final guardedValue = securityPolicyLinks; if (guardedValue == null) return null; return pulumi.Input.encodeList<SecurityPolicyLinkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return CustomRuleListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frontendEndpointLinks: (() { final guardedValue = map['frontendEndpointLinks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontendEndpointLinkResponse>(guardedValue, (value) => FrontendEndpointLinkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return ManagedRuleSetListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policySettings: (() { final guardedValue = map['policySettings']; if (guardedValue == null) return null; return PolicySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceState: (() { final guardedValue = map['resourceState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingRuleLinks: (() { final guardedValue = map['routingRuleLinks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoutingRuleLinkResponse>(guardedValue, (value) => RoutingRuleLinkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      securityPolicyLinks: (() { final guardedValue = map['securityPolicyLinks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityPolicyLinkResponse>(guardedValue, (value) => SecurityPolicyLinkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
