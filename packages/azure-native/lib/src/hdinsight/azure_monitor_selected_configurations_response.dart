// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_table_configuration_response.dart';

/// The selected configurations for azure monitor.
class AzureMonitorSelectedConfigurationsResponse {
  /// The configuration version.
  final String? configurationVersion;
  /// The global configurations of selected configurations.
  final Map<String, String>? globalConfigurations;
  /// The table list.
  final List<AzureMonitorTableConfigurationResponse>? tableList;

  /// Creates a new [AzureMonitorSelectedConfigurationsResponse].
  /// [configurationVersion] The configuration version.
  /// [globalConfigurations] The global configurations of selected configurations.
  /// [tableList] The table list.
  AzureMonitorSelectedConfigurationsResponse({
    this.configurationVersion,
    this.globalConfigurations,
    this.tableList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationVersion': ?configurationVersion,
      'globalConfigurations': ?globalConfigurations,
      'tableList': ?tableList == null ? null : pulumi.Input.encodeList<AzureMonitorTableConfigurationResponse, Map<String, dynamic>>(tableList!, (value) => value.toMap()),
    };
  }

  factory AzureMonitorSelectedConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorSelectedConfigurationsResponse(
      configurationVersion: map['configurationVersion'] == null ? null : map['configurationVersion'] as String,
      globalConfigurations: map['globalConfigurations'] == null ? null : (map['globalConfigurations'] as Map).cast<String, String>(),
      tableList: map['tableList'] == null ? null : pulumi.Input.decodeList<AzureMonitorTableConfigurationResponse>(map['tableList'], (value) => AzureMonitorTableConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

