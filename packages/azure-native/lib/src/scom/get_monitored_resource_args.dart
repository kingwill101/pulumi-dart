// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scom_get_monitored_resource_args_doc}
/// Arguments for getMonitoredResource.
/// {@endtemplate}
/// {@macro pulumi_scom_get_monitored_resource_args_doc}
class GetMonitoredResourceArgs {
  /// Name of the SCOM managed instance.
  final pulumi.Input<String> instanceName;
  /// The monitored resource name.
  final pulumi.Input<String> monitoredResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMonitoredResourceArgs].
  /// [instanceName] Name of the SCOM managed instance.
  /// [monitoredResourceName] The monitored resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMonitoredResourceArgs({
    required String instanceName,
    required String monitoredResourceName,
    required String resourceGroupName,
  }) :
      instanceName = pulumi.Input.asInput<String>(instanceName),
      monitoredResourceName = pulumi.Input.asInput<String>(monitoredResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'monitoredResourceName': monitoredResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMonitoredResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitoredResourceArgs(
      instanceName: map['instanceName'] as String,
      monitoredResourceName: map['monitoredResourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

