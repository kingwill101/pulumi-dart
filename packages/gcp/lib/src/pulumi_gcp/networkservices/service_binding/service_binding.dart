import 'package:pulumi/pulumi.dart';
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.servicedirectory.Namespace("default", {
/// namespaceId: "my-namespace",
/// location: "us-central1",
/// });
/// const defaultService = new gcp.servicedirectory.Service("default", {
/// serviceId: "my-service",
/// namespace: _default.id,
/// metadata: {
/// stage: "prod",
/// region: "us-central1",
/// },
/// });
/// const defaultServiceBinding = new gcp.networkservices.ServiceBinding("default", {
/// name: "my-service-binding",
/// labels: {
/// foo: "bar",
/// },
/// description: "my description",
/// service: defaultService.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.servicedirectory.Namespace("default",
/// namespace_id="my-namespace",
/// location="us-central1")
/// default_service = gcp.servicedirectory.Service("default",
/// service_id="my-service",
/// namespace=default.id,
/// metadata={
/// "stage": "prod",
/// "region": "us-central1",
/// })
/// default_service_binding = gcp.networkservices.ServiceBinding("default",
/// name="my-service-binding",
/// labels={
/// "foo": "bar",
/// },
/// description="my description",
/// service=default_service.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.ServiceDirectory.Namespace("default", new()
/// {
/// NamespaceId = "my-namespace",
/// Location = "us-central1",
/// });
///
/// var defaultService = new Gcp.ServiceDirectory.Service("default", new()
/// {
/// ServiceId = "my-service",
/// Namespace = @default.Id,
/// Metadata =
/// {
/// { "stage", "prod" },
/// { "region", "us-central1" },
/// },
/// });
///
/// var defaultServiceBinding = new Gcp.NetworkServices.ServiceBinding("default", new()
/// {
/// Name = "my-service-binding",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Description = "my description",
/// Service = defaultService.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := servicedirectory.NewNamespace(ctx, "default", &servicedirectory.NamespaceArgs{
/// NamespaceId: pulumi.String("my-namespace"),
/// Location:    pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultService, err := servicedirectory.NewService(ctx, "default", &servicedirectory.ServiceArgs{
/// ServiceId: pulumi.String("my-service"),
/// Namespace: _default.ID(),
/// Metadata: pulumi.StringMap{
/// "stage":  pulumi.String("prod"),
/// "region": pulumi.String("us-central1"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkservices.NewServiceBinding(ctx, "default", &networkservices.ServiceBindingArgs{
/// Name: pulumi.String("my-service-binding"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Description: pulumi.String("my description"),
/// Service:     defaultService.ID(),
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
/// import com.pulumi.gcp.servicedirectory.Service;
/// import com.pulumi.gcp.servicedirectory.ServiceArgs;
/// import com.pulumi.gcp.networkservices.ServiceBinding;
/// import com.pulumi.gcp.networkservices.ServiceBindingArgs;
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
/// var default_ = new Namespace("default", NamespaceArgs.builder()
/// .namespaceId("my-namespace")
/// .location("us-central1")
/// .build());
///
/// var defaultService = new Service("defaultService", ServiceArgs.builder()
/// .serviceId("my-service")
/// .namespace(default_.id())
/// .metadata(Map.ofEntries(
/// Map.entry("stage", "prod"),
/// Map.entry("region", "us-central1")
/// ))
/// .build());
///
/// var defaultServiceBinding = new ServiceBinding("defaultServiceBinding", ServiceBindingArgs.builder()
/// .name("my-service-binding")
/// .labels(Map.of("foo", "bar"))
/// .description("my description")
/// .service(defaultService.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:servicedirectory:Namespace
/// properties:
/// namespaceId: my-namespace
/// location: us-central1
/// defaultService:
/// type: gcp:servicedirectory:Service
/// name: default
/// properties:
/// serviceId: my-service
/// namespace: ${default.id}
/// metadata:
/// stage: prod
/// region: us-central1
/// defaultServiceBinding:
/// type: gcp:networkservices:ServiceBinding
/// name: default
/// properties:
/// name: my-service-binding
/// labels:
/// foo: bar
/// description: my description
/// service: ${defaultService.id}
/// ```
/// <!--End PulumiCodeChooser -->
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
class ServiceBinding extends CustomResource {
  /// Time the ServiceBinding was created in UTC.
  late final Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the ServiceBinding resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the ServiceBinding resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The full Service Directory Service name of the format
  /// projects/*/locations/*/namespaces/*/services/*
  late final Output<String> service;

  /// Time the ServiceBinding was updated in UTC.
  late final Output<String> updateTime;

  ServiceBinding(
    String name, {
    ServiceBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/serviceBinding:ServiceBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.service = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
