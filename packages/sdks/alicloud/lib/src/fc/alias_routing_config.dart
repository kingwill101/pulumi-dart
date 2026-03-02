// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AliasRoutingConfig {
  /// A map that defines the proportion of events that should be sent to different versions of a Function Compute service.
  final pulumi.Input<Map<String, double>>? additionalVersionWeights;

  /// Creates a new [AliasRoutingConfig].
  /// [additionalVersionWeights] A map that defines the proportion of events that should be sent to different versions of a Function Compute service.
  AliasRoutingConfig({
    this.additionalVersionWeights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVersionWeights': ?additionalVersionWeights,
    };
  }

  factory AliasRoutingConfig.fromMap(Map<String, dynamic> map) {
    return AliasRoutingConfig(
      additionalVersionWeights: map['additionalVersionWeights'] == null ? null : ((map['additionalVersionWeights']! as Map).cast<String, double>()).input(),
    );
  }
}

