// ignore_for_file: unused_element, unnecessary_cast

class CustomModelTrainingMetric {
  /// Loss metric associated with the customization job.
  final double trainingLoss;

  /// Creates a new [CustomModelTrainingMetric].
  /// [trainingLoss] Loss metric associated with the customization job.
  CustomModelTrainingMetric({required this.trainingLoss});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'trainingLoss': trainingLoss};
  }

  factory CustomModelTrainingMetric.fromMap(Map<String, dynamic> map) {
    return CustomModelTrainingMetric(
      trainingLoss: map['trainingLoss'] as double,
    );
  }
}
