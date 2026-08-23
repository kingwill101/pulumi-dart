// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobInfraCheckConfig {
  /// Whether to enable infrastructure health checks before training.
  final pulumi.Input<bool>? enableInfraCheck;

  /// Creates a new [TrainingJobInfraCheckConfig].
  /// [enableInfraCheck] Whether to enable infrastructure health checks before training.
  const TrainingJobInfraCheckConfig({
    this.enableInfraCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInfraCheck': ?enableInfraCheck,
    };
  }

  factory TrainingJobInfraCheckConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobInfraCheckConfig(
      enableInfraCheck: (() { final guardedValue = map['enableInfraCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
