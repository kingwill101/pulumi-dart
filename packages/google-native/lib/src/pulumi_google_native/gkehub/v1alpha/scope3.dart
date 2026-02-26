import 'package:pulumi/pulumi.dart';
import 'scope_args2.dart';
import 'scope_lifecycle_state_response2.dart';

/// Creates a Scope.
/// Auto-naming is currently not supported for this resource.
class Scope3 extends CustomResource {
  /// When the scope was created.
  late final Output<String> createTime;

  /// When the scope was deleted.
  late final Output<String> deleteTime;

  /// Optional. Labels for this Scope.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  late final Output<String> name;

  /// Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  late final Output<Map<String, String>> namespaceLabels;
  late final Output<String> project;

  /// Required. Client chosen ID for the Scope. `scope_id` must be a ????
  late final Output<String> scopeId;

  /// State of the scope resource.
  late final Output<ScopeLifecycleStateResponse2> state;

  /// Google-generated UUID for this resource. This is unique across all scope resources. If a scope resource is deleted and another resource with the same name is created, it gets a different uid.
  late final Output<String> uid;

  /// When the scope was last updated.
  late final Output<String> updateTime;

  Scope3(
    String name, {
    ScopeArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkehub/v1alpha:Scope',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namespaceLabels = Output.createUnknown<Map<String, String>>();
    this.project = Output.createUnknown<String>();
    this.scopeId = Output.createUnknown<String>();
    this.state = Output.createUnknown<ScopeLifecycleStateResponse2>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
