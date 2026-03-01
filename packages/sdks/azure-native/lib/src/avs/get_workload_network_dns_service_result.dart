// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkloadNetworkDnsService.
class GetWorkloadNetworkDnsServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Default DNS zone of the DNS Service.
  final String? defaultDnsZone;
  /// Display name of the DNS Service.
  final String? displayName;
  /// DNS service IP of the DNS Service.
  final String? dnsServiceIp;
  /// FQDN zones of the DNS Service.
  final List<String>? fqdnZones;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// DNS Service log level.
  final String? logLevel;
  /// The name of the resource
  final String name;
  /// The provisioning state
  final String provisioningState;
  /// NSX revision number.
  final double? revision;
  /// DNS Service status.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetWorkloadNetworkDnsServiceResult({
    required this.azureApiVersion,
    this.defaultDnsZone,
    this.displayName,
    this.dnsServiceIp,
    this.fqdnZones,
    required this.id,
    this.logLevel,
    required this.name,
    required this.provisioningState,
    this.revision,
    required this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'defaultDnsZone': ?defaultDnsZone,
      'displayName': ?displayName,
      'dnsServiceIp': ?dnsServiceIp,
      'fqdnZones': ?fqdnZones,
      'id': id,
      'logLevel': ?logLevel,
      'name': name,
      'provisioningState': provisioningState,
      'revision': ?revision,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWorkloadNetworkDnsServiceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkDnsServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      defaultDnsZone: map['defaultDnsZone'] == null ? null : map['defaultDnsZone'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      dnsServiceIp: map['dnsServiceIp'] == null ? null : map['dnsServiceIp'] as String,
      fqdnZones: map['fqdnZones'] == null ? null : (map['fqdnZones'] as List).cast<String>(),
      id: map['id'] as String,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      revision: map['revision'] == null ? null : map['revision'] as double,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

