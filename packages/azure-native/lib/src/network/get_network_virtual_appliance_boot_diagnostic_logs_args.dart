// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_virtual_appliance_boot_diagnostic_logs_args_doc}
/// Arguments for getNetworkVirtualApplianceBootDiagnosticLogs.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_virtual_appliance_boot_diagnostic_logs_args_doc}
class GetNetworkVirtualApplianceBootDiagnosticLogsArgs {
  /// Specifies the sas-url to the storage blob into which console screen shot for the requested instance will be written
  final pulumi.Input<String>? consoleScreenshotStorageSasUrl;
  /// The network virtual appliance instance id for which boot diagnostic logs is being requested
  final pulumi.Input<int>? instanceId;
  /// The name of Network Virtual Appliance.
  final pulumi.Input<String> networkVirtualApplianceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the sas-url to the storage blob into which serial console logs for the requested instance will be written
  final pulumi.Input<String>? serialConsoleStorageSasUrl;

  /// Creates a new [GetNetworkVirtualApplianceBootDiagnosticLogsArgs].
  /// [consoleScreenshotStorageSasUrl] Specifies the sas-url to the storage blob into which console screen shot for the requested instance will be written
  /// [instanceId] The network virtual appliance instance id for which boot diagnostic logs is being requested
  /// [networkVirtualApplianceName] The name of Network Virtual Appliance.
  /// [resourceGroupName] The name of the resource group.
  /// [serialConsoleStorageSasUrl] Specifies the sas-url to the storage blob into which serial console logs for the requested instance will be written
  GetNetworkVirtualApplianceBootDiagnosticLogsArgs({
    String? consoleScreenshotStorageSasUrl,
    int? instanceId,
    required String networkVirtualApplianceName,
    required String resourceGroupName,
    String? serialConsoleStorageSasUrl,
  }) :
      consoleScreenshotStorageSasUrl = pulumi.Input.asOptionalInput<String>(consoleScreenshotStorageSasUrl),
      instanceId = pulumi.Input.asOptionalInput<int>(instanceId),
      networkVirtualApplianceName = pulumi.Input.asInput<String>(networkVirtualApplianceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serialConsoleStorageSasUrl = pulumi.Input.asOptionalInput<String>(serialConsoleStorageSasUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleScreenshotStorageSasUrl': ?consoleScreenshotStorageSasUrl,
      'instanceId': ?instanceId,
      'networkVirtualApplianceName': networkVirtualApplianceName,
      'resourceGroupName': resourceGroupName,
      'serialConsoleStorageSasUrl': ?serialConsoleStorageSasUrl,
    };
  }

  factory GetNetworkVirtualApplianceBootDiagnosticLogsArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkVirtualApplianceBootDiagnosticLogsArgs(
      consoleScreenshotStorageSasUrl: map['consoleScreenshotStorageSasUrl'] == null ? null : map['consoleScreenshotStorageSasUrl'] as String,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as int,
      networkVirtualApplianceName: map['networkVirtualApplianceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serialConsoleStorageSasUrl: map['serialConsoleStorageSasUrl'] == null ? null : map['serialConsoleStorageSasUrl'] as String,
    );
  }
}

