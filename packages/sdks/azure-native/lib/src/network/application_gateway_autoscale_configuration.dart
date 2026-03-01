// ignore_for_file: unused_element, unnecessary_cast


/// Application Gateway autoscale configuration.
class ApplicationGatewayAutoscaleConfiguration {
  /// Upper bound on number of Application Gateway capacity.
  final int? maxCapacity;
  /// Lower bound on number of Application Gateway capacity.
  final int minCapacity;

  /// Creates a new [ApplicationGatewayAutoscaleConfiguration].
  /// [maxCapacity] Upper bound on number of Application Gateway capacity.
  /// [minCapacity] Lower bound on number of Application Gateway capacity.
  ApplicationGatewayAutoscaleConfiguration({
    this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': minCapacity,
    };
  }

  factory ApplicationGatewayAutoscaleConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAutoscaleConfiguration(
      maxCapacity: map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      minCapacity: map['minCapacity'] as int,
    );
  }
}

