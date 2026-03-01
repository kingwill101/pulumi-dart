// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'target_dns_server_response.dart';

/// Result data returned by getForwardingRule.
class GetForwardingRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The domain name for the forwarding rule.
  final String domainName;
  /// ETag of the forwarding rule.
  final String etag;
  /// The state of forwarding rule.
  final String? forwardingRuleState;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Metadata attached to the forwarding rule.
  final Map<String, String>? metadata;
  /// The name of the resource
  final String name;
  /// The current provisioning state of the forwarding rule. This is a read-only property and any attempt to set this value will be ignored.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// DNS servers to forward the DNS query to.
  final List<TargetDnsServerResponse> targetDnsServers;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetForwardingRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [domainName] The domain name for the forwarding rule.
  /// [etag] ETag of the forwarding rule.
  /// [forwardingRuleState] The state of forwarding rule.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [metadata] Metadata attached to the forwarding rule.
  /// [name] The name of the resource
  /// [provisioningState] The current provisioning state of the forwarding rule. This is a read-only property and any attempt to set this value will be ignored.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetDnsServers] DNS servers to forward the DNS query to.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetForwardingRuleResult({
    required this.azureApiVersion,
    required this.domainName,
    required this.etag,
    this.forwardingRuleState,
    required this.id,
    this.metadata,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.targetDnsServers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'domainName': domainName,
      'etag': etag,
      'forwardingRuleState': ?forwardingRuleState,
      'id': id,
      'metadata': ?metadata,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'targetDnsServers': pulumi.Input.encodeList<TargetDnsServerResponse, Map<String, dynamic>>(targetDnsServers, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetForwardingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      domainName: map['domainName'] as String,
      etag: map['etag'] as String,
      forwardingRuleState: map['forwardingRuleState'] == null ? null : map['forwardingRuleState'] as String,
      id: map['id'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      targetDnsServers: pulumi.Input.decodeList<TargetDnsServerResponse>(map['targetDnsServers'], (value) => TargetDnsServerResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

