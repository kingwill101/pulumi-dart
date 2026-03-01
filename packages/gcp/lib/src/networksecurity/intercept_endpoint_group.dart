import 'package:pulumi/pulumi.dart' as pulumi;
import 'intercept_endpoint_group_args.dart';
import 'intercept_endpoint_group_association.dart';
import 'intercept_endpoint_group_connected_deployment_group.dart';

/// An endpoint group is a consumer frontend for a deployment group (backend).
/// In order to configure intercept for a network, consumers must create:
/// - An association between their network and the endpoint group.
/// - A security profile that points to the endpoint group.
/// - A firewall rule that references the security profile (group).
///
///
///
/// ## Example Usage
///
/// ### Network Security Intercept Endpoint Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "example-network",
///     autoCreateSubnetworks: false,
/// });
/// const deploymentGroup = new gcp.networksecurity.InterceptDeploymentGroup("deployment_group", {
///     interceptDeploymentGroupId: "example-dg",
///     location: "global",
///     network: network.id,
/// });
/// const _default = new gcp.networksecurity.InterceptEndpointGroup("default", {
///     interceptEndpointGroupId: "example-eg",
///     location: "global",
///     interceptDeploymentGroup: deploymentGroup.id,
///     description: "some description",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="example-network",
///     auto_create_subnetworks=False)
/// deployment_group = gcp.networksecurity.InterceptDeploymentGroup("deployment_group",
///     intercept_deployment_group_id="example-dg",
///     location="global",
///     network=network.id)
/// default = gcp.networksecurity.InterceptEndpointGroup("default",
///     intercept_endpoint_group_id="example-eg",
///     location="global",
///     intercept_deployment_group=deployment_group.id,
///     description="some description",
///     labels={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "example-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var deploymentGroup = new Gcp.NetworkSecurity.InterceptDeploymentGroup("deployment_group", new()
///     {
///         InterceptDeploymentGroupId = "example-dg",
///         Location = "global",
///         Network = network.Id,
///     });
///
///     var @default = new Gcp.NetworkSecurity.InterceptEndpointGroup("default", new()
///     {
///         InterceptEndpointGroupId = "example-eg",
///         Location = "global",
///         InterceptDeploymentGroup = deploymentGroup.Id,
///         Description = "some description",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("example-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deploymentGroup, err := networksecurity.NewInterceptDeploymentGroup(ctx, "deployment_group", &networksecurity.InterceptDeploymentGroupArgs{
/// 			InterceptDeploymentGroupId: pulumi.String("example-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewInterceptEndpointGroup(ctx, "default", &networksecurity.InterceptEndpointGroupArgs{
/// 			InterceptEndpointGroupId: pulumi.String("example-eg"),
/// 			Location:                 pulumi.String("global"),
/// 			InterceptDeploymentGroup: deploymentGroup.ID(),
/// 			Description:              pulumi.String("some description"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var network = new Network("network", NetworkArgs.builder()
///             .name("example-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var deploymentGroup = new InterceptDeploymentGroup("deploymentGroup", InterceptDeploymentGroupArgs.builder()
///             .interceptDeploymentGroupId("example-dg")
///             .location("global")
///             .network(network.id())
///             .build());
///
///         var default_ = new InterceptEndpointGroup("default", InterceptEndpointGroupArgs.builder()
///             .interceptEndpointGroupId("example-eg")
///             .location("global")
///             .interceptDeploymentGroup(deploymentGroup.id())
///             .description("some description")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: example-network
///       autoCreateSubnetworks: false
///   deploymentGroup:
///     type: gcp:networksecurity:InterceptDeploymentGroup
///     name: deployment_group
///     properties:
///       interceptDeploymentGroupId: example-dg
///       location: global
///       network: ${network.id}
///   default:
///     type: gcp:networksecurity:InterceptEndpointGroup
///     properties:
///       interceptEndpointGroupId: example-eg
///       location: global
///       interceptDeploymentGroup: ${deploymentGroup.id}
///       description: some description
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// InterceptEndpointGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/interceptEndpointGroups/{{intercept_endpoint_group_id}}`
///
/// * `{{project}}/{{location}}/{{intercept_endpoint_group_id}}`
///
/// * `{{location}}/{{intercept_endpoint_group_id}}`
///
/// When using the `pulumi import` command, InterceptEndpointGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroup:InterceptEndpointGroup default projects/{{project}}/locations/{{location}}/interceptEndpointGroups/{{intercept_endpoint_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroup:InterceptEndpointGroup default {{project}}/{{location}}/{{intercept_endpoint_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroup:InterceptEndpointGroup default {{location}}/{{intercept_endpoint_group_id}}
/// ```
class InterceptEndpointGroup extends pulumi.CustomResource {
  /// List of associations to this endpoint group.
  /// Structure is documented below.
  late final pulumi.Output<List<InterceptEndpointGroupAssociation>>
  associations;

  /// The endpoint group's view of a connected deployment group.
  /// Structure is documented below.
  late final pulumi.Output<List<InterceptEndpointGroupConnectedDeploymentGroup>>
  connectedDeploymentGroups;

  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The deployment group that this endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> interceptDeploymentGroup;

  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  late final pulumi.Output<String> interceptEndpointGroupId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The cloud location of the endpoint group, currently restricted to `global`.
  late final pulumi.Output<String> location;

  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation (e.g. adding a new association to the group).
  /// See https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;

  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  late final pulumi.Output<String> state;

  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [InterceptEndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterceptEndpointGroup]. {@macro pulumi_networksecurity_intercept_endpoint_group_intercept_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterceptEndpointGroup(
    String name, {
    InterceptEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networksecurity/interceptEndpointGroup:InterceptEndpointGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.associations = registerOutput<List<InterceptEndpointGroupAssociation>>(
      'associations',
    );
    this.connectedDeploymentGroups =
        registerOutput<List<InterceptEndpointGroupConnectedDeploymentGroup>>(
          'connectedDeploymentGroups',
        );
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.interceptDeploymentGroup = registerOutput<String>(
      'interceptDeploymentGroup',
    );
    this.interceptEndpointGroupId = registerOutput<String>(
      'interceptEndpointGroupId',
    );
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
