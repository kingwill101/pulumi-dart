// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_metric_threshold.dart';
import 'custom_model_job_input.dart';
import 'fixed_input_data.dart';

class CustomMonitoringSignal {
  /// [Required] Reference to the component asset used to calculate the custom metrics.
  final pulumi.Input<String> componentId;
  /// Monitoring assets to take as input. Key is the component input port name, value is the data asset.
  final pulumi.Input<Map<String, FixedInputData>>? inputAssets;
  /// Extra component parameters to take as input. Key is the component literal input port name, value is the parameter value.
  final pulumi.Input<Map<String, CustomModelJobInput>>? inputs;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final pulumi.Input<List<CustomMetricThreshold>> metricThresholds;
  /// The current notification mode for this signal.
  final pulumi.Input<List<String>>? notificationTypes;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;
  /// Expected value is 'Custom'.
  final pulumi.Input<String> signalType;

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
      'inputAssets': ?pulumi.Input.mapOptionalInputValue<Map<String, FixedInputData>, Map<String, Map<String, dynamic>>>(inputAssets, (value) => pulumi.Input.encodeMapValues<FixedInputData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobInput>, Map<String, Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricThresholds': pulumi.Input.mapInputValue<List<CustomMetricThreshold>, List<Map<String, dynamic>>>(metricThresholds, (value) => pulumi.Input.encodeList<CustomMetricThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationTypes': ?notificationTypes,
      'properties': ?properties,
      'signalType': signalType,
    };
  }

  factory CustomMonitoringSignal.fromMap(Map<String, dynamic> map) {
    return CustomMonitoringSignal(
      componentId: (map['componentId'] as String).input(),
      inputAssets: map['inputAssets'] == null ? null : (pulumi.Input.decodeMapValues<FixedInputData>(map['inputAssets']!, (value) => FixedInputData.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeMapValues<CustomModelJobInput>(map['inputs']!, (value) => CustomModelJobInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metricThresholds: (pulumi.Input.decodeList<CustomMetricThreshold>(map['metricThresholds'], (value) => CustomMetricThreshold.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notificationTypes: map['notificationTypes'] == null ? null : ((map['notificationTypes']! as List).cast<String>()).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      signalType: (map['signalType'] as String).input(),
    );
  }
}

