import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_servicedirectory_args.dart';

/// A container for `services`. Namespaces allow administrators to group services
/// together and define permissions for a collection of services.
///
///
/// To get more information about Namespace, see:
///
/// * [API documentation](https://cloud.google.com/service-directory/docs/reference/rest/v1/projects.locations.namespaces)
/// * How-to Guides
/// * [Configuring a namespace](https://cloud.google.com/service-directory/docs/configuring-service-directory#configuring_a_namespace)
///
/// ## Example Usage
///
/// ### Service Directory Namespace Basic
///
///
///
///
/// ## Import
///
/// Namespace can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}`
///
/// * `{{project}}/{{location}}/{{namespace_id}}`
///
/// * `{{location}}/{{namespace_id}}`
///
/// When using the `pulumi import` command, Namespace can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/namespace:Namespace default projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/namespace:Namespace default {{project}}/{{location}}/{{namespace_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/namespace:Namespace default {{location}}/{{namespace_id}}
/// ```
class NamespaceServicedirectory extends pulumi.CustomResource {
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Resource labels associated with this Namespace. No more than 64 user
  /// labels can be associated with a given resource. Label keys and values can
  /// be no longer than 63 characters.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the Namespace.
  late final pulumi.Output<String> location;

  /// The resource name for the namespace
  /// in the format `projects/*/locations/*/namespaces/*`.
  late final pulumi.Output<String> name;

  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  late final pulumi.Output<String> namespaceId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  NamespaceServicedirectory(
    String name, {
    NamespaceServicedirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:servicedirectory/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.namespaceId = registerOutput<String>('namespaceId');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
