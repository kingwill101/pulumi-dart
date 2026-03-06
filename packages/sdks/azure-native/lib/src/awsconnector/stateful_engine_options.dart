// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatefulEngineOptions
class StatefulEngineOptions {
  /// Property ruleOrder
  final pulumi.Input<String>? ruleOrder;
  /// Property streamExceptionPolicy
  final pulumi.Input<String>? streamExceptionPolicy;

  /// Creates a new [StatefulEngineOptions].
  /// [ruleOrder] Property ruleOrder
  /// [streamExceptionPolicy] Property streamExceptionPolicy
  const StatefulEngineOptions({
    this.ruleOrder,
    this.streamExceptionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleOrder': ?ruleOrder,
      'streamExceptionPolicy': ?streamExceptionPolicy,
    };
  }

  factory StatefulEngineOptions.fromMap(Map<String, dynamic> map) {
    return StatefulEngineOptions(
      ruleOrder: (() { final guardedValue = map['ruleOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamExceptionPolicy: (() { final guardedValue = map['streamExceptionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

