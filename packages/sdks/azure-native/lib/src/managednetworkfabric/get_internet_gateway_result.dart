// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getInternetGateway.
class GetInternetGatewayResult {
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// ARM Resource ID of the Internet Gateway Rule.
  final String? internetGatewayRuleId;
  /// IPv4 Address of Internet Gateway.
  final String? ipv4Address;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// ARM Resource ID of the Network Fabric Controller.
  final String? networkFabricControllerId;
  /// Port number of Internet Gateway.
  final int? port;
  /// Provisioning state of resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetInternetGatewayResult].
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [internetGatewayRuleId] ARM Resource ID of the Internet Gateway Rule.
  /// [ipv4Address] IPv4 Address of Internet Gateway.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkFabricControllerId] ARM Resource ID of the Network Fabric Controller.
  /// [port] Port number of Internet Gateway.
  /// [provisioningState] Provisioning state of resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetInternetGatewayResult({
    this.annotation,
    this.azureApiVersion,
    this.id,
    this.internetGatewayRuleId,
    this.ipv4Address,
    this.location,
    this.name,
    this.networkFabricControllerId,
    this.port,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'internetGatewayRuleId': ?internetGatewayRuleId,
      'ipv4Address': ?ipv4Address,
      'location': ?location,
      'name': ?name,
      'networkFabricControllerId': ?networkFabricControllerId,
      'port': ?port,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetInternetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayResult(
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internetGatewayRuleId: (() { final guardedValue = map['internetGatewayRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkFabricControllerId: (() { final guardedValue = map['networkFabricControllerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
