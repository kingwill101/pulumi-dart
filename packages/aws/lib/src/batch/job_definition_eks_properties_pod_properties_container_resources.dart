// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesContainerResources {
  final Map<String, String>? limits;
  final Map<String, String>? requests;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesContainerResources].
  /// [limits] Optional.
  /// [requests] Optional.
  JobDefinitionEksPropertiesPodPropertiesContainerResources({
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

  factory JobDefinitionEksPropertiesPodPropertiesContainerResources.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesContainerResources(
      limits: map['limits'] == null
          ? null
          : (map['limits'] as Map).cast<String, String>(),
      requests: map['requests'] == null
          ? null
          : (map['requests'] as Map).cast<String, String>(),
    );
  }
}
