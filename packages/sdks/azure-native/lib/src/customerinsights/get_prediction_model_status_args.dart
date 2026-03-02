// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_prediction_model_status_args_doc}
/// Arguments for getPredictionModelStatus.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_prediction_model_status_args_doc}
class GetPredictionModelStatusArgs {
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the Prediction.
  final pulumi.Input<String> predictionName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPredictionModelStatusArgs].
  /// [hubName] The name of the hub.
  /// [predictionName] The name of the Prediction.
  /// [resourceGroupName] The name of the resource group.
  GetPredictionModelStatusArgs({
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

  factory GetPredictionModelStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetPredictionModelStatusArgs(
      hubName: (map['hubName'] as String).input(),
      predictionName: (map['predictionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

