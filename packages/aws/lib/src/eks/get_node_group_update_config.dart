// ignore_for_file: unused_element, unnecessary_cast


class GetNodeGroupUpdateConfig {
  final int maxUnavailable;
  final int maxUnavailablePercentage;
  final String updateStrategy;

  /// Creates a new [GetNodeGroupUpdateConfig].
  /// [maxUnavailable] Required.
  /// [maxUnavailablePercentage] Required.
  /// [updateStrategy] Required.
  GetNodeGroupUpdateConfig({
    required this.maxUnavailable,
    required this.maxUnavailablePercentage,
    required this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnavailable': maxUnavailable,
      'maxUnavailablePercentage': maxUnavailablePercentage,
      'updateStrategy': updateStrategy,
    };
  }

  factory GetNodeGroupUpdateConfig.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupUpdateConfig(
      maxUnavailable: map['maxUnavailable'] as int,
      maxUnavailablePercentage: map['maxUnavailablePercentage'] as int,
      updateStrategy: map['updateStrategy'] as String,
    );
  }
}

