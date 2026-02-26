import 'package:pulumi/pulumi.dart';
import 'endpoint_attachment_args2.dart';

/// An Integration connectors Endpoint Attachment.
///
///
/// To get more information about EndpointAttachment, see:
///
/// * [API documentation](https://cloud.google.com/integration-connectors/docs/reference/rest/v1/projects.locations.endpointAttachments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/integration-connectors/docs/create-endpoint-attachment)
///
/// ## Example Usage
///
/// ### Integration Connectors Endpoint Attachment
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sampleendpointattachment = new gcp.integrationconnectors.EndpointAttachment("sampleendpointattachment", {
/// name: "test-endpoint-attachment",
/// location: "us-central1",
/// description: "tf created description",
/// serviceAttachment: "projects/connectors-example/regions/us-central1/serviceAttachments/test",
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sampleendpointattachment = gcp.integrationconnectors.EndpointAttachment("sampleendpointattachment",
/// name="test-endpoint-attachment",
/// location="us-central1",
/// description="tf created description",
/// service_attachment="projects/connectors-example/regions/us-central1/serviceAttachments/test",
/// labels={
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
/// var sampleendpointattachment = new Gcp.IntegrationConnectors.EndpointAttachment("sampleendpointattachment", new()
/// {
/// Name = "test-endpoint-attachment",
/// Location = "us-central1",
/// Description = "tf created description",
/// ServiceAttachment = "projects/connectors-example/regions/us-central1/serviceAttachments/test",
/// Labels =
/// {
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/integrationconnectors"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := integrationconnectors.NewEndpointAttachment(ctx, "sampleendpointattachment", &integrationconnectors.EndpointAttachmentArgs{
/// Name:              pulumi.String("test-endpoint-attachment"),
/// Location:          pulumi.String("us-central1"),
/// Description:       pulumi.String("tf created description"),
/// ServiceAttachment: pulumi.String("projects/connectors-example/regions/us-central1/serviceAttachments/test"),
/// Labels: pulumi.StringMap{
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
/// import com.pulumi.gcp.integrationconnectors.EndpointAttachment;
/// import com.pulumi.gcp.integrationconnectors.EndpointAttachmentArgs;
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
/// var sampleendpointattachment = new EndpointAttachment("sampleendpointattachment", EndpointAttachmentArgs.builder()
/// .name("test-endpoint-attachment")
/// .location("us-central1")
/// .description("tf created description")
/// .serviceAttachment("projects/connectors-example/regions/us-central1/serviceAttachments/test")
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sampleendpointattachment:
/// type: gcp:integrationconnectors:EndpointAttachment
/// properties:
/// name: test-endpoint-attachment
/// location: us-central1
/// description: tf created description
/// serviceAttachment: projects/connectors-example/regions/us-central1/serviceAttachments/test
/// labels:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// EndpointAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/endpointAttachments/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, EndpointAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/endpointAttachment:EndpointAttachment default projects/{{project}}/locations/{{location}}/endpointAttachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/endpointAttachment:EndpointAttachment default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/endpointAttachment:EndpointAttachment default {{location}}/{{name}}
/// ```
class EndpointAttachment2 extends CustomResource {
  /// Time the Namespace was created in UTC.
  late final Output<String> createTime;

  /// Description of the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Enable global access for endpoint attachment.
  late final Output<bool?> endpointGlobalAccess;

  /// The Private Service Connect connection endpoint ip.
  late final Output<String> endpointIp;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Location in which Endpoint Attachment needs to be created.
  late final Output<String> location;

  /// Name of Endpoint Attachment needs to be created.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The path of the service attachment.
  late final Output<String> serviceAttachment;

  /// Time the Namespace was updated in UTC.
  late final Output<String> updateTime;

  EndpointAttachment2(
    String name, {
    EndpointAttachmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:integrationconnectors/endpointAttachment:EndpointAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.endpointGlobalAccess = Output.createUnknown<bool?>();
    this.endpointIp = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.serviceAttachment = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
