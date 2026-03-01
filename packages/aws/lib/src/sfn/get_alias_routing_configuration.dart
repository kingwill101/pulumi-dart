// ignore_for_file: unused_element, unnecessary_cast

class GetAliasRoutingConfiguration {
  final String stateMachineVersionArn;
  final int weight;

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
      stateMachineVersionArn: map['stateMachineVersionArn'] as String,
      weight: map['weight'] as int,
    );
  }
}
