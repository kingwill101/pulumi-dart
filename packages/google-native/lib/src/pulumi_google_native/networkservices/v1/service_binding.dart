import 'package:pulumi/pulumi.dart' hide Config;
import 'service_binding_args.dart';

/// Creates a new ServiceBinding in a given project and location.
class ServiceBinding extends CustomResource {
  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final Output<String> description;

  /// Optional. Set of label tags associated with the ServiceBinding resource.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Name of the ServiceBinding resource. It matches pattern `projects/*/locations/global/serviceBindings/service_binding_name`.
  late final Output<String> name;
  late final Output<String> project;

  /// The full Service Directory Service name of the format projects/*/locations/*/namespaces/*/services/*
  late final Output<String> service;

  /// Required. Short name of the ServiceBinding resource to be created.
  late final Output<String> serviceBindingId;

  /// The unique identifier of the Service Directory Service against which the Service Binding resource is validated. This is populated when the Service Binding resource is used in another resource (like Backend Service). This is of the UUID4 format.
  late final Output<String> serviceId;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  ServiceBinding(
    String name, {
    ServiceBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1:ServiceBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
    this.serviceBindingId = registerOutput<String>('serviceBindingId');
    this.serviceId = registerOutput<String>('serviceId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
