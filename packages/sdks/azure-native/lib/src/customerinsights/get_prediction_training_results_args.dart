// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_prediction_training_results_args_doc}
/// Arguments for getPredictionTrainingResults.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_prediction_training_results_args_doc}
class GetPredictionTrainingResultsArgs {
  /// The name of the hub.
  final pulumi.Input<String> hubName;

  /// The name of the Prediction.
  final pulumi.Input<String> predictionName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPredictionTrainingResultsArgs].
  /// [hubName] The name of the hub.
  /// [predictionName] The name of the Prediction.
  /// [resourceGroupName] The name of the resource group.
  GetPredictionTrainingResultsArgs({
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

  factory GetPredictionTrainingResultsArgs.fromMap(Map<String, dynamic> map) {
    return GetPredictionTrainingResultsArgs(
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      predictionName: pulumi.Input.fromValue(map['predictionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
