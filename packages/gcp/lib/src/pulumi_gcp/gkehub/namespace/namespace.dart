import 'package:pulumi/pulumi.dart' as pulumi;
import '../namespace_state/namespace_state.dart';
import 'namespace_args.dart';

/// Namespace represents a namespace across the Fleet.
///
///
/// To get more information about Namespace, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.scopes.namespaces)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Namespace Basic
///
///
///
///
/// ## Import
///
/// Namespace can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/scopes/{{scope_id}}/namespaces/{{scope_namespace_id}}`
///
/// * `{{project}}/{{scope_id}}/{{scope_namespace_id}}`
///
/// * `{{scope_id}}/{{scope_namespace_id}}`
///
/// When using the `pulumi import` command, Namespace can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/namespace:Namespace default projects/{{project}}/locations/global/scopes/{{scope_id}}/namespaces/{{scope_namespace_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/namespace:Namespace default {{project}}/{{scope_id}}/{{scope_namespace_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/namespace:Namespace default {{scope_id}}/{{scope_namespace_id}}
/// ```
class Namespace extends pulumi.CustomResource {
  /// Time the Namespace was created in UTC.
  late final pulumi.Output<String> createTime;

  /// Time the Namespace was deleted in UTC.
  late final pulumi.Output<String> deleteTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels for this Namespace.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The resource name for the namespace
  late final pulumi.Output<String> name;

  /// Namespace-level cluster namespace labels. These labels are applied
  /// to the related namespace of the member clusters bound to the parent
  /// Scope. Scope-level labels (`namespace_labels` in the Fleet Scope
  /// resource) take precedence over Namespace-level labels if they share
  /// a key. Keys and values must be Kubernetes-conformant.
  late final pulumi.Output<Map<String, String>?> namespaceLabels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The name of the Scope instance.
  late final pulumi.Output<String> scope;

  /// Id of the scope
  late final pulumi.Output<String> scopeId;

  /// The client-provided identifier of the namespace.
  late final pulumi.Output<String> scopeNamespaceId;

  /// State of the namespace resource.
  /// Structure is documented below.
  late final pulumi.Output<List<NamespaceState>> states;

  /// Google-generated UUID for this resource.
  late final pulumi.Output<String> uid;

  /// Time the Namespace was updated in UTC.
  late final pulumi.Output<String> updateTime;

  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.namespaceLabels =
        registerOutput<Map<String, String>?>('namespaceLabels');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.scope = registerOutput<String>('scope');
    this.scopeId = registerOutput<String>('scopeId');
    this.scopeNamespaceId = registerOutput<String>('scopeNamespaceId');
    this.states = registerOutput<List<NamespaceState>>('states');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
