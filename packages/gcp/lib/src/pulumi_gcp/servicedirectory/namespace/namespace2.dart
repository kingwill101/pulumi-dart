import 'package:pulumi/pulumi.dart';
import 'namespace_args2.dart';

/// A container for <span pulumi-lang-nodejs="`services`" pulumi-lang-dotnet="`Services`" pulumi-lang-go="`services`" pulumi-lang-python="`services`" pulumi-lang-yaml="`services`" pulumi-lang-java="`services`">`services`</span>. Namespaces allow administrators to group services
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.servicedirectory.Namespace("example", {
/// namespaceId: "example-namespace",
/// location: "us-central1",
/// labels: {
/// key: "value",
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.servicedirectory.Namespace("example",
/// namespace_id="example-namespace",
/// location="us-central1",
/// labels={
/// "key": "value",
/// "foo": "bar",
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
/// var example = new Gcp.ServiceDirectory.Namespace("example", new()
/// {
/// NamespaceId = "example-namespace",
/// Location = "us-central1",
/// Labels =
/// {
/// { "key", "value" },
/// { "foo", "bar" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicedirectory.NewNamespace(ctx, "example", &servicedirectory.NamespaceArgs{
/// NamespaceId: pulumi.String("example-namespace"),
/// Location:    pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "key": pulumi.String("value"),
/// "foo": pulumi.String("bar"),
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
/// import com.pulumi.gcp.servicedirectory.Namespace;
/// import com.pulumi.gcp.servicedirectory.NamespaceArgs;
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
/// var example = new Namespace("example", NamespaceArgs.builder()
/// .namespaceId("example-namespace")
/// .location("us-central1")
/// .labels(Map.ofEntries(
/// Map.entry("key", "value"),
/// Map.entry("foo", "bar")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:servicedirectory:Namespace
/// properties:
/// namespaceId: example-namespace
/// location: us-central1
/// labels:
/// key: value
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
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
class Namespace2 extends CustomResource {
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Resource labels associated with this Namespace. No more than 64 user
  /// labels can be associated with a given resource. Label keys and values can
  /// be no longer than 63 characters.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location for the Namespace.
  late final Output<String> location;

  /// The resource name for the namespace
  /// in the format `projects/*/locations/*/namespaces/*`.
  late final Output<String> name;

  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  late final Output<String> namespaceId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  Namespace2(
    String name, {
    NamespaceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:servicedirectory/namespace:Namespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namespaceId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
  }
}
