// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getServiceBinding.
class GetServiceBindingResult {
  /// The timestamp when the resource was created.
  final String createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String description;

  /// Optional. Set of label tags associated with the ServiceBinding resource.
  final Map<String, String> labels;

  /// Name of the ServiceBinding resource. It matches pattern `projects/*/locations/global/serviceBindings/service_binding_name`.
  final String name;

  /// The full Service Directory Service name of the format projects/*/locations/*/namespaces/*/services/*
  final String service;

  /// The unique identifier of the Service Directory Service against which the Service Binding resource is validated. This is populated when the Service Binding resource is used in another resource (like Backend Service). This is of the UUID4 format.
  final String serviceId;

  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetServiceBindingResult].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [labels] Optional. Set of label tags associated with the ServiceBinding resource.
  /// [name] Name of the ServiceBinding resource. It matches pattern `projects/*/locations/global/serviceBindings/service_binding_name`.
  /// [service] The full Service Directory Service name of the format projects/*/locations/*/namespaces/*/services/*
  /// [serviceId] The unique identifier of the Service Directory Service against which the Service Binding resource is validated. This is populated when the Service Binding resource is used in another resource (like Backend Service). This is of the UUID4 format.
  /// [updateTime] The timestamp when the resource was updated.
  GetServiceBindingResult({
    required this.createTime,
    required this.description,
    required this.labels,
    required this.name,
    required this.service,
    required this.serviceId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['labels'] = labels;
    map['name'] = name;
    map['service'] = service;
    map['serviceId'] = serviceId;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetServiceBindingResult.fromMap(Map<String, dynamic> map) {
    return GetServiceBindingResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      service: map['service'] as String,
      serviceId: map['serviceId'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
