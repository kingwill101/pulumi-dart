import 'package:pulumi/pulumi.dart';
import '../intercept_deployment_group_connected_endpoint_group/intercept_deployment_group_connected_endpoint_group.dart';
import '../intercept_deployment_group_location/intercept_deployment_group_location.dart';
import 'intercept_deployment_group_args.dart';

/// A deployment group aggregates many zonal intercept backends (deployments)
/// into a single global intercept service. Consumers can connect this service
/// using an endpoint group.
///
///
///
/// ## Example Usage
///
/// ### Network Security Intercept Deployment Group Basic
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
/// const _default = new gcp.networksecurity.InterceptDeploymentGroup("default", {
/// interceptDeploymentGroupId: "example-dg",
/// location: "global",
/// network: network.id,
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
/// default = gcp.networksecurity.InterceptDeploymentGroup("default",
/// intercept_deployment_group_id="example-dg",
/// location="global",
/// network=network.id,
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
/// var @default = new Gcp.NetworkSecurity.InterceptDeploymentGroup("default", new()
/// {
/// InterceptDeploymentGroupId = "example-dg",
/// Location = "global",
/// Network = network.Id,
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
/// _, err = networksecurity.NewInterceptDeploymentGroup(ctx, "default", &networksecurity.InterceptDeploymentGroupArgs{
/// InterceptDeploymentGroupId: pulumi.String("example-dg"),
/// Location:                   pulumi.String("global"),
/// Network:                    network.ID(),
/// Description:                pulumi.String("some description"),
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
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentGroupArgs;
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
/// var default_ = new InterceptDeploymentGroup("default", InterceptDeploymentGroupArgs.builder()
/// .interceptDeploymentGroupId("example-dg")
/// .location("global")
/// .network(network.id())
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
/// default:
/// type: gcp:networksecurity:InterceptDeploymentGroup
/// properties:
/// interceptDeploymentGroupId: example-dg
/// location: global
/// network: ${network.id}
/// description: some description
/// labels:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// InterceptDeploymentGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/interceptDeploymentGroups/{{intercept_deployment_group_id}}`
///
/// * `{{project}}/{{location}}/{{intercept_deployment_group_id}}`
///
/// * `{{location}}/{{intercept_deployment_group_id}}`
///
/// When using the `pulumi import` command, InterceptDeploymentGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeploymentGroup:InterceptDeploymentGroup default projects/{{project}}/locations/{{location}}/interceptDeploymentGroups/{{intercept_deployment_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeploymentGroup:InterceptDeploymentGroup default {{project}}/{{location}}/{{intercept_deployment_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeploymentGroup:InterceptDeploymentGroup default {{location}}/{{intercept_deployment_group_id}}
/// ```
class InterceptDeploymentGroup extends CustomResource {
  /// The list of endpoint groups that are connected to this resource.
  /// Structure is documented below.
  late final Output<List<InterceptDeploymentGroupConnectedEndpointGroup>>
      connectedEndpointGroups;

  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> createTime;

  /// User-provided description of the deployment group.
  /// Used as additional context for the deployment group.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The ID to use for the new deployment group, which will become the final
  /// component of the deployment group's resource name.
  late final Output<String> interceptDeploymentGroupId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The cloud location of the deployment group, currently restricted to <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  late final Output<String> location;

  /// The list of locations where the deployment group is present.
  /// Structure is documented below.
  late final Output<List<InterceptDeploymentGroupLocation>> locations;

  /// (Output)
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  late final Output<String> name;

  /// The network that will be used for all child deployments, for example:
  /// `projects/{project}/global/networks/{network}`.
  /// See https://google.aip.dev/124.
  late final Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation (e.g. adding a new deployment to the group)
  /// See https://google.aip.dev/128.
  late final Output<bool> reconciling;

  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  late final Output<String> state;

  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> updateTime;

  InterceptDeploymentGroup(
    String name, {
    InterceptDeploymentGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/interceptDeploymentGroup:InterceptDeploymentGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectedEndpointGroups =
        registerOutput<List<InterceptDeploymentGroupConnectedEndpointGroup>>(
            'connectedEndpointGroups');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.interceptDeploymentGroupId =
        registerOutput<String>('interceptDeploymentGroupId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.locations =
        registerOutput<List<InterceptDeploymentGroupLocation>>('locations');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
