// ignore_for_file: unused_element, unnecessary_cast

class GetNodeGroupUpdateConfig {
  final int maxUnavailable;
  final int maxUnavailablePercentage;
  final String updateStrategy;

  GetNodeGroupUpdateConfig({
    required this.maxUnavailable,
    required this.maxUnavailablePercentage,
    required this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxUnavailable'] = maxUnavailable;
    map['maxUnavailablePercentage'] = maxUnavailablePercentage;
    map['updateStrategy'] = updateStrategy;
    return map;
  }

  factory GetNodeGroupUpdateConfig.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupUpdateConfig(
      maxUnavailable: map['maxUnavailable'] as int,
      maxUnavailablePercentage: map['maxUnavailablePercentage'] as int,
      updateStrategy: map['updateStrategy'] as String,
    );
  }
}
