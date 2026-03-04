// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AliasRoutingConfiguration {
  /// The Amazon Resource Name (ARN) of the state machine version.
  final pulumi.Input<String> stateMachineVersionArn;

  /// Percentage of traffic routed to the state machine version.
  final pulumi.Input<int> weight;

  /// Creates a new [AliasRoutingConfiguration].
  /// [stateMachineVersionArn] The Amazon Resource Name (ARN) of the state machine version.
  /// [weight] Percentage of traffic routed to the state machine version.
  AliasRoutingConfiguration({
    required this.stateMachineVersionArn,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stateMachineVersionArn': stateMachineVersionArn,
      'weight': weight,
    };
  }

  factory AliasRoutingConfiguration.fromMap(Map<String, dynamic> map) {
    return AliasRoutingConfiguration(
      stateMachineVersionArn: pulumi.Input.fromValue(
        map['stateMachineVersionArn'] as String,
      ),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
