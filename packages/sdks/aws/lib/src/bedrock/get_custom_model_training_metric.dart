// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomModelTrainingMetric {
  /// Loss metric associated with the customization job.
  final pulumi.Input<double> trainingLoss;

  /// Creates a new [GetCustomModelTrainingMetric].
  /// [trainingLoss] Loss metric associated with the customization job.
  const GetCustomModelTrainingMetric({
    required this.trainingLoss,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trainingLoss': trainingLoss,
    };
  }

  factory GetCustomModelTrainingMetric.fromMap(Map<String, dynamic> map) {
    return GetCustomModelTrainingMetric(
      trainingLoss: pulumi.Input.fromValue((map['trainingLoss'] as num).toDouble()),
    );
  }
}
