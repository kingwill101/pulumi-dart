import 'package:pulumi/pulumi.dart';
import '../private_connection_error/private_connection_error.dart';
import '../private_connection_vpc_peering_config/private_connection_vpc_peering_config.dart';
import 'private_connection_args.dart';

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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.databasemigrationservice.PrivateConnection("default", {
/// displayName: "dbms_pc",
/// location: "us-central1",
/// privateConnectionId: "my-connection",
/// labels: {
/// key: "value",
/// },
/// vpcPeeringConfig: {
/// vpcName: googleComputeNetwork["default"].id,
/// subnet: "10.0.0.0/29",
/// },
/// createWithoutValidation: false,
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.databasemigrationservice.PrivateConnection("default",
/// display_name="dbms_pc",
/// location="us-central1",
/// private_connection_id="my-connection",
/// labels={
/// "key": "value",
/// },
/// vpc_peering_config={
/// "vpc_name": google_compute_network["default"]["id"],
/// "subnet": "10.0.0.0/29",
/// },
/// create_without_validation=False)
/// default_network = gcp.compute.Network("default",
/// name="my-network",
/// auto_create_subnetworks=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.DatabaseMigrationService.PrivateConnection("default", new()
/// {
/// DisplayName = "dbms_pc",
/// Location = "us-central1",
/// PrivateConnectionId = "my-connection",
/// Labels =
/// {
/// { "key", "value" },
/// },
/// VpcPeeringConfig = new Gcp.DatabaseMigrationService.Inputs.PrivateConnectionVpcPeeringConfigArgs
/// {
/// VpcName = googleComputeNetwork.Default.Id,
/// Subnet = "10.0.0.0/29",
/// },
/// CreateWithoutValidation = false,
/// });
///
/// var defaultNetwork = new Gcp.Compute.Network("default", new()
/// {
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := databasemigrationservice.NewPrivateConnection(ctx, "default", &databasemigrationservice.PrivateConnectionArgs{
/// DisplayName:         pulumi.String("dbms_pc"),
/// Location:            pulumi.String("us-central1"),
/// PrivateConnectionId: pulumi.String("my-connection"),
/// Labels: pulumi.StringMap{
/// "key": pulumi.String("value"),
/// },
/// VpcPeeringConfig: &databasemigrationservice.PrivateConnectionVpcPeeringConfigArgs{
/// VpcName: pulumi.Any(googleComputeNetwork.Default.Id),
/// Subnet:  pulumi.String("10.0.0.0/29"),
/// },
/// CreateWithoutValidation: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new PrivateConnection("default", PrivateConnectionArgs.builder()
/// .displayName("dbms_pc")
/// .location("us-central1")
/// .privateConnectionId("my-connection")
/// .labels(Map.of("key", "value"))
/// .vpcPeeringConfig(PrivateConnectionVpcPeeringConfigArgs.builder()
/// .vpcName(googleComputeNetwork.default().id())
/// .subnet("10.0.0.0/29")
/// .build())
/// .createWithoutValidation(false)
/// .build());
///
/// var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:databasemigrationservice:PrivateConnection
/// properties:
/// displayName: dbms_pc
/// location: us-central1
/// privateConnectionId: my-connection
/// labels:
/// key: value
/// vpcPeeringConfig:
/// vpcName: ${googleComputeNetwork.default.id}
/// subnet: 10.0.0.0/29
/// createWithoutValidation: false
/// defaultNetwork:
/// type: gcp:compute:Network
/// name: default
/// properties:
/// name: my-network
/// autoCreateSubnetworks: false
/// ```
/// <!--End PulumiCodeChooser -->
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
class PrivateConnection extends CustomResource {
  /// If set to true, will skip validations.
  late final Output<bool?> createWithoutValidation;

  /// Display name.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The PrivateConnection error in case of failure.
  /// Structure is documented below.
  late final Output<List<PrivateConnectionError>> errors;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the location this private connection is located in.
  late final Output<String> location;

  /// The resource's name.
  late final Output<String> name;

  /// The private connectivity identifier.
  late final Output<String> privateConnectionId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// State of the PrivateConnection.
  late final Output<String> state;

  /// The VPC Peering configuration is used to create VPC peering
  /// between databasemigrationservice and the consumer's VPC.
  /// Structure is documented below.
  late final Output<PrivateConnectionVpcPeeringConfig> vpcPeeringConfig;

  PrivateConnection(
    String name, {
    PrivateConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:databasemigrationservice/privateConnection:PrivateConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createWithoutValidation = Output.createUnknown<bool?>();
    this.displayName = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.errors = Output.createUnknown<List<PrivateConnectionError>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.privateConnectionId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.state = Output.createUnknown<String>();
    this.vpcPeeringConfig =
        Output.createUnknown<PrivateConnectionVpcPeeringConfig>();
  }
}
