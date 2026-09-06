// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_storage_properties_response.dart';
import 'iot_hub_settings_response.dart';
import 'system_data_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// Parent Device Update Account name which Instance belongs to.
  final String? accountName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Customer-initiated diagnostic log collection storage properties
  final DiagnosticStoragePropertiesResponse? diagnosticStorageProperties;
  /// Enables or Disables the diagnostic logs collection
  final bool? enableDiagnostics;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// List of IoT Hubs associated with the account.
  final List<IotHubSettingsResponse>? iotHubs;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Provisioning state.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetInstanceResult].
  /// [accountName] Parent Device Update Account name which Instance belongs to.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [diagnosticStorageProperties] Customer-initiated diagnostic log collection storage properties
  /// [enableDiagnostics] Enables or Disables the diagnostic logs collection
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [iotHubs] List of IoT Hubs associated with the account.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetInstanceResult({
    this.accountName,
    this.azureApiVersion,
    this.diagnosticStorageProperties,
    this.enableDiagnostics,
    this.id,
    this.iotHubs,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'azureApiVersion': ?azureApiVersion,
      'diagnosticStorageProperties': ?diagnosticStorageProperties?.toMap(),
      'enableDiagnostics': ?enableDiagnostics,
      'id': ?id,
      'iotHubs': ?(() { final guardedValue = iotHubs; if (guardedValue == null) return null; return pulumi.Input.encodeList<IotHubSettingsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diagnosticStorageProperties: (() { final guardedValue = map['diagnosticStorageProperties']; if (guardedValue == null) return null; return DiagnosticStoragePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enableDiagnostics: (() { final guardedValue = map['enableDiagnostics']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iotHubs: (() { final guardedValue = map['iotHubs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IotHubSettingsResponse>(guardedValue, (value) => IotHubSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
