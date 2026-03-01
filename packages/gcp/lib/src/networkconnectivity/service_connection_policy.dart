import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_connection_policy_args.dart';
import 'service_connection_policy_psc_config.dart';
import 'service_connection_policy_psc_connection.dart';

/// Manage Service Connection Policies.
///
///
/// To get more information about ServiceConnectionPolicy, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.serviceConnectionPolicies)
/// * How-to Guides
/// * [About Service Connection Policies](https://cloud.google.com/vpc/docs/about-service-connection-policies#service-policies)
/// * [About Service Connectivity Automation](https://cloud.google.com/vpc/docs/about-service-connectivity-automation)
///
/// ## Example Usage
///
/// ### Network Connectivity Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producerNet = new gcp.compute.Network("producer_net", {
///     name: "producer-net",
///     autoCreateSubnetworks: false,
/// });
/// const producerSubnet = new gcp.compute.Subnetwork("producer_subnet", {
///     name: "producer-subnet",
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
///     network: producerNet.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "my-network-connectivity-policy",
///     location: "us-central1",
///     serviceClass: "my-basic-service-class",
///     description: "my basic service connection policy",
///     network: producerNet.id,
///     pscConfig: {
///         subnetworks: [producerSubnet.id],
///         limit: "2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer_net = gcp.compute.Network("producer_net",
///     name="producer-net",
///     auto_create_subnetworks=False)
/// producer_subnet = gcp.compute.Subnetwork("producer_subnet",
///     name="producer-subnet",
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1",
///     network=producer_net.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="my-network-connectivity-policy",
///     location="us-central1",
///     service_class="my-basic-service-class",
///     description="my basic service connection policy",
///     network=producer_net.id,
///     psc_config={
///         "subnetworks": [producer_subnet.id],
///         "limit": "2",
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
///     var producerNet = new Gcp.Compute.Network("producer_net", new()
///     {
///         Name = "producer-net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var producerSubnet = new Gcp.Compute.Subnetwork("producer_subnet", new()
///     {
///         Name = "producer-subnet",
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///         Network = producerNet.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "my-network-connectivity-policy",
///         Location = "us-central1",
///         ServiceClass = "my-basic-service-class",
///         Description = "my basic service connection policy",
///         Network = producerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 producerSubnet.Id,
///             },
///             Limit = "2",
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
/// 		producerNet, err := compute.NewNetwork(ctx, "producer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("producer-net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerSubnet, err := compute.NewSubnetwork(ctx, "producer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("producer-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     producerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-network-connectivity-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("my-basic-service-class"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      producerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					producerSubnet.ID(),
/// 				},
/// 				Limit: pulumi.String("2"),
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
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
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
///         var producerNet = new Network("producerNet", NetworkArgs.builder()
///             .name("producer-net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var producerSubnet = new Subnetwork("producerSubnet", SubnetworkArgs.builder()
///             .name("producer-subnet")
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .network(producerNet.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("my-network-connectivity-policy")
///             .location("us-central1")
///             .serviceClass("my-basic-service-class")
///             .description("my basic service connection policy")
///             .network(producerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(producerSubnet.id())
///                 .limit("2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   producerNet:
///     type: gcp:compute:Network
///     name: producer_net
///     properties:
///       name: producer-net
///       autoCreateSubnetworks: false
///   producerSubnet:
///     type: gcp:compute:Subnetwork
///     name: producer_subnet
///     properties:
///       name: producer-subnet
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///       network: ${producerNet.id}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: my-network-connectivity-policy
///       location: us-central1
///       serviceClass: my-basic-service-class
///       description: my basic service connection policy
///       network: ${producerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${producerSubnet.id}
///         limit: 2
/// ```
///
///
/// ## Import
///
/// ServiceConnectionPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/serviceConnectionPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ServiceConnectionPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/serviceConnectionPolicy:ServiceConnectionPolicy default projects/{{project}}/locations/{{location}}/serviceConnectionPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/serviceConnectionPolicy:ServiceConnectionPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/serviceConnectionPolicy:ServiceConnectionPolicy default {{location}}/{{name}}
/// ```
class ServiceConnectionPolicy extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Free-text description of the resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// The type of underlying resources used to create the connection.
  late final pulumi.Output<String> infrastructure;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the ServiceConnectionPolicy.
  late final pulumi.Output<String> location;
  /// The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  late final pulumi.Output<String> name;
  /// The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  late final pulumi.Output<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  /// Structure is documented below.
  late final pulumi.Output<ServiceConnectionPolicyPscConfig?> pscConfig;
  /// Information about each Private Service Connect connection.
  /// Structure is documented below.
  late final pulumi.Output<List<ServiceConnectionPolicyPscConnection>> pscConnections;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.
  /// It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  late final pulumi.Output<String> serviceClass;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ServiceConnectionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceConnectionPolicy]. {@macro pulumi_networkconnectivity_service_connection_policy_service_connection_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceConnectionPolicy(
    String name, {
    ServiceConnectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/serviceConnectionPolicy:ServiceConnectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.infrastructure = registerOutput<String>('infrastructure');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pscConfig = registerOutput<ServiceConnectionPolicyPscConfig?>('pscConfig');
    this.pscConnections = registerOutput<List<ServiceConnectionPolicyPscConnection>>('pscConnections');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceClass = registerOutput<String>('serviceClass');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
