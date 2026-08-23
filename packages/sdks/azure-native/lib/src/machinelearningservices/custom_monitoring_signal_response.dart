// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_metric_threshold_response.dart';
import 'custom_model_job_input_response.dart';
import 'fixed_input_data_response.dart';

class CustomMonitoringSignalResponse {
  /// [Required] Reference to the component asset used to calculate the custom metrics.
  final pulumi.Input<String> componentId;
  /// Monitoring assets to take as input. Key is the component input port name, value is the data asset.
  final pulumi.Input<Map<String, FixedInputDataResponse>>? inputAssets;
  /// Extra component parameters to take as input. Key is the component literal input port name, value is the parameter value.
  final pulumi.Input<Map<String, CustomModelJobInputResponse>>? inputs;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final pulumi.Input<List<CustomMetricThresholdResponse>> metricThresholds;
  /// The current notification mode for this signal.
  final pulumi.Input<List<String>>? notificationTypes;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;
  /// Expected value is 'Custom'.
  final pulumi.Input<String> signalType;

  /// Creates a new [CustomMonitoringSignalResponse].
  /// [componentId] [Required] Reference to the component asset used to calculate the custom metrics.
  /// [inputAssets] Monitoring assets to take as input. Key is the component input port name, value is the data asset.
  /// [inputs] Extra component parameters to take as input. Key is the component literal input port name, value is the parameter value.
  /// [metricThresholds] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [signalType] Expected value is 'Custom'.
  const CustomMonitoringSignalResponse({
    required this.componentId,
    this.inputAssets,
    this.inputs,
    required this.metricThresholds,
    this.notificationTypes,
    this.properties,
    required this.signalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': componentId,
      'inputAssets': ?pulumi.Input.mapOptionalInputValue<Map<String, FixedInputDataResponse>, Map<String, Map<String, dynamic>>>(inputAssets, (value) => pulumi.Input.encodeMapValues<FixedInputDataResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobInputResponse>, Map<String, Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricThresholds': pulumi.Input.mapInputValue<List<CustomMetricThresholdResponse>, List<Map<String, dynamic>>>(metricThresholds, (value) => pulumi.Input.encodeList<CustomMetricThresholdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationTypes': ?notificationTypes,
      'properties': ?properties,
      'signalType': signalType,
    };
  }

  factory CustomMonitoringSignalResponse.fromMap(Map<String, dynamic> map) {
    return CustomMonitoringSignalResponse(
      componentId: pulumi.Input.fromValue(map['componentId'] as String),
      inputAssets: (() { final guardedValue = map['inputAssets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<FixedInputDataResponse>(guardedValue, (value) => FixedInputDataResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<CustomModelJobInputResponse>(guardedValue, (value) => CustomModelJobInputResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metricThresholds: pulumi.Input.fromValue(pulumi.Input.decodeList<CustomMetricThresholdResponse>(map['metricThresholds']!, (value) => CustomMetricThresholdResponse.fromMap((value as Map).cast<String, dynamic>()))),
      notificationTypes: (() { final guardedValue = map['notificationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      signalType: pulumi.Input.fromValue(map['signalType'] as String),
    );
  }
}
