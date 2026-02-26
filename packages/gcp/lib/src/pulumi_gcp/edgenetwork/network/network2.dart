import 'package:pulumi/pulumi.dart';
import 'network_args2.dart';

/// A Distributed Cloud Edge network, which provides L3 isolation within a zone.
///
///
/// To get more information about Network, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/network/rest/v1/projects.locations.zones.networks)
/// * How-to Guides
/// * [Create and manage networks](https://cloud.google.com/distributed-cloud/edge/latest/docs/networks#api)
///
/// ## Example Usage
///
/// ### Edgenetwork Network
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleNetwork = new gcp.edgenetwork.Network("example_network", {
/// networkId: "example-network",
/// location: "us-west1",
/// zone: "",
/// description: "Example network.",
/// mtu: 9000,
/// labels: {
/// environment: "dev",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_network = gcp.edgenetwork.Network("example_network",
/// network_id="example-network",
/// location="us-west1",
/// zone="",
/// description="Example network.",
/// mtu=9000,
/// labels={
/// "environment": "dev",
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
/// var exampleNetwork = new Gcp.EdgeNetwork.Network("example_network", new()
/// {
/// NetworkId = "example-network",
/// Location = "us-west1",
/// Zone = "",
/// Description = "Example network.",
/// Mtu = 9000,
/// Labels =
/// {
/// { "environment", "dev" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/edgenetwork"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := edgenetwork.NewNetwork(ctx, "example_network", &edgenetwork.NetworkArgs{
/// NetworkId:   pulumi.String("example-network"),
/// Location:    pulumi.String("us-west1"),
/// Zone:        pulumi.String(""),
/// Description: pulumi.String("Example network."),
/// Mtu:         pulumi.Int(9000),
/// Labels: pulumi.StringMap{
/// "environment": pulumi.String("dev"),
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
/// import com.pulumi.gcp.edgenetwork.Network;
/// import com.pulumi.gcp.edgenetwork.NetworkArgs;
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
/// var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
/// .networkId("example-network")
/// .location("us-west1")
/// .zone("")
/// .description("Example network.")
/// .mtu(9000)
/// .labels(Map.of("environment", "dev"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleNetwork:
/// type: gcp:edgenetwork:Network
/// name: example_network
/// properties:
/// networkId: example-network
/// location: us-west1
/// zone: ""
/// description: Example network.
/// mtu: 9000
/// labels:
/// environment: dev
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Network can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
///
/// * `{{project}}/{{location}}/{{zone}}/{{network_id}}`
///
/// * `{{location}}/{{zone}}/{{network_id}}`
///
/// * `{{location}}/{{network_id}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Network can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/network:Network default projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/network:Network default {{project}}/{{location}}/{{zone}}/{{network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/network:Network default {{location}}/{{zone}}/{{network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/network:Network default {{location}}/{{network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/network:Network default {{name}}
/// ```
class Network2 extends CustomResource {
  /// The time when the subnet was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  late final Output<String> location;

  /// IP (L3) MTU value of the network. Default value is <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span>. Possible values are: <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span>, <span pulumi-lang-nodejs="`9000`" pulumi-lang-dotnet="`9000`" pulumi-lang-go="`9000`" pulumi-lang-python="`9000`" pulumi-lang-yaml="`9000`" pulumi-lang-java="`9000`">`9000`</span>.
  late final Output<int?> mtu;

  /// The canonical name of this resource, with format
  /// `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  late final Output<String> name;

  /// A unique ID that identifies this network.
  late final Output<String> networkId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The time when the subnet was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final Output<String> updateTime;

  /// The name of the target Distributed Cloud Edge zone.
  late final Output<String> zone;

  Network2(
    String name, {
    NetworkArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:edgenetwork/network:Network',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    this.networkId = registerOutput<String>('networkId');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
    this.zone = registerOutput<String>('zone');
  }
}
