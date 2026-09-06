// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_policy_statement_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRoutePolicy.
class GetRoutePolicyResult {
  /// AddressFamilyType. This parameter decides whether the given ipv4 or ipv6 route policy.
  final String? addressFamilyType;
  /// Administrative state of the resource.
  final String? administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Configuration state of the resource.
  final String? configurationState;
  /// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  final String? defaultAction;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Arm Resource ID of Network Fabric.
  final String? networkFabricId;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Route Policy statements.
  final List<RoutePolicyStatementPropertiesResponse>? statements;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetRoutePolicyResult].
  /// [addressFamilyType] AddressFamilyType. This parameter decides whether the given ipv4 or ipv6 route policy.
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [defaultAction] Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkFabricId] Arm Resource ID of Network Fabric.
  /// [provisioningState] Provisioning state of the resource.
  /// [statements] Route Policy statements.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetRoutePolicyResult({
    String? addressFamilyType,
    this.administrativeState,
    this.annotation,
    this.azureApiVersion,
    this.configurationState,
    String? defaultAction,
    this.id,
    this.location,
    this.name,
    this.networkFabricId,
    this.provisioningState,
    this.statements,
    this.systemData,
    this.tags,
    this.type,
  }) : addressFamilyType = addressFamilyType ?? 'IPv4', defaultAction = defaultAction ?? 'Deny';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamilyType': ?addressFamilyType,
      'administrativeState': ?administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'configurationState': ?configurationState,
      'defaultAction': ?defaultAction,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkFabricId': ?networkFabricId,
      'provisioningState': ?provisioningState,
      'statements': ?(() { final guardedValue = statements; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoutePolicyStatementPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetRoutePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRoutePolicyResult(
      addressFamilyType: (() { final guardedValue = map['addressFamilyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkFabricId: (() { final guardedValue = map['networkFabricId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statements: (() { final guardedValue = map['statements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoutePolicyStatementPropertiesResponse>(guardedValue, (value) => RoutePolicyStatementPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
