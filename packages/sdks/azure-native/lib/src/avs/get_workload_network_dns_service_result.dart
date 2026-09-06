// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkloadNetworkDnsService.
class GetWorkloadNetworkDnsServiceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Default DNS zone of the DNS Service.
  final String? defaultDnsZone;
  /// Display name of the DNS Service.
  final String? displayName;
  /// DNS service IP of the DNS Service.
  final String? dnsServiceIp;
  /// FQDN zones of the DNS Service.
  final List<String>? fqdnZones;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// DNS Service log level.
  final String? logLevel;
  /// The name of the resource
  final String? name;
  /// The provisioning state
  final String? provisioningState;
  /// NSX revision number.
  final double? revision;
  /// DNS Service status.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkloadNetworkDnsServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultDnsZone] Default DNS zone of the DNS Service.
  /// [displayName] Display name of the DNS Service.
  /// [dnsServiceIp] DNS service IP of the DNS Service.
  /// [fqdnZones] FQDN zones of the DNS Service.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [logLevel] DNS Service log level.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state
  /// [revision] NSX revision number.
  /// [status] DNS Service status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkloadNetworkDnsServiceResult({
    this.azureApiVersion,
    this.defaultDnsZone,
    this.displayName,
    this.dnsServiceIp,
    this.fqdnZones,
    this.id,
    this.logLevel,
    this.name,
    this.provisioningState,
    this.revision,
    this.status,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'defaultDnsZone': ?defaultDnsZone,
      'displayName': ?displayName,
      'dnsServiceIp': ?dnsServiceIp,
      'fqdnZones': ?fqdnZones,
      'id': ?id,
      'logLevel': ?logLevel,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'revision': ?revision,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWorkloadNetworkDnsServiceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkDnsServiceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultDnsZone: (() { final guardedValue = map['defaultDnsZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsServiceIp: (() { final guardedValue = map['dnsServiceIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdnZones: (() { final guardedValue = map['fqdnZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
