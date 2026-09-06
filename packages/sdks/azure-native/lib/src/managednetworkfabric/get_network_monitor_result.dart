// ignore_for_file: unused_element, unnecessary_cast

import 'bmp_configuration_properties_response.dart';
import 'last_operation_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkMonitor.
class GetNetworkMonitorResult {
  /// Administrative state of the resource.
  final String? administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// BMP Configurations for the Network Fabric.
  final BmpConfigurationPropertiesResponse? bmpConfiguration;
  /// Configuration state of the resource.
  final String? configurationState;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Details of the last operation performed on the resource
  final LastOperationPropertiesResponse? lastOperation;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Provides you the latest status of the NetworkMonitor resource
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetNetworkMonitorResult].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bmpConfiguration] BMP Configurations for the Network Fabric.
  /// [configurationState] Configuration state of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastOperation] Details of the last operation performed on the resource
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provides you the latest status of the NetworkMonitor resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetNetworkMonitorResult({
    this.administrativeState,
    this.annotation,
    this.azureApiVersion,
    this.bmpConfiguration,
    this.configurationState,
    this.id,
    this.lastOperation,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': ?administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'bmpConfiguration': ?bmpConfiguration?.toMap(),
      'configurationState': ?configurationState,
      'id': ?id,
      'lastOperation': ?lastOperation?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetNetworkMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkMonitorResult(
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bmpConfiguration: (() { final guardedValue = map['bmpConfiguration']; if (guardedValue == null) return null; return BmpConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastOperation: (() { final guardedValue = map['lastOperation']; if (guardedValue == null) return null; return LastOperationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
