// ignore_for_file: unused_element, unnecessary_cast

class GetAliasRoutingConfiguration {
  final String stateMachineVersionArn;
  final int weight;

  GetAliasRoutingConfiguration({
    required this.stateMachineVersionArn,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stateMachineVersionArn'] = stateMachineVersionArn;
    map['weight'] = weight;
    return map;
  }

  factory GetAliasRoutingConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAliasRoutingConfiguration(
      stateMachineVersionArn: map['stateMachineVersionArn'] as String,
      weight: map['weight'] as int,
    );
  }
}
