// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blue_green_deployment_strategy.dart';
import 'canary_deployment_strategy.dart';
import 'linear_deployment_strategy.dart';
import 'rolling_deployment_strategy.dart';

class ServiceDeploymentStrategy {
  /// Configuration for shifting all production traffic to the new revision once it is ready.
  final pulumi.Input<BlueGreenDeploymentStrategy?>? blueGreen;
  /// Configuration for testing an initial percentage of production traffic before shifting the rest.
  ///
  /// Default - no canary configuration
  final pulumi.Input<CanaryDeploymentStrategy?>? canary;
  /// Configuration for shifting production traffic in equal increments.
  ///
  /// Default - no linear configuration
  final pulumi.Input<LinearDeploymentStrategy?>? linear;
  /// Configuration for the rolling update strategy. This is the default.
  final pulumi.Input<RollingDeploymentStrategy?>? rolling;

  /// Creates a new [ServiceDeploymentStrategy].
  /// [blueGreen] Configuration for shifting all production traffic to the new revision once it is ready.
  /// [canary] Configuration for testing an initial percentage of production traffic before shifting the rest.
  /// [linear] Configuration for shifting production traffic in equal increments.
  /// [rolling] Configuration for the rolling update strategy. This is the default.
  const ServiceDeploymentStrategy({
    this.blueGreen,
    this.canary,
    this.linear,
    this.rolling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreen': ?pulumi.Input.mapOptionalInputValue<BlueGreenDeploymentStrategy, Map<String, dynamic>>(blueGreen, (value) => value.toMap()),
      'canary': ?pulumi.Input.mapOptionalInputValue<CanaryDeploymentStrategy, Map<String, dynamic>>(canary, (value) => value.toMap()),
      'linear': ?pulumi.Input.mapOptionalInputValue<LinearDeploymentStrategy, Map<String, dynamic>>(linear, (value) => value.toMap()),
      'rolling': ?pulumi.Input.mapOptionalInputValue<RollingDeploymentStrategy, Map<String, dynamic>>(rolling, (value) => value.toMap()),
    };
  }

  factory ServiceDeploymentStrategy.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentStrategy(
      blueGreen: (() { final guardedValue = map['blueGreen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlueGreenDeploymentStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      canary: (() { final guardedValue = map['canary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CanaryDeploymentStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linear: (() { final guardedValue = map['linear']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinearDeploymentStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rolling: (() { final guardedValue = map['rolling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RollingDeploymentStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
