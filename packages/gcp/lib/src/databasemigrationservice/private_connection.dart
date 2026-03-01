import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_connection_args.dart';
import 'private_connection_error.dart';
import 'private_connection_vpc_peering_config.dart';

/// The PrivateConnection resource is used to establish private connectivity between Database Migration Service and a customer's network.
///
///
/// To get more information about PrivateConnection, see:
///
/// * [API documentation](https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.privateConnections)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/database-migration/docs/oracle-to-postgresql/create-private-connectivity-configuration)
///
/// ## Example Usage
///
/// ### Database Migration Service Private Connection
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.databasemigrationservice.PrivateConnection("default", {
///     displayName: "dbms_pc",
///     location: "us-central1",
///     privateConnectionId: "my-connection",
///     labels: {
///         key: "value",
///     },
///     vpcPeeringConfig: {
///         vpcName: googleComputeNetwork["default"].id,
///         subnet: "10.0.0.0/29",
///     },
///     createWithoutValidation: false,
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.databasemigrationservice.PrivateConnection("default",
///     display_name="dbms_pc",
///     location="us-central1",
///     private_connection_id="my-connection",
///     labels={
///         "key": "value",
///     },
///     vpc_peering_config={
///         "vpc_name": google_compute_network["default"]["id"],
///         "subnet": "10.0.0.0/29",
///     },
///     create_without_validation=False)
/// default_network = gcp.compute.Network("default",
///     name="my-network",
///     auto_create_subnetworks=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.DatabaseMigrationService.PrivateConnection("default", new()
///     {
///         DisplayName = "dbms_pc",
///         Location = "us-central1",
///         PrivateConnectionId = "my-connection",
///         Labels =
///         {
///             { "key", "value" },
///         },
///         VpcPeeringConfig = new Gcp.DatabaseMigrationService.Inputs.PrivateConnectionVpcPeeringConfigArgs
///         {
///             VpcName = googleComputeNetwork.Default.Id,
///             Subnet = "10.0.0.0/29",
///         },
///         CreateWithoutValidation = false,
///     });
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databasemigrationservice.NewPrivateConnection(ctx, "default", &databasemigrationservice.PrivateConnectionArgs{
/// 			DisplayName:         pulumi.String("dbms_pc"),
/// 			Location:            pulumi.String("us-central1"),
/// 			PrivateConnectionId: pulumi.String("my-connection"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			VpcPeeringConfig: &databasemigrationservice.PrivateConnectionVpcPeeringConfigArgs{
/// 				VpcName: pulumi.Any(googleComputeNetwork.Default.Id),
/// 				Subnet:  pulumi.String("10.0.0.0/29"),
/// 			},
/// 			CreateWithoutValidation: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
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
/// import com.pulumi.gcp.databasemigrationservice.PrivateConnection;
/// import com.pulumi.gcp.databasemigrationservice.PrivateConnectionArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.PrivateConnectionVpcPeeringConfigArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
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
///         var default_ = new PrivateConnection("default", PrivateConnectionArgs.builder()
///             .displayName("dbms_pc")
///             .location("us-central1")
///             .privateConnectionId("my-connection")
///             .labels(Map.of("key", "value"))
///             .vpcPeeringConfig(PrivateConnectionVpcPeeringConfigArgs.builder()
///                 .vpcName(googleComputeNetwork.default().id())
///                 .subnet("10.0.0.0/29")
///                 .build())
///             .createWithoutValidation(false)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:databasemigrationservice:PrivateConnection
///     properties:
///       displayName: dbms_pc
///       location: us-central1
///       privateConnectionId: my-connection
///       labels:
///         key: value
///       vpcPeeringConfig:
///         vpcName: ${googleComputeNetwork.default.id}
///         subnet: 10.0.0.0/29
///       createWithoutValidation: false
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// ```
///
///
/// ## Import
///
/// PrivateConnection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/privateConnections/{{private_connection_id}}`
///
/// * `{{project}}/{{location}}/{{private_connection_id}}`
///
/// * `{{location}}/{{private_connection_id}}`
///
/// When using the `pulumi import` command, PrivateConnection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/privateConnection:PrivateConnection default projects/{{project}}/locations/{{location}}/privateConnections/{{private_connection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/privateConnection:PrivateConnection default {{project}}/{{location}}/{{private_connection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/privateConnection:PrivateConnection default {{location}}/{{private_connection_id}}
/// ```
class PrivateConnection extends pulumi.CustomResource {
  /// If set to true, will skip validations.
  late final pulumi.Output<bool?> createWithoutValidation;

  /// Display name.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The PrivateConnection error in case of failure.
  /// Structure is documented below.
  late final pulumi.Output<List<PrivateConnectionError>> errors;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The name of the location this private connection is located in.
  late final pulumi.Output<String> location;

  /// The resource's name.
  late final pulumi.Output<String> name;

  /// The private connectivity identifier.
  late final pulumi.Output<String> privateConnectionId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// State of the PrivateConnection.
  late final pulumi.Output<String> state;

  /// The VPC Peering configuration is used to create VPC peering
  /// between databasemigrationservice and the consumer's VPC.
  /// Structure is documented below.
  late final pulumi.Output<PrivateConnectionVpcPeeringConfig> vpcPeeringConfig;

  /// Creates a new [PrivateConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateConnection]. {@macro pulumi_databasemigrationservice_private_connection_private_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateConnection(
    String name, {
    PrivateConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:databasemigrationservice/privateConnection:PrivateConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createWithoutValidation = registerOutput<bool?>(
      'createWithoutValidation',
    );
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.errors = registerOutput<List<PrivateConnectionError>>('errors');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateConnectionId = registerOutput<String>('privateConnectionId');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.vpcPeeringConfig = registerOutput<PrivateConnectionVpcPeeringConfig>(
      'vpcPeeringConfig',
    );
  }
}
