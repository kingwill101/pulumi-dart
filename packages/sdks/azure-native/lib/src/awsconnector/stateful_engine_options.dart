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
  StatefulEngineOptions({
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
      ruleOrder: map['ruleOrder'] == null ? null : (map['ruleOrder'] as String).input(),
      streamExceptionPolicy: map['streamExceptionPolicy'] == null ? null : (map['streamExceptionPolicy'] as String).input(),
    );
  }
}

