// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_properties_response.dart';
import 'extended_location_response.dart';
import 'reconciliation_policy_response.dart';
import 'system_data_response.dart';
import 'topologies_properties_response.dart';

/// Result data returned by getTarget.
class GetTargetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A list of components.
  final List<ComponentPropertiesResponse>? components;
  /// Edge location of the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Reconciliation Policy.
  final ReconciliationPolicyResponse? reconciliationPolicy;
  /// Deployment scope (such as Kubernetes namespace).
  final String? scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Defines the device topology for a target or instance.
  final List<TopologiesPropertiesResponse>? topologies;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Version of the particular resource.
  final String? version;

  /// Creates a new [GetTargetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [components] A list of components.
  /// [extendedLocation] Edge location of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [reconciliationPolicy] Reconciliation Policy.
  /// [scope] Deployment scope (such as Kubernetes namespace).
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [topologies] Defines the device topology for a target or instance.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the particular resource.
  const GetTargetResult({
    required this.azureApiVersion,
    this.components,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.reconciliationPolicy,
    this.scope,
    required this.systemData,
    this.tags,
    this.topologies,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'components': ?(() { final guardedValue = components; if (guardedValue == null) return null; return pulumi.Input.encodeList<ComponentPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'reconciliationPolicy': ?reconciliationPolicy?.toMap(),
      'scope': ?scope,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'topologies': ?(() { final guardedValue = topologies; if (guardedValue == null) return null; return pulumi.Input.encodeList<TopologiesPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
      'version': ?version,
    };
  }

  factory GetTargetResult.fromMap(Map<String, dynamic> map) {
    return GetTargetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ComponentPropertiesResponse>(guardedValue, (value) => ComponentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      reconciliationPolicy: (() { final guardedValue = map['reconciliationPolicy']; if (guardedValue == null) return null; return ReconciliationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      topologies: (() { final guardedValue = map['topologies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopologiesPropertiesResponse>(guardedValue, (value) => TopologiesPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

