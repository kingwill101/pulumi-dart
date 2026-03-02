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
  WorkloadInstanceModelProperties({
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
      customProperties: map['customProperties'] == null ? null : (ApacheTomcatWorkloadInstanceModelCustomProperties.fromMap((map['customProperties'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      masterSiteName: map['masterSiteName'] == null ? null : (map['masterSiteName'] as String).input(),
      migrateAgentId: map['migrateAgentId'] == null ? null : (map['migrateAgentId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sourceName: map['sourceName'] == null ? null : (map['sourceName'] as String).input(),
      sourcePlatform: map['sourcePlatform'] == null ? null : (map['sourcePlatform'] as String).input(),
    );
  }
}

