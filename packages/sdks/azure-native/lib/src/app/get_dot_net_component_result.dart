// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dot_net_component_configuration_property_response.dart';
import 'dot_net_component_service_bind_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDotNetComponent.
class GetDotNetComponentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Type of the .NET Component.
  final String? componentType;
  /// List of .NET Components configuration properties
  final List<DotNetComponentConfigurationPropertyResponse>? configurations;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Provisioning state of the .NET Component.
  final String? provisioningState;
  /// List of .NET Components that are bound to the .NET component
  final List<DotNetComponentServiceBindResponse>? serviceBinds;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDotNetComponentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [componentType] Type of the .NET Component.
  /// [configurations] List of .NET Components configuration properties
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the .NET Component.
  /// [serviceBinds] List of .NET Components that are bound to the .NET component
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDotNetComponentResult({
    this.azureApiVersion,
    this.componentType,
    this.configurations,
    this.id,
    this.name,
    this.provisioningState,
    this.serviceBinds,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'componentType': ?componentType,
      'configurations': ?(() { final guardedValue = configurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<DotNetComponentConfigurationPropertyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'serviceBinds': ?(() { final guardedValue = serviceBinds; if (guardedValue == null) return null; return pulumi.Input.encodeList<DotNetComponentServiceBindResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDotNetComponentResult.fromMap(Map<String, dynamic> map) {
    return GetDotNetComponentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      componentType: (() { final guardedValue = map['componentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DotNetComponentConfigurationPropertyResponse>(guardedValue, (value) => DotNetComponentConfigurationPropertyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceBinds: (() { final guardedValue = map['serviceBinds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DotNetComponentServiceBindResponse>(guardedValue, (value) => DotNetComponentServiceBindResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
