import 'package:pulumi/pulumi.dart';
import '../destination_endpoint/destination_endpoint.dart';
import '../destination_state_timeline/destination_state_timeline.dart';
import 'destination_args.dart';

/// 'Manage Multicloud Data Transfer Destinations'
///
///
/// To get more information about Destination, see:
///
/// * [API documentation](https://docs.cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.multicloudDataTransferConfigs.destinations)
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://docs.cloud.google.com/data-transfer-essentials/docs/create-resources)
///
/// ## Example Usage
///
/// ### Network Connectivity Destination Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const config = new gcp.networkconnectivity.MulticloudDataTransferConfig("config", {
/// name: "basic-config",
/// location: "europe-west4",
/// description: "A basic multicloud data transfer config for the destination example",
/// });
/// const example = new gcp.networkconnectivity.Destination("example", {
/// name: "basic-destination",
/// location: "europe-west4",
/// multicloudDataTransferConfig: config.name,
/// description: "A basic destination",
/// labels: {
/// foo: "bar",
/// },
/// ipPrefix: "10.0.0.0/8",
/// endpoints: [{
/// asn: "14618",
/// csp: "AWS",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// config = gcp.networkconnectivity.MulticloudDataTransferConfig("config",
/// name="basic-config",
/// location="europe-west4",
/// description="A basic multicloud data transfer config for the destination example")
/// example = gcp.networkconnectivity.Destination("example",
/// name="basic-destination",
/// location="europe-west4",
/// multicloud_data_transfer_config=config.name,
/// description="A basic destination",
/// labels={
/// "foo": "bar",
/// },
/// ip_prefix="10.0.0.0/8",
/// endpoints=[{
/// "asn": "14618",
/// "csp": "AWS",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Gcp.NetworkConnectivity.MulticloudDataTransferConfig("config", new()
/// {
/// Name = "basic-config",
/// Location = "europe-west4",
/// Description = "A basic multicloud data transfer config for the destination example",
/// });
///
/// var example = new Gcp.NetworkConnectivity.Destination("example", new()
/// {
/// Name = "basic-destination",
/// Location = "europe-west4",
/// MulticloudDataTransferConfig = config.Name,
/// Description = "A basic destination",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// IpPrefix = "10.0.0.0/8",
/// Endpoints = new[]
/// {
/// new Gcp.NetworkConnectivity.Inputs.DestinationEndpointArgs
/// {
/// Asn = "14618",
/// Csp = "AWS",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// config, err := networkconnectivity.NewMulticloudDataTransferConfig(ctx, "config", &networkconnectivity.MulticloudDataTransferConfigArgs{
/// Name:        pulumi.String("basic-config"),
/// Location:    pulumi.String("europe-west4"),
/// Description: pulumi.String("A basic multicloud data transfer config for the destination example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkconnectivity.NewDestination(ctx, "example", &networkconnectivity.DestinationArgs{
/// Name:                         pulumi.String("basic-destination"),
/// Location:                     pulumi.String("europe-west4"),
/// MulticloudDataTransferConfig: config.Name,
/// Description:                  pulumi.String("A basic destination"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// IpPrefix: pulumi.String("10.0.0.0/8"),
/// Endpoints: networkconnectivity.DestinationEndpointArray{
/// &networkconnectivity.DestinationEndpointArgs{
/// Asn: pulumi.String("14618"),
/// Csp: pulumi.String("AWS"),
/// },
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
/// import com.pulumi.gcp.networkconnectivity.MulticloudDataTransferConfig;
/// import com.pulumi.gcp.networkconnectivity.MulticloudDataTransferConfigArgs;
/// import com.pulumi.gcp.networkconnectivity.Destination;
/// import com.pulumi.gcp.networkconnectivity.DestinationArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.DestinationEndpointArgs;
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
/// var config = new MulticloudDataTransferConfig("config", MulticloudDataTransferConfigArgs.builder()
/// .name("basic-config")
/// .location("europe-west4")
/// .description("A basic multicloud data transfer config for the destination example")
/// .build());
///
/// var example = new Destination("example", DestinationArgs.builder()
/// .name("basic-destination")
/// .location("europe-west4")
/// .multicloudDataTransferConfig(config.name())
/// .description("A basic destination")
/// .labels(Map.of("foo", "bar"))
/// .ipPrefix("10.0.0.0/8")
/// .endpoints(DestinationEndpointArgs.builder()
/// .asn("14618")
/// .csp("AWS")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// config:
/// type: gcp:networkconnectivity:MulticloudDataTransferConfig
/// properties:
/// name: basic-config
/// location: europe-west4
/// description: A basic multicloud data transfer config for the destination example
/// example:
/// type: gcp:networkconnectivity:Destination
/// properties:
/// name: basic-destination
/// location: europe-west4
/// multicloudDataTransferConfig: ${config.name}
/// description: A basic destination
/// labels:
/// foo: bar
/// ipPrefix: 10.0.0.0/8
/// endpoints:
/// - asn: '14618'
/// csp: AWS
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Destination can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicloudDataTransferConfigs/{{multicloud_data_transfer_config}}/destinations/{{name}}`
///
/// * `{{project}}/{{location}}/{{multicloud_data_transfer_config}}/{{name}}`
///
/// * `{{location}}/{{multicloud_data_transfer_config}}/{{name}}`
///
/// When using the `pulumi import` command, Destination can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/destination:Destination default projects/{{project}}/locations/{{location}}/multicloudDataTransferConfigs/{{multicloud_data_transfer_config}}/destinations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/destination:Destination default {{project}}/{{location}}/{{multicloud_data_transfer_config}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/destination:Destination default {{location}}/{{multicloud_data_transfer_config}}/{{name}}
/// ```
class Destination extends CustomResource {
  /// Time when the `Destination` resource was created.
  late final Output<String> createTime;

  /// A description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The list of DestinationEndpoint resources configured for the IP prefix.
  /// Structure is documented below.
  late final Output<List<DestinationEndpoint>> endpoints;

  /// The etag is computed by the server, and might be sent with update and
  /// delete requests so that the client has an up-to-date value before
  /// proceeding.
  late final Output<String> etag;

  /// The IP prefix that represents your workload on another CSP.
  late final Output<String> ipPrefix;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the destination.
  late final Output<String> location;

  /// The multicloud data transfer config of the destination.
  late final Output<String> multicloudDataTransferConfig;

  /// The name of the destination.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The timeline of the expected `Destination` states or the current rest
  /// state. If a state change is expected, the value is `ADDING`,
  /// `DELETING` or `SUSPENDING`, depending on the action specified.
  /// Structure is documented below.
  late final Output<List<DestinationStateTimeline>> stateTimelines;

  /// The Google-generated unique ID for the `Destination` resource.
  /// This value is unique across all `Destination` resources.
  /// If a resource is deleted and another with the same name is
  /// created, the new resource is assigned a different and unique ID.
  late final Output<String> uid;

  /// Time when the `Destination` resource was updated.
  late final Output<String> updateTime;

  Destination(
    String name, {
    DestinationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/destination:Destination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.endpoints = registerOutput<List<DestinationEndpoint>>('endpoints');
    this.etag = registerOutput<String>('etag');
    this.ipPrefix = registerOutput<String>('ipPrefix');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.multicloudDataTransferConfig =
        registerOutput<String>('multicloudDataTransferConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.stateTimelines =
        registerOutput<List<DestinationStateTimeline>>('stateTimelines');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
