// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'target_dns_server_response.dart';

/// Result data returned by getForwardingRule.
class GetForwardingRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The domain name for the forwarding rule.
  final String? domainName;
  /// ETag of the forwarding rule.
  final String? etag;
  /// The state of forwarding rule.
  final String? forwardingRuleState;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Metadata attached to the forwarding rule.
  final Map<String, String>? metadata;
  /// The name of the resource
  final String? name;
  /// The current provisioning state of the forwarding rule. This is a read-only property and any attempt to set this value will be ignored.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// DNS servers to forward the DNS query to.
  final List<TargetDnsServerResponse>? targetDnsServers;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetForwardingRuleResult({
    this.azureApiVersion,
    this.domainName,
    this.etag,
    this.forwardingRuleState,
    this.id,
    this.metadata,
    this.name,
    this.provisioningState,
    this.systemData,
    this.targetDnsServers,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'domainName': ?domainName,
      'etag': ?etag,
      'forwardingRuleState': ?forwardingRuleState,
      'id': ?id,
      'metadata': ?metadata,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'targetDnsServers': ?(() { final guardedValue = targetDnsServers; if (guardedValue == null) return null; return pulumi.Input.encodeList<TargetDnsServerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetForwardingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forwardingRuleState: (() { final guardedValue = map['forwardingRuleState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetDnsServers: (() { final guardedValue = map['targetDnsServers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetDnsServerResponse>(guardedValue, (value) => TargetDnsServerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
