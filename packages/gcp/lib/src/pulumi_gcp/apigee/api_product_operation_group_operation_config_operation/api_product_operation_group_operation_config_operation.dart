// ignore_for_file: unused_element, unnecessary_cast

class ApiProductOperationGroupOperationConfigOperation {
  /// Methods refers to the REST verbs, when none specified, all verb types are allowed.
  final List<String>? methods;

  /// Required. REST resource path associated with the API proxy or remote service.
  final String? resource;

  ApiProductOperationGroupOperationConfigOperation({
    this.methods,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = methodsValue;
    }
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] = resourceValue;
    }
    return map;
  }

  factory ApiProductOperationGroupOperationConfigOperation.fromMap(
      Map<String, dynamic> map) {
    return ApiProductOperationGroupOperationConfigOperation(
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      resource: map['resource'] == null ? null : map['resource'] as String,
    );
  }
}
