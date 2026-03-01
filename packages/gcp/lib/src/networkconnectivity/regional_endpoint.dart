import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_endpoint_args.dart';

/// Regional Private Service Connect (PSC) endpoint resource.
///
///
/// To get more information about RegionalEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.regionalEndpoints)
/// * How-to Guides
/// * [Access regional Google APIs through endpoints](https://cloud.google.com/vpc/docs/access-regional-google-apis-endpoints)
///
/// ## Example Usage
///
/// ### Network Connectivity Regional Endpoint Regional Access
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetwork = new gcp.compute.Network("my_network", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const mySubnetwork = new gcp.compute.Subnetwork("my_subnetwork", {
///     name: "my-subnetwork",
///     ipCidrRange: "192.168.0.0/24",
///     region: "us-central1",
///     network: myNetwork.id,
/// });
/// const _default = new gcp.networkconnectivity.RegionalEndpoint("default", {
///     name: "my-rep",
///     location: "us-central1",
///     targetGoogleApi: "storage.us-central1.rep.googleapis.com",
///     accessType: "REGIONAL",
///     address: "192.168.0.5",
///     network: myNetwork.id,
///     subnetwork: mySubnetwork.id,
///     description: "My RegionalEndpoint targeting Google API storage.us-central1.rep.googleapis.com",
///     labels: {
///         env: "default",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network = gcp.compute.Network("my_network",
///     name="my-network",
///     auto_create_subnetworks=False)
/// my_subnetwork = gcp.compute.Subnetwork("my_subnetwork",
///     name="my-subnetwork",
///     ip_cidr_range="192.168.0.0/24",
///     region="us-central1",
///     network=my_network.id)
/// default = gcp.networkconnectivity.RegionalEndpoint("default",
///     name="my-rep",
///     location="us-central1",
///     target_google_api="storage.us-central1.rep.googleapis.com",
///     access_type="REGIONAL",
///     address="192.168.0.5",
///     network=my_network.id,
///     subnetwork=my_subnetwork.id,
///     description="My RegionalEndpoint targeting Google API storage.us-central1.rep.googleapis.com",
///     labels={
///         "env": "default",
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
///     var myNetwork = new Gcp.Compute.Network("my_network", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var mySubnetwork = new Gcp.Compute.Subnetwork("my_subnetwork", new()
///     {
///         Name = "my-subnetwork",
///         IpCidrRange = "192.168.0.0/24",
///         Region = "us-central1",
///         Network = myNetwork.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.RegionalEndpoint("default", new()
///     {
///         Name = "my-rep",
///         Location = "us-central1",
///         TargetGoogleApi = "storage.us-central1.rep.googleapis.com",
///         AccessType = "REGIONAL",
///         Address = "192.168.0.5",
///         Network = myNetwork.Id,
///         Subnetwork = mySubnetwork.Id,
///         Description = "My RegionalEndpoint targeting Google API storage.us-central1.rep.googleapis.com",
///         Labels =
///         {
///             { "env", "default" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myNetwork, err := compute.NewNetwork(ctx, "my_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySubnetwork, err := compute.NewSubnetwork(ctx, "my_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			IpCidrRange: pulumi.String("192.168.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     myNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewRegionalEndpoint(ctx, "default", &networkconnectivity.RegionalEndpointArgs{
/// 			Name:            pulumi.String("my-rep"),
/// 			Location:        pulumi.String("us-central1"),
/// 			TargetGoogleApi: pulumi.String("storage.us-central1.rep.googleapis.com"),
/// 			AccessType:      pulumi.String("REGIONAL"),
/// 			Address:         pulumi.String("192.168.0.5"),
/// 			Network:         myNetwork.ID(),
/// 			Subnetwork:      mySubnetwork.ID(),
/// 			Description:     pulumi.String("My RegionalEndpoint targeting Google API storage.us-central1.rep.googleapis.com"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("default"),
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.RegionalEndpoint;
/// import com.pulumi.gcp.networkconnectivity.RegionalEndpointArgs;
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
///         var myNetwork = new Network("myNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var mySubnetwork = new Subnetwork("mySubnetwork", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .ipCidrRange("192.168.0.0/24")
///             .region("us-central1")
///             .network(myNetwork.id())
///             .build());
///
///         var default_ = new RegionalEndpoint("default", RegionalEndpointArgs.builder()
///             .name("my-rep")
///             .location("us-central1")
///             .targetGoogleApi("storage.us-central1.rep.googleapis.com")
///             .accessType("REGIONAL")
///             .address("192.168.0.5")
///             .network(myNetwork.id())
///             .subnetwork(mySubnetwork.id())
///             .description("My RegionalEndpoint targeting Google API storage.us-central1.rep.googleapis.com")
///             .labels(Map.of("env", "default"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myNetwork:
///     type: gcp:compute:Network
///     name: my_network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   mySubnetwork:
///     type: gcp:compute:Subnetwork
///     name: my_subnetwork
///     properties:
///       name: my-subnetwork
///       ipCidrRange: 192.168.0.0/24
///       region: us-central1
///       network: ${myNetwork.id}
///   default:
///     type: gcp:networkconnectivity:RegionalEndpoint
///     properties:
///       name: my-rep
///       location: us-central1
///       targetGoogleApi: storage.us-central1.rep.googleapis.com
///       accessType: REGIONAL
///       address: 192.168.0.5
///       network: ${myNetwork.id}
///       subnetwork: ${mySubnetwork.id}
///       description: My RegionalEndpoint targeting Google API storage.us-central1.rep.googleapis.com
///       labels:
///         env: default
/// ```
///
/// ### Network Connectivity Regional Endpoint Global Access
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetwork = new gcp.compute.Network("my_network", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const mySubnetwork = new gcp.compute.Subnetwork("my_subnetwork", {
///     name: "my-subnetwork",
///     ipCidrRange: "192.168.0.0/24",
///     region: "us-central1",
///     network: myNetwork.id,
/// });
/// const _default = new gcp.networkconnectivity.RegionalEndpoint("default", {
///     name: "my-rep",
///     location: "us-central1",
///     targetGoogleApi: "storage.us-central1.rep.googleapis.com",
///     accessType: "GLOBAL",
///     address: "192.168.0.4",
///     network: myNetwork.id,
///     subnetwork: mySubnetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network = gcp.compute.Network("my_network",
///     name="my-network",
///     auto_create_subnetworks=False)
/// my_subnetwork = gcp.compute.Subnetwork("my_subnetwork",
///     name="my-subnetwork",
///     ip_cidr_range="192.168.0.0/24",
///     region="us-central1",
///     network=my_network.id)
/// default = gcp.networkconnectivity.RegionalEndpoint("default",
///     name="my-rep",
///     location="us-central1",
///     target_google_api="storage.us-central1.rep.googleapis.com",
///     access_type="GLOBAL",
///     address="192.168.0.4",
///     network=my_network.id,
///     subnetwork=my_subnetwork.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myNetwork = new Gcp.Compute.Network("my_network", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var mySubnetwork = new Gcp.Compute.Subnetwork("my_subnetwork", new()
///     {
///         Name = "my-subnetwork",
///         IpCidrRange = "192.168.0.0/24",
///         Region = "us-central1",
///         Network = myNetwork.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.RegionalEndpoint("default", new()
///     {
///         Name = "my-rep",
///         Location = "us-central1",
///         TargetGoogleApi = "storage.us-central1.rep.googleapis.com",
///         AccessType = "GLOBAL",
///         Address = "192.168.0.4",
///         Network = myNetwork.Id,
///         Subnetwork = mySubnetwork.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myNetwork, err := compute.NewNetwork(ctx, "my_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySubnetwork, err := compute.NewSubnetwork(ctx, "my_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			IpCidrRange: pulumi.String("192.168.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     myNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewRegionalEndpoint(ctx, "default", &networkconnectivity.RegionalEndpointArgs{
/// 			Name:            pulumi.String("my-rep"),
/// 			Location:        pulumi.String("us-central1"),
/// 			TargetGoogleApi: pulumi.String("storage.us-central1.rep.googleapis.com"),
/// 			AccessType:      pulumi.String("GLOBAL"),
/// 			Address:         pulumi.String("192.168.0.4"),
/// 			Network:         myNetwork.ID(),
/// 			Subnetwork:      mySubnetwork.ID(),
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.RegionalEndpoint;
/// import com.pulumi.gcp.networkconnectivity.RegionalEndpointArgs;
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
///         var myNetwork = new Network("myNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var mySubnetwork = new Subnetwork("mySubnetwork", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .ipCidrRange("192.168.0.0/24")
///             .region("us-central1")
///             .network(myNetwork.id())
///             .build());
///
///         var default_ = new RegionalEndpoint("default", RegionalEndpointArgs.builder()
///             .name("my-rep")
///             .location("us-central1")
///             .targetGoogleApi("storage.us-central1.rep.googleapis.com")
///             .accessType("GLOBAL")
///             .address("192.168.0.4")
///             .network(myNetwork.id())
///             .subnetwork(mySubnetwork.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myNetwork:
///     type: gcp:compute:Network
///     name: my_network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   mySubnetwork:
///     type: gcp:compute:Subnetwork
///     name: my_subnetwork
///     properties:
///       name: my-subnetwork
///       ipCidrRange: 192.168.0.0/24
///       region: us-central1
///       network: ${myNetwork.id}
///   default:
///     type: gcp:networkconnectivity:RegionalEndpoint
///     properties:
///       name: my-rep
///       location: us-central1
///       targetGoogleApi: storage.us-central1.rep.googleapis.com
///       accessType: GLOBAL
///       address: 192.168.0.4
///       network: ${myNetwork.id}
///       subnetwork: ${mySubnetwork.id}
/// ```
///
///
/// ## Import
///
/// RegionalEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/regionalEndpoints/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, RegionalEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/regionalEndpoint:RegionalEndpoint default projects/{{project}}/locations/{{location}}/regionalEndpoints/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/regionalEndpoint:RegionalEndpoint default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/regionalEndpoint:RegionalEndpoint default {{location}}/{{name}}
/// ```
class RegionalEndpoint extends pulumi.CustomResource {
  /// The access type of this regional endpoint. This field is reflected in the PSC Forwarding Rule configuration to enable global access.
  /// Possible values are: `GLOBAL`, `REGIONAL`.
  late final pulumi.Output<String> accessType;
  /// The IP Address of the Regional Endpoint. When no address is provided, an IP from the subnetwork is allocated. Use one of the following formats: * IPv4 address as in `10.0.0.1` * Address resource URI as in `projects/{project}/regions/{region}/addresses/{address_name}`
  /// > **Note:** This field accepts both a reference to a Compute Address resource, which is the resource name of which format is given in the description, and IP literal value. If the user chooses to input a reserved address value; they need to make sure that the reserved address is in IPv4 version, its purpose is GCE_ENDPOINT, its type is INTERNAL and its status is RESERVED. If the user chooses to input an IP literal, they need to make sure that it's a valid IPv4 address (x.x.x.x) within the subnetwork.
  late final pulumi.Output<String> address;
  /// Time when the RegionalEndpoint was created.
  late final pulumi.Output<String> createTime;
  /// A description of this resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the RegionalEndpoint.
  late final pulumi.Output<String> location;
  /// The name of the RegionalEndpoint.
  late final pulumi.Output<String> name;
  /// The name of the VPC network for this private regional endpoint. Format: `projects/{project}/global/networks/{network}`
  late final pulumi.Output<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The resource reference of the PSC Forwarding Rule created on behalf of the customer. Format: `//compute.googleapis.com/projects/{project}/regions/{region}/forwardingRules/{forwarding_rule_name}`
  late final pulumi.Output<String> pscForwardingRule;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The name of the subnetwork from which the IP address will be allocated. Format: `projects/{project}/regions/{region}/subnetworks/{subnetwork}`
  late final pulumi.Output<String> subnetwork;
  /// The service endpoint this private regional endpoint connects to. Format: `{apiname}.{region}.rep.googleapis.com` Example: \"cloudkms.us-central1.rep.googleapis.com\".
  late final pulumi.Output<String> targetGoogleApi;
  /// Time when the RegionalEndpoint was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RegionalEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionalEndpoint]. {@macro pulumi_networkconnectivity_regional_endpoint_regional_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionalEndpoint(
    String name, {
    RegionalEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/regionalEndpoint:RegionalEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessType = registerOutput<String>('accessType');
    this.address = registerOutput<String>('address');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pscForwardingRule = registerOutput<String>('pscForwardingRule');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.targetGoogleApi = registerOutput<String>('targetGoogleApi');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
