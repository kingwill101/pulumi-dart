// ignore_for_file: unused_element, unnecessary_cast


class ServiceMeshExtraConfiguration {
  /// Whether the data plane KubeAPI access capability is enabled.
  final bool? crAggregationEnabled;

  /// Creates a new [ServiceMeshExtraConfiguration].
  /// [crAggregationEnabled] Whether the data plane KubeAPI access capability is enabled.
  ServiceMeshExtraConfiguration({
    this.crAggregationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crAggregationEnabled': ?crAggregationEnabled,
    };
  }

  factory ServiceMeshExtraConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceMeshExtraConfiguration(
      crAggregationEnabled: map['crAggregationEnabled'] == null ? null : map['crAggregationEnabled'] as bool,
    );
  }
}

