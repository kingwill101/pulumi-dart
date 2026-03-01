import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_kubernetes_addon.dart';
import 'serverless_kubernetes_args.dart';
import 'serverless_kubernetes_delete_option.dart';
import 'serverless_kubernetes_maintenance_window.dart';
import 'serverless_kubernetes_operation_policy.dart';
import 'serverless_kubernetes_rrsa_metadata.dart';
import 'serverless_kubernetes_state.dart';

/// This resource will help you to manager a Serverless Kubernetes Cluster, see [What is serverless kubernetes](https://www.alibabacloud.com/help/en/ack/ack-managed-and-ack-dedicated/developer-reference/create-a-dedicated-kubernetes-cluster-that-supports-sandboxed-containers). The cluster is same as container service created by web console.
///
/// > **NOTE:** Available since v1.58.0.
///
/// > **NOTE:** Serverless Kubernetes cluster only supports VPC network and it can access internet while creating kubernetes cluster.
/// A Nat Gateway and configuring a SNAT for it can ensure one VPC network access internet. If there is no nat gateway in the
/// VPC, you can set `new_nat_gateway` to "true" to create one automatically.
///
/// > **NOTE:** Creating serverless kubernetes cluster need to install several packages and it will cost about 5 minutes. Please be patient.
///
/// > **NOTE:** The provider supports to download kube config, client certificate, client key and cluster ca certificate
/// after creating cluster successfully, and you can put them into the specified location, like '~/.kube/config'.
///
/// > **NOTE:** If you want to manage serverless Kubernetes, you can use Kubernetes Provider.
///
/// > **NOTE:** You need to activate several other products and confirm Authorization Policy used by Container Service before using this resource.
/// Please refer to the `Authorization management` and `Cluster management` sections in the [Document Center](https://www.alibabacloud.com/help/doc-detail/86488.htm).
///
/// > **NOTE:** From version 1.162.0, support for creating professional serverless cluster.
///
/// > **NOTE:** From version 1.229.1, support to migrate basic serverless cluster to professional serverless cluster.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "ask-example-pro";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.2.0.0/21",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "10.2.1.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const serverless = new alicloud.cs.ServerlessKubernetes("serverless", {
///     namePrefix: name,
///     clusterSpec: "ack.pro.small",
///     vpcId: defaultNetwork.id,
///     vswitchIds: [defaultSwitch.id],
///     newNatGateway: true,
///     endpointPublicAccessEnabled: true,
///     deletionProtection: false,
///     timeZone: "Asia/Shanghai",
///     serviceCidr: "172.21.0.0/20",
///     tags: {
///         "k-aa": "v-aa",
///         "k-bb": "v-bb",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "ask-example-pro"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.2.0.0/21")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="10.2.1.0/24",
///     zone_id=default.zones[0].id)
/// serverless = alicloud.cs.ServerlessKubernetes("serverless",
///     name_prefix=name,
///     cluster_spec="ack.pro.small",
///     vpc_id=default_network.id,
///     vswitch_ids=[default_switch.id],
///     new_nat_gateway=True,
///     endpoint_public_access_enabled=True,
///     deletion_protection=False,
///     time_zone="Asia/Shanghai",
///     service_cidr="172.21.0.0/20",
///     tags={
///         "k-aa": "v-aa",
///         "k-bb": "v-bb",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "ask-example-pro";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.2.0.0/21",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "10.2.1.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var serverless = new AliCloud.CS.ServerlessKubernetes("serverless", new()
///     {
///         NamePrefix = name,
///         ClusterSpec = "ack.pro.small",
///         VpcId = defaultNetwork.Id,
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         NewNatGateway = true,
///         EndpointPublicAccessEnabled = true,
///         DeletionProtection = false,
///         TimeZone = "Asia/Shanghai",
///         ServiceCidr = "172.21.0.0/20",
///         Tags =
///         {
///             { "k-aa", "v-aa" },
///             { "k-bb", "v-bb" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "ask-example-pro"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.2.0.0/21"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("10.2.1.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cs.NewServerlessKubernetes(ctx, "serverless", &cs.ServerlessKubernetesArgs{
/// 			NamePrefix:  pulumi.String(name),
/// 			ClusterSpec: pulumi.String("ack.pro.small"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			NewNatGateway:               pulumi.Bool(true),
/// 			EndpointPublicAccessEnabled: pulumi.Bool(true),
/// 			DeletionProtection:          pulumi.Bool(false),
/// 			TimeZone:                    pulumi.String("Asia/Shanghai"),
/// 			ServiceCidr:                 pulumi.String("172.21.0.0/20"),
/// 			Tags: pulumi.StringMap{
/// 				"k-aa": pulumi.String("v-aa"),
/// 				"k-bb": pulumi.String("v-bb"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cs.ServerlessKubernetes;
/// import com.pulumi.alicloud.cs.ServerlessKubernetesArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("ask-example-pro");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.2.0.0/21")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("10.2.1.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var serverless = new ServerlessKubernetes("serverless", ServerlessKubernetesArgs.builder()
///             .namePrefix(name)
///             .clusterSpec("ack.pro.small")
///             .vpcId(defaultNetwork.id())
///             .vswitchIds(defaultSwitch.id())
///             .newNatGateway(true)
///             .endpointPublicAccessEnabled(true)
///             .deletionProtection(false)
///             .timeZone("Asia/Shanghai")
///             .serviceCidr("172.21.0.0/20")
///             .tags(Map.ofEntries(
///                 Map.entry("k-aa", "v-aa"),
///                 Map.entry("k-bb", "v-bb")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: ask-example-pro
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.2.0.0/21
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 10.2.1.0/24
///       zoneId: ${default.zones[0].id}
///   serverless:
///     type: alicloud:cs:ServerlessKubernetes
///     properties:
///       namePrefix: ${name}
///       clusterSpec: ack.pro.small
///       vpcId: ${defaultNetwork.id}
///       vswitchIds:
///         - ${defaultSwitch.id}
///       newNatGateway: true
///       endpointPublicAccessEnabled: true
///       deletionProtection: false
///       timeZone: Asia/Shanghai
///       serviceCidr: 172.21.0.0/20
///       tags:
///         k-aa: v-aa
///         k-bb: v-bb
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Serverless Kubernetes cluster can be imported using the id, e.g. Then complete the main.tf accords to the result of `pulumi preview`.
///
/// ```sh
/// $ pulumi import alicloud:cs/serverlessKubernetes:ServerlessKubernetes main ce4273f9156874b46bb
/// ```
class ServerlessKubernetes extends pulumi.CustomResource {
  /// You can specific network plugin, log component, ingress component and so on. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  late final pulumi.Output<List<ServerlessKubernetesAddon>?> addons;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  late final pulumi.Output<String?> clientCert;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  late final pulumi.Output<String?> clientKey;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  late final pulumi.Output<String?> clusterCaCert;
  /// The cluster specifications of serverless kubernetes cluster, which can be empty. Valid values:
  /// - ack.standard: Standard serverless clusters.
  /// - ack.pro.small: Professional serverless clusters.
  late final pulumi.Output<String> clusterSpec;
  /// Customize the certificate SAN, multiple IP or domain names are separated by English commas (,).
  /// > **NOTE:** Make sure you have specified all certificate SANs before updating. Updating this field will lead APIServer to restart.
  late final pulumi.Output<String?> customSan;
  /// Delete options, only work for deleting resource. Make sure you have run `pulumi up` to make the configuration applied. See `delete_options` below.
  late final pulumi.Output<List<ServerlessKubernetesDeleteOption>?> deleteOptions;
  /// Whether enable the deletion protection or not.
  /// - true: Enable deletion protection.
  /// - false: Disable deletion protection.
  late final pulumi.Output<bool?> deletionProtection;
  /// Whether to enable cluster to support RRSA for version 1.22.3+. Default to `false`. Once the RRSA function is turned on, it is not allowed to turn off. If your cluster has enabled this function, please manually modify your tf file and add the rrsa configuration to the file, learn more [RAM Roles for Service Accounts](https://www.alibabacloud.com/help/zh/container-service-for-kubernetes/latest/use-rrsa-to-enforce-access-control).
  late final pulumi.Output<bool?> enableRrsa;
  /// Whether to create internet eip for API Server. Default to false. Only works for **Create** Operation.
  late final pulumi.Output<bool?> endpointPublicAccessEnabled;
  /// The path of kube config, like ~/.kube/config. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  late final pulumi.Output<String?> kubeConfig;
  /// The cluster api server load balance instance specification, default `slb.s2.small`. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html). Only works for **Create** Operation.
  late final pulumi.Output<String> loadBalancerSpec;
  /// Enable log service, Valid value `SLS`. Only works for **Create** Operation.
  late final pulumi.Output<String?> loggingType;
  /// The cluster maintenance window，effective only in the professional managed cluster. Managed node pool will use it. See `maintenance_window` below.
  late final pulumi.Output<ServerlessKubernetesMaintenanceWindow> maintenanceWindow;
  /// The kubernetes cluster's name. It is the only in one Alicloud account.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> namePrefix;
  /// Whether to create a new nat gateway while creating kubernetes cluster. SNAT must be configured when a new VPC is automatically created. Default is `true`.
  late final pulumi.Output<bool?> newNatGateway;
  /// The cluster automatic operation policy. See `operation_policy` below.
  ///
  /// *Removed params*
  late final pulumi.Output<ServerlessKubernetesOperationPolicy> operationPolicy;
  /// Has been deprecated from provider version 1.123.1. `PrivateZone` is used as the enumeration value of `service_discovery_types`.
  late final pulumi.Output<bool?> privateZone;
  /// The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  late final pulumi.Output<String> resourceGroupId;
  late final pulumi.Output<List<String>?> retainResources;
  /// Nested attribute containing RRSA related data for your cluster.
  late final pulumi.Output<ServerlessKubernetesRrsaMetadata> rrsaMetadata;
  /// The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  late final pulumi.Output<String> securityGroupId;
  /// CIDR block of the service network. The specified CIDR block cannot overlap with that of the VPC or those of the ACK clusters that are deployed in the VPC. The CIDR block cannot be modified after the cluster is created.
  late final pulumi.Output<String?> serviceCidr;
  /// Service discovery type. Only works for **Create** Operation. If the value is empty, it means that service discovery is not enabled. Valid values are `CoreDNS` and `PrivateZone`.
  late final pulumi.Output<List<String>?> serviceDiscoveryTypes;
  /// If you use an existing SLS project, you must specify `sls_project_name`. Only works for **Create** Operation.
  late final pulumi.Output<String> slsProjectName;
  /// Default nil, A map of tags assigned to the kubernetes cluster and work nodes.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The time zone of the cluster.
  late final pulumi.Output<String> timeZone;
  /// Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used.  Do not specify if cluster auto upgrade is enabled, see cluster_auto_upgrade for more information.
  late final pulumi.Output<String> version;
  /// The vpc where new kubernetes cluster will be located. Specify one vpc's id, if it is not specified, a new VPC will be built.
  late final pulumi.Output<String> vpcId;
  /// The vswitches where new kubernetes cluster will be located.
  late final pulumi.Output<List<String>> vswitchIds;
  /// When creating a cluster using automatic VPC creation, you need to specify the zone where the VPC is located. Only works for **Create** Operation.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [ServerlessKubernetes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessKubernetes]. {@macro pulumi_cs_serverless_kubernetes_serverless_kubernetes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessKubernetes(
    String name, {
    ServerlessKubernetesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/serverlessKubernetes:ServerlessKubernetes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addons = registerOutput<List<ServerlessKubernetesAddon>?>('addons');
    this.clientCert = registerOutput<String?>('clientCert');
    this.clientKey = registerOutput<String?>('clientKey');
    this.clusterCaCert = registerOutput<String?>('clusterCaCert');
    this.clusterSpec = registerOutput<String>('clusterSpec');
    this.customSan = registerOutput<String?>('customSan');
    this.deleteOptions = registerOutput<List<ServerlessKubernetesDeleteOption>?>('deleteOptions');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.enableRrsa = registerOutput<bool?>('enableRrsa');
    this.endpointPublicAccessEnabled = registerOutput<bool?>('endpointPublicAccessEnabled');
    this.kubeConfig = registerOutput<String?>('kubeConfig');
    this.loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    this.loggingType = registerOutput<String?>('loggingType');
    this.maintenanceWindow = registerOutput<ServerlessKubernetesMaintenanceWindow>('maintenanceWindow');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String?>('namePrefix');
    this.newNatGateway = registerOutput<bool?>('newNatGateway');
    this.operationPolicy = registerOutput<ServerlessKubernetesOperationPolicy>('operationPolicy');
    this.privateZone = registerOutput<bool?>('privateZone');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.retainResources = registerOutput<List<String>?>('retainResources');
    this.rrsaMetadata = registerOutput<ServerlessKubernetesRrsaMetadata>('rrsaMetadata');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.serviceCidr = registerOutput<String?>('serviceCidr');
    this.serviceDiscoveryTypes = registerOutput<List<String>?>('serviceDiscoveryTypes');
    this.slsProjectName = registerOutput<String>('slsProjectName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeZone = registerOutput<String>('timeZone');
    this.version = registerOutput<String>('version');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchIds = registerOutput<List<String>>('vswitchIds');
    this.zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [ServerlessKubernetes] resource's state with the given [name] and [id].
  static ServerlessKubernetes get(
    String name,
    pulumi.Input<String> id, {
    ServerlessKubernetesState? state,
  }) {
    return ServerlessKubernetes._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerlessKubernetes._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/serverlessKubernetes:ServerlessKubernetes',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addons = registerOutput<List<ServerlessKubernetesAddon>?>('addons');
    this.clientCert = registerOutput<String?>('clientCert');
    this.clientKey = registerOutput<String?>('clientKey');
    this.clusterCaCert = registerOutput<String?>('clusterCaCert');
    this.clusterSpec = registerOutput<String>('clusterSpec');
    this.customSan = registerOutput<String?>('customSan');
    this.deleteOptions = registerOutput<List<ServerlessKubernetesDeleteOption>?>('deleteOptions');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.enableRrsa = registerOutput<bool?>('enableRrsa');
    this.endpointPublicAccessEnabled = registerOutput<bool?>('endpointPublicAccessEnabled');
    this.kubeConfig = registerOutput<String?>('kubeConfig');
    this.loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    this.loggingType = registerOutput<String?>('loggingType');
    this.maintenanceWindow = registerOutput<ServerlessKubernetesMaintenanceWindow>('maintenanceWindow');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String?>('namePrefix');
    this.newNatGateway = registerOutput<bool?>('newNatGateway');
    this.operationPolicy = registerOutput<ServerlessKubernetesOperationPolicy>('operationPolicy');
    this.privateZone = registerOutput<bool?>('privateZone');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.retainResources = registerOutput<List<String>?>('retainResources');
    this.rrsaMetadata = registerOutput<ServerlessKubernetesRrsaMetadata>('rrsaMetadata');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.serviceCidr = registerOutput<String?>('serviceCidr');
    this.serviceDiscoveryTypes = registerOutput<List<String>?>('serviceDiscoveryTypes');
    this.slsProjectName = registerOutput<String>('slsProjectName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeZone = registerOutput<String>('timeZone');
    this.version = registerOutput<String>('version');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchIds = registerOutput<List<String>>('vswitchIds');
    this.zoneId = registerOutput<String?>('zoneId');
  }
}
