// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for ServiceBinding.
class ServiceBindingArgs2 {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// Optional. Set of label tags associated with the ServiceBinding resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Name of the ServiceBinding resource. It matches pattern `projects/*/locations/global/serviceBindings/service_binding_name`.
  final Input<String>? name;
  final Input<String>? project;

  /// The full Service Directory Service name of the format projects/*/locations/*/namespaces/*/services/*
  final Input<String> service;

  /// Required. Short name of the ServiceBinding resource to be created.
  final Input<String> serviceBindingId;

  ServiceBindingArgs2({
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    required this.service,
    required this.serviceBindingId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    map['serviceBindingId'] = serviceBindingId;
    return map;
  }

  factory ServiceBindingArgs2.fromMap(Map<String, dynamic> map) {
    return ServiceBindingArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      service: Input.asInput<String>(map['service']),
      serviceBindingId: Input.asInput<String>(map['serviceBindingId']),
    );
  }
}
