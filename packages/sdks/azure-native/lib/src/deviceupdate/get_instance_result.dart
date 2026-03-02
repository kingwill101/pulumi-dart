// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_storage_properties_response.dart';
import 'iot_hub_settings_response.dart';
import 'system_data_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// Parent Device Update Account name which Instance belongs to.
  final String accountName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Customer-initiated diagnostic log collection storage properties
  final DiagnosticStoragePropertiesResponse? diagnosticStorageProperties;
  /// Enables or Disables the diagnostic logs collection
  final bool? enableDiagnostics;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// List of IoT Hubs associated with the account.
  final List<IotHubSettingsResponse>? iotHubs;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provisioning state.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetInstanceResult({
    required this.accountName,
    required this.azureApiVersion,
    this.diagnosticStorageProperties,
    this.enableDiagnostics,
    required this.id,
    this.iotHubs,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'azureApiVersion': azureApiVersion,
      'diagnosticStorageProperties': ?diagnosticStorageProperties == null ? null : diagnosticStorageProperties!.toMap(),
      'enableDiagnostics': ?enableDiagnostics,
      'id': id,
      'iotHubs': ?iotHubs == null ? null : pulumi.Input.encodeList<IotHubSettingsResponse, Map<String, dynamic>>(iotHubs!, (value) => value.toMap()),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      accountName: map['accountName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      diagnosticStorageProperties: map['diagnosticStorageProperties'] == null ? null : DiagnosticStoragePropertiesResponse.fromMap((map['diagnosticStorageProperties']! as Map).cast<String, dynamic>()),
      enableDiagnostics: map['enableDiagnostics'] == null ? null : map['enableDiagnostics']! as bool,
      id: map['id'] as String,
      iotHubs: map['iotHubs'] == null ? null : pulumi.Input.decodeList<IotHubSettingsResponse>(map['iotHubs']!, (value) => IotHubSettingsResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

