// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_workload_instance_model_custom_properties.dart';

/// Workload instance model properties.
class WorkloadInstanceModelProperties {
  /// Workload instance model custom properties.
  final pulumi.Input<ApacheTomcatWorkloadInstanceModelCustomProperties>? customProperties;
  /// Gets or sets the display name.
  final pulumi.Input<String>? displayName;
  /// Gets or Sets the master site name.
  final pulumi.Input<String>? masterSiteName;
  /// Gets or sets the migrate agent id associated with the workload instance.
  final pulumi.Input<String>? migrateAgentId;
  /// Gets or sets the workload instance name.
  final pulumi.Input<String>? name;
  /// Gets or sets the source name.
  final pulumi.Input<String>? sourceName;
  /// Gets or sets the source platform.
  final pulumi.Input<String>? sourcePlatform;

  /// Creates a new [WorkloadInstanceModelProperties].
  /// [customProperties] Workload instance model custom properties.
  /// [displayName] Gets or sets the display name.
  /// [masterSiteName] Gets or Sets the master site name.
  /// [migrateAgentId] Gets or sets the migrate agent id associated with the workload instance.
  /// [name] Gets or sets the workload instance name.
  /// [sourceName] Gets or sets the source name.
  /// [sourcePlatform] Gets or sets the source platform.
  const WorkloadInstanceModelProperties({
    this.customProperties,
    this.displayName,
    this.masterSiteName,
    this.migrateAgentId,
    this.name,
    this.sourceName,
    this.sourcePlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': ?pulumi.Input.mapOptionalInputValue<ApacheTomcatWorkloadInstanceModelCustomProperties, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'displayName': ?displayName,
      'masterSiteName': ?masterSiteName,
      'migrateAgentId': ?migrateAgentId,
      'name': ?name,
      'sourceName': ?sourceName,
      'sourcePlatform': ?sourcePlatform,
    };
  }

  factory WorkloadInstanceModelProperties.fromMap(Map<String, dynamic> map) {
    return WorkloadInstanceModelProperties(
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApacheTomcatWorkloadInstanceModelCustomProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterSiteName: (() { final guardedValue = map['masterSiteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrateAgentId: (() { final guardedValue = map['migrateAgentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceName: (() { final guardedValue = map['sourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePlatform: (() { final guardedValue = map['sourcePlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
