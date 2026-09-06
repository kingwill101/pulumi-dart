// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cdn_endpoint_response.dart';
import 'custom_rule_list_response.dart';
import 'managed_rule_set_list_response.dart';
import 'policy_settings_response.dart';
import 'rate_limit_rule_list_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Describes custom rules inside the policy.
  final CustomRuleListResponse? customRules;
  /// Describes Azure CDN endpoints associated with this Web Application Firewall policy.
  final List<CdnEndpointResponse>? endpointLinks;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Key-Value pair representing additional properties for Web Application Firewall policy.
  final Map<String, String>? extendedProperties;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Describes managed rules inside the policy.
  final ManagedRuleSetListResponse? managedRules;
  /// The name of the resource
  final String? name;
  /// Describes  policySettings for policy
  final PolicySettingsResponse? policySettings;
  /// Provisioning state of the WebApplicationFirewallPolicy.
  final String? provisioningState;
  /// Describes rate limit rules inside the policy.
  final RateLimitRuleListResponse? rateLimitRules;
  /// Resource status of the policy.
  final String? resourceState;
  /// The pricing tier (defines a CDN provider, feature list and rate) of the CdnWebApplicationFirewallPolicy.
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customRules] Describes custom rules inside the policy.
  /// [endpointLinks] Describes Azure CDN endpoints associated with this Web Application Firewall policy.
  /// [etag] Gets a unique read-only string that changes whenever the resource is updated.
  /// [extendedProperties] Key-Value pair representing additional properties for Web Application Firewall policy.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [managedRules] Describes managed rules inside the policy.
  /// [name] The name of the resource
  /// [policySettings] Describes  policySettings for policy
  /// [provisioningState] Provisioning state of the WebApplicationFirewallPolicy.
  /// [rateLimitRules] Describes rate limit rules inside the policy.
  /// [resourceState] Resource status of the policy.
  /// [sku] The pricing tier (defines a CDN provider, feature list and rate) of the CdnWebApplicationFirewallPolicy.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetPolicyResult({
    this.azureApiVersion,
    this.customRules,
    this.endpointLinks,
    this.etag,
    this.extendedProperties,
    this.id,
    this.location,
    this.managedRules,
    this.name,
    this.policySettings,
    this.provisioningState,
    this.rateLimitRules,
    this.resourceState,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'customRules': ?customRules?.toMap(),
      'endpointLinks': ?(() { final guardedValue = endpointLinks; if (guardedValue == null) return null; return pulumi.Input.encodeList<CdnEndpointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'extendedProperties': ?extendedProperties,
      'id': ?id,
      'location': ?location,
      'managedRules': ?managedRules?.toMap(),
      'name': ?name,
      'policySettings': ?policySettings?.toMap(),
      'provisioningState': ?provisioningState,
      'rateLimitRules': ?rateLimitRules?.toMap(),
      'resourceState': ?resourceState,
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return CustomRuleListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endpointLinks: (() { final guardedValue = map['endpointLinks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CdnEndpointResponse>(guardedValue, (value) => CdnEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedProperties: (() { final guardedValue = map['extendedProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return ManagedRuleSetListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policySettings: (() { final guardedValue = map['policySettings']; if (guardedValue == null) return null; return PolicySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rateLimitRules: (() { final guardedValue = map['rateLimitRules']; if (guardedValue == null) return null; return RateLimitRuleListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceState: (() { final guardedValue = map['resourceState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
