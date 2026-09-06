// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMonitoringConfig.
class GetMonitoringConfigResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// The metrics configuration details
  final List<MetricConfigurationResponse>? metricConfigurations;
  /// The object name.
  final String? name;
  /// Metadata pertaining to creation and last modification of MonitoringConfiguration
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;

  /// Creates a new [GetMonitoringConfigResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The path ID that uniquely identifies the object.
  /// [metricConfigurations] The metrics configuration details
  /// [name] The object name.
  /// [systemData] Metadata pertaining to creation and last modification of MonitoringConfiguration
  /// [type] The hierarchical type of the object.
  const GetMonitoringConfigResult({
    this.azureApiVersion,
    this.id,
    this.metricConfigurations,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'metricConfigurations': ?(() { final guardedValue = metricConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<MetricConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetMonitoringConfigResult.fromMap(Map<String, dynamic> map) {
    return GetMonitoringConfigResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricConfigurations: (() { final guardedValue = map['metricConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MetricConfigurationResponse>(guardedValue, (value) => MetricConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
