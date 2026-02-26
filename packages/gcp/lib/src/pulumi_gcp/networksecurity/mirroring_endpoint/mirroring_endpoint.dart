import 'package:pulumi/pulumi.dart';
import 'mirroring_endpoint_args.dart';

/// An endpoint is a managed mirroring collector that provides enhanced packet
/// enrichment capabilities and support for multiple replica destinations.
/// Endpoints are always part of a global endpoint group which represents a
/// global "mirroring broker" service.
///
///
/// ## Example Usage
///
/// ### Network Security Mirroring Endpoint Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
/// name: "example-network",
/// autoCreateSubnetworks: false,
/// });
/// const deploymentGroup = new gcp.networksecurity.MirroringDeploymentGroup("deployment_group", {
/// mirroringDeploymentGroupId: "example-dg",
/// location: "global",
/// network: network.id,
/// });
/// const endpointGroup = new gcp.networksecurity.MirroringEndpointGroup("endpoint_group", {
/// mirroringEndpointGroupId: "example-eg",
/// location: "global",
/// type: "BROKER",
/// mirroringDeploymentGroups: [deploymentGroup.id],
/// });
/// const _default = new gcp.networksecurity.MirroringEndpoint("default", {
/// mirroringEndpointId: "example-endpoint",
/// location: "us-west2-a",
/// mirroringEndpointGroup: endpointGroup.id,
/// description: "some description",
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
/// name="example-network",
/// auto_create_subnetworks=False)
/// deployment_group = gcp.networksecurity.MirroringDeploymentGroup("deployment_group",
/// mirroring_deployment_group_id="example-dg",
/// location="global",
/// network=network.id)
/// endpoint_group = gcp.networksecurity.MirroringEndpointGroup("endpoint_group",
/// mirroring_endpoint_group_id="example-eg",
/// location="global",
/// type="BROKER",
/// mirroring_deployment_groups=[deployment_group.id])
/// default = gcp.networksecurity.MirroringEndpoint("default",
/// mirroring_endpoint_id="example-endpoint",
/// location="us-west2-a",
/// mirroring_endpoint_group=endpoint_group.id,
/// description="some description",
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
/// var network = new Gcp.Compute.Network("network", new()
/// {
/// Name = "example-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var deploymentGroup = new Gcp.NetworkSecurity.MirroringDeploymentGroup("deployment_group", new()
/// {
/// MirroringDeploymentGroupId = "example-dg",
/// Location = "global",
/// Network = network.Id,
/// });
///
/// var endpointGroup = new Gcp.NetworkSecurity.MirroringEndpointGroup("endpoint_group", new()
/// {
/// MirroringEndpointGroupId = "example-eg",
/// Location = "global",
/// Type = "BROKER",
/// MirroringDeploymentGroups = new[]
/// {
/// deploymentGroup.Id,
/// },
/// });
///
/// var @default = new Gcp.NetworkSecurity.MirroringEndpoint("default", new()
/// {
/// MirroringEndpointId = "example-endpoint",
/// Location = "us-west2-a",
/// MirroringEndpointGroup = endpointGroup.Id,
/// Description = "some description",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Name:                  pulumi.String("example-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// deploymentGroup, err := networksecurity.NewMirroringDeploymentGroup(ctx, "deployment_group", &networksecurity.MirroringDeploymentGroupArgs{
/// MirroringDeploymentGroupId: pulumi.String("example-dg"),
/// Location:                   pulumi.String("global"),
/// Network:                    network.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// endpointGroup, err := networksecurity.NewMirroringEndpointGroup(ctx, "endpoint_group", &networksecurity.MirroringEndpointGroupArgs{
/// MirroringEndpointGroupId: pulumi.String("example-eg"),
/// Location:                 pulumi.String("global"),
/// Type:                     pulumi.String("BROKER"),
/// MirroringDeploymentGroups: pulumi.StringArray{
/// deploymentGroup.ID(),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networksecurity.NewMirroringEndpoint(ctx, "default", &networksecurity.MirroringEndpointArgs{
/// MirroringEndpointId:    pulumi.String("example-endpoint"),
/// Location:               pulumi.String("us-west2-a"),
/// MirroringEndpointGroup: endpointGroup.ID(),
/// Description:            pulumi.String("some description"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroupArgs;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroup;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroupArgs;
/// import com.pulumi.gcp.networksecurity.MirroringEndpoint;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointArgs;
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
/// var network = new Network("network", NetworkArgs.builder()
/// .name("example-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var deploymentGroup = new MirroringDeploymentGroup("deploymentGroup", MirroringDeploymentGroupArgs.builder()
/// .mirroringDeploymentGroupId("example-dg")
/// .location("global")
/// .network(network.id())
/// .build());
///
/// var endpointGroup = new MirroringEndpointGroup("endpointGroup", MirroringEndpointGroupArgs.builder()
/// .mirroringEndpointGroupId("example-eg")
/// .location("global")
/// .type("BROKER")
/// .mirroringDeploymentGroups(deploymentGroup.id())
/// .build());
///
/// var default_ = new MirroringEndpoint("default", MirroringEndpointArgs.builder()
/// .mirroringEndpointId("example-endpoint")
/// .location("us-west2-a")
/// .mirroringEndpointGroup(endpointGroup.id())
/// .description("some description")
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// network:
/// type: gcp:compute:Network
/// properties:
/// name: example-network
/// autoCreateSubnetworks: false
/// deploymentGroup:
/// type: gcp:networksecurity:MirroringDeploymentGroup
/// name: deployment_group
/// properties:
/// mirroringDeploymentGroupId: example-dg
/// location: global
/// network: ${network.id}
/// endpointGroup:
/// type: gcp:networksecurity:MirroringEndpointGroup
/// name: endpoint_group
/// properties:
/// mirroringEndpointGroupId: example-eg
/// location: global
/// type: BROKER
/// mirroringDeploymentGroups:
/// - ${deploymentGroup.id}
/// default:
/// type: gcp:networksecurity:MirroringEndpoint
/// properties:
/// mirroringEndpointId: example-endpoint
/// location: us-west2-a
/// mirroringEndpointGroup: ${endpointGroup.id}
/// description: some description
/// labels:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// MirroringEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/mirroringEndpoints/{{mirroring_endpoint_id}}`
///
/// * `{{project}}/{{location}}/{{mirroring_endpoint_id}}`
///
/// * `{{location}}/{{mirroring_endpoint_id}}`
///
/// When using the `pulumi import` command, MirroringEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpoint:MirroringEndpoint default projects/{{project}}/locations/{{location}}/mirroringEndpoints/{{mirroring_endpoint_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpoint:MirroringEndpoint default {{project}}/{{location}}/{{mirroring_endpoint_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpoint:MirroringEndpoint default {{location}}/{{mirroring_endpoint_id}}
/// ```
class MirroringEndpoint extends CustomResource {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> createTime;

  /// User-provided description of the endpoint.
  /// Used as additional context for the endpoint.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The cloud location of the endpoint, e.g. `us-central1-a` or `asia-south1-b`.
  late final Output<String> location;

  /// The endpoint group that this endpoint belongs to.
  /// Format is:
  /// `projects/{project}/locations/{location}/mirroringEndpointGroups/{mirroringEndpointGroup}`
  late final Output<String> mirroringEndpointGroup;

  /// The ID to use for the new endpoint, which will become the final
  /// component of the endpoint's resource name.
  late final Output<String> mirroringEndpointId;

  /// The resource name of this endpoint, for example:
  /// `projects/123456789/locations/us-central1-a/mirroringEndpoints/my-endpoint`.
  /// See https://google.aip.dev/122 for more details.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This part of the normal
  /// operation (e.g. linking a new association to the parent group).
  /// See https://google.aip.dev/128.
  late final Output<bool> reconciling;

  /// The current state of the endpoint.
  /// See https://google.aip.dev/216.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// OUT_OF_SYNC
  late final Output<String> state;

  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> updateTime;

  MirroringEndpoint(
    String name, {
    MirroringEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringEndpoint:MirroringEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.mirroringEndpointGroup = Output.createUnknown<String>();
    this.mirroringEndpointId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.reconciling = Output.createUnknown<bool>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
