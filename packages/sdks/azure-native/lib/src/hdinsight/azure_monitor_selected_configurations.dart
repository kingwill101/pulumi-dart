// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_table_configuration.dart';

/// The selected configurations for azure monitor.
class AzureMonitorSelectedConfigurations {
  /// The configuration version.
  final pulumi.Input<String>? configurationVersion;
  /// The global configurations of selected configurations.
  final pulumi.Input<Map<String, String>>? globalConfigurations;
  /// The table list.
  final pulumi.Input<List<AzureMonitorTableConfiguration>>? tableList;

  /// Creates a new [AzureMonitorSelectedConfigurations].
  /// [configurationVersion] The configuration version.
  /// [globalConfigurations] The global configurations of selected configurations.
  /// [tableList] The table list.
  const AzureMonitorSelectedConfigurations({
    this.configurationVersion,
    this.globalConfigurations,
    this.tableList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationVersion': ?configurationVersion,
      'globalConfigurations': ?globalConfigurations,
      'tableList': ?pulumi.Input.mapOptionalInputValue<List<AzureMonitorTableConfiguration>, List<Map<String, dynamic>>>(tableList, (value) => pulumi.Input.encodeList<AzureMonitorTableConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureMonitorSelectedConfigurations.fromMap(Map<String, dynamic> map) {
    return AzureMonitorSelectedConfigurations(
      configurationVersion: (() { final guardedValue = map['configurationVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalConfigurations: (() { final guardedValue = map['globalConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tableList: (() { final guardedValue = map['tableList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureMonitorTableConfiguration>(guardedValue, (value) => AzureMonitorTableConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

