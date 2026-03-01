// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_table_configuration.dart';

/// The selected configurations for azure monitor.
class AzureMonitorSelectedConfigurations {
  /// The configuration version.
  final String? configurationVersion;
  /// The global configurations of selected configurations.
  final Map<String, String>? globalConfigurations;
  /// The table list.
  final List<AzureMonitorTableConfiguration>? tableList;

  /// Creates a new [AzureMonitorSelectedConfigurations].
  /// [configurationVersion] The configuration version.
  /// [globalConfigurations] The global configurations of selected configurations.
  /// [tableList] The table list.
  AzureMonitorSelectedConfigurations({
    this.configurationVersion,
    this.globalConfigurations,
    this.tableList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationVersion': ?configurationVersion,
      'globalConfigurations': ?globalConfigurations,
      'tableList': ?tableList == null ? null : pulumi.Input.encodeList<AzureMonitorTableConfiguration, Map<String, dynamic>>(tableList!, (value) => value.toMap()),
    };
  }

  factory AzureMonitorSelectedConfigurations.fromMap(Map<String, dynamic> map) {
    return AzureMonitorSelectedConfigurations(
      configurationVersion: map['configurationVersion'] == null ? null : map['configurationVersion'] as String,
      globalConfigurations: map['globalConfigurations'] == null ? null : (map['globalConfigurations'] as Map).cast<String, String>(),
      tableList: map['tableList'] == null ? null : pulumi.Input.decodeList<AzureMonitorTableConfiguration>(map['tableList'], (value) => AzureMonitorTableConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

