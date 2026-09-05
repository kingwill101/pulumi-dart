// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobSessionChainingConfig {
  /// Whether to enable session tag chaining for the training job.
  final pulumi.Input<bool?>? enableSessionTagChaining;

  /// Creates a new [TrainingJobSessionChainingConfig].
  /// [enableSessionTagChaining] Whether to enable session tag chaining for the training job.
  const TrainingJobSessionChainingConfig({
    this.enableSessionTagChaining,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSessionTagChaining': ?enableSessionTagChaining,
    };
  }

  factory TrainingJobSessionChainingConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobSessionChainingConfig(
      enableSessionTagChaining: (() { final guardedValue = map['enableSessionTagChaining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
