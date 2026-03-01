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
  InstanceArgs({
    required String accountName,
    DiagnosticStorageProperties? diagnosticStorageProperties,
    bool? enableDiagnostics,
    String? instanceName,
    List<IotHubSettings>? iotHubs,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      diagnosticStorageProperties = pulumi.Input.asOptionalInput<DiagnosticStorageProperties>(diagnosticStorageProperties),
      enableDiagnostics = pulumi.Input.asOptionalInput<bool>(enableDiagnostics),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      iotHubs = pulumi.Input.asOptionalInput<List<IotHubSettings>>(iotHubs),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accountName: map['accountName'] as String,
      diagnosticStorageProperties: map['diagnosticStorageProperties'] == null ? null : DiagnosticStorageProperties.fromMap((map['diagnosticStorageProperties'] as Map).cast<String, dynamic>()),
      enableDiagnostics: map['enableDiagnostics'] == null ? null : map['enableDiagnostics'] as bool,
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      iotHubs: map['iotHubs'] == null ? null : pulumi.Input.decodeList<IotHubSettings>(map['iotHubs'], (value) => IotHubSettings.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

