import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_binding_args.dart';

/// > **Warning:** Cloud Service Mesh's integration with Service Directory is going to be deprecated. [Learn more](https://docs.cloud.google.com/service-mesh/docs/service-routing/service-directory-integration-setup). Creating new service binding resources will be disabled.
///
/// ServiceBinding is the resource that defines a Service Directory Service to be used in a
/// BackendService resource.
///
///
/// To get more information about ServiceBinding, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.serviceBindings)
///
/// ## Example Usage
///
/// ### Network Services Service Binding Basic
///
///
///
///
/// ## Import
///
/// ServiceBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/serviceBindings/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ServiceBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/serviceBinding:ServiceBinding default projects/{{project}}/locations/global/serviceBindings/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/serviceBinding:ServiceBinding default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/serviceBinding:ServiceBinding default {{name}}
/// ```
class ServiceBinding extends pulumi.CustomResource {
  /// Time the ServiceBinding was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the ServiceBinding resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the ServiceBinding resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The full Service Directory Service name of the format
  /// projects/*/locations/*/namespaces/*/services/*
  late final pulumi.Output<String> service;

  /// Time the ServiceBinding was updated in UTC.
  late final pulumi.Output<String> updateTime;

  ServiceBinding(
    String name, {
    ServiceBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/serviceBinding:ServiceBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.service = registerOutput<String>('service');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
