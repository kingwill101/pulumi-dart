import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_binding_args.dart';

/// Creates a new ServiceBinding in a given project and location.
class ServiceBinding extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String> description;

  /// Optional. Set of label tags associated with the ServiceBinding resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Name of the ServiceBinding resource. It matches pattern `projects/*/locations/global/serviceBindings/service_binding_name`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The full Service Directory Service name of the format projects/*/locations/*/namespaces/*/services/*
  late final pulumi.Output<String> service;

  /// Required. Short name of the ServiceBinding resource to be created.
  late final pulumi.Output<String> serviceBindingId;

  /// The unique identifier of the Service Directory Service against which the Service Binding resource is validated. This is populated when the Service Binding resource is used in another resource (like Backend Service). This is of the UUID4 format.
  late final pulumi.Output<String> serviceId;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ServiceBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceBinding]. {@macro pulumi_networkservices_v1_service_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceBinding(
    String name, {
    ServiceBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networkservices/v1:ServiceBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
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
