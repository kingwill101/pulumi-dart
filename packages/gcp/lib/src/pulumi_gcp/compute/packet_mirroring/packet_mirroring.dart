import 'package:pulumi/pulumi.dart';
import '../packet_mirroring_collector_ilb/packet_mirroring_collector_ilb.dart';
import '../packet_mirroring_filter/packet_mirroring_filter.dart';
import '../packet_mirroring_mirrored_resources/packet_mirroring_mirrored_resources.dart';
import '../packet_mirroring_network/packet_mirroring_network.dart';
import 'packet_mirroring_args.dart';

/// Packet Mirroring mirrors traffic to and from particular VM instances.
/// You can use the collected traffic to help you detect security threats
/// and monitor application performance.
///
///
/// To get more information about PacketMirroring, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings)
/// * How-to Guides
/// * [Using Packet Mirroring](https://cloud.google.com/vpc/docs/using-packet-mirroring#creating)
///
/// ## Example Usage
///
/// ### Compute Packet Mirroring Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "my-network"});
/// const mirror = new gcp.compute.Instance("mirror", {
/// networkInterfaces: [{
/// accessConfigs: [{}],
/// network: _default.id,
/// }],
/// name: "my-instance",
/// machineType: "e2-medium",
/// bootDisk: {
/// initializeParams: {
/// image: "debian-cloud/debian-11",
/// },
/// },
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "my-subnetwork",
/// network: _default.id,
/// ipCidrRange: "10.2.0.0/16",
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
/// name: "my-healthcheck",
/// checkIntervalSec: 1,
/// timeoutSec: 1,
/// tcpHealthCheck: {
/// port: 80,
/// },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
/// name: "my-service",
/// healthChecks: defaultHealthCheck.id,
/// });
/// const defaultForwardingRule = new gcp.compute.ForwardingRule("default", {
/// name: "my-ilb",
/// isMirroringCollector: true,
/// ipProtocol: "TCP",
/// loadBalancingScheme: "INTERNAL",
/// backendService: defaultRegionBackendService.id,
/// allPorts: true,
/// network: _default.id,
/// subnetwork: defaultSubnetwork.id,
/// networkTier: "PREMIUM",
/// }, {
/// dependsOn: [defaultSubnetwork],
/// });
/// const foobar = new gcp.compute.PacketMirroring("foobar", {
/// name: "my-mirroring",
/// description: "bar",
/// network: {
/// url: _default.id,
/// },
/// collectorIlb: {
/// url: defaultForwardingRule.id,
/// },
/// mirroredResources: {
/// tags: ["foo"],
/// instances: [{
/// url: mirror.id,
/// }],
/// subnetworks: [{
/// url: defaultSubnetwork.id,
/// }],
/// },
/// filter: {
/// ipProtocols: ["tcp"],
/// cidrRanges: ["0.0.0.0/0"],
/// direction: "BOTH",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="my-network")
/// mirror = gcp.compute.Instance("mirror",
/// network_interfaces=[{
/// "access_configs": [{}],
/// "network": default.id,
/// }],
/// name="my-instance",
/// machine_type="e2-medium",
/// boot_disk={
/// "initialize_params": {
/// "image": "debian-cloud/debian-11",
/// },
/// })
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="my-subnetwork",
/// network=default.id,
/// ip_cidr_range="10.2.0.0/16")
/// default_health_check = gcp.compute.HealthCheck("default",
/// name="my-healthcheck",
/// check_interval_sec=1,
/// timeout_sec=1,
/// tcp_health_check={
/// "port": 80,
/// })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
/// name="my-service",
/// health_checks=default_health_check.id)
/// default_forwarding_rule = gcp.compute.ForwardingRule("default",
/// name="my-ilb",
/// is_mirroring_collector=True,
/// ip_protocol="TCP",
/// load_balancing_scheme="INTERNAL",
/// backend_service=default_region_backend_service.id,
/// all_ports=True,
/// network=default.id,
/// subnetwork=default_subnetwork.id,
/// network_tier="PREMIUM",
/// opts = pulumi.ResourceOptions(depends_on=[default_subnetwork]))
/// foobar = gcp.compute.PacketMirroring("foobar",
/// name="my-mirroring",
/// description="bar",
/// network={
/// "url": default.id,
/// },
/// collector_ilb={
/// "url": default_forwarding_rule.id,
/// },
/// mirrored_resources={
/// "tags": ["foo"],
/// "instances": [{
/// "url": mirror.id,
/// }],
/// "subnetworks": [{
/// "url": default_subnetwork.id,
/// }],
/// },
/// filter={
/// "ip_protocols": ["tcp"],
/// "cidr_ranges": ["0.0.0.0/0"],
/// "direction": "BOTH",
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
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "my-network",
/// });
///
/// var mirror = new Gcp.Compute.Instance("mirror", new()
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// AccessConfigs = new[]
/// {
/// null,
/// },
/// Network = @default.Id,
/// },
/// },
/// Name = "my-instance",
/// MachineType = "e2-medium",
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = "debian-cloud/debian-11",
/// },
/// },
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "my-subnetwork",
/// Network = @default.Id,
/// IpCidrRange = "10.2.0.0/16",
/// });
///
/// var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
/// {
/// Name = "my-healthcheck",
/// CheckIntervalSec = 1,
/// TimeoutSec = 1,
/// TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
/// {
/// Name = "my-service",
/// HealthChecks = defaultHealthCheck.Id,
/// });
///
/// var defaultForwardingRule = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "my-ilb",
/// IsMirroringCollector = true,
/// IpProtocol = "TCP",
/// LoadBalancingScheme = "INTERNAL",
/// BackendService = defaultRegionBackendService.Id,
/// AllPorts = true,
/// Network = @default.Id,
/// Subnetwork = defaultSubnetwork.Id,
/// NetworkTier = "PREMIUM",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// defaultSubnetwork,
/// },
/// });
///
/// var foobar = new Gcp.Compute.PacketMirroring("foobar", new()
/// {
/// Name = "my-mirroring",
/// Description = "bar",
/// Network = new Gcp.Compute.Inputs.PacketMirroringNetworkArgs
/// {
/// Url = @default.Id,
/// },
/// CollectorIlb = new Gcp.Compute.Inputs.PacketMirroringCollectorIlbArgs
/// {
/// Url = defaultForwardingRule.Id,
/// },
/// MirroredResources = new Gcp.Compute.Inputs.PacketMirroringMirroredResourcesArgs
/// {
/// Tags = new[]
/// {
/// "foo",
/// },
/// Instances = new[]
/// {
/// new Gcp.Compute.Inputs.PacketMirroringMirroredResourcesInstanceArgs
/// {
/// Url = mirror.Id,
/// },
/// },
/// Subnetworks = new[]
/// {
/// new Gcp.Compute.Inputs.PacketMirroringMirroredResourcesSubnetworkArgs
/// {
/// Url = defaultSubnetwork.Id,
/// },
/// },
/// },
/// Filter = new Gcp.Compute.Inputs.PacketMirroringFilterArgs
/// {
/// IpProtocols = new[]
/// {
/// "tcp",
/// },
/// CidrRanges = new[]
/// {
/// "0.0.0.0/0",
/// },
/// Direction = "BOTH",
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("my-network"),
/// })
/// if err != nil {
/// return err
/// }
/// mirror, err := compute.NewInstance(ctx, "mirror", &compute.InstanceArgs{
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// &compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// },
/// Network: _default.ID(),
/// },
/// },
/// Name:        pulumi.String("my-instance"),
/// MachineType: pulumi.String("e2-medium"),
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String("debian-cloud/debian-11"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("my-subnetwork"),
/// Network:     _default.ID(),
/// IpCidrRange: pulumi.String("10.2.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// Name:             pulumi.String("my-healthcheck"),
/// CheckIntervalSec: pulumi.Int(1),
/// TimeoutSec:       pulumi.Int(1),
/// TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// Name:         pulumi.String("my-service"),
/// HealthChecks: defaultHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultForwardingRule, err := compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:                 pulumi.String("my-ilb"),
/// IsMirroringCollector: pulumi.Bool(true),
/// IpProtocol:           pulumi.String("TCP"),
/// LoadBalancingScheme:  pulumi.String("INTERNAL"),
/// BackendService:       defaultRegionBackendService.ID(),
/// AllPorts:             pulumi.Bool(true),
/// Network:              _default.ID(),
/// Subnetwork:           defaultSubnetwork.ID(),
/// NetworkTier:          pulumi.String("PREMIUM"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// defaultSubnetwork,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewPacketMirroring(ctx, "foobar", &compute.PacketMirroringArgs{
/// Name:        pulumi.String("my-mirroring"),
/// Description: pulumi.String("bar"),
/// Network: &compute.PacketMirroringNetworkArgs{
/// Url: _default.ID(),
/// },
/// CollectorIlb: &compute.PacketMirroringCollectorIlbArgs{
/// Url: defaultForwardingRule.ID(),
/// },
/// MirroredResources: &compute.PacketMirroringMirroredResourcesArgs{
/// Tags: pulumi.StringArray{
/// pulumi.String("foo"),
/// },
/// Instances: compute.PacketMirroringMirroredResourcesInstanceArray{
/// &compute.PacketMirroringMirroredResourcesInstanceArgs{
/// Url: mirror.ID(),
/// },
/// },
/// Subnetworks: compute.PacketMirroringMirroredResourcesSubnetworkArray{
/// &compute.PacketMirroringMirroredResourcesSubnetworkArgs{
/// Url: defaultSubnetwork.ID(),
/// },
/// },
/// },
/// Filter: &compute.PacketMirroringFilterArgs{
/// IpProtocols: pulumi.StringArray{
/// pulumi.String("tcp"),
/// },
/// CidrRanges: pulumi.StringArray{
/// pulumi.String("0.0.0.0/0"),
/// },
/// Direction: pulumi.String("BOTH"),
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
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.PacketMirroring;
/// import com.pulumi.gcp.compute.PacketMirroringArgs;
/// import com.pulumi.gcp.compute.inputs.PacketMirroringNetworkArgs;
/// import com.pulumi.gcp.compute.inputs.PacketMirroringCollectorIlbArgs;
/// import com.pulumi.gcp.compute.inputs.PacketMirroringMirroredResourcesArgs;
/// import com.pulumi.gcp.compute.inputs.PacketMirroringFilterArgs;
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
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("my-network")
/// .build());
///
/// var mirror = new Instance("mirror", InstanceArgs.builder()
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
/// .build())
/// .network(default_.id())
/// .build())
/// .name("my-instance")
/// .machineType("e2-medium")
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image("debian-cloud/debian-11")
/// .build())
/// .build())
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("my-subnetwork")
/// .network(default_.id())
/// .ipCidrRange("10.2.0.0/16")
/// .build());
///
/// var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
/// .name("my-healthcheck")
/// .checkIntervalSec(1)
/// .timeoutSec(1)
/// .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
/// .name("my-service")
/// .healthChecks(defaultHealthCheck.id())
/// .build());
///
/// var defaultForwardingRule = new ForwardingRule("defaultForwardingRule", ForwardingRuleArgs.builder()
/// .name("my-ilb")
/// .isMirroringCollector(true)
/// .ipProtocol("TCP")
/// .loadBalancingScheme("INTERNAL")
/// .backendService(defaultRegionBackendService.id())
/// .allPorts(true)
/// .network(default_.id())
/// .subnetwork(defaultSubnetwork.id())
/// .networkTier("PREMIUM")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(defaultSubnetwork)
/// .build());
///
/// var foobar = new PacketMirroring("foobar", PacketMirroringArgs.builder()
/// .name("my-mirroring")
/// .description("bar")
/// .network(PacketMirroringNetworkArgs.builder()
/// .url(default_.id())
/// .build())
/// .collectorIlb(PacketMirroringCollectorIlbArgs.builder()
/// .url(defaultForwardingRule.id())
/// .build())
/// .mirroredResources(PacketMirroringMirroredResourcesArgs.builder()
/// .tags("foo")
/// .instances(PacketMirroringMirroredResourcesInstanceArgs.builder()
/// .url(mirror.id())
/// .build())
/// .subnetworks(PacketMirroringMirroredResourcesSubnetworkArgs.builder()
/// .url(defaultSubnetwork.id())
/// .build())
/// .build())
/// .filter(PacketMirroringFilterArgs.builder()
/// .ipProtocols("tcp")
/// .cidrRanges("0.0.0.0/0")
/// .direction("BOTH")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// mirror:
/// type: gcp:compute:Instance
/// properties:
/// networkInterfaces:
/// - accessConfigs:
/// - {}
/// network: ${default.id}
/// name: my-instance
/// machineType: e2-medium
/// bootDisk:
/// initializeParams:
/// image: debian-cloud/debian-11
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: my-network
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: my-subnetwork
/// network: ${default.id}
/// ipCidrRange: 10.2.0.0/16
/// defaultRegionBackendService:
/// type: gcp:compute:RegionBackendService
/// name: default
/// properties:
/// name: my-service
/// healthChecks: ${defaultHealthCheck.id}
/// defaultHealthCheck:
/// type: gcp:compute:HealthCheck
/// name: default
/// properties:
/// name: my-healthcheck
/// checkIntervalSec: 1
/// timeoutSec: 1
/// tcpHealthCheck:
/// port: '80'
/// defaultForwardingRule:
/// type: gcp:compute:ForwardingRule
/// name: default
/// properties:
/// name: my-ilb
/// isMirroringCollector: true
/// ipProtocol: TCP
/// loadBalancingScheme: INTERNAL
/// backendService: ${defaultRegionBackendService.id}
/// allPorts: true
/// network: ${default.id}
/// subnetwork: ${defaultSubnetwork.id}
/// networkTier: PREMIUM
/// options:
/// dependsOn:
/// - ${defaultSubnetwork}
/// foobar:
/// type: gcp:compute:PacketMirroring
/// properties:
/// name: my-mirroring
/// description: bar
/// network:
/// url: ${default.id}
/// collectorIlb:
/// url: ${defaultForwardingRule.id}
/// mirroredResources:
/// tags:
/// - foo
/// instances:
/// - url: ${mirror.id}
/// subnetworks:
/// - url: ${defaultSubnetwork.id}
/// filter:
/// ipProtocols:
/// - tcp
/// cidrRanges:
/// - 0.0.0.0/0
/// direction: BOTH
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// PacketMirroring can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/packetMirrorings/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PacketMirroring can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default projects/{{project}}/regions/{{region}}/packetMirrorings/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/packetMirroring:PacketMirroring default {{name}}
/// ```
class PacketMirroring extends CustomResource {
  /// The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
  /// that will be used as collector for mirrored traffic. The
  /// specified forwarding rule must have<span pulumi-lang-nodejs=" isMirroringCollector
  /// " pulumi-lang-dotnet=" IsMirroringCollector
  /// " pulumi-lang-go=" isMirroringCollector
  /// " pulumi-lang-python=" is_mirroring_collector
  /// " pulumi-lang-yaml=" isMirroringCollector
  /// " pulumi-lang-java=" isMirroringCollector
  /// "> is_mirroring_collector
  /// </span>set to true.
  /// Structure is documented below.
  late final Output<PacketMirroringCollectorIlb> collectorIlb;

  /// A human-readable description of the rule.
  late final Output<String?> description;

  /// A filter for mirrored traffic.  If unset, all traffic is mirrored.
  /// Structure is documented below.
  late final Output<PacketMirroringFilter?> filter;

  /// A means of specifying which resources to mirror.
  /// Structure is documented below.
  late final Output<PacketMirroringMirroredResources> mirroredResources;

  /// The name of the packet mirroring rule
  late final Output<String> name;

  /// Specifies the mirrored VPC network. Only packets in this network
  /// will be mirrored. All mirrored VMs should have a NIC in the given
  /// network. All mirrored subnetworks should belong to the given network.
  /// Structure is documented below.
  late final Output<PacketMirroringNetwork> network;

  /// Since only one rule can be active at a time, priority is
  /// used to break ties in the case of two rules that apply to
  /// the same instances.
  late final Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Region in which the created address should reside.
  /// If it is not provided, the provider region is used.
  late final Output<String> region;

  PacketMirroring(
    String name, {
    PacketMirroringArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/packetMirroring:PacketMirroring',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.collectorIlb = Output.createUnknown<PacketMirroringCollectorIlb>();
    this.description = Output.createUnknown<String?>();
    this.filter = Output.createUnknown<PacketMirroringFilter?>();
    this.mirroredResources =
        Output.createUnknown<PacketMirroringMirroredResources>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<PacketMirroringNetwork>();
    this.priority = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
