// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesInitContainerResources {
  final Map<String, String>? limits;
  final Map<String, String>? requests;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesInitContainerResources].
  /// [limits] Optional.
  /// [requests] Optional.
  JobDefinitionEksPropertiesPodPropertiesInitContainerResources({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final limitsValue = limits;
    if (limitsValue != null) {
      map['limits'] = limitsValue;
    }
    final requestsValue = requests;
    if (requestsValue != null) {
      map['requests'] = requestsValue;
    }
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesInitContainerResources.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesInitContainerResources(
      limits: map['limits'] == null
          ? null
          : (map['limits'] as Map).cast<String, String>(),
      requests: map['requests'] == null
          ? null
          : (map['requests'] as Map).cast<String, String>(),
    );
  }
}
