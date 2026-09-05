// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobRetryStrategy {
  /// Maximum number of retry attempts. Valid values: 1–30.
  final pulumi.Input<int> maximumRetryAttempts;

  /// Creates a new [TrainingJobRetryStrategy].
  /// [maximumRetryAttempts] Maximum number of retry attempts. Valid values: 1–30.
  const TrainingJobRetryStrategy({
    required this.maximumRetryAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumRetryAttempts': maximumRetryAttempts,
    };
  }

  factory TrainingJobRetryStrategy.fromMap(Map<String, dynamic> map) {
    return TrainingJobRetryStrategy(
      maximumRetryAttempts: pulumi.Input.fromValue((map['maximumRetryAttempts'] as num).toInt()),
    );
  }
}
