// ignore_for_file: unused_element, unnecessary_cast

import 'dapr_component_resiliency_policy_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDaprComponentResiliencyPolicy.
class GetDaprComponentResiliencyPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The optional inbound component resiliency policy configuration
  final DaprComponentResiliencyPolicyConfigurationResponse? inboundPolicy;
  /// The name of the resource
  final String name;
  /// The optional outbound component resiliency policy configuration
  final DaprComponentResiliencyPolicyConfigurationResponse? outboundPolicy;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDaprComponentResiliencyPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [inboundPolicy] The optional inbound component resiliency policy configuration
  /// [name] The name of the resource
  /// [outboundPolicy] The optional outbound component resiliency policy configuration
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDaprComponentResiliencyPolicyResult({
    required this.azureApiVersion,
    required this.id,
    this.inboundPolicy,
    required this.name,
    this.outboundPolicy,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'inboundPolicy': ?inboundPolicy?.toMap(),
      'name': name,
      'outboundPolicy': ?outboundPolicy?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDaprComponentResiliencyPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDaprComponentResiliencyPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      inboundPolicy: (() { final guardedValue = map['inboundPolicy']; if (guardedValue == null) return null; return DaprComponentResiliencyPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      outboundPolicy: (() { final guardedValue = map['outboundPolicy']; if (guardedValue == null) return null; return DaprComponentResiliencyPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
