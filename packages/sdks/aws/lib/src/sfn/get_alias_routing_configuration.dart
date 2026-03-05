// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAliasRoutingConfiguration {
  final pulumi.Input<String> stateMachineVersionArn;
  final pulumi.Input<int> weight;

  /// Creates a new [GetAliasRoutingConfiguration].
  /// [stateMachineVersionArn] Required.
  /// [weight] Required.
  GetAliasRoutingConfiguration({
    required this.stateMachineVersionArn,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stateMachineVersionArn': stateMachineVersionArn,
      'weight': weight,
    };
  }

  factory GetAliasRoutingConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAliasRoutingConfiguration(
      stateMachineVersionArn: pulumi.Input.fromValue(map['stateMachineVersionArn'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

