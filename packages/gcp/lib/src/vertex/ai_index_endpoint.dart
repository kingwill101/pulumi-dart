import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_endpoint_args.dart';
import 'ai_index_endpoint_encryption_spec.dart';
import 'ai_index_endpoint_private_service_connect_config.dart';

/// An endpoint indexes are deployed into. An index endpoint can have multiple deployed indexes.
///
///
/// To get more information about IndexEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints/)
///
/// ## Example Usage
///
/// ### Vertex Ai Index Endpoint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vertexNetwork = new gcp.compute.Network("vertex_network", {name: "network-name"});
/// const vertexRange = new gcp.compute.GlobalAddress("vertex_range", {
///     name: "address-name",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 24,
///     network: vertexNetwork.id,
/// });
/// const vertexVpcConnection = new gcp.servicenetworking.Connection("vertex_vpc_connection", {
///     network: vertexNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [vertexRange.name],
/// });
/// const project = gcp.organizations.getProject({});
/// const indexEndpoint = new gcp.vertex.AiIndexEndpoint("index_endpoint", {
///     displayName: "sample-endpoint",
///     description: "A sample vertex endpoint",
///     region: "us-central1",
///     labels: {
///         "label-one": "value-one",
///     },
///     network: pulumi.all([project, vertexNetwork.name]).apply(([project, name]) => `projects/${project.number}/global/networks/${name}`),
/// }, {
///     dependsOn: [vertexVpcConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vertex_network = gcp.compute.Network("vertex_network", name="network-name")
/// vertex_range = gcp.compute.GlobalAddress("vertex_range",
///     name="address-name",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=24,
///     network=vertex_network.id)
/// vertex_vpc_connection = gcp.servicenetworking.Connection("vertex_vpc_connection",
///     network=vertex_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[vertex_range.name])
/// project = gcp.organizations.get_project()
/// index_endpoint = gcp.vertex.AiIndexEndpoint("index_endpoint",
///     display_name="sample-endpoint",
///     description="A sample vertex endpoint",
///     region="us-central1",
///     labels={
///         "label-one": "value-one",
///     },
///     network=vertex_network.name.apply(lambda name: f"projects/{project.number}/global/networks/{name}"),
///     opts = pulumi.ResourceOptions(depends_on=[vertex_vpc_connection]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vertexNetwork = new Gcp.Compute.Network("vertex_network", new()
///     {
///         Name = "network-name",
///     });
///
///     var vertexRange = new Gcp.Compute.GlobalAddress("vertex_range", new()
///     {
///         Name = "address-name",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 24,
///         Network = vertexNetwork.Id,
///     });
///
///     var vertexVpcConnection = new Gcp.ServiceNetworking.Connection("vertex_vpc_connection", new()
///     {
///         Network = vertexNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             vertexRange.Name,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var indexEndpoint = new Gcp.Vertex.AiIndexEndpoint("index_endpoint", new()
///     {
///         DisplayName = "sample-endpoint",
///         Description = "A sample vertex endpoint",
///         Region = "us-central1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Network = Output.Tuple(project, vertexNetwork.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/global/networks/{name}";
///         }),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vertexVpcConnection,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vertexNetwork, err := compute.NewNetwork(ctx, "vertex_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("network-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexRange, err := compute.NewGlobalAddress(ctx, "vertex_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("address-name"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(24),
/// 			Network:      vertexNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexVpcConnection, err := servicenetworking.NewConnection(ctx, "vertex_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: vertexNetwork.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				vertexRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiIndexEndpoint(ctx, "index_endpoint", &vertex.AiIndexEndpointArgs{
/// 			DisplayName: pulumi.String("sample-endpoint"),
/// 			Description: pulumi.String("A sample vertex endpoint"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Network: vertexNetwork.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/global/networks/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vertexVpcConnection,
/// 		}))
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiIndexEndpoint;
/// import com.pulumi.gcp.vertex.AiIndexEndpointArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var vertexNetwork = new Network("vertexNetwork", NetworkArgs.builder()
///             .name("network-name")
///             .build());
///
///         var vertexRange = new GlobalAddress("vertexRange", GlobalAddressArgs.builder()
///             .name("address-name")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(24)
///             .network(vertexNetwork.id())
///             .build());
///
///         var vertexVpcConnection = new Connection("vertexVpcConnection", ConnectionArgs.builder()
///             .network(vertexNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(vertexRange.name())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var indexEndpoint = new AiIndexEndpoint("indexEndpoint", AiIndexEndpointArgs.builder()
///             .displayName("sample-endpoint")
///             .description("A sample vertex endpoint")
///             .region("us-central1")
///             .labels(Map.of("label-one", "value-one"))
///             .network(vertexNetwork.name().applyValue(_name -> String.format("projects/%s/global/networks/%s", project.number(),_name)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vertexVpcConnection)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   indexEndpoint:
///     type: gcp:vertex:AiIndexEndpoint
///     name: index_endpoint
///     properties:
///       displayName: sample-endpoint
///       description: A sample vertex endpoint
///       region: us-central1
///       labels:
///         label-one: value-one
///       network: projects/${project.number}/global/networks/${vertexNetwork.name}
///     options:
///       dependsOn:
///         - ${vertexVpcConnection}
///   vertexVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vertex_vpc_connection
///     properties:
///       network: ${vertexNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${vertexRange.name}
///   vertexRange:
///     type: gcp:compute:GlobalAddress
///     name: vertex_range
///     properties:
///       name: address-name
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 24
///       network: ${vertexNetwork.id}
///   vertexNetwork:
///     type: gcp:compute:Network
///     name: vertex_network
///     properties:
///       name: network-name
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Index Endpoint With Psc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const indexEndpoint = new gcp.vertex.AiIndexEndpoint("index_endpoint", {
///     displayName: "sample-endpoint",
///     description: "A sample vertex endpoint",
///     region: "us-central1",
///     labels: {
///         "label-one": "value-one",
///     },
///     privateServiceConnectConfig: {
///         enablePrivateServiceConnect: true,
///         projectAllowlists: [project.then(project => project.name)],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// index_endpoint = gcp.vertex.AiIndexEndpoint("index_endpoint",
///     display_name="sample-endpoint",
///     description="A sample vertex endpoint",
///     region="us-central1",
///     labels={
///         "label-one": "value-one",
///     },
///     private_service_connect_config={
///         "enable_private_service_connect": True,
///         "project_allowlists": [project.name],
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var indexEndpoint = new Gcp.Vertex.AiIndexEndpoint("index_endpoint", new()
///     {
///         DisplayName = "sample-endpoint",
///         Description = "A sample vertex endpoint",
///         Region = "us-central1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         PrivateServiceConnectConfig = new Gcp.Vertex.Inputs.AiIndexEndpointPrivateServiceConnectConfigArgs
///         {
///             EnablePrivateServiceConnect = true,
///             ProjectAllowlists = new[]
///             {
///                 project.Apply(getProjectResult => getProjectResult.Name),
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiIndexEndpoint(ctx, "index_endpoint", &vertex.AiIndexEndpointArgs{
/// 			DisplayName: pulumi.String("sample-endpoint"),
/// 			Description: pulumi.String("A sample vertex endpoint"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			PrivateServiceConnectConfig: &vertex.AiIndexEndpointPrivateServiceConnectConfigArgs{
/// 				EnablePrivateServiceConnect: pulumi.Bool(true),
/// 				ProjectAllowlists: pulumi.StringArray{
/// 					pulumi.String(project.Name),
/// 				},
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiIndexEndpoint;
/// import com.pulumi.gcp.vertex.AiIndexEndpointArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexEndpointPrivateServiceConnectConfigArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var indexEndpoint = new AiIndexEndpoint("indexEndpoint", AiIndexEndpointArgs.builder()
///             .displayName("sample-endpoint")
///             .description("A sample vertex endpoint")
///             .region("us-central1")
///             .labels(Map.of("label-one", "value-one"))
///             .privateServiceConnectConfig(AiIndexEndpointPrivateServiceConnectConfigArgs.builder()
///                 .enablePrivateServiceConnect(true)
///                 .projectAllowlists(project.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   indexEndpoint:
///     type: gcp:vertex:AiIndexEndpoint
///     name: index_endpoint
///     properties:
///       displayName: sample-endpoint
///       description: A sample vertex endpoint
///       region: us-central1
///       labels:
///         label-one: value-one
///       privateServiceConnectConfig:
///         enablePrivateServiceConnect: true
///         projectAllowlists:
///           - ${project.name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Index Endpoint With Public Endpoint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const indexEndpoint = new gcp.vertex.AiIndexEndpoint("index_endpoint", {
///     displayName: "sample-endpoint",
///     description: "A sample vertex endpoint with an public endpoint",
///     region: "us-central1",
///     labels: {
///         "label-one": "value-one",
///     },
///     publicEndpointEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// index_endpoint = gcp.vertex.AiIndexEndpoint("index_endpoint",
///     display_name="sample-endpoint",
///     description="A sample vertex endpoint with an public endpoint",
///     region="us-central1",
///     labels={
///         "label-one": "value-one",
///     },
///     public_endpoint_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var indexEndpoint = new Gcp.Vertex.AiIndexEndpoint("index_endpoint", new()
///     {
///         DisplayName = "sample-endpoint",
///         Description = "A sample vertex endpoint with an public endpoint",
///         Region = "us-central1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         PublicEndpointEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiIndexEndpoint(ctx, "index_endpoint", &vertex.AiIndexEndpointArgs{
/// 			DisplayName: pulumi.String("sample-endpoint"),
/// 			Description: pulumi.String("A sample vertex endpoint with an public endpoint"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			PublicEndpointEnabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.vertex.AiIndexEndpoint;
/// import com.pulumi.gcp.vertex.AiIndexEndpointArgs;
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
///         var indexEndpoint = new AiIndexEndpoint("indexEndpoint", AiIndexEndpointArgs.builder()
///             .displayName("sample-endpoint")
///             .description("A sample vertex endpoint with an public endpoint")
///             .region("us-central1")
///             .labels(Map.of("label-one", "value-one"))
///             .publicEndpointEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   indexEndpoint:
///     type: gcp:vertex:AiIndexEndpoint
///     name: index_endpoint
///     properties:
///       displayName: sample-endpoint
///       description: A sample vertex endpoint with an public endpoint
///       region: us-central1
///       labels:
///         label-one: value-one
///       publicEndpointEnabled: true
/// ```
///
///
/// ## Import
///
/// IndexEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/indexEndpoints/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, IndexEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpoint:AiIndexEndpoint default projects/{{project}}/locations/{{region}}/indexEndpoints/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpoint:AiIndexEndpoint default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpoint:AiIndexEndpoint default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpoint:AiIndexEndpoint default {{name}}
/// ```
class AiIndexEndpoint extends pulumi.CustomResource {
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// The description of the Index.
  late final pulumi.Output<String?> description;
  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiIndexEndpointEncryptionSpec?> encryptionSpec;
  /// Used to perform consistent read-modify-write updates.
  late final pulumi.Output<String> etag;
  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The resource name of the Index.
  late final pulumi.Output<String> name;
  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
  /// Private services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.
  /// [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`.
  /// Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  late final pulumi.Output<String?> network;
  /// Optional. Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  late final pulumi.Output<AiIndexEndpointPrivateServiceConnectConfig> privateServiceConnectConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// If publicEndpointEnabled is true, this field will be populated with the domain name to use for this index endpoint.
  late final pulumi.Output<String> publicEndpointDomainName;
  /// If true, the deployed index will be accessible through public endpoint.
  late final pulumi.Output<bool?> publicEndpointEnabled;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the index endpoint. eg us-central1
  late final pulumi.Output<String?> region;
  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiIndexEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiIndexEndpoint]. {@macro pulumi_vertex_ai_index_endpoint_ai_index_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiIndexEndpoint(
    String name, {
    AiIndexEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiIndexEndpoint:AiIndexEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionSpec = registerOutput<AiIndexEndpointEncryptionSpec?>('encryptionSpec');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.privateServiceConnectConfig = registerOutput<AiIndexEndpointPrivateServiceConnectConfig>('privateServiceConnectConfig');
    this.project = registerOutput<String>('project');
    this.publicEndpointDomainName = registerOutput<String>('publicEndpointDomainName');
    this.publicEndpointEnabled = registerOutput<bool?>('publicEndpointEnabled');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
