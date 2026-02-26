import 'package:pulumi/pulumi.dart';
import '../scope_state/scope_state.dart';
import 'scope_args.dart';

/// Scope represents a Scope in a Fleet.
///
///
/// To get more information about Scope, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.scopes)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Scope Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const scope = new gcp.gkehub.Scope("scope", {
/// scopeId: "my-scope",
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scope = gcp.gkehub.Scope("scope",
/// scope_id="my-scope",
/// namespace_labels={
/// "keyb": "valueb",
/// "keya": "valuea",
/// "keyc": "valuec",
/// },
/// labels={
/// "keyb": "valueb",
/// "keya": "valuea",
/// "keyc": "valuec",
/// })
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
/// ScopeId = "my-scope",
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
/// _, err := gkehub.NewScope(ctx, "scope", &gkehub.ScopeArgs{
/// ScopeId: pulumi.String("my-scope"),
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
/// })
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
/// .scopeId("my-scope")
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
/// scopeId: my-scope
/// namespaceLabels:
/// keyb: valueb
/// keya: valuea
/// keyc: valuec
/// labels:
/// keyb: valueb
/// keya: valuea
/// keyc: valuec
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Scope can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/scopes/{{scope_id}}`
///
/// * `{{project}}/{{scope_id}}`
///
/// * `{{scope_id}}`
///
/// When using the `pulumi import` command, Scope can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/scope:Scope default projects/{{project}}/locations/global/scopes/{{scope_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/scope:Scope default {{project}}/{{scope_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/scope:Scope default {{scope_id}}
/// ```
class Scope extends CustomResource {
  /// Time the Scope was created in UTC.
  late final Output<String> createTime;

  /// Time the Scope was deleted in UTC.
  late final Output<String> deleteTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels for this Scope.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The unique identifier of the scope
  late final Output<String> name;

  /// Scope-level cluster namespace labels. For the member clusters bound
  /// to the Scope, these labels are applied to each namespace under the
  /// Scope. Scope-level labels take precedence over Namespace-level
  /// labels (<span pulumi-lang-nodejs="`namespaceLabels`" pulumi-lang-dotnet="`NamespaceLabels`" pulumi-lang-go="`namespaceLabels`" pulumi-lang-python="`namespace_labels`" pulumi-lang-yaml="`namespaceLabels`" pulumi-lang-java="`namespaceLabels`">`namespace_labels`</span> in the Fleet Namespace resource) if they
  /// share a key. Keys and values must be Kubernetes-conformant.
  late final Output<Map<String, String>?> namespaceLabels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The client-provided identifier of the scope.
  late final Output<String> scopeId;

  /// State of the scope resource.
  /// Structure is documented below.
  late final Output<List<ScopeState>> states;

  /// Google-generated UUID for this resource.
  late final Output<String> uid;

  /// Time the Scope was updated in UTC.
  late final Output<String> updateTime;

  Scope(
    String name, {
    ScopeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/scope:Scope',
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
    this.scopeId = Output.createUnknown<String>();
    this.states = Output.createUnknown<List<ScopeState>>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
