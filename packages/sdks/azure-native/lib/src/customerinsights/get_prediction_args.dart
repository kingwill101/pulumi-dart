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
    required this.hubName,
    required this.predictionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'predictionName': predictionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPredictionArgs.fromMap(Map<String, dynamic> map) {
    return GetPredictionArgs(
      hubName: (map['hubName'] as String).input(),
      predictionName: (map['predictionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

