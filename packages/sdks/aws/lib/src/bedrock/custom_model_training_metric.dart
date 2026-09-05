// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomModelTrainingMetric {
  /// Loss metric associated with the customization job.
  final pulumi.Input<double> trainingLoss;

  /// Creates a new [CustomModelTrainingMetric].
  /// [trainingLoss] Loss metric associated with the customization job.
  const CustomModelTrainingMetric({
    required this.trainingLoss,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trainingLoss': trainingLoss,
    };
  }

  factory CustomModelTrainingMetric.fromMap(Map<String, dynamic> map) {
    return CustomModelTrainingMetric(
      trainingLoss: pulumi.Input.fromValue((map['trainingLoss'] as num).toDouble()),
    );
  }
}
