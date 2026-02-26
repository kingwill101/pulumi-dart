import 'package:pulumi/pulumi.dart';
import '../intercept_endpoint_group_association_location/intercept_endpoint_group_association_location.dart';
import '../intercept_endpoint_group_association_locations_detail/intercept_endpoint_group_association_locations_detail.dart';
import 'intercept_endpoint_group_association_args.dart';

/// An endpoint group association represents a link between a network and an
/// endpoint group in the organization.
///
/// Creating an association creates the networking infrastructure linking the
/// network to the endpoint group, but does not enable intercept by itself.
/// To enable intercept, the user must also create a network firewall policy
/// containing intercept rules and associate it with the network.
///
///
///
/// ## Example Usage
///
/// ### Network Security Intercept Endpoint Group Association Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producerNetwork = new gcp.compute.Network("producer_network", {
/// name: "example-prod-network",
/// autoCreateSubnetworks: false,
/// });
/// const consumerNetwork = new gcp.compute.Network("consumer_network", {
/// name: "example-cons-network",
/// autoCreateSubnetworks: false,
/// });
/// const deploymentGroup = new gcp.networksecurity.InterceptDeploymentGroup("deployment_group", {
/// interceptDeploymentGroupId: "example-dg",
/// location: "global",
/// network: producerNetwork.id,
/// });
/// const endpointGroup = new gcp.networksecurity.InterceptEndpointGroup("endpoint_group", {
/// interceptEndpointGroupId: "example-eg",
/// location: "global",
/// interceptDeploymentGroup: deploymentGroup.id,
/// });
/// const _default = new gcp.networksecurity.InterceptEndpointGroupAssociation("default", {
/// interceptEndpointGroupAssociationId: "example-ega",
/// location: "global",
/// network: consumerNetwork.id,
/// interceptEndpointGroup: endpointGroup.id,
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer_network = gcp.compute.Network("producer_network",
/// name="example-prod-network",
/// auto_create_subnetworks=False)
/// consumer_network = gcp.compute.Network("consumer_network",
/// name="example-cons-network",
/// auto_create_subnetworks=False)
/// deployment_group = gcp.networksecurity.InterceptDeploymentGroup("deployment_group",
/// intercept_deployment_group_id="example-dg",
/// location="global",
/// network=producer_network.id)
/// endpoint_group = gcp.networksecurity.InterceptEndpointGroup("endpoint_group",
/// intercept_endpoint_group_id="example-eg",
/// location="global",
/// intercept_deployment_group=deployment_group.id)
/// default = gcp.networksecurity.InterceptEndpointGroupAssociation("default",
/// intercept_endpoint_group_association_id="example-ega",
/// location="global",
/// network=consumer_network.id,
/// intercept_endpoint_group=endpoint_group.id,
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
/// var producerNetwork = new Gcp.Compute.Network("producer_network", new()
/// {
/// Name = "example-prod-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var consumerNetwork = new Gcp.Compute.Network("consumer_network", new()
/// {
/// Name = "example-cons-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var deploymentGroup = new Gcp.NetworkSecurity.InterceptDeploymentGroup("deployment_group", new()
/// {
/// InterceptDeploymentGroupId = "example-dg",
/// Location = "global",
/// Network = producerNetwork.Id,
/// });
///
/// var endpointGroup = new Gcp.NetworkSecurity.InterceptEndpointGroup("endpoint_group", new()
/// {
/// InterceptEndpointGroupId = "example-eg",
/// Location = "global",
/// InterceptDeploymentGroup = deploymentGroup.Id,
/// });
///
/// var @default = new Gcp.NetworkSecurity.InterceptEndpointGroupAssociation("default", new()
/// {
/// InterceptEndpointGroupAssociationId = "example-ega",
/// Location = "global",
/// Network = consumerNetwork.Id,
/// InterceptEndpointGroup = endpointGroup.Id,
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
/// producerNetwork, err := compute.NewNetwork(ctx, "producer_network", &compute.NetworkArgs{
/// Name:                  pulumi.String("example-prod-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// consumerNetwork, err := compute.NewNetwork(ctx, "consumer_network", &compute.NetworkArgs{
/// Name:                  pulumi.String("example-cons-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// deploymentGroup, err := networksecurity.NewInterceptDeploymentGroup(ctx, "deployment_group", &networksecurity.InterceptDeploymentGroupArgs{
/// InterceptDeploymentGroupId: pulumi.String("example-dg"),
/// Location:                   pulumi.String("global"),
/// Network:                    producerNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// endpointGroup, err := networksecurity.NewInterceptEndpointGroup(ctx, "endpoint_group", &networksecurity.InterceptEndpointGroupArgs{
/// InterceptEndpointGroupId: pulumi.String("example-eg"),
/// Location:                 pulumi.String("global"),
/// InterceptDeploymentGroup: deploymentGroup.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networksecurity.NewInterceptEndpointGroupAssociation(ctx, "default", &networksecurity.InterceptEndpointGroupAssociationArgs{
/// InterceptEndpointGroupAssociationId: pulumi.String("example-ega"),
/// Location:                            pulumi.String("global"),
/// Network:                             consumerNetwork.ID(),
/// InterceptEndpointGroup:              endpointGroup.ID(),
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
/// import com.pulumi.gcp.networksecurity.InterceptEndpointGroup;
/// import com.pulumi.gcp.networksecurity.InterceptEndpointGroupArgs;
/// import com.pulumi.gcp.networksecurity.InterceptEndpointGroupAssociation;
/// import com.pulumi.gcp.networksecurity.InterceptEndpointGroupAssociationArgs;
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
/// var producerNetwork = new Network("producerNetwork", NetworkArgs.builder()
/// .name("example-prod-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var consumerNetwork = new Network("consumerNetwork", NetworkArgs.builder()
/// .name("example-cons-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var deploymentGroup = new InterceptDeploymentGroup("deploymentGroup", InterceptDeploymentGroupArgs.builder()
/// .interceptDeploymentGroupId("example-dg")
/// .location("global")
/// .network(producerNetwork.id())
/// .build());
///
/// var endpointGroup = new InterceptEndpointGroup("endpointGroup", InterceptEndpointGroupArgs.builder()
/// .interceptEndpointGroupId("example-eg")
/// .location("global")
/// .interceptDeploymentGroup(deploymentGroup.id())
/// .build());
///
/// var default_ = new InterceptEndpointGroupAssociation("default", InterceptEndpointGroupAssociationArgs.builder()
/// .interceptEndpointGroupAssociationId("example-ega")
/// .location("global")
/// .network(consumerNetwork.id())
/// .interceptEndpointGroup(endpointGroup.id())
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// producerNetwork:
/// type: gcp:compute:Network
/// name: producer_network
/// properties:
/// name: example-prod-network
/// autoCreateSubnetworks: false
/// consumerNetwork:
/// type: gcp:compute:Network
/// name: consumer_network
/// properties:
/// name: example-cons-network
/// autoCreateSubnetworks: false
/// deploymentGroup:
/// type: gcp:networksecurity:InterceptDeploymentGroup
/// name: deployment_group
/// properties:
/// interceptDeploymentGroupId: example-dg
/// location: global
/// network: ${producerNetwork.id}
/// endpointGroup:
/// type: gcp:networksecurity:InterceptEndpointGroup
/// name: endpoint_group
/// properties:
/// interceptEndpointGroupId: example-eg
/// location: global
/// interceptDeploymentGroup: ${deploymentGroup.id}
/// default:
/// type: gcp:networksecurity:InterceptEndpointGroupAssociation
/// properties:
/// interceptEndpointGroupAssociationId: example-ega
/// location: global
/// network: ${consumerNetwork.id}
/// interceptEndpointGroup: ${endpointGroup.id}
/// labels:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// InterceptEndpointGroupAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/interceptEndpointGroupAssociations/{{intercept_endpoint_group_association_id}}`
///
/// * `{{project}}/{{location}}/{{intercept_endpoint_group_association_id}}`
///
/// * `{{location}}/{{intercept_endpoint_group_association_id}}`
///
/// When using the `pulumi import` command, InterceptEndpointGroupAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroupAssociation:InterceptEndpointGroupAssociation default projects/{{project}}/locations/{{location}}/interceptEndpointGroupAssociations/{{intercept_endpoint_group_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroupAssociation:InterceptEndpointGroupAssociation default {{project}}/{{location}}/{{intercept_endpoint_group_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroupAssociation:InterceptEndpointGroupAssociation default {{location}}/{{intercept_endpoint_group_association_id}}
/// ```
class InterceptEndpointGroupAssociation2 extends CustomResource {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  late final Output<String> interceptEndpointGroup;

  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  late final Output<String?> interceptEndpointGroupAssociationId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The cloud location of the association, currently restricted to <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  late final Output<String> location;

  /// The list of locations where the association is configured. This information
  /// is retrieved from the linked endpoint group.
  /// Structure is documented below.
  late final Output<List<InterceptEndpointGroupAssociationLocation>> locations;

  /// (Deprecated)
  /// The list of locations where the association is present. This information
  /// is retrieved from the linked endpoint group, and not configured as part
  /// of the association itself.
  /// Structure is documented below.
  late final Output<List<InterceptEndpointGroupAssociationLocationsDetail>>
      locationsDetails;

  /// The resource name of this endpoint group association, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroupAssociations/my-eg-association`.
  /// See https://google.aip.dev/122 for more details.
  late final Output<String> name;

  /// The VPC network that is associated. for example:
  /// `projects/123456789/global/networks/my-network`.
  /// See https://google.aip.dev/124.
  late final Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This part of the normal
  /// operation (e.g. adding a new location to the target deployment group).
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

  InterceptEndpointGroupAssociation2(
    String name, {
    InterceptEndpointGroupAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/interceptEndpointGroupAssociation:InterceptEndpointGroupAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.interceptEndpointGroup =
        registerOutput<String>('interceptEndpointGroup');
    this.interceptEndpointGroupAssociationId =
        registerOutput<String?>('interceptEndpointGroupAssociationId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.locations =
        registerOutput<List<InterceptEndpointGroupAssociationLocation>>(
            'locations');
    this.locationsDetails =
        registerOutput<List<InterceptEndpointGroupAssociationLocationsDetail>>(
            'locationsDetails');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
