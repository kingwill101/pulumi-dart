// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionEksPropertyPodPropertyContainerResource {
  /// The type and quantity of the resources to reserve for the container.
  final Map<String, String> limits;

  /// The type and quantity of the resources to request for the container.
  final Map<String, String> requests;

  GetJobDefinitionEksPropertyPodPropertyContainerResource({
    required this.limits,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['limits'] = limits;
    map['requests'] = requests;
    return map;
  }

  factory GetJobDefinitionEksPropertyPodPropertyContainerResource.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyContainerResource(
      limits: (map['limits'] as Map).cast<String, String>(),
      requests: (map['requests'] as Map).cast<String, String>(),
    );
  }
}
