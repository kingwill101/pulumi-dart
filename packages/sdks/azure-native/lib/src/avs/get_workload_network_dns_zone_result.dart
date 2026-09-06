// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkloadNetworkDnsZone.
class GetWorkloadNetworkDnsZoneResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Display name of the DNS Zone.
  final String? displayName;
  /// DNS Server IP array of the DNS Zone.
  final List<String>? dnsServerIps;
  /// Number of DNS Services using the DNS zone.
  final double? dnsServices;
  /// Domain names of the DNS Zone.
  final List<String>? domain;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The provisioning state
  final String? provisioningState;
  /// NSX revision number.
  final double? revision;
  /// Source IP of the DNS Zone.
  final String? sourceIp;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkloadNetworkDnsZoneResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] Display name of the DNS Zone.
  /// [dnsServerIps] DNS Server IP array of the DNS Zone.
  /// [dnsServices] Number of DNS Services using the DNS zone.
  /// [domain] Domain names of the DNS Zone.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state
  /// [revision] NSX revision number.
  /// [sourceIp] Source IP of the DNS Zone.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkloadNetworkDnsZoneResult({
    this.azureApiVersion,
    this.displayName,
    this.dnsServerIps,
    this.dnsServices,
    this.domain,
    this.id,
    this.name,
    this.provisioningState,
    this.revision,
    this.sourceIp,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'displayName': ?displayName,
      'dnsServerIps': ?dnsServerIps,
      'dnsServices': ?dnsServices,
      'domain': ?domain,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'revision': ?revision,
      'sourceIp': ?sourceIp,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWorkloadNetworkDnsZoneResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkDnsZoneResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsServerIps: (() { final guardedValue = map['dnsServerIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dnsServices: (() { final guardedValue = map['dnsServices']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      sourceIp: (() { final guardedValue = map['sourceIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
