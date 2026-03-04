// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_security_rule_action_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDnsSecurityRule.
class GetDnsSecurityRuleResult {
  /// The action to take on DNS requests that match the DNS security rule.
  final DnsSecurityRuleActionResponse action;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// DNS resolver policy domains lists that the DNS security rule applies to.
  final List<SubResourceResponse> dnsResolverDomainLists;

  /// The state of DNS security rule.
  final String? dnsSecurityRuleState;

  /// ETag of the DNS security rule.
  final String etag;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// The priority of the DNS security rule.
  final int priority;

  /// The current provisioning state of the DNS security rule. This is a read-only property and any attempt to set this value will be ignored.
  final String provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDnsSecurityRuleResult].
  /// [action] The action to take on DNS requests that match the DNS security rule.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dnsResolverDomainLists] DNS resolver policy domains lists that the DNS security rule applies to.
  /// [dnsSecurityRuleState] The state of DNS security rule.
  /// [etag] ETag of the DNS security rule.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [priority] The priority of the DNS security rule.
  /// [provisioningState] The current provisioning state of the DNS security rule. This is a read-only property and any attempt to set this value will be ignored.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDnsSecurityRuleResult({
    required this.action,
    required this.azureApiVersion,
    required this.dnsResolverDomainLists,
    this.dnsSecurityRuleState,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    required this.priority,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'azureApiVersion': azureApiVersion,
      'dnsResolverDomainLists':
          pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(
            dnsResolverDomainLists,
            (value) => value.toMap(),
          ),
      'dnsSecurityRuleState': ?dnsSecurityRuleState,
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'priority': priority,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDnsSecurityRuleResult.fromMap(Map<String, dynamic> map) {
    return GetDnsSecurityRuleResult(
      action: DnsSecurityRuleActionResponse.fromMap(
        (map['action']! as Map).cast<String, dynamic>(),
      ),
      azureApiVersion: map['azureApiVersion'] as String,
      dnsResolverDomainLists: pulumi.Input.decodeList<SubResourceResponse>(
        map['dnsResolverDomainLists']!,
        (value) =>
            SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      dnsSecurityRuleState: (() {
        final guardedValue = map['dnsSecurityRuleState'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
