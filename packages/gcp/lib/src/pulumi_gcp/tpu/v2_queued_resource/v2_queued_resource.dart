import 'package:pulumi/pulumi.dart';
import '../v2_queued_resource_tpu/v2_queued_resource_tpu.dart';
import 'v2_queued_resource_args.dart';

/// A Cloud TPU Queued Resource.
///
/// To get more information about QueuedResource, see:
///
/// * [API documentation](https://cloud.google.com/tpu/docs/reference/rest/v2/projects.locations.queuedResources)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/tpu/docs/)
///
/// ## Example Usage
///
/// ### Tpu V2 Queued Resource Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qr = new gcp.tpu.V2QueuedResource("qr", {
/// name: "test-qr",
/// zone: "us-central1-c",
/// project: "my-project-name",
/// tpu: {
/// nodeSpecs: [{
/// parent: "projects/my-project-name/locations/us-central1-c",
/// nodeId: "test-tpu",
/// node: {
/// runtimeVersion: "tpu-vm-tf-2.13.0",
/// acceleratorType: "v2-8",
/// description: "Text description of the TPU.",
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qr = gcp.tpu.V2QueuedResource("qr",
/// name="test-qr",
/// zone="us-central1-c",
/// project="my-project-name",
/// tpu={
/// "node_specs": [{
/// "parent": "projects/my-project-name/locations/us-central1-c",
/// "node_id": "test-tpu",
/// "node": {
/// "runtime_version": "tpu-vm-tf-2.13.0",
/// "accelerator_type": "v2-8",
/// "description": "Text description of the TPU.",
/// },
/// }],
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
/// var qr = new Gcp.Tpu.V2QueuedResource("qr", new()
/// {
/// Name = "test-qr",
/// Zone = "us-central1-c",
/// Project = "my-project-name",
/// Tpu = new Gcp.Tpu.Inputs.V2QueuedResourceTpuArgs
/// {
/// NodeSpecs = new[]
/// {
/// new Gcp.Tpu.Inputs.V2QueuedResourceTpuNodeSpecArgs
/// {
/// Parent = "projects/my-project-name/locations/us-central1-c",
/// NodeId = "test-tpu",
/// Node = new Gcp.Tpu.Inputs.V2QueuedResourceTpuNodeSpecNodeArgs
/// {
/// RuntimeVersion = "tpu-vm-tf-2.13.0",
/// AcceleratorType = "v2-8",
/// Description = "Text description of the TPU.",
/// },
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tpu"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := tpu.NewV2QueuedResource(ctx, "qr", &tpu.V2QueuedResourceArgs{
/// Name:    pulumi.String("test-qr"),
/// Zone:    pulumi.String("us-central1-c"),
/// Project: pulumi.String("my-project-name"),
/// Tpu: &tpu.V2QueuedResourceTpuArgs{
/// NodeSpecs: tpu.V2QueuedResourceTpuNodeSpecArray{
/// &tpu.V2QueuedResourceTpuNodeSpecArgs{
/// Parent: pulumi.String("projects/my-project-name/locations/us-central1-c"),
/// NodeId: pulumi.String("test-tpu"),
/// Node: &tpu.V2QueuedResourceTpuNodeSpecNodeArgs{
/// RuntimeVersion:  pulumi.String("tpu-vm-tf-2.13.0"),
/// AcceleratorType: pulumi.String("v2-8"),
/// Description:     pulumi.String("Text description of the TPU."),
/// },
/// },
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
/// import com.pulumi.gcp.tpu.V2QueuedResource;
/// import com.pulumi.gcp.tpu.V2QueuedResourceArgs;
/// import com.pulumi.gcp.tpu.inputs.V2QueuedResourceTpuArgs;
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
/// var qr = new V2QueuedResource("qr", V2QueuedResourceArgs.builder()
/// .name("test-qr")
/// .zone("us-central1-c")
/// .project("my-project-name")
/// .tpu(V2QueuedResourceTpuArgs.builder()
/// .nodeSpecs(V2QueuedResourceTpuNodeSpecArgs.builder()
/// .parent("projects/my-project-name/locations/us-central1-c")
/// .nodeId("test-tpu")
/// .node(V2QueuedResourceTpuNodeSpecNodeArgs.builder()
/// .runtimeVersion("tpu-vm-tf-2.13.0")
/// .acceleratorType("v2-8")
/// .description("Text description of the TPU.")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// qr:
/// type: gcp:tpu:V2QueuedResource
/// properties:
/// name: test-qr
/// zone: us-central1-c
/// project: my-project-name
/// tpu:
/// nodeSpecs:
/// - parent: projects/my-project-name/locations/us-central1-c
/// nodeId: test-tpu
/// node:
/// runtimeVersion: tpu-vm-tf-2.13.0
/// acceleratorType: v2-8
/// description: Text description of the TPU.
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Tpu V2 Queued Resource Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
/// name: "tpu-net",
/// autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
/// name: "tpu-subnet",
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// network: network.id,
/// });
/// const qr = new gcp.tpu.V2QueuedResource("qr", {
/// name: "test-qr",
/// zone: "us-central1-c",
/// project: "my-project-name",
/// tpu: {
/// nodeSpecs: [{
/// parent: "projects/my-project-name/locations/us-central1-c",
/// nodeId: "test-tpu",
/// node: {
/// runtimeVersion: "tpu-vm-tf-2.13.0",
/// acceleratorType: "v2-8",
/// description: "Text description of the TPU.",
/// networkConfig: {
/// canIpForward: true,
/// enableExternalIps: true,
/// network: network.id,
/// subnetwork: subnet.id,
/// queueCount: 32,
/// },
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
/// name="tpu-net",
/// auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
/// name="tpu-subnet",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// network=network.id)
/// qr = gcp.tpu.V2QueuedResource("qr",
/// name="test-qr",
/// zone="us-central1-c",
/// project="my-project-name",
/// tpu={
/// "node_specs": [{
/// "parent": "projects/my-project-name/locations/us-central1-c",
/// "node_id": "test-tpu",
/// "node": {
/// "runtime_version": "tpu-vm-tf-2.13.0",
/// "accelerator_type": "v2-8",
/// "description": "Text description of the TPU.",
/// "network_config": {
/// "can_ip_forward": True,
/// "enable_external_ips": True,
/// "network": network.id,
/// "subnetwork": subnet.id,
/// "queue_count": 32,
/// },
/// },
/// }],
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
/// Name = "tpu-net",
/// AutoCreateSubnetworks = false,
/// });
///
/// var subnet = new Gcp.Compute.Subnetwork("subnet", new()
/// {
/// Name = "tpu-subnet",
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// Network = network.Id,
/// });
///
/// var qr = new Gcp.Tpu.V2QueuedResource("qr", new()
/// {
/// Name = "test-qr",
/// Zone = "us-central1-c",
/// Project = "my-project-name",
/// Tpu = new Gcp.Tpu.Inputs.V2QueuedResourceTpuArgs
/// {
/// NodeSpecs = new[]
/// {
/// new Gcp.Tpu.Inputs.V2QueuedResourceTpuNodeSpecArgs
/// {
/// Parent = "projects/my-project-name/locations/us-central1-c",
/// NodeId = "test-tpu",
/// Node = new Gcp.Tpu.Inputs.V2QueuedResourceTpuNodeSpecNodeArgs
/// {
/// RuntimeVersion = "tpu-vm-tf-2.13.0",
/// AcceleratorType = "v2-8",
/// Description = "Text description of the TPU.",
/// NetworkConfig = new Gcp.Tpu.Inputs.V2QueuedResourceTpuNodeSpecNodeNetworkConfigArgs
/// {
/// CanIpForward = true,
/// EnableExternalIps = true,
/// Network = network.Id,
/// Subnetwork = subnet.Id,
/// QueueCount = 32,
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tpu"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Name:                  pulumi.String("tpu-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// Name:        pulumi.String("tpu-subnet"),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     network.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = tpu.NewV2QueuedResource(ctx, "qr", &tpu.V2QueuedResourceArgs{
/// Name:    pulumi.String("test-qr"),
/// Zone:    pulumi.String("us-central1-c"),
/// Project: pulumi.String("my-project-name"),
/// Tpu: &tpu.V2QueuedResourceTpuArgs{
/// NodeSpecs: tpu.V2QueuedResourceTpuNodeSpecArray{
/// &tpu.V2QueuedResourceTpuNodeSpecArgs{
/// Parent: pulumi.String("projects/my-project-name/locations/us-central1-c"),
/// NodeId: pulumi.String("test-tpu"),
/// Node: &tpu.V2QueuedResourceTpuNodeSpecNodeArgs{
/// RuntimeVersion:  pulumi.String("tpu-vm-tf-2.13.0"),
/// AcceleratorType: pulumi.String("v2-8"),
/// Description:     pulumi.String("Text description of the TPU."),
/// NetworkConfig: &tpu.V2QueuedResourceTpuNodeSpecNodeNetworkConfigArgs{
/// CanIpForward:      pulumi.Bool(true),
/// EnableExternalIps: pulumi.Bool(true),
/// Network:           network.ID(),
/// Subnetwork:        subnet.ID(),
/// QueueCount:        pulumi.Int(32),
/// },
/// },
/// },
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.tpu.V2QueuedResource;
/// import com.pulumi.gcp.tpu.V2QueuedResourceArgs;
/// import com.pulumi.gcp.tpu.inputs.V2QueuedResourceTpuArgs;
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
/// .name("tpu-net")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
/// .name("tpu-subnet")
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .network(network.id())
/// .build());
///
/// var qr = new V2QueuedResource("qr", V2QueuedResourceArgs.builder()
/// .name("test-qr")
/// .zone("us-central1-c")
/// .project("my-project-name")
/// .tpu(V2QueuedResourceTpuArgs.builder()
/// .nodeSpecs(V2QueuedResourceTpuNodeSpecArgs.builder()
/// .parent("projects/my-project-name/locations/us-central1-c")
/// .nodeId("test-tpu")
/// .node(V2QueuedResourceTpuNodeSpecNodeArgs.builder()
/// .runtimeVersion("tpu-vm-tf-2.13.0")
/// .acceleratorType("v2-8")
/// .description("Text description of the TPU.")
/// .networkConfig(V2QueuedResourceTpuNodeSpecNodeNetworkConfigArgs.builder()
/// .canIpForward(true)
/// .enableExternalIps(true)
/// .network(network.id())
/// .subnetwork(subnet.id())
/// .queueCount(32)
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// qr:
/// type: gcp:tpu:V2QueuedResource
/// properties:
/// name: test-qr
/// zone: us-central1-c
/// project: my-project-name
/// tpu:
/// nodeSpecs:
/// - parent: projects/my-project-name/locations/us-central1-c
/// nodeId: test-tpu
/// node:
/// runtimeVersion: tpu-vm-tf-2.13.0
/// acceleratorType: v2-8
/// description: Text description of the TPU.
/// networkConfig:
/// canIpForward: true
/// enableExternalIps: true
/// network: ${network.id}
/// subnetwork: ${subnet.id}
/// queueCount: 32
/// subnet:
/// type: gcp:compute:Subnetwork
/// properties:
/// name: tpu-subnet
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// network: ${network.id}
/// network:
/// type: gcp:compute:Network
/// properties:
/// name: tpu-net
/// autoCreateSubnetworks: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// QueuedResource can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{zone}}/queuedResources/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, QueuedResource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tpu/v2QueuedResource:V2QueuedResource default projects/{{project}}/locations/{{zone}}/queuedResources/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2QueuedResource:V2QueuedResource default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2QueuedResource:V2QueuedResource default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2QueuedResource:V2QueuedResource default {{name}}
/// ```
class V2QueuedResource extends CustomResource {
  /// The immutable name of the Queued Resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Defines a TPU resource.
  /// Structure is documented below.
  late final Output<V2QueuedResourceTpu?> tpu;

  /// The GCP location for the Queued Resource. If it is not provided, the provider zone is used.
  late final Output<String> zone;

  V2QueuedResource(
    String name, {
    V2QueuedResourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:tpu/v2QueuedResource:V2QueuedResource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tpu = registerOutput<V2QueuedResourceTpu?>('tpu');
    this.zone = registerOutput<String>('zone');
  }
}
