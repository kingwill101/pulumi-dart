import 'package:pulumi/pulumi.dart';
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const scope = new gcp.gkehub.Scope("scope", {scopeId: "tf-test-scope_8647"});
/// const namespace = new gcp.gkehub.Namespace("namespace", {
/// scopeNamespaceId: "tf-test-namespace_50610",
/// scopeId: scope.scopeId,
/// scope: scope.name,
/// namespaceLabels: {
/// keyb: "valueb",
/// keya: "valuea",
/// keyc: "valuec",
/// },
/// labels: {
/// keyb: "valueb",
/// keya: "valuea",
/// keyc: "valuec",
/// },
/// }, {
/// dependsOn: [scope],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scope = gcp.gkehub.Scope("scope", scope_id="tf-test-scope_8647")
/// namespace = gcp.gkehub.Namespace("namespace",
/// scope_namespace_id="tf-test-namespace_50610",
/// scope_id=scope.scope_id,
/// scope=scope.name,
/// namespace_labels={
/// "keyb": "valueb",
/// "keya": "valuea",
/// "keyc": "valuec",
/// },
/// labels={
/// "keyb": "valueb",
/// "keya": "valuea",
/// "keyc": "valuec",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[scope]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var scope = new Gcp.GkeHub.Scope("scope", new()
/// {
/// ScopeId = "tf-test-scope_8647",
/// });
///
/// var @namespace = new Gcp.GkeHub.Namespace("namespace", new()
/// {
/// ScopeNamespaceId = "tf-test-namespace_50610",
/// ScopeId = scope.ScopeId,
/// Scope = scope.Name,
/// NamespaceLabels =
/// {
/// { "keyb", "valueb" },
/// { "keya", "valuea" },
/// { "keyc", "valuec" },
/// },
/// Labels =
/// {
/// { "keyb", "valueb" },
/// { "keya", "valuea" },
/// { "keyc", "valuec" },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// scope,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// scope, err := gkehub.NewScope(ctx, "scope", &gkehub.ScopeArgs{
/// ScopeId: pulumi.String("tf-test-scope_8647"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = gkehub.NewNamespace(ctx, "namespace", &gkehub.NamespaceArgs{
/// ScopeNamespaceId: pulumi.String("tf-test-namespace_50610"),
/// ScopeId:          scope.ScopeId,
/// Scope:            scope.Name,
/// NamespaceLabels: pulumi.StringMap{
/// "keyb": pulumi.String("valueb"),
/// "keya": pulumi.String("valuea"),
/// "keyc": pulumi.String("valuec"),
/// },
/// Labels: pulumi.StringMap{
/// "keyb": pulumi.String("valueb"),
/// "keya": pulumi.String("valuea"),
/// "keyc": pulumi.String("valuec"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// scope,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.Scope;
/// import com.pulumi.gcp.gkehub.ScopeArgs;
/// import com.pulumi.gcp.gkehub.Namespace;
/// import com.pulumi.gcp.gkehub.NamespaceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var scope = new Scope("scope", ScopeArgs.builder()
/// .scopeId("tf-test-scope_8647")
/// .build());
///
/// var namespace = new Namespace("namespace", NamespaceArgs.builder()
/// .scopeNamespaceId("tf-test-namespace_50610")
/// .scopeId(scope.scopeId())
/// .scope(scope.name())
/// .namespaceLabels(Map.ofEntries(
/// Map.entry("keyb", "valueb"),
/// Map.entry("keya", "valuea"),
/// Map.entry("keyc", "valuec")
/// ))
/// .labels(Map.ofEntries(
/// Map.entry("keyb", "valueb"),
/// Map.entry("keya", "valuea"),
/// Map.entry("keyc", "valuec")
/// ))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(scope)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// scope:
/// type: gcp:gkehub:Scope
/// properties:
/// scopeId: tf-test-scope_8647
/// namespace:
/// type: gcp:gkehub:Namespace
/// properties:
/// scopeNamespaceId: tf-test-namespace_50610
/// scopeId: ${scope.scopeId}
/// scope: ${scope.name}
/// namespaceLabels:
/// keyb: valueb
/// keya: valuea
/// keyc: valuec
/// labels:
/// keyb: valueb
/// keya: valuea
/// keyc: valuec
/// options:
/// dependsOn:
/// - ${scope}
/// ```
/// <!--End PulumiCodeChooser -->
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
class Namespace extends CustomResource {
  /// Time the Namespace was created in UTC.
  late final Output<String> createTime;

  /// Time the Namespace was deleted in UTC.
  late final Output<String> deleteTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels for this Namespace.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The resource name for the namespace
  late final Output<String> name;

  /// Namespace-level cluster namespace labels. These labels are applied
  /// to the related namespace of the member clusters bound to the parent
  /// Scope. Scope-level labels (<span pulumi-lang-nodejs="`namespaceLabels`" pulumi-lang-dotnet="`NamespaceLabels`" pulumi-lang-go="`namespaceLabels`" pulumi-lang-python="`namespace_labels`" pulumi-lang-yaml="`namespaceLabels`" pulumi-lang-java="`namespaceLabels`">`namespace_labels`</span> in the Fleet Scope
  /// resource) take precedence over Namespace-level labels if they share
  /// a key. Keys and values must be Kubernetes-conformant.
  late final Output<Map<String, String>?> namespaceLabels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The name of the Scope instance.
  late final Output<String> scope;

  /// Id of the scope
  late final Output<String> scopeId;

  /// The client-provided identifier of the namespace.
  late final Output<String> scopeNamespaceId;

  /// State of the namespace resource.
  /// Structure is documented below.
  late final Output<List<NamespaceState>> states;

  /// Google-generated UUID for this resource.
  late final Output<String> uid;

  /// Time the Namespace was updated in UTC.
  late final Output<String> updateTime;

  Namespace(
    String name, {
    NamespaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/namespace:Namespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.namespaceLabels = Output.createUnknown<Map<String, String>?>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.scope = Output.createUnknown<String>();
    this.scopeId = Output.createUnknown<String>();
    this.scopeNamespaceId = Output.createUnknown<String>();
    this.states = Output.createUnknown<List<NamespaceState>>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
