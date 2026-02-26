import 'package:pulumi/pulumi.dart';
import '../v2_vm_accelerator_config/v2_vm_accelerator_config.dart';
import '../v2_vm_data_disk/v2_vm_data_disk.dart';
import '../v2_vm_network_config/v2_vm_network_config.dart';
import '../v2_vm_network_endpoint/v2_vm_network_endpoint.dart';
import '../v2_vm_scheduling_config/v2_vm_scheduling_config.dart';
import '../v2_vm_service_account/v2_vm_service_account.dart';
import '../v2_vm_shielded_instance_config/v2_vm_shielded_instance_config.dart';
import '../v2_vm_symptom/v2_vm_symptom.dart';
import 'v2_vm_args.dart';

/// A Cloud TPU VM instance.
///
/// To get more information about Vm, see:
///
/// * [API documentation](https://cloud.google.com/tpu/docs/reference/rest/v2/projects.locations.nodes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/tpu/docs/)
///
/// ## Example Usage
///
/// ### Tpu V2 Vm Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.tpu.getV2RuntimeVersions({});
/// const tpu = new gcp.tpu.V2Vm("tpu", {
/// name: "test-tpu",
/// zone: "us-central1-c",
/// runtimeVersion: "tpu-vm-tf-2.13.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// available = gcp.tpu.get_v2_runtime_versions()
/// tpu = gcp.tpu.V2Vm("tpu",
/// name="test-tpu",
/// zone="us-central1-c",
/// runtime_version="tpu-vm-tf-2.13.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Gcp.Tpu.GetV2RuntimeVersions.Invoke();
///
/// var tpu = new Gcp.Tpu.V2Vm("tpu", new()
/// {
/// Name = "test-tpu",
/// Zone = "us-central1-c",
/// RuntimeVersion = "tpu-vm-tf-2.13.0",
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
/// _, err := tpu.GetV2RuntimeVersions(ctx, &tpu.GetV2RuntimeVersionsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = tpu.NewV2Vm(ctx, "tpu", &tpu.V2VmArgs{
/// Name:           pulumi.String("test-tpu"),
/// Zone:           pulumi.String("us-central1-c"),
/// RuntimeVersion: pulumi.String("tpu-vm-tf-2.13.0"),
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
/// import com.pulumi.gcp.tpu.TpuFunctions;
/// import com.pulumi.gcp.tpu.inputs.GetV2RuntimeVersionsArgs;
/// import com.pulumi.gcp.tpu.V2Vm;
/// import com.pulumi.gcp.tpu.V2VmArgs;
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
/// final var available = TpuFunctions.getV2RuntimeVersions(GetV2RuntimeVersionsArgs.builder()
/// .build());
///
/// var tpu = new V2Vm("tpu", V2VmArgs.builder()
/// .name("test-tpu")
/// .zone("us-central1-c")
/// .runtimeVersion("tpu-vm-tf-2.13.0")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// tpu:
/// type: gcp:tpu:V2Vm
/// properties:
/// name: test-tpu
/// zone: us-central1-c
/// runtimeVersion: tpu-vm-tf-2.13.0
/// variables:
/// available:
/// fn::invoke:
/// function: gcp:tpu:getV2RuntimeVersions
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Tpu V2 Vm Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const available = gcp.tpu.getV2RuntimeVersions({});
/// const availableGetV2AcceleratorTypes = gcp.tpu.getV2AcceleratorTypes({});
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
/// const sa = new gcp.serviceaccount.Account("sa", {
/// accountId: "tpu-sa",
/// displayName: "Test TPU VM",
/// });
/// const disk = new gcp.compute.Disk("disk", {
/// name: "tpu-disk",
/// image: "debian-cloud/debian-11",
/// size: 10,
/// type: "pd-ssd",
/// zone: "us-central1-c",
/// });
/// // Wait after service account creation to limit eventual consistency errors.
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
/// dependsOn: [sa],
/// });
/// const tpu = new gcp.tpu.V2Vm("tpu", {
/// name: "test-tpu",
/// zone: "us-central1-c",
/// description: "Text description of the TPU.",
/// runtimeVersion: "tpu-vm-tf-2.13.0",
/// acceleratorConfig: {
/// type: "V2",
/// topology: "2x2",
/// },
/// cidrBlock: "10.0.0.0/29",
/// networkConfig: {
/// canIpForward: true,
/// enableExternalIps: true,
/// network: network.id,
/// subnetwork: subnet.id,
/// queueCount: 32,
/// },
/// schedulingConfig: {
/// preemptible: true,
/// spot: true,
/// },
/// shieldedInstanceConfig: {
/// enableSecureBoot: true,
/// },
/// serviceAccount: {
/// email: sa.email,
/// scopes: ["https://www.googleapis.com/auth/cloud-platform"],
/// },
/// dataDisks: [{
/// sourceDisk: disk.id,
/// mode: "READ_ONLY",
/// }],
/// labels: {
/// foo: "bar",
/// },
/// metadata: {
/// foo: "bar",
/// },
/// tags: ["foo"],
/// }, {
/// dependsOn: [wait60Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// available = gcp.tpu.get_v2_runtime_versions()
/// available_get_v2_accelerator_types = gcp.tpu.get_v2_accelerator_types()
/// network = gcp.compute.Network("network",
/// name="tpu-net",
/// auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
/// name="tpu-subnet",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// network=network.id)
/// sa = gcp.serviceaccount.Account("sa",
/// account_id="tpu-sa",
/// display_name="Test TPU VM")
/// disk = gcp.compute.Disk("disk",
/// name="tpu-disk",
/// image="debian-cloud/debian-11",
/// size=10,
/// type="pd-ssd",
/// zone="us-central1-c")
/// # Wait after service account creation to limit eventual consistency errors.
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[sa]))
/// tpu = gcp.tpu.V2Vm("tpu",
/// name="test-tpu",
/// zone="us-central1-c",
/// description="Text description of the TPU.",
/// runtime_version="tpu-vm-tf-2.13.0",
/// accelerator_config={
/// "type": "V2",
/// "topology": "2x2",
/// },
/// cidr_block="10.0.0.0/29",
/// network_config={
/// "can_ip_forward": True,
/// "enable_external_ips": True,
/// "network": network.id,
/// "subnetwork": subnet.id,
/// "queue_count": 32,
/// },
/// scheduling_config={
/// "preemptible": True,
/// "spot": True,
/// },
/// shielded_instance_config={
/// "enable_secure_boot": True,
/// },
/// service_account={
/// "email": sa.email,
/// "scopes": ["https://www.googleapis.com/auth/cloud-platform"],
/// },
/// data_disks=[{
/// "source_disk": disk.id,
/// "mode": "READ_ONLY",
/// }],
/// labels={
/// "foo": "bar",
/// },
/// metadata={
/// "foo": "bar",
/// },
/// tags=["foo"],
/// opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Gcp.Tpu.GetV2RuntimeVersions.Invoke();
///
/// var availableGetV2AcceleratorTypes = Gcp.Tpu.GetV2AcceleratorTypes.Invoke();
///
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
/// var sa = new Gcp.ServiceAccount.Account("sa", new()
/// {
/// AccountId = "tpu-sa",
/// DisplayName = "Test TPU VM",
/// });
///
/// var disk = new Gcp.Compute.Disk("disk", new()
/// {
/// Name = "tpu-disk",
/// Image = "debian-cloud/debian-11",
/// Size = 10,
/// Type = "pd-ssd",
/// Zone = "us-central1-c",
/// });
///
/// // Wait after service account creation to limit eventual consistency errors.
/// var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
/// {
/// CreateDuration = "60s",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sa,
/// },
/// });
///
/// var tpu = new Gcp.Tpu.V2Vm("tpu", new()
/// {
/// Name = "test-tpu",
/// Zone = "us-central1-c",
/// Description = "Text description of the TPU.",
/// RuntimeVersion = "tpu-vm-tf-2.13.0",
/// AcceleratorConfig = new Gcp.Tpu.Inputs.V2VmAcceleratorConfigArgs
/// {
/// Type = "V2",
/// Topology = "2x2",
/// },
/// CidrBlock = "10.0.0.0/29",
/// NetworkConfig = new Gcp.Tpu.Inputs.V2VmNetworkConfigArgs
/// {
/// CanIpForward = true,
/// EnableExternalIps = true,
/// Network = network.Id,
/// Subnetwork = subnet.Id,
/// QueueCount = 32,
/// },
/// SchedulingConfig = new Gcp.Tpu.Inputs.V2VmSchedulingConfigArgs
/// {
/// Preemptible = true,
/// Spot = true,
/// },
/// ShieldedInstanceConfig = new Gcp.Tpu.Inputs.V2VmShieldedInstanceConfigArgs
/// {
/// EnableSecureBoot = true,
/// },
/// ServiceAccount = new Gcp.Tpu.Inputs.V2VmServiceAccountArgs
/// {
/// Email = sa.Email,
/// Scopes = new[]
/// {
/// "https://www.googleapis.com/auth/cloud-platform",
/// },
/// },
/// DataDisks = new[]
/// {
/// new Gcp.Tpu.Inputs.V2VmDataDiskArgs
/// {
/// SourceDisk = disk.Id,
/// Mode = "READ_ONLY",
/// },
/// },
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Metadata =
/// {
/// { "foo", "bar" },
/// },
/// Tags = new[]
/// {
/// "foo",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// wait60Seconds,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tpu"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := tpu.GetV2RuntimeVersions(ctx, &tpu.GetV2RuntimeVersionsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = tpu.GetV2AcceleratorTypes(ctx, &tpu.GetV2AcceleratorTypesArgs{}, nil)
/// if err != nil {
/// return err
/// }
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
/// sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// AccountId:   pulumi.String("tpu-sa"),
/// DisplayName: pulumi.String("Test TPU VM"),
/// })
/// if err != nil {
/// return err
/// }
/// disk, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// Name:  pulumi.String("tpu-disk"),
/// Image: pulumi.String("debian-cloud/debian-11"),
/// Size:  pulumi.Int(10),
/// Type:  pulumi.String("pd-ssd"),
/// Zone:  pulumi.String("us-central1-c"),
/// })
/// if err != nil {
/// return err
/// }
/// // Wait after service account creation to limit eventual consistency errors.
/// wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// CreateDuration: pulumi.String("60s"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sa,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = tpu.NewV2Vm(ctx, "tpu", &tpu.V2VmArgs{
/// Name:           pulumi.String("test-tpu"),
/// Zone:           pulumi.String("us-central1-c"),
/// Description:    pulumi.String("Text description of the TPU."),
/// RuntimeVersion: pulumi.String("tpu-vm-tf-2.13.0"),
/// AcceleratorConfig: &tpu.V2VmAcceleratorConfigArgs{
/// Type:     pulumi.String("V2"),
/// Topology: pulumi.String("2x2"),
/// },
/// CidrBlock: pulumi.String("10.0.0.0/29"),
/// NetworkConfig: &tpu.V2VmNetworkConfigArgs{
/// CanIpForward:      pulumi.Bool(true),
/// EnableExternalIps: pulumi.Bool(true),
/// Network:           network.ID(),
/// Subnetwork:        subnet.ID(),
/// QueueCount:        pulumi.Int(32),
/// },
/// SchedulingConfig: &tpu.V2VmSchedulingConfigArgs{
/// Preemptible: pulumi.Bool(true),
/// Spot:        pulumi.Bool(true),
/// },
/// ShieldedInstanceConfig: &tpu.V2VmShieldedInstanceConfigArgs{
/// EnableSecureBoot: pulumi.Bool(true),
/// },
/// ServiceAccount: &tpu.V2VmServiceAccountArgs{
/// Email: sa.Email,
/// Scopes: pulumi.StringArray{
/// pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// },
/// },
/// DataDisks: tpu.V2VmDataDiskArray{
/// &tpu.V2VmDataDiskArgs{
/// SourceDisk: disk.ID(),
/// Mode:       pulumi.String("READ_ONLY"),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Metadata: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Tags: pulumi.StringArray{
/// pulumi.String("foo"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// wait60Seconds,
/// }))
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
/// import com.pulumi.gcp.tpu.TpuFunctions;
/// import com.pulumi.gcp.tpu.inputs.GetV2RuntimeVersionsArgs;
/// import com.pulumi.gcp.tpu.inputs.GetV2AcceleratorTypesArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.tpu.V2Vm;
/// import com.pulumi.gcp.tpu.V2VmArgs;
/// import com.pulumi.gcp.tpu.inputs.V2VmAcceleratorConfigArgs;
/// import com.pulumi.gcp.tpu.inputs.V2VmNetworkConfigArgs;
/// import com.pulumi.gcp.tpu.inputs.V2VmSchedulingConfigArgs;
/// import com.pulumi.gcp.tpu.inputs.V2VmShieldedInstanceConfigArgs;
/// import com.pulumi.gcp.tpu.inputs.V2VmServiceAccountArgs;
/// import com.pulumi.gcp.tpu.inputs.V2VmDataDiskArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// final var available = TpuFunctions.getV2RuntimeVersions(GetV2RuntimeVersionsArgs.builder()
/// .build());
///
/// final var availableGetV2AcceleratorTypes = TpuFunctions.getV2AcceleratorTypes(GetV2AcceleratorTypesArgs.builder()
/// .build());
///
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
/// var sa = new Account("sa", AccountArgs.builder()
/// .accountId("tpu-sa")
/// .displayName("Test TPU VM")
/// .build());
///
/// var disk = new Disk("disk", DiskArgs.builder()
/// .name("tpu-disk")
/// .image("debian-cloud/debian-11")
/// .size(10)
/// .type("pd-ssd")
/// .zone("us-central1-c")
/// .build());
///
/// // Wait after service account creation to limit eventual consistency errors.
/// var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
/// .createDuration("60s")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sa)
/// .build());
///
/// var tpu = new V2Vm("tpu", V2VmArgs.builder()
/// .name("test-tpu")
/// .zone("us-central1-c")
/// .description("Text description of the TPU.")
/// .runtimeVersion("tpu-vm-tf-2.13.0")
/// .acceleratorConfig(V2VmAcceleratorConfigArgs.builder()
/// .type("V2")
/// .topology("2x2")
/// .build())
/// .cidrBlock("10.0.0.0/29")
/// .networkConfig(V2VmNetworkConfigArgs.builder()
/// .canIpForward(true)
/// .enableExternalIps(true)
/// .network(network.id())
/// .subnetwork(subnet.id())
/// .queueCount(32)
/// .build())
/// .schedulingConfig(V2VmSchedulingConfigArgs.builder()
/// .preemptible(true)
/// .spot(true)
/// .build())
/// .shieldedInstanceConfig(V2VmShieldedInstanceConfigArgs.builder()
/// .enableSecureBoot(true)
/// .build())
/// .serviceAccount(V2VmServiceAccountArgs.builder()
/// .email(sa.email())
/// .scopes("https://www.googleapis.com/auth/cloud-platform")
/// .build())
/// .dataDisks(V2VmDataDiskArgs.builder()
/// .sourceDisk(disk.id())
/// .mode("READ_ONLY")
/// .build())
/// .labels(Map.of("foo", "bar"))
/// .metadata(Map.of("foo", "bar"))
/// .tags("foo")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(wait60Seconds)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// tpu:
/// type: gcp:tpu:V2Vm
/// properties:
/// name: test-tpu
/// zone: us-central1-c
/// description: Text description of the TPU.
/// runtimeVersion: tpu-vm-tf-2.13.0
/// acceleratorConfig:
/// type: V2
/// topology: 2x2
/// cidrBlock: 10.0.0.0/29
/// networkConfig:
/// canIpForward: true
/// enableExternalIps: true
/// network: ${network.id}
/// subnetwork: ${subnet.id}
/// queueCount: 32
/// schedulingConfig:
/// preemptible: true
/// spot: true
/// shieldedInstanceConfig:
/// enableSecureBoot: true
/// serviceAccount:
/// email: ${sa.email}
/// scopes:
/// - https://www.googleapis.com/auth/cloud-platform
/// dataDisks:
/// - sourceDisk: ${disk.id}
/// mode: READ_ONLY
/// labels:
/// foo: bar
/// metadata:
/// foo: bar
/// tags:
/// - foo
/// options:
/// dependsOn:
/// - ${wait60Seconds}
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
/// sa:
/// type: gcp:serviceaccount:Account
/// properties:
/// accountId: tpu-sa
/// displayName: Test TPU VM
/// disk:
/// type: gcp:compute:Disk
/// properties:
/// name: tpu-disk
/// image: debian-cloud/debian-11
/// size: 10
/// type: pd-ssd
/// zone: us-central1-c
/// # Wait after service account creation to limit eventual consistency errors.
/// wait60Seconds:
/// type: time:Sleep
/// name: wait_60_seconds
/// properties:
/// createDuration: 60s
/// options:
/// dependsOn:
/// - ${sa}
/// variables:
/// available:
/// fn::invoke:
/// function: gcp:tpu:getV2RuntimeVersions
/// arguments: {}
/// availableGetV2AcceleratorTypes:
/// fn::invoke:
/// function: gcp:tpu:getV2AcceleratorTypes
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Vm can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{zone}}/nodes/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Vm can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tpu/v2Vm:V2Vm default projects/{{project}}/locations/{{zone}}/nodes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2Vm:V2Vm default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2Vm:V2Vm default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2Vm:V2Vm default {{name}}
/// ```
class V2Vm extends CustomResource {
  /// The AccleratorConfig for the TPU Node. <span pulumi-lang-nodejs="`acceleratorConfig`" pulumi-lang-dotnet="`AcceleratorConfig`" pulumi-lang-go="`acceleratorConfig`" pulumi-lang-python="`accelerator_config`" pulumi-lang-yaml="`acceleratorConfig`" pulumi-lang-java="`acceleratorConfig`">`accelerator_config`</span> cannot be used at the same time
  /// as <span pulumi-lang-nodejs="`acceleratorType`" pulumi-lang-dotnet="`AcceleratorType`" pulumi-lang-go="`acceleratorType`" pulumi-lang-python="`accelerator_type`" pulumi-lang-yaml="`acceleratorType`" pulumi-lang-java="`acceleratorType`">`accelerator_type`</span>. If neither is specified, <span pulumi-lang-nodejs="`acceleratorType`" pulumi-lang-dotnet="`AcceleratorType`" pulumi-lang-go="`acceleratorType`" pulumi-lang-python="`accelerator_type`" pulumi-lang-yaml="`acceleratorType`" pulumi-lang-java="`acceleratorType`">`accelerator_type`</span> defaults to 'v2-8'.
  /// Structure is documented below.
  late final Output<V2VmAcceleratorConfig> acceleratorConfig;

  /// TPU accelerator type for the TPU. <span pulumi-lang-nodejs="`acceleratorType`" pulumi-lang-dotnet="`AcceleratorType`" pulumi-lang-go="`acceleratorType`" pulumi-lang-python="`accelerator_type`" pulumi-lang-yaml="`acceleratorType`" pulumi-lang-java="`acceleratorType`">`accelerator_type`</span> cannot be used at the same time as
  /// <span pulumi-lang-nodejs="`acceleratorConfig`" pulumi-lang-dotnet="`AcceleratorConfig`" pulumi-lang-go="`acceleratorConfig`" pulumi-lang-python="`accelerator_config`" pulumi-lang-yaml="`acceleratorConfig`" pulumi-lang-java="`acceleratorConfig`">`accelerator_config`</span>. If neither is specified, <span pulumi-lang-nodejs="`acceleratorType`" pulumi-lang-dotnet="`AcceleratorType`" pulumi-lang-go="`acceleratorType`" pulumi-lang-python="`accelerator_type`" pulumi-lang-yaml="`acceleratorType`" pulumi-lang-java="`acceleratorType`">`accelerator_type`</span> defaults to 'v2-8'.
  late final Output<String> acceleratorType;

  /// The API version that created this Node.
  late final Output<String> apiVersion;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
  /// be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger
  /// block would be wasteful (a node can only consume one IP address). Errors will occur if the
  /// CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts
  /// with any subnetworks in the user's provided network, or the provided network is peered with
  /// another network that is using that CIDR block.
  late final Output<String> cidrBlock;

  /// The additional data disks for the Node.
  /// Structure is documented below.
  late final Output<List<V2VmDataDisk>?> dataDisks;

  /// Text description of the TPU.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The health status of the TPU node.
  late final Output<String> health;

  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  late final Output<String> healthDescription;

  /// Resource labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script.
  late final Output<Map<String, String>?> metadata;

  /// Whether the Node belongs to a Multislice group.
  late final Output<bool> multisliceNode;

  /// The immutable name of the TPU.
  late final Output<String> name;

  /// Network configurations for the TPU node.
  /// Structure is documented below.
  late final Output<V2VmNetworkConfig> networkConfig;

  /// Repeated network configurations for the TPU node. This field is used to specify multiple
  /// network configs for the TPU node.
  /// Structure is documented below.
  late final Output<List<V2VmNetworkConfig>?> networkConfigs;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that
  /// runtime clients of the node reach out to the 0th entry in this map first.
  /// Structure is documented below.
  late final Output<List<V2VmNetworkEndpoint>> networkEndpoints;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The qualified name of the QueuedResource that requested this Node.
  late final Output<String> queuedResource;

  /// Runtime version for the TPU.
  late final Output<String> runtimeVersion;

  /// The scheduling options for this node.
  /// Structure is documented below.
  late final Output<V2VmSchedulingConfig?> schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
  /// specified, the default compute service account will be used.
  /// Structure is documented below.
  late final Output<V2VmServiceAccount> serviceAccount;

  /// Shielded Instance options.
  /// Structure is documented below.
  late final Output<V2VmShieldedInstanceConfig?> shieldedInstanceConfig;

  /// The current state for the TPU Node.
  late final Output<String> state;

  /// The Symptoms that have occurred to the TPU Node.
  /// Structure is documented below.
  late final Output<List<V2VmSymptom>> symptoms;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  late final Output<List<String>?> tags;

  /// The GCP location for the TPU. If it is not provided, the provider zone is used.
  late final Output<String> zone;

  V2Vm(
    String name, {
    V2VmArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:tpu/v2Vm:V2Vm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceleratorConfig = Output.createUnknown<V2VmAcceleratorConfig>();
    this.acceleratorType = Output.createUnknown<String>();
    this.apiVersion = Output.createUnknown<String>();
    this.cidrBlock = Output.createUnknown<String>();
    this.dataDisks = Output.createUnknown<List<V2VmDataDisk>?>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.health = Output.createUnknown<String>();
    this.healthDescription = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.metadata = Output.createUnknown<Map<String, String>?>();
    this.multisliceNode = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.networkConfig = Output.createUnknown<V2VmNetworkConfig>();
    this.networkConfigs = Output.createUnknown<List<V2VmNetworkConfig>?>();
    this.networkEndpoints = Output.createUnknown<List<V2VmNetworkEndpoint>>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.queuedResource = Output.createUnknown<String>();
    this.runtimeVersion = Output.createUnknown<String>();
    this.schedulingConfig = Output.createUnknown<V2VmSchedulingConfig?>();
    this.serviceAccount = Output.createUnknown<V2VmServiceAccount>();
    this.shieldedInstanceConfig =
        Output.createUnknown<V2VmShieldedInstanceConfig?>();
    this.state = Output.createUnknown<String>();
    this.symptoms = Output.createUnknown<List<V2VmSymptom>>();
    this.tags = Output.createUnknown<List<String>?>();
    this.zone = Output.createUnknown<String>();
  }
}
