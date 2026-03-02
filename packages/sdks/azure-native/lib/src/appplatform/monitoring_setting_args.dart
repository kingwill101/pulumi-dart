// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_setting_properties.dart';

/// {@template pulumi_appplatform_monitoring_setting_args_doc}
/// The set of arguments for MonitoringSetting.
/// {@endtemplate}
/// {@macro pulumi_appplatform_monitoring_setting_args_doc}
class MonitoringSettingArgs {
  /// Properties of the Monitoring Setting resource
  final pulumi.Input<MonitoringSettingProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [MonitoringSettingArgs].
  /// [properties] Properties of the Monitoring Setting resource
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  MonitoringSettingArgs({
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<MonitoringSettingProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory MonitoringSettingArgs.fromMap(Map<String, dynamic> map) {
    return MonitoringSettingArgs(
      properties: map['properties'] == null ? null : (MonitoringSettingProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

