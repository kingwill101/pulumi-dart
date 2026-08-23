// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobModelPackageConfig {
  /// ARN of the model package group.
  final pulumi.Input<String> modelPackageGroupArn;
  /// ARN of the source model package.
  final pulumi.Input<String>? sourceModelPackageArn;

  /// Creates a new [TrainingJobModelPackageConfig].
  /// [modelPackageGroupArn] ARN of the model package group.
  /// [sourceModelPackageArn] ARN of the source model package.
  const TrainingJobModelPackageConfig({
    required this.modelPackageGroupArn,
    this.sourceModelPackageArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelPackageGroupArn': modelPackageGroupArn,
      'sourceModelPackageArn': ?sourceModelPackageArn,
    };
  }

  factory TrainingJobModelPackageConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobModelPackageConfig(
      modelPackageGroupArn: pulumi.Input.fromValue(map['modelPackageGroupArn'] as String),
      sourceModelPackageArn: (() { final guardedValue = map['sourceModelPackageArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
