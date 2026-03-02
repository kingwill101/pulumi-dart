// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatefulEngineOptions
class StatefulEngineOptionsResponse {
  /// Property ruleOrder
  final pulumi.Input<String>? ruleOrder;
  /// Property streamExceptionPolicy
  final pulumi.Input<String>? streamExceptionPolicy;

  /// Creates a new [StatefulEngineOptionsResponse].
  /// [ruleOrder] Property ruleOrder
  /// [streamExceptionPolicy] Property streamExceptionPolicy
  StatefulEngineOptionsResponse({
    this.ruleOrder,
    this.streamExceptionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleOrder': ?ruleOrder,
      'streamExceptionPolicy': ?streamExceptionPolicy,
    };
  }

  factory StatefulEngineOptionsResponse.fromMap(Map<String, dynamic> map) {
    return StatefulEngineOptionsResponse(
      ruleOrder: map['ruleOrder'] == null ? null : (map['ruleOrder']! as String).input(),
      streamExceptionPolicy: map['streamExceptionPolicy'] == null ? null : (map['streamExceptionPolicy']! as String).input(),
    );
  }
}

