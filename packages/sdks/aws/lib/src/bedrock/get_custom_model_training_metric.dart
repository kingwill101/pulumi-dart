// ignore_for_file: unused_element, unnecessary_cast


class GetCustomModelTrainingMetric {
  /// Loss metric associated with the customization job.
  final double trainingLoss;

  /// Creates a new [GetCustomModelTrainingMetric].
  /// [trainingLoss] Loss metric associated with the customization job.
  GetCustomModelTrainingMetric({
    required this.trainingLoss,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trainingLoss': trainingLoss,
    };
  }

  factory GetCustomModelTrainingMetric.fromMap(Map<String, dynamic> map) {
    return GetCustomModelTrainingMetric(
      trainingLoss: map['trainingLoss'] as double,
    );
  }
}

