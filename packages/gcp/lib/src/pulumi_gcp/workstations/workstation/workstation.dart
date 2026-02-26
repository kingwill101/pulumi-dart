import 'package:pulumi/pulumi.dart';
import 'workstation_args.dart';

/// A single instance of a developer workstation with its own persistent storage.
///
/// To get more information about Workstation, see:
///
/// * [API documentation](https://cloud.google.com/workstations/docs/reference/rest/v1beta/projects.locations.workstationClusters.workstationConfigs.workstations)
/// * How-to Guides
/// * [Workstations](https://cloud.google.com/workstations/docs/)
///
/// ## Example Usage
///
/// ### Workstation Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
/// name: "workstation-cluster",
/// autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "workstation-cluster",
/// ipCidrRange: "10.0.0.0/24",
/// region: "us-central1",
/// network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
/// workstationClusterId: "workstation-cluster",
/// network: _default.id,
/// subnetwork: defaultSubnetwork.id,
/// location: "us-central1",
/// labels: {
/// label: "key",
/// },
/// annotations: {
/// "label-one": "value-one",
/// },
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
/// workstationConfigId: "workstation-config",
/// workstationClusterId: defaultWorkstationCluster.workstationClusterId,
/// location: "us-central1",
/// host: {
/// gceInstance: {
/// machineType: "e2-standard-4",
/// bootDiskSizeGb: 35,
/// disablePublicIpAddresses: true,
/// },
/// },
/// });
/// const defaultWorkstation = new gcp.workstations.Workstation("default", {
/// workstationId: "work-station",
/// workstationConfigId: defaultWorkstationConfig.workstationConfigId,
/// workstationClusterId: defaultWorkstationCluster.workstationClusterId,
/// location: "us-central1",
/// labels: {
/// label: "key",
/// },
/// env: {
/// name: "foo",
/// },
/// annotations: {
/// "label-one": "value-one",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
/// name="workstation-cluster",
/// auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="workstation-cluster",
/// ip_cidr_range="10.0.0.0/24",
/// region="us-central1",
/// network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
/// workstation_cluster_id="workstation-cluster",
/// network=default.id,
/// subnetwork=default_subnetwork.id,
/// location="us-central1",
/// labels={
/// "label": "key",
/// },
/// annotations={
/// "label-one": "value-one",
/// })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
/// workstation_config_id="workstation-config",
/// workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
/// location="us-central1",
/// host={
/// "gce_instance": {
/// "machine_type": "e2-standard-4",
/// "boot_disk_size_gb": 35,
/// "disable_public_ip_addresses": True,
/// },
/// })
/// default_workstation = gcp.workstations.Workstation("default",
/// workstation_id="work-station",
/// workstation_config_id=default_workstation_config.workstation_config_id,
/// workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
/// location="us-central1",
/// labels={
/// "label": "key",
/// },
/// env={
/// "name": "foo",
/// },
/// annotations={
/// "label-one": "value-one",
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
/// Name = "workstation-cluster",
/// AutoCreateSubnetworks = false,
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "workstation-cluster",
/// IpCidrRange = "10.0.0.0/24",
/// Region = "us-central1",
/// Network = @default.Name,
/// });
///
/// var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
/// {
/// WorkstationClusterId = "workstation-cluster",
/// Network = @default.Id,
/// Subnetwork = defaultSubnetwork.Id,
/// Location = "us-central1",
/// Labels =
/// {
/// { "label", "key" },
/// },
/// Annotations =
/// {
/// { "label-one", "value-one" },
/// },
/// });
///
/// var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
/// {
/// WorkstationConfigId = "workstation-config",
/// WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
/// Location = "us-central1",
/// Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
/// {
/// GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
/// {
/// MachineType = "e2-standard-4",
/// BootDiskSizeGb = 35,
/// DisablePublicIpAddresses = true,
/// },
/// },
/// });
///
/// var defaultWorkstation = new Gcp.Workstations.Workstation("default", new()
/// {
/// WorkstationId = "work-station",
/// WorkstationConfigId = defaultWorkstationConfig.WorkstationConfigId,
/// WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
/// Location = "us-central1",
/// Labels =
/// {
/// { "label", "key" },
/// },
/// Env =
/// {
/// { "name", "foo" },
/// },
/// Annotations =
/// {
/// { "label-one", "value-one" },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("workstation-cluster"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("workstation-cluster"),
/// IpCidrRange: pulumi.String("10.0.0.0/24"),
/// Region:      pulumi.String("us-central1"),
/// Network:     _default.Name,
/// })
/// if err != nil {
/// return err
/// }
/// defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// WorkstationClusterId: pulumi.String("workstation-cluster"),
/// Network:              _default.ID(),
/// Subnetwork:           defaultSubnetwork.ID(),
/// Location:             pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "label": pulumi.String("key"),
/// },
/// Annotations: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultWorkstationConfig, err := workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// WorkstationConfigId:  pulumi.String("workstation-config"),
/// WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// Location:             pulumi.String("us-central1"),
/// Host: &workstations.WorkstationConfigHostArgs{
/// GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// MachineType:              pulumi.String("e2-standard-4"),
/// BootDiskSizeGb:           pulumi.Int(35),
/// DisablePublicIpAddresses: pulumi.Bool(true),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workstations.NewWorkstation(ctx, "default", &workstations.WorkstationArgs{
/// WorkstationId:        pulumi.String("work-station"),
/// WorkstationConfigId:  defaultWorkstationConfig.WorkstationConfigId,
/// WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// Location:             pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "label": pulumi.String("key"),
/// },
/// Env: pulumi.StringMap{
/// "name": pulumi.String("foo"),
/// },
/// Annotations: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
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
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.Workstation;
/// import com.pulumi.gcp.workstations.WorkstationArgs;
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
/// .name("workstation-cluster")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("workstation-cluster")
/// .ipCidrRange("10.0.0.0/24")
/// .region("us-central1")
/// .network(default_.name())
/// .build());
///
/// var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
/// .workstationClusterId("workstation-cluster")
/// .network(default_.id())
/// .subnetwork(defaultSubnetwork.id())
/// .location("us-central1")
/// .labels(Map.of("label", "key"))
/// .annotations(Map.of("label-one", "value-one"))
/// .build());
///
/// var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
/// .workstationConfigId("workstation-config")
/// .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
/// .location("us-central1")
/// .host(WorkstationConfigHostArgs.builder()
/// .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
/// .machineType("e2-standard-4")
/// .bootDiskSizeGb(35)
/// .disablePublicIpAddresses(true)
/// .build())
/// .build())
/// .build());
///
/// var defaultWorkstation = new Workstation("defaultWorkstation", WorkstationArgs.builder()
/// .workstationId("work-station")
/// .workstationConfigId(defaultWorkstationConfig.workstationConfigId())
/// .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
/// .location("us-central1")
/// .labels(Map.of("label", "key"))
/// .env(Map.of("name", "foo"))
/// .annotations(Map.of("label-one", "value-one"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: workstation-cluster
/// autoCreateSubnetworks: false
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: workstation-cluster
/// ipCidrRange: 10.0.0.0/24
/// region: us-central1
/// network: ${default.name}
/// defaultWorkstationCluster:
/// type: gcp:workstations:WorkstationCluster
/// name: default
/// properties:
/// workstationClusterId: workstation-cluster
/// network: ${default.id}
/// subnetwork: ${defaultSubnetwork.id}
/// location: us-central1
/// labels:
/// label: key
/// annotations:
/// label-one: value-one
/// defaultWorkstationConfig:
/// type: gcp:workstations:WorkstationConfig
/// name: default
/// properties:
/// workstationConfigId: workstation-config
/// workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
/// location: us-central1
/// host:
/// gceInstance:
/// machineType: e2-standard-4
/// bootDiskSizeGb: 35
/// disablePublicIpAddresses: true
/// defaultWorkstation:
/// type: gcp:workstations:Workstation
/// name: default
/// properties:
/// workstationId: work-station
/// workstationConfigId: ${defaultWorkstationConfig.workstationConfigId}
/// workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
/// location: us-central1
/// labels:
/// label: key
/// env:
/// name: foo
/// annotations:
/// label-one: value-one
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Workstation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}/workstations/{{workstation_id}}`
///
/// * `{{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}/{{workstation_id}}`
///
/// * `{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}/{{workstation_id}}`
///
/// When using the `pulumi import` command, Workstation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:workstations/workstation:Workstation default projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}/workstations/{{workstation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workstations/workstation:Workstation default {{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}/{{workstation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workstations/workstation:Workstation default {{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}/{{workstation_id}}
/// ```
class Workstation extends CustomResource {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Time when this resource was created.
  late final Output<String> createTime;

  /// Human-readable name for this resource.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// 'Client-specified environment variables passed to the workstation container's entrypoint.'
  late final Output<Map<String, String>?> env;

  /// Host to which clients can send HTTPS traffic that will be received by the workstation.
  /// Authorized traffic will be received to the workstation as HTTP on port 80.
  /// To send traffic to a different port, clients may prefix the host with the destination port in the format "{port}-{host}".
  late final Output<String> host;

  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the workstation parent resources reside.
  late final Output<String> location;

  /// Full name of this resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Full resource name of the source workstation from which the workstation's persistent
  /// directories will be cloned from during creation.
  late final Output<String?> sourceWorkstation;

  /// Current state of the workstation.
  late final Output<String> state;

  /// A system-assigned unique identified for this resource.
  late final Output<String> uid;

  /// The ID of the parent workstation cluster.
  late final Output<String> workstationClusterId;

  /// The ID of the parent workstation cluster config.
  late final Output<String> workstationConfigId;

  /// ID to use for the workstation.
  late final Output<String> workstationId;

  Workstation(
    String name, {
    WorkstationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstation:Workstation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.env = registerOutput<Map<String, String>?>('env');
    this.host = registerOutput<String>('host');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.sourceWorkstation = registerOutput<String?>('sourceWorkstation');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
    this.workstationConfigId = registerOutput<String>('workstationConfigId');
    this.workstationId = registerOutput<String>('workstationId');
  }
}
