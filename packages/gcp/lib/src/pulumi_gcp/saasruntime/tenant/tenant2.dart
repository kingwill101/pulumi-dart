import 'package:pulumi/pulumi.dart';
import 'tenant_args2.dart';

/// The Tenant resource represents the service producer's view of a service instance created for a consumer. It enables the association between the service producer's managed resources and the end consumer.
///
///
/// ## Example Usage
///
/// ### Saas Runtime Tenant Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleSaas = new gcp.saasruntime.SaaS("example_saas", {
/// saasId: "example-saas",
/// location: "global",
/// locations: [{
/// name: "us-central1",
/// }],
/// });
/// const example = new gcp.saasruntime.Tenant("example", {
/// location: "global",
/// tenantId: "example-tenant",
/// saas: exampleSaas.id,
/// consumerResource: "//compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_saas = gcp.saasruntime.SaaS("example_saas",
/// saas_id="example-saas",
/// location="global",
/// locations=[{
/// "name": "us-central1",
/// }])
/// example = gcp.saasruntime.Tenant("example",
/// location="global",
/// tenant_id="example-tenant",
/// saas=example_saas.id,
/// consumer_resource="//compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleSaas = new Gcp.SaaSRuntime.SaaS("example_saas", new()
/// {
/// SaasId = "example-saas",
/// Location = "global",
/// Locations = new[]
/// {
/// new Gcp.SaaSRuntime.Inputs.SaaSLocationArgs
/// {
/// Name = "us-central1",
/// },
/// },
/// });
///
/// var example = new Gcp.SaaSRuntime.Tenant("example", new()
/// {
/// Location = "global",
/// TenantId = "example-tenant",
/// Saas = exampleSaas.Id,
/// ConsumerResource = "//compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/saasruntime"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleSaas, err := saasruntime.NewSaaS(ctx, "example_saas", &saasruntime.SaaSArgs{
/// SaasId:   pulumi.String("example-saas"),
/// Location: pulumi.String("global"),
/// Locations: saasruntime.SaaSLocationArray{
/// &saasruntime.SaaSLocationArgs{
/// Name: pulumi.String("us-central1"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = saasruntime.NewTenant(ctx, "example", &saasruntime.TenantArgs{
/// Location:         pulumi.String("global"),
/// TenantId:         pulumi.String("example-tenant"),
/// Saas:             exampleSaas.ID(),
/// ConsumerResource: pulumi.String("//compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance"),
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
/// import com.pulumi.gcp.saasruntime.SaaS;
/// import com.pulumi.gcp.saasruntime.SaaSArgs;
/// import com.pulumi.gcp.saasruntime.inputs.SaaSLocationArgs;
/// import com.pulumi.gcp.saasruntime.Tenant;
/// import com.pulumi.gcp.saasruntime.TenantArgs;
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
/// var exampleSaas = new SaaS("exampleSaas", SaaSArgs.builder()
/// .saasId("example-saas")
/// .location("global")
/// .locations(SaaSLocationArgs.builder()
/// .name("us-central1")
/// .build())
/// .build());
///
/// var example = new Tenant("example", TenantArgs.builder()
/// .location("global")
/// .tenantId("example-tenant")
/// .saas(exampleSaas.id())
/// .consumerResource("//compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleSaas:
/// type: gcp:saasruntime:SaaS
/// name: example_saas
/// properties:
/// saasId: example-saas
/// location: global
/// locations:
/// - name: us-central1
/// example:
/// type: gcp:saasruntime:Tenant
/// properties:
/// location: global
/// tenantId: example-tenant
/// saas: ${exampleSaas.id}
/// consumerResource: //compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Tenant can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/tenants/{{tenant_id}}`
///
/// * `{{project}}/{{location}}/{{tenant_id}}`
///
/// * `{{location}}/{{tenant_id}}`
///
/// When using the `pulumi import` command, Tenant can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:saasruntime/tenant:Tenant default projects/{{project}}/locations/{{location}}/tenants/{{tenant_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/tenant:Tenant default {{project}}/{{location}}/{{tenant_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/tenant:Tenant default {{location}}/{{tenant_id}}
/// ```
class Tenant2 extends CustomResource {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// A reference to the consumer resource this SaaS Tenant is representing.
  /// The relationship with a consumer resource can be used by SaaS Runtime for
  /// retrieving consumer-defined settings and policies such as maintenance
  /// policies (using Unified Maintenance Policy API).
  late final Output<String?> consumerResource;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/tenants/{tenant}"
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// A reference to the Saas that defines the product (managed service) that
  /// the producer wants to manage with SaaS Runtime. Part of the
  /// SaaS Runtime common data model.
  late final Output<String> saas;

  /// The ID value for the new tenant.
  late final Output<String> tenantId;

  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  late final Output<String> uid;

  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  late final Output<String> updateTime;

  Tenant2(
    String name, {
    TenantArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:saasruntime/tenant:Tenant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>?>();
    this.consumerResource = Output.createUnknown<String?>();
    this.createTime = Output.createUnknown<String>();
    this.effectiveAnnotations = Output.createUnknown<Map<String, String>>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.saas = Output.createUnknown<String>();
    this.tenantId = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
