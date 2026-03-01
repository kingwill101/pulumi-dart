// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMonitoringConfig.
class GetMonitoringConfigResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// The metrics configuration details
  final List<MetricConfigurationResponse> metricConfigurations;
  /// The object name.
  final String name;
  /// Metadata pertaining to creation and last modification of MonitoringConfiguration
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;

  /// Creates a new [GetMonitoringConfigResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The path ID that uniquely identifies the object.
  /// [metricConfigurations] The metrics configuration details
  /// [name] The object name.
  /// [systemData] Metadata pertaining to creation and last modification of MonitoringConfiguration
  /// [type] The hierarchical type of the object.
  GetMonitoringConfigResult({
    required this.azureApiVersion,
    required this.id,
    required this.metricConfigurations,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'metricConfigurations': pulumi.Input.encodeList<MetricConfigurationResponse, Map<String, dynamic>>(metricConfigurations, (value) => value.toMap()),
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetMonitoringConfigResult.fromMap(Map<String, dynamic> map) {
    return GetMonitoringConfigResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      metricConfigurations: pulumi.Input.decodeList<MetricConfigurationResponse>(map['metricConfigurations'], (value) => MetricConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

