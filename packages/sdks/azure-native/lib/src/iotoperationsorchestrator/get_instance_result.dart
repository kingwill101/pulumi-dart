// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'reconciliation_policy_response.dart';
import 'system_data_response.dart';
import 'target_selector_properties_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

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

  /// Name of the solution.
  final String? solution;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Defines the Target the Instance will deploy to.
  final TargetSelectorPropertiesResponse? target;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Version of the particular resource.
  final String? version;

  /// Creates a new [GetInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] Edge location of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [reconciliationPolicy] Reconciliation Policy.
  /// [scope] Deployment scope (such as Kubernetes namespace).
  /// [solution] Name of the solution.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [target] Defines the Target the Instance will deploy to.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the particular resource.
  GetInstanceResult({
    required this.azureApiVersion,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.reconciliationPolicy,
    this.scope,
    this.solution,
    required this.systemData,
    this.tags,
    this.target,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'reconciliationPolicy': ?reconciliationPolicy?.toMap(),
      'scope': ?scope,
      'solution': ?solution,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'target': ?target?.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap(
        (map['extendedLocation']! as Map).cast<String, dynamic>(),
      ),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      reconciliationPolicy: (() {
        final guardedValue = map['reconciliationPolicy'];
        if (guardedValue == null) return null;
        return ReconciliationPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      solution: (() {
        final guardedValue = map['solution'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return TargetSelectorPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      type: map['type'] as String,
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
