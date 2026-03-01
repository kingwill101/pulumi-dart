// ignore_for_file: unused_element, unnecessary_cast


/// Application Gateway autoscale configuration.
class ApplicationGatewayAutoscaleConfigurationResponse {
  /// Upper bound on number of Application Gateway capacity.
  final int? maxCapacity;
  /// Lower bound on number of Application Gateway capacity.
  final int minCapacity;

  /// Creates a new [ApplicationGatewayAutoscaleConfigurationResponse].
  /// [maxCapacity] Upper bound on number of Application Gateway capacity.
  /// [minCapacity] Lower bound on number of Application Gateway capacity.
  ApplicationGatewayAutoscaleConfigurationResponse({
    this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': minCapacity,
    };
  }

  factory ApplicationGatewayAutoscaleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAutoscaleConfigurationResponse(
      maxCapacity: map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      minCapacity: map['minCapacity'] as int,
    );
  }
}

