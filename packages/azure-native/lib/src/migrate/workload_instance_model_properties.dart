// ignore_for_file: unused_element, unnecessary_cast

import 'apache_tomcat_workload_instance_model_custom_properties.dart';

/// Workload instance model properties.
class WorkloadInstanceModelProperties {
  /// Workload instance model custom properties.
  final ApacheTomcatWorkloadInstanceModelCustomProperties? customProperties;
  /// Gets or sets the display name.
  final String? displayName;
  /// Gets or Sets the master site name.
  final String? masterSiteName;
  /// Gets or sets the migrate agent id associated with the workload instance.
  final String? migrateAgentId;
  /// Gets or sets the workload instance name.
  final String? name;
  /// Gets or sets the source name.
  final String? sourceName;
  /// Gets or sets the source platform.
  final String? sourcePlatform;

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
      'customProperties': ?customProperties == null ? null : customProperties!.toMap(),
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
      customProperties: map['customProperties'] == null ? null : ApacheTomcatWorkloadInstanceModelCustomProperties.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      masterSiteName: map['masterSiteName'] == null ? null : map['masterSiteName'] as String,
      migrateAgentId: map['migrateAgentId'] == null ? null : map['migrateAgentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      sourceName: map['sourceName'] == null ? null : map['sourceName'] as String,
      sourcePlatform: map['sourcePlatform'] == null ? null : map['sourcePlatform'] as String,
    );
  }
}

