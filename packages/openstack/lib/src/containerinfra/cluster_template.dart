import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_template_args.dart';

/// Manages a V1 Magnum cluster template resource within OpenStack.
///
/// ## Example Usage
///
/// ### Create a Cluster template
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const clustertemplate1 = new openstack.containerinfra.ClusterTemplate("clustertemplate_1", {
///     name: "clustertemplate_1",
///     image: "Fedora-Atomic-27",
///     coe: "kubernetes",
///     flavor: "m1.small",
///     masterFlavor: "m1.medium",
///     dnsNameserver: "1.1.1.1",
///     dockerStorageDriver: "devicemapper",
///     dockerVolumeSize: 10,
///     volumeDriver: "cinder",
///     networkDriver: "flannel",
///     serverType: "vm",
///     masterLbEnabled: true,
///     floatingIpEnabled: false,
///     labels: {
///         kube_tag: "1.11.1",
///         kube_dashboard_enabled: "true",
///         prometheus_monitoring: "true",
///         influx_grafana_dashboard_enabled: "true",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// clustertemplate1 = openstack.containerinfra.ClusterTemplate("clustertemplate_1",
///     name="clustertemplate_1",
///     image="Fedora-Atomic-27",
///     coe="kubernetes",
///     flavor="m1.small",
///     master_flavor="m1.medium",
///     dns_nameserver="1.1.1.1",
///     docker_storage_driver="devicemapper",
///     docker_volume_size=10,
///     volume_driver="cinder",
///     network_driver="flannel",
///     server_type="vm",
///     master_lb_enabled=True,
///     floating_ip_enabled=False,
///     labels={
///         "kube_tag": "1.11.1",
///         "kube_dashboard_enabled": "true",
///         "prometheus_monitoring": "true",
///         "influx_grafana_dashboard_enabled": "true",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clustertemplate1 = new OpenStack.ContainerInfra.ClusterTemplate("clustertemplate_1", new()
///     {
///         Name = "clustertemplate_1",
///         Image = "Fedora-Atomic-27",
///         Coe = "kubernetes",
///         Flavor = "m1.small",
///         MasterFlavor = "m1.medium",
///         DnsNameserver = "1.1.1.1",
///         DockerStorageDriver = "devicemapper",
///         DockerVolumeSize = 10,
///         VolumeDriver = "cinder",
///         NetworkDriver = "flannel",
///         ServerType = "vm",
///         MasterLbEnabled = true,
///         FloatingIpEnabled = false,
///         Labels =
///         {
///             { "kube_tag", "1.11.1" },
///             { "kube_dashboard_enabled", "true" },
///             { "prometheus_monitoring", "true" },
///             { "influx_grafana_dashboard_enabled", "true" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/containerinfra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinfra.NewClusterTemplate(ctx, "clustertemplate_1", &containerinfra.ClusterTemplateArgs{
/// 			Name:                pulumi.String("clustertemplate_1"),
/// 			Image:               pulumi.String("Fedora-Atomic-27"),
/// 			Coe:                 pulumi.String("kubernetes"),
/// 			Flavor:              pulumi.String("m1.small"),
/// 			MasterFlavor:        pulumi.String("m1.medium"),
/// 			DnsNameserver:       pulumi.String("1.1.1.1"),
/// 			DockerStorageDriver: pulumi.String("devicemapper"),
/// 			DockerVolumeSize:    pulumi.Int(10),
/// 			VolumeDriver:        pulumi.String("cinder"),
/// 			NetworkDriver:       pulumi.String("flannel"),
/// 			ServerType:          pulumi.String("vm"),
/// 			MasterLbEnabled:     pulumi.Bool(true),
/// 			FloatingIpEnabled:   pulumi.Bool(false),
/// 			Labels: pulumi.StringMap{
/// 				"kube_tag":                         pulumi.String("1.11.1"),
/// 				"kube_dashboard_enabled":           pulumi.String("true"),
/// 				"prometheus_monitoring":            pulumi.String("true"),
/// 				"influx_grafana_dashboard_enabled": pulumi.String("true"),
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
/// import com.pulumi.openstack.containerinfra.ClusterTemplate;
/// import com.pulumi.openstack.containerinfra.ClusterTemplateArgs;
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
///         var clustertemplate1 = new ClusterTemplate("clustertemplate1", ClusterTemplateArgs.builder()
///             .name("clustertemplate_1")
///             .image("Fedora-Atomic-27")
///             .coe("kubernetes")
///             .flavor("m1.small")
///             .masterFlavor("m1.medium")
///             .dnsNameserver("1.1.1.1")
///             .dockerStorageDriver("devicemapper")
///             .dockerVolumeSize(10)
///             .volumeDriver("cinder")
///             .networkDriver("flannel")
///             .serverType("vm")
///             .masterLbEnabled(true)
///             .floatingIpEnabled(false)
///             .labels(Map.ofEntries(
///                 Map.entry("kube_tag", "1.11.1"),
///                 Map.entry("kube_dashboard_enabled", "true"),
///                 Map.entry("prometheus_monitoring", "true"),
///                 Map.entry("influx_grafana_dashboard_enabled", "true")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   clustertemplate1:
///     type: openstack:containerinfra:ClusterTemplate
///     name: clustertemplate_1
///     properties:
///       name: clustertemplate_1
///       image: Fedora-Atomic-27
///       coe: kubernetes
///       flavor: m1.small
///       masterFlavor: m1.medium
///       dnsNameserver: 1.1.1.1
///       dockerStorageDriver: devicemapper
///       dockerVolumeSize: 10
///       volumeDriver: cinder
///       networkDriver: flannel
///       serverType: vm
///       masterLbEnabled: true
///       floatingIpEnabled: false
///       labels:
///         kube_tag: 1.11.1
///         kube_dashboard_enabled: 'true'
///         prometheus_monitoring: 'true'
///         influx_grafana_dashboard_enabled: 'true'
/// ```
///
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * `region` - See Argument Reference above.
/// * `name` - See Argument Reference above.
/// * `project_id` - See Argument Reference above.
/// * `created_at` - The time at which cluster template was created.
/// * `updated_at` - The time at which cluster template was created.
/// * `apiserver_port` - See Argument Reference above.
/// * `coe` - See Argument Reference above.
/// * `cluster_distro` - See Argument Reference above.
/// * `dns_nameserver` - See Argument Reference above.
/// * `docker_storage_driver` - See Argument Reference above.
/// * `docker_volume_size` - See Argument Reference above.
/// * `external_network_id` - See Argument Reference above.
/// * `fixed_network` - See Argument Reference above.
/// * `fixed_subnet` - See Argument Reference above.
/// * `flavor` - See Argument Reference above.
/// * `master_flavor` - See Argument Reference above.
/// * `floating_ip_enabled` - See Argument Reference above.
/// * `http_proxy` - See Argument Reference above.
/// * `https_proxy` - See Argument Reference above.
/// * `image` - See Argument Reference above.
/// * `insecure_registry` - See Argument Reference above.
/// * `keypair_id` - See Argument Reference above.
/// * `labels` - See Argument Reference above.
/// * `links` - A list containing associated cluster template links.
/// * `master_lb_enabled` - See Argument Reference above.
/// * `network_driver` - See Argument Reference above.
/// * `no_proxy` - See Argument Reference above.
/// * `public` - See Argument Reference above.
/// * `registry_enabled` - See Argument Reference above.
/// * `server_type` - See Argument Reference above.
/// * `tls_disabled` - See Argument Reference above.
/// * `volume_driver` - See Argument Reference above.
/// * `hidden` - See Argument Reference above.
///
/// ## Import
///
/// Cluster templates can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:containerinfra/clusterTemplate:ClusterTemplate clustertemplate_1 b9a45c5c-cd03-4958-82aa-b80bf93cb922
/// ```
class ClusterTemplate extends pulumi.CustomResource {
  /// The API server port for the Container
  /// Orchestration Engine for this cluster template. Changing this updates the
  /// API server port of the existing cluster template.
  late final pulumi.Output<int?> apiserverPort;
  /// The distro for the cluster (fedora-atomic,
  /// coreos, etc.). Changing this updates the cluster distro of the existing
  /// cluster template.
  late final pulumi.Output<String> clusterDistro;
  /// The Container Orchestration Engine for this cluster
  /// template. Changing this updates the engine of the existing cluster
  /// template.
  late final pulumi.Output<String> coe;
  late final pulumi.Output<String> createdAt;
  /// Address of the DNS nameserver that is used in
  /// nodes of the cluster. Changing this updates the DNS nameserver of the
  /// existing cluster template.
  late final pulumi.Output<String?> dnsNameserver;
  /// Docker storage driver. Changing this
  /// updates the Docker storage driver of the existing cluster template.
  late final pulumi.Output<String?> dockerStorageDriver;
  /// The size (in GB) of the Docker volume.
  /// Changing this updates the Docker volume size of the existing cluster
  /// template.
  late final pulumi.Output<int?> dockerVolumeSize;
  /// The ID of the external network that will
  /// be used for the cluster. Changing this updates the external network ID of
  /// the existing cluster template.
  late final pulumi.Output<String?> externalNetworkId;
  /// The fixed network that will be attached to the
  /// cluster. Changing this updates the fixed network of the existing cluster
  /// template.
  late final pulumi.Output<String?> fixedNetwork;
  /// The fixed subnet that will be attached to the
  /// cluster. Changing this updates the fixed subnet of the existing cluster
  /// template.
  late final pulumi.Output<String?> fixedSubnet;
  /// The flavor for the nodes of the cluster. Can be set via
  /// the `OS_MAGNUM_FLAVOR` environment variable. Changing this updates the
  /// flavor of the existing cluster template.
  late final pulumi.Output<String?> flavor;
  /// Indicates whether created cluster should
  /// create floating IP for every node or not. Changing this updates the
  /// floating IP enabled attribute of the existing cluster template.
  late final pulumi.Output<bool?> floatingIpEnabled;
  /// Indicates whether the ClusterTemplate is hidden or not.
  /// Changing this updates the hidden attribute of the existing cluster
  /// template.
  late final pulumi.Output<bool?> hidden;
  /// The address of a proxy for receiving all HTTP
  /// requests and relay them. Changing this updates the HTTP proxy address of
  /// the existing cluster template.
  late final pulumi.Output<String?> httpProxy;
  /// The address of a proxy for receiving all HTTPS
  /// requests and relay them. Changing this updates the HTTPS proxy address of
  /// the existing cluster template.
  late final pulumi.Output<String?> httpsProxy;
  /// The reference to an image that is used for nodes of the
  /// cluster. Can be set via the `OS_MAGNUM_IMAGE` environment variable.
  /// Changing this updates the image attribute of the existing cluster template.
  late final pulumi.Output<String> image;
  /// The insecure registry URL for the cluster
  /// template. Changing this updates the insecure registry attribute of the
  /// existing cluster template.
  late final pulumi.Output<String?> insecureRegistry;
  /// The name of the Compute service SSH keypair.
  /// Changing this updates the keypair of the existing cluster template.
  late final pulumi.Output<String?> keypairId;
  /// The list of key value pairs representing additional
  /// properties of the cluster template. Changing this updates the labels of the
  /// existing cluster template.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The flavor for the master nodes. Can be set via
  /// the `OS_MAGNUM_MASTER_FLAVOR` environment variable. Changing this updates
  /// the master flavor of the existing cluster template.
  late final pulumi.Output<String?> masterFlavor;
  /// Indicates whether created cluster should
  /// has a loadbalancer for master nodes or not. Changing this updates the
  /// attribute of the existing cluster template.
  late final pulumi.Output<bool?> masterLbEnabled;
  /// The name of the cluster template. Changing this updates
  /// the name of the existing cluster template.
  late final pulumi.Output<String> name;
  /// The name of the driver for the container
  /// network. Changing this updates the network driver of the existing cluster
  /// template.
  late final pulumi.Output<String> networkDriver;
  /// A comma-separated list of IP addresses that shouldn't
  /// be used in the cluster. Changing this updates the no proxy list of the
  /// existing cluster template.
  late final pulumi.Output<String?> noProxy;
  /// The project of the cluster template. Required if
  /// admin wants to create a cluster template in another project. Changing this
  /// creates a new cluster template.
  late final pulumi.Output<String> projectId;
  /// Indicates whether cluster template should be public.
  /// Changing this updates the public attribute of the existing cluster
  /// template.
  late final pulumi.Output<bool?> public;
  /// The region in which to obtain the V1 Container Infra
  /// client. A Container Infra client is needed to create a cluster template. If
  /// omitted,the `region` argument of the provider is used. Changing this
  /// creates a new cluster template.
  late final pulumi.Output<String> region;
  /// Indicates whether Docker registry is enabled
  /// in the cluster. Changing this updates the registry enabled attribute of the
  /// existing cluster template.
  late final pulumi.Output<bool?> registryEnabled;
  /// The server type for the cluster template. Changing
  /// this updates the server type of the existing cluster template.
  late final pulumi.Output<String> serverType;
  /// Indicates whether the TLS should be disabled in
  /// the cluster. Changing this updates the attribute of the existing cluster.
  late final pulumi.Output<bool?> tlsDisabled;
  late final pulumi.Output<String> updatedAt;
  /// The user of the cluster template. Required if admin
  /// wants to create a cluster template for another user. Changing this creates
  /// a new cluster template.
  late final pulumi.Output<String> userId;
  /// The name of the driver that is used for the
  /// volumes of the cluster nodes. Changing this updates the volume driver of
  /// the existing cluster template.
  late final pulumi.Output<String?> volumeDriver;

  /// Creates a new [ClusterTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterTemplate]. {@macro pulumi_containerinfra_cluster_template_cluster_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterTemplate(
    String name, {
    ClusterTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:containerinfra/clusterTemplate:ClusterTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiserverPort = registerOutput<int?>('apiserverPort');
    this.clusterDistro = registerOutput<String>('clusterDistro');
    this.coe = registerOutput<String>('coe');
    this.createdAt = registerOutput<String>('createdAt');
    this.dnsNameserver = registerOutput<String?>('dnsNameserver');
    this.dockerStorageDriver = registerOutput<String?>('dockerStorageDriver');
    this.dockerVolumeSize = registerOutput<int?>('dockerVolumeSize');
    this.externalNetworkId = registerOutput<String?>('externalNetworkId');
    this.fixedNetwork = registerOutput<String?>('fixedNetwork');
    this.fixedSubnet = registerOutput<String?>('fixedSubnet');
    this.flavor = registerOutput<String?>('flavor');
    this.floatingIpEnabled = registerOutput<bool?>('floatingIpEnabled');
    this.hidden = registerOutput<bool?>('hidden');
    this.httpProxy = registerOutput<String?>('httpProxy');
    this.httpsProxy = registerOutput<String?>('httpsProxy');
    this.image = registerOutput<String>('image');
    this.insecureRegistry = registerOutput<String?>('insecureRegistry');
    this.keypairId = registerOutput<String?>('keypairId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.masterFlavor = registerOutput<String?>('masterFlavor');
    this.masterLbEnabled = registerOutput<bool?>('masterLbEnabled');
    this.name = registerOutput<String>('name');
    this.networkDriver = registerOutput<String>('networkDriver');
    this.noProxy = registerOutput<String?>('noProxy');
    this.projectId = registerOutput<String>('projectId');
    this.public = registerOutput<bool?>('public');
    this.region = registerOutput<String>('region');
    this.registryEnabled = registerOutput<bool?>('registryEnabled');
    this.serverType = registerOutput<String>('serverType');
    this.tlsDisabled = registerOutput<bool?>('tlsDisabled');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.userId = registerOutput<String>('userId');
    this.volumeDriver = registerOutput<String?>('volumeDriver');
  }
}
