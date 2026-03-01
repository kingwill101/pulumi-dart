// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_prediction_args_doc}
/// Arguments for getPrediction.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_prediction_args_doc}
class GetPredictionArgs {
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the Prediction.
  final pulumi.Input<String> predictionName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPredictionArgs].
  /// [hubName] The name of the hub.
  /// [predictionName] The name of the Prediction.
  /// [resourceGroupName] The name of the resource group.
  GetPredictionArgs({
    required pulumi.Output<String> hubName,
    required pulumi.Output<String> predictionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      hubName = pulumi.Input.asInput<String>(hubName),
      predictionName = pulumi.Input.asInput<String>(predictionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'predictionName': predictionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPredictionArgs.fromMap(Map<String, dynamic> map) {
    return GetPredictionArgs(
      hubName: pulumi.Output.create<String>(map['hubName'] as String),
      predictionName: pulumi.Output.create<String>(map['predictionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

