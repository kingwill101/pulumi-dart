// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_service_binding_networkservices_v1beta1_args_doc}
/// The set of arguments for ServiceBinding.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_service_binding_networkservices_v1beta1_args_doc}
class ServiceBindingNetworkservicesV1beta1Args {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Optional. Set of label tags associated with the ServiceBinding resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Name of the ServiceBinding resource. It matches pattern `projects/*/locations/global/serviceBindings/service_binding_name`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The full Service Directory Service name of the format projects/*/locations/*/namespaces/*/services/*
  final pulumi.Input<String> service;

  /// Required. Short name of the ServiceBinding resource to be created.
  final pulumi.Input<String> serviceBindingId;

  /// Creates a new [ServiceBindingNetworkservicesV1beta1Args].
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [labels] Optional. Set of label tags associated with the ServiceBinding resource.
  /// [location] Optional.
  /// [name] Name of the ServiceBinding resource. It matches pattern `projects/*/locations/global/serviceBindings/service_binding_name`.
  /// [project] Optional.
  /// [service] The full Service Directory Service name of the format projects/*/locations/*/namespaces/*/services/*
  /// [serviceBindingId] Required. Short name of the ServiceBinding resource to be created.
  ServiceBindingNetworkservicesV1beta1Args({
    String? description,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    required String service,
    required String serviceBindingId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        service = pulumi.Input.asInput<String>(service),
        serviceBindingId = pulumi.Input.asInput<String>(serviceBindingId);

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

  factory ServiceBindingNetworkservicesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return ServiceBindingNetworkservicesV1beta1Args(
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      service: map['service'] as String,
      serviceBindingId: map['serviceBindingId'] as String,
    );
  }
}
