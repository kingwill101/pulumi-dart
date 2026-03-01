// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_metric_threshold.dart';
import 'custom_model_job_input.dart';
import 'fixed_input_data.dart';

class CustomMonitoringSignal {
  /// [Required] Reference to the component asset used to calculate the custom metrics.
  final String componentId;
  /// Monitoring assets to take as input. Key is the component input port name, value is the data asset.
  final Map<String, FixedInputData>? inputAssets;
  /// Extra component parameters to take as input. Key is the component literal input port name, value is the parameter value.
  final Map<String, CustomModelJobInput>? inputs;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final List<CustomMetricThreshold> metricThresholds;
  /// The current notification mode for this signal.
  final List<String>? notificationTypes;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;
  /// Expected value is 'Custom'.
  final String signalType;

  /// Creates a new [CustomMonitoringSignal].
  /// [componentId] [Required] Reference to the component asset used to calculate the custom metrics.
  /// [inputAssets] Monitoring assets to take as input. Key is the component input port name, value is the data asset.
  /// [inputs] Extra component parameters to take as input. Key is the component literal input port name, value is the parameter value.
  /// [metricThresholds] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [signalType] Expected value is 'Custom'.
  CustomMonitoringSignal({
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
      'inputAssets': ?inputAssets == null ? null : pulumi.Input.encodeMapValues<FixedInputData, Map<String, dynamic>>(inputAssets!, (value) => value.toMap()),
      'inputs': ?inputs == null ? null : pulumi.Input.encodeMapValues<CustomModelJobInput, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'metricThresholds': pulumi.Input.encodeList<CustomMetricThreshold, Map<String, dynamic>>(metricThresholds, (value) => value.toMap()),
      'notificationTypes': ?notificationTypes,
      'properties': ?properties,
      'signalType': signalType,
    };
  }

  factory CustomMonitoringSignal.fromMap(Map<String, dynamic> map) {
    return CustomMonitoringSignal(
      componentId: map['componentId'] as String,
      inputAssets: map['inputAssets'] == null ? null : pulumi.Input.decodeMapValues<FixedInputData>(map['inputAssets'], (value) => FixedInputData.fromMap((value as Map).cast<String, dynamic>())),
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeMapValues<CustomModelJobInput>(map['inputs'], (value) => CustomModelJobInput.fromMap((value as Map).cast<String, dynamic>())),
      metricThresholds: pulumi.Input.decodeList<CustomMetricThreshold>(map['metricThresholds'], (value) => CustomMetricThreshold.fromMap((value as Map).cast<String, dynamic>())),
      notificationTypes: map['notificationTypes'] == null ? null : (map['notificationTypes'] as List).cast<String>(),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      signalType: map['signalType'] as String,
    );
  }
}

