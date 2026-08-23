// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_storage_properties.dart';
import 'iot_hub_settings.dart';

/// {@template pulumi_deviceupdate_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_deviceupdate_instance_args_doc}
class InstanceArgs {
  /// Account name.
  final pulumi.Input<String> accountName;
  /// Customer-initiated diagnostic log collection storage properties
  final pulumi.Input<DiagnosticStorageProperties>? diagnosticStorageProperties;
  /// Enables or Disables the diagnostic logs collection
  final pulumi.Input<bool>? enableDiagnostics;
  /// Instance name.
  final pulumi.Input<String>? instanceName;
  /// List of IoT Hubs associated with the account.
  final pulumi.Input<List<IotHubSettings>>? iotHubs;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceArgs].
  /// [accountName] Account name.
  /// [diagnosticStorageProperties] Customer-initiated diagnostic log collection storage properties
  /// [enableDiagnostics] Enables or Disables the diagnostic logs collection
  /// [instanceName] Instance name.
  /// [iotHubs] List of IoT Hubs associated with the account.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The resource group name.
  /// [tags] Resource tags.
  const InstanceArgs({
    required this.accountName,
    this.diagnosticStorageProperties,
    this.enableDiagnostics,
    this.instanceName,
    this.iotHubs,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'diagnosticStorageProperties': ?pulumi.Input.mapOptionalInputValue<DiagnosticStorageProperties, Map<String, dynamic>>(diagnosticStorageProperties, (value) => value.toMap()),
      'enableDiagnostics': ?enableDiagnostics,
      'instanceName': ?instanceName,
      'iotHubs': ?pulumi.Input.mapOptionalInputValue<List<IotHubSettings>, List<Map<String, dynamic>>>(iotHubs, (value) => pulumi.Input.encodeList<IotHubSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      diagnosticStorageProperties: (() { final guardedValue = map['diagnosticStorageProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticStorageProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableDiagnostics: (() { final guardedValue = map['enableDiagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iotHubs: (() { final guardedValue = map['iotHubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IotHubSettings>(guardedValue, (value) => IotHubSettings.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
