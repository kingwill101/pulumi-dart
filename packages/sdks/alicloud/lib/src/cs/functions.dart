import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ack_service_args.dart';
import 'get_ack_service_result.dart';
import 'get_cluster_credential_args.dart';
import 'get_cluster_credential_result.dart';
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_edge_kubernetes_clusters_args.dart';
import 'get_edge_kubernetes_clusters_result.dart';
import 'get_kubernetes_addon_metadata_args.dart';
import 'get_kubernetes_addon_metadata_result.dart';
import 'get_kubernetes_addons_args.dart';
import 'get_kubernetes_addons_result.dart';
import 'get_kubernetes_clusters_args.dart';
import 'get_kubernetes_clusters_result.dart';
import 'get_kubernetes_node_pools_args.dart';
import 'get_kubernetes_node_pools_result.dart';
import 'get_kubernetes_permission_args.dart';
import 'get_kubernetes_permission_result.dart';
import 'get_kubernetes_version_args.dart';
import 'get_kubernetes_version_result.dart';
import 'get_managed_kubernetes_clusters_args.dart';
import 'get_managed_kubernetes_clusters_result.dart';
import 'get_registry_enterprise_instances_args.dart';
import 'get_registry_enterprise_instances_result.dart';
import 'get_registry_enterprise_namespaces_args.dart';
import 'get_registry_enterprise_namespaces_result.dart';
import 'get_registry_enterprise_repos_args.dart';
import 'get_registry_enterprise_repos_result.dart';
import 'get_registry_enterprise_sync_rules_args.dart';
import 'get_registry_enterprise_sync_rules_result.dart';
import 'get_serverless_kubernetes_clusters_args.dart';
import 'get_serverless_kubernetes_clusters_result.dart';

/// Using this data source can open Container Service (CS) service automatically. If the service has been opened, it will return opened.
///
/// For information about Container Service (CS) and how to use it, see [What is Container Service (CS)](https://www.alibabacloud.com/help/en/product/85222.htm).
///
/// > **NOTE:** Available in v1.113.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.cs.getAckService({
///     enable: "On",
///     type: "propayasgo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.cs.get_ack_service(enable="On",
///     type="propayasgo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.CS.GetAckService.Invoke(new()
///     {
///         Enable = "On",
///         Type = "propayasgo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cs.GetAckService(ctx, &cs.GetAckServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 			Type:   "propayasgo",
/// 		}, nil)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetAckServiceArgs;
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
///         final var open = CsFunctions.getAckService(GetAckServiceArgs.builder()
///             .enable("On")
///             .type("propayasgo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:cs:getAckService
///       arguments:
///         enable: On
///         type: propayasgo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_ack_service_get_ack_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAckServiceResult> getAckService(
  GetAckServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getAckService:getAckService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAckServiceResult.fromMap(result);
}

/// This data source provides Container Service cluster credential on Alibaba Cloud.
///
/// > **NOTE:** Available since v1.187.0
///
/// > **NOTE:** This datasource can be used on all kinds of ACK clusters, including managed clusters, imported kubernetes clusters, serverless clusters and edge clusters. Please make sure that the target cluster is not in the failed state before using this datasource, since the api server of clusters in the failed state cannot be accessed.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// // Declare the data source
/// const k8s = alicloud.cs.getManagedKubernetesClusters({
///     nameRegex: "my-cluster",
///     enableDetails: false,
/// });
/// const auth = k8s.then(k8s => std.toset({
///     input: k8s.ids,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: alicloud.cs.getClusterCredential({
///     clusterId: __key,
///     temporaryDurationMinutes: 60,
///     outputFile: "my-auth-json",
/// }) })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// # Declare the data source
/// k8s = alicloud.cs.get_managed_kubernetes_clusters(name_regex="my-cluster",
///     enable_details=False)
/// auth = {__key: alicloud.cs.get_cluster_credential(cluster_id=__key,
///     temporary_duration_minutes=60,
///     output_file="my-auth-json") for __key, __value in std.toset(input=k8s.ids).result}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var k8s = AliCloud.CS.GetManagedKubernetesClusters.Invoke(new()
///     {
///         NameRegex = "my-cluster",
///         EnableDetails = false,
///     });
///
///     var auth = Std.Toset.Invoke(new()
///     {
///         Input = k8s.Apply(getManagedKubernetesClustersResult => getManagedKubernetesClustersResult.Ids),
///     }).Apply(invoke => );
///
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_cluster_credential_get_cluster_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterCredentialResult> getClusterCredential(
  GetClusterCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getClusterCredential:getClusterCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterCredentialResult.fromMap(result);
}

/// This data source provides Ack Cluster available to the user.[What is Cluster](https://next.api.alibabacloud.com/document/CS/2015-12-15/CreateCluster)
///
/// > **NOTE:** Available since v1.269.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const zone1 = config.get("zone1") || "cn-hangzhou-k";
/// const zone2 = config.get("zone2") || "cn-hangzhou-g";
/// const vsw1Cidr = config.get("vsw1Cidr") || "10.1.0.0/24";
/// const vsw2Cidr = config.get("vsw2Cidr") || "10.1.1.0/24";
/// const containerCidr = config.get("containerCidr") || "172.17.3.0/24";
/// const serviceCidr = config.get("serviceCidr") || "172.17.2.0/24";
/// const defaultNetwork = new alicloud.vpc.Network("default", {cidrBlock: "10.0.0.0/8"});
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     vpcId: defaultNetwork.id,
///     securityGroupName: "tf-example-security-group",
///     securityGroupType: "normal",
/// });
/// const default0 = new alicloud.vpc.Switch("default0", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: vsw1Cidr,
///     zoneId: zone1,
/// });
/// const default1 = new alicloud.vpc.Switch("default1", {
///     vpcId: defaultNetwork.id,
///     zoneId: zone2,
///     cidrBlock: vsw2Cidr,
/// });
/// const defaultManagedKubernetes = new alicloud.cs.ManagedKubernetes("default", {
///     podCidr: containerCidr,
///     vswitchIds: [
///         default0.id,
///         default1.id,
///     ],
///     serviceCidr: serviceCidr,
///     securityGroupId: defaultSecurityGroup.id,
///     clusterSpec: "ack.pro.small",
/// });
/// const _default = alicloud.cs.getClustersOutput({
///     ids: [defaultManagedKubernetes.id],
///     nameRegex: defaultManagedKubernetes.name,
/// });
/// export const alicloudCsManagedKubernetesExampleId = _default.apply(_default => _default.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// zone1 = config.get("zone1")
/// if zone1 is None:
///     zone1 = "cn-hangzhou-k"
/// zone2 = config.get("zone2")
/// if zone2 is None:
///     zone2 = "cn-hangzhou-g"
/// vsw1_cidr = config.get("vsw1Cidr")
/// if vsw1_cidr is None:
///     vsw1_cidr = "10.1.0.0/24"
/// vsw2_cidr = config.get("vsw2Cidr")
/// if vsw2_cidr is None:
///     vsw2_cidr = "10.1.1.0/24"
/// container_cidr = config.get("containerCidr")
/// if container_cidr is None:
///     container_cidr = "172.17.3.0/24"
/// service_cidr = config.get("serviceCidr")
/// if service_cidr is None:
///     service_cidr = "172.17.2.0/24"
/// default_network = alicloud.vpc.Network("default", cidr_block="10.0.0.0/8")
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     vpc_id=default_network.id,
///     security_group_name="tf-example-security-group",
///     security_group_type="normal")
/// default0 = alicloud.vpc.Switch("default0",
///     vpc_id=default_network.id,
///     cidr_block=vsw1_cidr,
///     zone_id=zone1)
/// default1 = alicloud.vpc.Switch("default1",
///     vpc_id=default_network.id,
///     zone_id=zone2,
///     cidr_block=vsw2_cidr)
/// default_managed_kubernetes = alicloud.cs.ManagedKubernetes("default",
///     pod_cidr=container_cidr,
///     vswitch_ids=[
///         default0.id,
///         default1.id,
///     ],
///     service_cidr=service_cidr,
///     security_group_id=default_security_group.id,
///     cluster_spec="ack.pro.small")
/// default = alicloud.cs.get_clusters_output(ids=[default_managed_kubernetes.id],
///     name_regex=default_managed_kubernetes.name)
/// pulumi.export("alicloudCsManagedKubernetesExampleId", default.clusters[0].id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var zone1 = config.Get("zone1") ?? "cn-hangzhou-k";
///     var zone2 = config.Get("zone2") ?? "cn-hangzhou-g";
///     var vsw1Cidr = config.Get("vsw1Cidr") ?? "10.1.0.0/24";
///     var vsw2Cidr = config.Get("vsw2Cidr") ?? "10.1.1.0/24";
///     var containerCidr = config.Get("containerCidr") ?? "172.17.3.0/24";
///     var serviceCidr = config.Get("serviceCidr") ?? "172.17.2.0/24";
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         SecurityGroupName = "tf-example-security-group",
///         SecurityGroupType = "normal",
///     });
///
///     var default0 = new AliCloud.Vpc.Switch("default0", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = vsw1Cidr,
///         ZoneId = zone1,
///     });
///
///     var default1 = new AliCloud.Vpc.Switch("default1", new()
///     {
///         VpcId = defaultNetwork.Id,
///         ZoneId = zone2,
///         CidrBlock = vsw2Cidr,
///     });
///
///     var defaultManagedKubernetes = new AliCloud.CS.ManagedKubernetes("default", new()
///     {
///         PodCidr = containerCidr,
///         VswitchIds = new[]
///         {
///             default0.Id,
///             default1.Id,
///         },
///         ServiceCidr = serviceCidr,
///         SecurityGroupId = defaultSecurityGroup.Id,
///         ClusterSpec = "ack.pro.small",
///     });
///
///     var @default = AliCloud.CS.GetClusters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultManagedKubernetes.Id,
///         },
///         NameRegex = defaultManagedKubernetes.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCsManagedKubernetesExampleId"] = @default.Apply(@default => @default.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// zone1 := "cn-hangzhou-k";
/// if param := cfg.Get("zone1"); param != ""{
/// zone1 = param
/// }
/// zone2 := "cn-hangzhou-g";
/// if param := cfg.Get("zone2"); param != ""{
/// zone2 = param
/// }
/// vsw1Cidr := "10.1.0.0/24";
/// if param := cfg.Get("vsw1Cidr"); param != ""{
/// vsw1Cidr = param
/// }
/// vsw2Cidr := "10.1.1.0/24";
/// if param := cfg.Get("vsw2Cidr"); param != ""{
/// vsw2Cidr = param
/// }
/// containerCidr := "172.17.3.0/24";
/// if param := cfg.Get("containerCidr"); param != ""{
/// containerCidr = param
/// }
/// serviceCidr := "172.17.2.0/24";
/// if param := cfg.Get("serviceCidr"); param != ""{
/// serviceCidr = param
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// CidrBlock: pulumi.String("10.0.0.0/8"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// VpcId: defaultNetwork.ID(),
/// SecurityGroupName: pulumi.String("tf-example-security-group"),
/// SecurityGroupType: pulumi.String("normal"),
/// })
/// if err != nil {
/// return err
/// }
/// default0, err := vpc.NewSwitch(ctx, "default0", &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String(vsw1Cidr),
/// ZoneId: pulumi.String(zone1),
/// })
/// if err != nil {
/// return err
/// }
/// default1, err := vpc.NewSwitch(ctx, "default1", &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// ZoneId: pulumi.String(zone2),
/// CidrBlock: pulumi.String(vsw2Cidr),
/// })
/// if err != nil {
/// return err
/// }
/// defaultManagedKubernetes, err := cs.NewManagedKubernetes(ctx, "default", &cs.ManagedKubernetesArgs{
/// PodCidr: pulumi.String(containerCidr),
/// VswitchIds: pulumi.StringArray{
/// default0.ID(),
/// default1.ID(),
/// },
/// ServiceCidr: pulumi.String(serviceCidr),
/// SecurityGroupId: defaultSecurityGroup.ID(),
/// ClusterSpec: pulumi.String("ack.pro.small"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := cs.GetClustersOutput(ctx, cs.GetClustersOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultManagedKubernetes.ID(),
/// },
/// NameRegex: defaultManagedKubernetes.Name,
/// }, nil);
/// ctx.Export("alicloudCsManagedKubernetesExampleId", _default.ApplyT(func(_default cs.GetClustersResult) (*string, error) {
/// return &default.Clusters[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetClustersArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var zone1 = config.get("zone1").orElse("cn-hangzhou-k");
///         final var zone2 = config.get("zone2").orElse("cn-hangzhou-g");
///         final var vsw1Cidr = config.get("vsw1Cidr").orElse("10.1.0.0/24");
///         final var vsw2Cidr = config.get("vsw2Cidr").orElse("10.1.1.0/24");
///         final var containerCidr = config.get("containerCidr").orElse("172.17.3.0/24");
///         final var serviceCidr = config.get("serviceCidr").orElse("172.17.2.0/24");
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .securityGroupName("tf-example-security-group")
///             .securityGroupType("normal")
///             .build());
///
///         var default0 = new Switch("default0", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock(vsw1Cidr)
///             .zoneId(zone1)
///             .build());
///
///         var default1 = new Switch("default1", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .zoneId(zone2)
///             .cidrBlock(vsw2Cidr)
///             .build());
///
///         var defaultManagedKubernetes = new ManagedKubernetes("defaultManagedKubernetes", ManagedKubernetesArgs.builder()
///             .podCidr(containerCidr)
///             .vswitchIds(
///                 default0.id(),
///                 default1.id())
///             .serviceCidr(serviceCidr)
///             .securityGroupId(defaultSecurityGroup.id())
///             .clusterSpec("ack.pro.small")
///             .build());
///
///         final var default = CsFunctions.getClusters(GetClustersArgs.builder()
///             .ids(defaultManagedKubernetes.id())
///             .nameRegex(defaultManagedKubernetes.name())
///             .build());
///
///         ctx.export("alicloudCsManagedKubernetesExampleId", default_.applyValue(_default_ -> _default_.clusters()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   zone1:
///     type: string
///     default: cn-hangzhou-k
///   zone2:
///     type: string
///     default: cn-hangzhou-g
///   vsw1Cidr:
///     type: string
///     default: 10.1.0.0/24
///   vsw2Cidr:
///     type: string
///     default: 10.1.1.0/24
///   containerCidr:
///     type: string
///     default: 172.17.3.0/24
///   serviceCidr:
///     type: string
///     default: 172.17.2.0/24
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       cidrBlock: 10.0.0.0/8
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       securityGroupName: tf-example-security-group
///       securityGroupType: normal
///   default0:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: ${vsw1Cidr}
///       zoneId: ${zone1}
///   default1:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${zone2}
///       cidrBlock: ${vsw2Cidr}
///   defaultManagedKubernetes:
///     type: alicloud:cs:ManagedKubernetes
///     name: default
///     properties:
///       podCidr: ${containerCidr}
///       vswitchIds:
///         - ${default0.id}
///         - ${default1.id}
///       serviceCidr: ${serviceCidr}
///       securityGroupId: ${defaultSecurityGroup.id}
///       clusterSpec: ack.pro.small
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cs:getClusters
///       arguments:
///         ids:
///           - ${defaultManagedKubernetes.id}
///         nameRegex: ${defaultManagedKubernetes.name}
/// outputs:
///   alicloudCsManagedKubernetesExampleId: ${default.clusters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

/// This data source provides a list Container Service Edge Kubernetes Clusters on Alibaba Cloud.
///
/// > **NOTE:** Available since v1.103.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const k8sClusters = alicloud.cs.getEdgeKubernetesClusters({
///     nameRegex: "my-first-k8s",
///     outputFile: "my-first-k8s-json",
/// });
/// export const output = k8sClusters.then(k8sClusters => k8sClusters.clusters);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// k8s_clusters = alicloud.cs.get_edge_kubernetes_clusters(name_regex="my-first-k8s",
///     output_file="my-first-k8s-json")
/// pulumi.export("output", k8s_clusters.clusters)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var k8sClusters = AliCloud.CS.GetEdgeKubernetesClusters.Invoke(new()
///     {
///         NameRegex = "my-first-k8s",
///         OutputFile = "my-first-k8s-json",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["output"] = k8sClusters.Apply(getEdgeKubernetesClustersResult => getEdgeKubernetesClustersResult.Clusters),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		k8sClusters, err := cs.GetEdgeKubernetesClusters(ctx, &cs.GetEdgeKubernetesClustersArgs{
/// 			NameRegex:  pulumi.StringRef("my-first-k8s"),
/// 			OutputFile: pulumi.StringRef("my-first-k8s-json"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("output", k8sClusters.Clusters)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetEdgeKubernetesClustersArgs;
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
///         // Declare the data source
///         final var k8sClusters = CsFunctions.getEdgeKubernetesClusters(GetEdgeKubernetesClustersArgs.builder()
///             .nameRegex("my-first-k8s")
///             .outputFile("my-first-k8s-json")
///             .build());
///
///         ctx.export("output", k8sClusters.clusters());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   k8sClusters:
///     fn::invoke:
///       function: alicloud:cs:getEdgeKubernetesClusters
///       arguments:
///         nameRegex: my-first-k8s
///         outputFile: my-first-k8s-json
/// outputs:
///   output: ${k8sClusters.clusters}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_edge_kubernetes_clusters_get_edge_kubernetes_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeKubernetesClustersResult> getEdgeKubernetesClusters(
  GetEdgeKubernetesClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getEdgeKubernetesClusters:getEdgeKubernetesClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeKubernetesClustersResult.fromMap(result);
}

/// This data source provides metadata of kubernetes cluster addons.
///
/// > **NOTE:** Available in 1.166.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultManagedKubernetes = new alicloud.cs.ManagedKubernetes("default", {
///     namePrefix: name,
///     clusterSpec: "ack.pro.small",
///     workerVswitchIds: [defaultSwitch.id],
///     newNatGateway: false,
///     podCidr: std.cidrsubnet({
///         input: "10.0.0.0/8",
///         newbits: 8,
///         netnum: 36,
///     }).then(invoke => invoke.result),
///     serviceCidr: std.cidrsubnet({
///         input: "172.16.0.0/16",
///         newbits: 4,
///         netnum: 7,
///     }).then(invoke => invoke.result),
///     slbInternetEnabled: true,
/// });
/// const clusterId = defaultManagedKubernetes.id;
/// const defaultGetKubernetesAddonMetadata = alicloud.cs.getKubernetesAddonMetadataOutput({
///     clusterId: clusterId,
///     name: "nginx-ingress-controller",
///     version: "v1.1.2-aliyun.2",
/// });
/// export const addonConfigSchema = defaultGetKubernetesAddonMetadata.apply(defaultGetKubernetesAddonMetadata => defaultGetKubernetesAddonMetadata.configSchema);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_managed_kubernetes = alicloud.cs.ManagedKubernetes("default",
///     name_prefix=name,
///     cluster_spec="ack.pro.small",
///     worker_vswitch_ids=[default_switch.id],
///     new_nat_gateway=False,
///     pod_cidr=std.cidrsubnet(input="10.0.0.0/8",
///         newbits=8,
///         netnum=36).result,
///     service_cidr=std.cidrsubnet(input="172.16.0.0/16",
///         newbits=4,
///         netnum=7).result,
///     slb_internet_enabled=True)
/// cluster_id = default_managed_kubernetes.id
/// default_get_kubernetes_addon_metadata = alicloud.cs.get_kubernetes_addon_metadata_output(cluster_id=cluster_id,
///     name="nginx-ingress-controller",
///     version="v1.1.2-aliyun.2")
/// pulumi.export("addonConfigSchema", default_get_kubernetes_addon_metadata.config_schema)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultManagedKubernetes = new AliCloud.CS.ManagedKubernetes("default", new()
///     {
///         NamePrefix = name,
///         ClusterSpec = "ack.pro.small",
///         WorkerVswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         NewNatGateway = false,
///         PodCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "10.0.0.0/8",
///             Newbits = 8,
///             Netnum = 36,
///         }).Apply(invoke => invoke.Result),
///         ServiceCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "172.16.0.0/16",
///             Newbits = 4,
///             Netnum = 7,
///         }).Apply(invoke => invoke.Result),
///         SlbInternetEnabled = true,
///     });
///
///     var clusterId = defaultManagedKubernetes.Id;
///
///     var defaultGetKubernetesAddonMetadata = AliCloud.CS.GetKubernetesAddonMetadata.Invoke(new()
///     {
///         ClusterId = clusterId,
///         Name = "nginx-ingress-controller",
///         Version = "v1.1.2-aliyun.2",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["addonConfigSchema"] = defaultGetKubernetesAddonMetadata.Apply(getKubernetesAddonMetadataResult => getKubernetesAddonMetadataResult.ConfigSchema),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
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
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "10.0.0.0/8",
/// 			Newbits: 8,
/// 			Netnum:  36,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet1, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "172.16.0.0/16",
/// 			Newbits: 4,
/// 			Netnum:  7,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultManagedKubernetes, err := cs.NewManagedKubernetes(ctx, "default", &cs.ManagedKubernetesArgs{
/// 			NamePrefix:  pulumi.String(name),
/// 			ClusterSpec: pulumi.String("ack.pro.small"),
/// 			WorkerVswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			NewNatGateway:      pulumi.Bool(false),
/// 			PodCidr:            pulumi.String(invokeCidrsubnet.Result),
/// 			ServiceCidr:        pulumi.String(invokeCidrsubnet1.Result),
/// 			SlbInternetEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterId := defaultManagedKubernetes.ID()
/// 		defaultGetKubernetesAddonMetadata := cs.GetKubernetesAddonMetadataOutput(ctx, cs.GetKubernetesAddonMetadataOutputArgs{
/// 			ClusterId: pulumi.String(clusterId),
/// 			Name:      pulumi.String("nginx-ingress-controller"),
/// 			Version:   pulumi.String("v1.1.2-aliyun.2"),
/// 		}, nil)
/// 		ctx.Export("addonConfigSchema", defaultGetKubernetesAddonMetadata.ApplyT(func(defaultGetKubernetesAddonMetadata cs.GetKubernetesAddonMetadataResult) (*string, error) {
/// 			return &defaultGetKubernetesAddonMetadata.ConfigSchema, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesAddonMetadataArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultManagedKubernetes = new ManagedKubernetes("defaultManagedKubernetes", ManagedKubernetesArgs.builder()
///             .namePrefix(name)
///             .clusterSpec("ack.pro.small")
///             .workerVswitchIds(defaultSwitch.id())
///             .newNatGateway(false)
///             .podCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("10.0.0.0/8")
///                 .newbits(8)
///                 .netnum(36)
///                 .build()).result())
///             .serviceCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("172.16.0.0/16")
///                 .newbits(4)
///                 .netnum(7)
///                 .build()).result())
///             .slbInternetEnabled(true)
///             .build());
///
///         final var clusterId = defaultManagedKubernetes.id();
///
///         final var defaultGetKubernetesAddonMetadata = CsFunctions.getKubernetesAddonMetadata(GetKubernetesAddonMetadataArgs.builder()
///             .clusterId(clusterId)
///             .name("nginx-ingress-controller")
///             .version("v1.1.2-aliyun.2")
///             .build());
///
///         ctx.export("addonConfigSchema", defaultGetKubernetesAddonMetadata.applyValue(_defaultGetKubernetesAddonMetadata -> _defaultGetKubernetesAddonMetadata.configSchema()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultManagedKubernetes:
///     type: alicloud:cs:ManagedKubernetes
///     name: default
///     properties:
///       namePrefix: ${name}
///       clusterSpec: ack.pro.small
///       workerVswitchIds:
///         - ${defaultSwitch.id}
///       newNatGateway: false
///       podCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 10.0.0.0/8
///             newbits: 8
///             netnum: 36
///           return: result
///       serviceCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 172.16.0.0/16
///             newbits: 4
///             netnum: 7
///           return: result
///       slbInternetEnabled: true
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetKubernetesAddonMetadata:
///     fn::invoke:
///       function: alicloud:cs:getKubernetesAddonMetadata
///       arguments:
///         clusterId: ${clusterId}
///         name: nginx-ingress-controller
///         version: v1.1.2-aliyun.2
///   clusterId: ${defaultManagedKubernetes.id}
/// outputs:
///   # Output addon configuration that can be customized
///   addonConfigSchema: ${defaultGetKubernetesAddonMetadata.configSchema}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_kubernetes_addon_metadata_get_kubernetes_addon_metadata_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesAddonMetadataResult> getKubernetesAddonMetadata(
  GetKubernetesAddonMetadataArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getKubernetesAddonMetadata:getKubernetesAddonMetadata',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesAddonMetadataResult.fromMap(result);
}

/// This data source provides a list of available addons that the cluster can install.
///
/// > **NOTE:** Available since v1.150.0.
/// > **NOTE:** From version v1.166.0, support for returning custom configuration of kubernetes cluster addon.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultManagedKubernetes = new alicloud.cs.ManagedKubernetes("default", {
///     namePrefix: name,
///     clusterSpec: "ack.pro.small",
///     workerVswitchIds: [defaultSwitch.id],
///     newNatGateway: false,
///     podCidr: std.cidrsubnet({
///         input: "10.0.0.0/8",
///         newbits: 8,
///         netnum: 36,
///     }).then(invoke => invoke.result),
///     serviceCidr: std.cidrsubnet({
///         input: "172.16.0.0/16",
///         newbits: 4,
///         netnum: 7,
///     }).then(invoke => invoke.result),
///     slbInternetEnabled: true,
/// });
/// const defaultGetKubernetesAddons = alicloud.cs.getKubernetesAddonsOutput({
///     clusterId: defaultManagedKubernetes.id,
/// });
/// export const addons = defaultGetKubernetesAddons.apply(defaultGetKubernetesAddons => defaultGetKubernetesAddons.addons);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_managed_kubernetes = alicloud.cs.ManagedKubernetes("default",
///     name_prefix=name,
///     cluster_spec="ack.pro.small",
///     worker_vswitch_ids=[default_switch.id],
///     new_nat_gateway=False,
///     pod_cidr=std.cidrsubnet(input="10.0.0.0/8",
///         newbits=8,
///         netnum=36).result,
///     service_cidr=std.cidrsubnet(input="172.16.0.0/16",
///         newbits=4,
///         netnum=7).result,
///     slb_internet_enabled=True)
/// default_get_kubernetes_addons = alicloud.cs.get_kubernetes_addons_output(cluster_id=default_managed_kubernetes.id)
/// pulumi.export("addons", default_get_kubernetes_addons.addons)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultManagedKubernetes = new AliCloud.CS.ManagedKubernetes("default", new()
///     {
///         NamePrefix = name,
///         ClusterSpec = "ack.pro.small",
///         WorkerVswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         NewNatGateway = false,
///         PodCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "10.0.0.0/8",
///             Newbits = 8,
///             Netnum = 36,
///         }).Apply(invoke => invoke.Result),
///         ServiceCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "172.16.0.0/16",
///             Newbits = 4,
///             Netnum = 7,
///         }).Apply(invoke => invoke.Result),
///         SlbInternetEnabled = true,
///     });
///
///     var defaultGetKubernetesAddons = AliCloud.CS.GetKubernetesAddons.Invoke(new()
///     {
///         ClusterId = defaultManagedKubernetes.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["addons"] = defaultGetKubernetesAddons.Apply(getKubernetesAddonsResult => getKubernetesAddonsResult.Addons),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
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
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "10.0.0.0/8",
/// 			Newbits: 8,
/// 			Netnum:  36,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet1, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "172.16.0.0/16",
/// 			Newbits: 4,
/// 			Netnum:  7,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultManagedKubernetes, err := cs.NewManagedKubernetes(ctx, "default", &cs.ManagedKubernetesArgs{
/// 			NamePrefix:  pulumi.String(name),
/// 			ClusterSpec: pulumi.String("ack.pro.small"),
/// 			WorkerVswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			NewNatGateway:      pulumi.Bool(false),
/// 			PodCidr:            pulumi.String(invokeCidrsubnet.Result),
/// 			ServiceCidr:        pulumi.String(invokeCidrsubnet1.Result),
/// 			SlbInternetEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetKubernetesAddons := cs.GetKubernetesAddonsOutput(ctx, cs.GetKubernetesAddonsOutputArgs{
/// 			ClusterId: defaultManagedKubernetes.ID(),
/// 		}, nil)
/// 		ctx.Export("addons", defaultGetKubernetesAddons.ApplyT(func(defaultGetKubernetesAddons cs.GetKubernetesAddonsResult) ([]cs.GetKubernetesAddonsAddon, error) {
/// 			return []cs.GetKubernetesAddonsAddon(defaultGetKubernetesAddons.Addons), nil
/// 		}).([]cs.GetKubernetesAddonsAddonOutput))
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
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesAddonsArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultManagedKubernetes = new ManagedKubernetes("defaultManagedKubernetes", ManagedKubernetesArgs.builder()
///             .namePrefix(name)
///             .clusterSpec("ack.pro.small")
///             .workerVswitchIds(defaultSwitch.id())
///             .newNatGateway(false)
///             .podCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("10.0.0.0/8")
///                 .newbits(8)
///                 .netnum(36)
///                 .build()).result())
///             .serviceCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("172.16.0.0/16")
///                 .newbits(4)
///                 .netnum(7)
///                 .build()).result())
///             .slbInternetEnabled(true)
///             .build());
///
///         final var defaultGetKubernetesAddons = CsFunctions.getKubernetesAddons(GetKubernetesAddonsArgs.builder()
///             .clusterId(defaultManagedKubernetes.id())
///             .build());
///
///         ctx.export("addons", defaultGetKubernetesAddons.applyValue(_defaultGetKubernetesAddons -> _defaultGetKubernetesAddons.addons()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultManagedKubernetes:
///     type: alicloud:cs:ManagedKubernetes
///     name: default
///     properties:
///       namePrefix: ${name}
///       clusterSpec: ack.pro.small
///       workerVswitchIds:
///         - ${defaultSwitch.id}
///       newNatGateway: false
///       podCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 10.0.0.0/8
///             newbits: 8
///             netnum: 36
///           return: result
///       serviceCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 172.16.0.0/16
///             newbits: 4
///             netnum: 7
///           return: result
///       slbInternetEnabled: true
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetKubernetesAddons:
///     fn::invoke:
///       function: alicloud:cs:getKubernetesAddons
///       arguments:
///         clusterId: ${defaultManagedKubernetes.id}
/// outputs:
///   addons: ${defaultGetKubernetesAddons.addons}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_kubernetes_addons_get_kubernetes_addons_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesAddonsResult> getKubernetesAddons(
  GetKubernetesAddonsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getKubernetesAddons:getKubernetesAddons',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesAddonsResult.fromMap(result);
}

/// This data source provides a list Container Service Kubernetes Clusters on Alibaba Cloud.
///
/// > **NOTE:** Available since v1.34.0.
///
/// > **NOTE:** From version 1.177.0+, We supported batch export of clusters' kube config information by `kube_config_file_prefix`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const k8sClusters = alicloud.cs.getKubernetesClusters({
///     nameRegex: "my-first-k8s",
///     outputFile: "my-first-k8s-json",
///     kubeConfigFilePrefix: "~/.kube/k8s",
/// });
/// export const output = k8sClusters.then(k8sClusters => k8sClusters.clusters);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// k8s_clusters = alicloud.cs.get_kubernetes_clusters(name_regex="my-first-k8s",
///     output_file="my-first-k8s-json",
///     kube_config_file_prefix="~/.kube/k8s")
/// pulumi.export("output", k8s_clusters.clusters)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var k8sClusters = AliCloud.CS.GetKubernetesClusters.Invoke(new()
///     {
///         NameRegex = "my-first-k8s",
///         OutputFile = "my-first-k8s-json",
///         KubeConfigFilePrefix = "~/.kube/k8s",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["output"] = k8sClusters.Apply(getKubernetesClustersResult => getKubernetesClustersResult.Clusters),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		k8sClusters, err := cs.GetKubernetesClusters(ctx, &cs.GetKubernetesClustersArgs{
/// 			NameRegex:            pulumi.StringRef("my-first-k8s"),
/// 			OutputFile:           pulumi.StringRef("my-first-k8s-json"),
/// 			KubeConfigFilePrefix: pulumi.StringRef("~/.kube/k8s"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("output", k8sClusters.Clusters)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesClustersArgs;
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
///         // Declare the data source
///         final var k8sClusters = CsFunctions.getKubernetesClusters(GetKubernetesClustersArgs.builder()
///             .nameRegex("my-first-k8s")
///             .outputFile("my-first-k8s-json")
///             .kubeConfigFilePrefix("~/.kube/k8s")
///             .build());
///
///         ctx.export("output", k8sClusters.clusters());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   k8sClusters:
///     fn::invoke:
///       function: alicloud:cs:getKubernetesClusters
///       arguments:
///         nameRegex: my-first-k8s
///         outputFile: my-first-k8s-json
///         kubeConfigFilePrefix: ~/.kube/k8s
/// outputs:
///   output: ${k8sClusters.clusters}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_kubernetes_clusters_get_kubernetes_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesClustersResult> getKubernetesClusters(
  GetKubernetesClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getKubernetesClusters:getKubernetesClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesClustersResult.fromMap(result);
}

/// This data source provides Ack Nodepool available to the user.[What is Nodepool](https://next.api.alibabacloud.com/document/CS/2015-12-15/CreateClusterNodePool)
///
/// > **NOTE:** Available since v1.246.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const cloudEfficiency = enhanced.then(enhanced => alicloud.ecs.getInstanceTypes({
///     availabilityZone: enhanced.zones?.[0]?.zoneId,
///     cpuCoreCount: 4,
///     memorySize: 8,
///     kubernetesNodeRole: "Worker",
///     systemDiskCategory: "cloud_efficiency",
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: enhanced.then(enhanced => enhanced.zones?.[0]?.zoneId),
/// });
/// const defaultManagedKubernetes = new alicloud.cs.ManagedKubernetes("default", {
///     namePrefix: name,
///     clusterSpec: "ack.pro.small",
///     vswitchIds: [defaultSwitch.id],
///     newNatGateway: true,
///     podCidr: std.cidrsubnet({
///         input: "10.0.0.0/8",
///         newbits: 8,
///         netnum: 36,
///     }).then(invoke => invoke.result),
///     serviceCidr: std.cidrsubnet({
///         input: "172.16.0.0/16",
///         newbits: 4,
///         netnum: 7,
///     }).then(invoke => invoke.result),
///     slbInternetEnabled: true,
///     enableRrsa: true,
/// });
/// const defaultKeyPair = new alicloud.ecs.KeyPair("default", {keyPairName: name});
/// const defaultNodePool = new alicloud.cs.NodePool("default", {
///     nodePoolName: "spot_auto_scaling",
///     clusterId: defaultManagedKubernetes.id,
///     vswitchIds: [defaultSwitch.id],
///     instanceTypes: [cloudEfficiency.then(cloudEfficiency => cloudEfficiency.instanceTypes?.[0]?.id)],
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskSize: 40,
///     keyName: defaultKeyPair.keyPairName,
///     scalingConfig: {
///         minSize: 1,
///         maxSize: 10,
///         type: "spot",
///     },
///     spotStrategy: "SpotWithPriceLimit",
///     spotPriceLimits: [{
///         instanceType: cloudEfficiency.then(cloudEfficiency => cloudEfficiency.instanceTypes?.[0]?.id),
///         priceLimit: "0.70",
///     }],
/// });
/// const _default = alicloud.cs.getKubernetesNodePoolsOutput({
///     ids: [defaultNodePool.nodePoolId],
///     clusterId: defaultManagedKubernetes.id,
/// });
/// export const alicloudCsKubernetesNodePoolExampleId = _default.apply(_default => _default.nodepools?.[0]?.nodePoolId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// cloud_efficiency = alicloud.ecs.get_instance_types(availability_zone=enhanced.zones[0].zone_id,
///     cpu_core_count=4,
///     memory_size=8,
///     kubernetes_node_role="Worker",
///     system_disk_category="cloud_efficiency")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=enhanced.zones[0].zone_id)
/// default_managed_kubernetes = alicloud.cs.ManagedKubernetes("default",
///     name_prefix=name,
///     cluster_spec="ack.pro.small",
///     vswitch_ids=[default_switch.id],
///     new_nat_gateway=True,
///     pod_cidr=std.cidrsubnet(input="10.0.0.0/8",
///         newbits=8,
///         netnum=36).result,
///     service_cidr=std.cidrsubnet(input="172.16.0.0/16",
///         newbits=4,
///         netnum=7).result,
///     slb_internet_enabled=True,
///     enable_rrsa=True)
/// default_key_pair = alicloud.ecs.KeyPair("default", key_pair_name=name)
/// default_node_pool = alicloud.cs.NodePool("default",
///     node_pool_name="spot_auto_scaling",
///     cluster_id=default_managed_kubernetes.id,
///     vswitch_ids=[default_switch.id],
///     instance_types=[cloud_efficiency.instance_types[0].id],
///     system_disk_category="cloud_efficiency",
///     system_disk_size=40,
///     key_name=default_key_pair.key_pair_name,
///     scaling_config={
///         "min_size": 1,
///         "max_size": 10,
///         "type": "spot",
///     },
///     spot_strategy="SpotWithPriceLimit",
///     spot_price_limits=[{
///         "instance_type": cloud_efficiency.instance_types[0].id,
///         "price_limit": "0.70",
///     }])
/// default = alicloud.cs.get_kubernetes_node_pools_output(ids=[default_node_pool.node_pool_id],
///     cluster_id=default_managed_kubernetes.id)
/// pulumi.export("alicloudCsKubernetesNodePoolExampleId", default.nodepools[0].node_pool_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var cloudEfficiency = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = enhanced.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones[0]?.ZoneId),
///         CpuCoreCount = 4,
///         MemorySize = 8,
///         KubernetesNodeRole = "Worker",
///         SystemDiskCategory = "cloud_efficiency",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = enhanced.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones[0]?.ZoneId),
///     });
///
///     var defaultManagedKubernetes = new AliCloud.CS.ManagedKubernetes("default", new()
///     {
///         NamePrefix = name,
///         ClusterSpec = "ack.pro.small",
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         NewNatGateway = true,
///         PodCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "10.0.0.0/8",
///             Newbits = 8,
///             Netnum = 36,
///         }).Apply(invoke => invoke.Result),
///         ServiceCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "172.16.0.0/16",
///             Newbits = 4,
///             Netnum = 7,
///         }).Apply(invoke => invoke.Result),
///         SlbInternetEnabled = true,
///         EnableRrsa = true,
///     });
///
///     var defaultKeyPair = new AliCloud.Ecs.KeyPair("default", new()
///     {
///         KeyPairName = name,
///     });
///
///     var defaultNodePool = new AliCloud.CS.NodePool("default", new()
///     {
///         NodePoolName = "spot_auto_scaling",
///         ClusterId = defaultManagedKubernetes.Id,
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         InstanceTypes = new[]
///         {
///             cloudEfficiency.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         },
///         SystemDiskCategory = "cloud_efficiency",
///         SystemDiskSize = 40,
///         KeyName = defaultKeyPair.KeyPairName,
///         ScalingConfig = new AliCloud.CS.Inputs.NodePoolScalingConfigArgs
///         {
///             MinSize = 1,
///             MaxSize = 10,
///             Type = "spot",
///         },
///         SpotStrategy = "SpotWithPriceLimit",
///         SpotPriceLimits = new[]
///         {
///             new AliCloud.CS.Inputs.NodePoolSpotPriceLimitArgs
///             {
///                 InstanceType = cloudEfficiency.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///                 PriceLimit = "0.70",
///             },
///         },
///     });
///
///     var @default = AliCloud.CS.GetKubernetesNodePools.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultNodePool.NodePoolId,
///         },
///         ClusterId = defaultManagedKubernetes.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCsKubernetesNodePoolExampleId"] = @default.Apply(@default => @default.Apply(getKubernetesNodePoolsResult => getKubernetesNodePoolsResult.Nodepools[0]?.NodePoolId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// enhanced, err := vpc.GetEnhancedNatAvailableZones(ctx, &vpc.GetEnhancedNatAvailableZonesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// cloudEfficiency, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(enhanced.Zones[0].ZoneId),
/// CpuCoreCount: pulumi.IntRef(4),
/// MemorySize: pulumi.Float64Ref(8),
/// KubernetesNodeRole: pulumi.StringRef("Worker"),
/// SystemDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("10.4.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VswitchName: pulumi.String(name),
/// CidrBlock: pulumi.String("10.4.0.0/24"),
/// VpcId: defaultNetwork.ID(),
/// ZoneId: pulumi.String(enhanced.Zones[0].ZoneId),
/// })
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: "10.0.0.0/8",
/// Newbits: 8,
/// Netnum: 36,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet1, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: "172.16.0.0/16",
/// Newbits: 4,
/// Netnum: 7,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultManagedKubernetes, err := cs.NewManagedKubernetes(ctx, "default", &cs.ManagedKubernetesArgs{
/// NamePrefix: pulumi.String(name),
/// ClusterSpec: pulumi.String("ack.pro.small"),
/// VswitchIds: pulumi.StringArray{
/// defaultSwitch.ID(),
/// },
/// NewNatGateway: pulumi.Bool(true),
/// PodCidr: pulumi.String(invokeCidrsubnet.Result),
/// ServiceCidr: pulumi.String(invokeCidrsubnet1.Result),
/// SlbInternetEnabled: pulumi.Bool(true),
/// EnableRrsa: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// defaultKeyPair, err := ecs.NewKeyPair(ctx, "default", &ecs.KeyPairArgs{
/// KeyPairName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNodePool, err := cs.NewNodePool(ctx, "default", &cs.NodePoolArgs{
/// NodePoolName: pulumi.String("spot_auto_scaling"),
/// ClusterId: defaultManagedKubernetes.ID(),
/// VswitchIds: pulumi.StringArray{
/// defaultSwitch.ID(),
/// },
/// InstanceTypes: pulumi.StringArray{
/// pulumi.String(cloudEfficiency.InstanceTypes[0].Id),
/// },
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// SystemDiskSize: pulumi.Int(40),
/// KeyName: defaultKeyPair.KeyPairName,
/// ScalingConfig: &cs.NodePoolScalingConfigArgs{
/// MinSize: pulumi.Int(1),
/// MaxSize: pulumi.Int(10),
/// Type: pulumi.String("spot"),
/// },
/// SpotStrategy: pulumi.String("SpotWithPriceLimit"),
/// SpotPriceLimits: cs.NodePoolSpotPriceLimitArray{
/// &cs.NodePoolSpotPriceLimitArgs{
/// InstanceType: pulumi.String(cloudEfficiency.InstanceTypes[0].Id),
/// PriceLimit: pulumi.String("0.70"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _default := cs.GetKubernetesNodePoolsOutput(ctx, cs.GetKubernetesNodePoolsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultNodePool.NodePoolId,
/// },
/// ClusterId: defaultManagedKubernetes.ID(),
/// }, nil);
/// ctx.Export("alicloudCsKubernetesNodePoolExampleId", _default.ApplyT(func(_default cs.GetKubernetesNodePoolsResult) (*string, error) {
/// return &default.Nodepools[0].NodePoolId, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetEnhancedNatAvailableZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.alicloud.ecs.KeyPair;
/// import com.pulumi.alicloud.ecs.KeyPairArgs;
/// import com.pulumi.alicloud.cs.NodePool;
/// import com.pulumi.alicloud.cs.NodePoolArgs;
/// import com.pulumi.alicloud.cs.inputs.NodePoolScalingConfigArgs;
/// import com.pulumi.alicloud.cs.inputs.NodePoolSpotPriceLimitArgs;
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesNodePoolsArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         final var cloudEfficiency = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(enhanced.zones()[0].zoneId())
///             .cpuCoreCount(4)
///             .memorySize(8)
///             .kubernetesNodeRole("Worker")
///             .systemDiskCategory("cloud_efficiency")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(enhanced.zones()[0].zoneId())
///             .build());
///
///         var defaultManagedKubernetes = new ManagedKubernetes("defaultManagedKubernetes", ManagedKubernetesArgs.builder()
///             .namePrefix(name)
///             .clusterSpec("ack.pro.small")
///             .vswitchIds(defaultSwitch.id())
///             .newNatGateway(true)
///             .podCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("10.0.0.0/8")
///                 .newbits(8)
///                 .netnum(36)
///                 .build()).result())
///             .serviceCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("172.16.0.0/16")
///                 .newbits(4)
///                 .netnum(7)
///                 .build()).result())
///             .slbInternetEnabled(true)
///             .enableRrsa(true)
///             .build());
///
///         var defaultKeyPair = new KeyPair("defaultKeyPair", KeyPairArgs.builder()
///             .keyPairName(name)
///             .build());
///
///         var defaultNodePool = new NodePool("defaultNodePool", NodePoolArgs.builder()
///             .nodePoolName("spot_auto_scaling")
///             .clusterId(defaultManagedKubernetes.id())
///             .vswitchIds(defaultSwitch.id())
///             .instanceTypes(cloudEfficiency.instanceTypes()[0].id())
///             .systemDiskCategory("cloud_efficiency")
///             .systemDiskSize(40)
///             .keyName(defaultKeyPair.keyPairName())
///             .scalingConfig(NodePoolScalingConfigArgs.builder()
///                 .minSize(1)
///                 .maxSize(10)
///                 .type("spot")
///                 .build())
///             .spotStrategy("SpotWithPriceLimit")
///             .spotPriceLimits(NodePoolSpotPriceLimitArgs.builder()
///                 .instanceType(cloudEfficiency.instanceTypes()[0].id())
///                 .priceLimit("0.70")
///                 .build())
///             .build());
///
///         final var default = CsFunctions.getKubernetesNodePools(GetKubernetesNodePoolsArgs.builder()
///             .ids(defaultNodePool.nodePoolId())
///             .clusterId(defaultManagedKubernetes.id())
///             .build());
///
///         ctx.export("alicloudCsKubernetesNodePoolExampleId", default_.applyValue(_default_ -> _default_.nodepools()[0].nodePoolId()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${enhanced.zones[0].zoneId}
///   defaultManagedKubernetes:
///     type: alicloud:cs:ManagedKubernetes
///     name: default
///     properties:
///       namePrefix: ${name}
///       clusterSpec: ack.pro.small
///       vswitchIds:
///         - ${defaultSwitch.id}
///       newNatGateway: true
///       podCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 10.0.0.0/8
///             newbits: 8
///             netnum: 36
///           return: result
///       serviceCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 172.16.0.0/16
///             newbits: 4
///             netnum: 7
///           return: result
///       slbInternetEnabled: true
///       enableRrsa: true
///   defaultKeyPair:
///     type: alicloud:ecs:KeyPair
///     name: default
///     properties:
///       keyPairName: ${name}
///   defaultNodePool:
///     type: alicloud:cs:NodePool
///     name: default
///     properties:
///       nodePoolName: spot_auto_scaling
///       clusterId: ${defaultManagedKubernetes.id}
///       vswitchIds:
///         - ${defaultSwitch.id}
///       instanceTypes:
///         - ${cloudEfficiency.instanceTypes[0].id}
///       systemDiskCategory: cloud_efficiency
///       systemDiskSize: 40
///       keyName: ${defaultKeyPair.keyPairName}
///       scalingConfig:
///         minSize: 1
///         maxSize: 10
///         type: spot
///       spotStrategy: SpotWithPriceLimit
///       spotPriceLimits:
///         - instanceType: ${cloudEfficiency.instanceTypes[0].id}
///           priceLimit: '0.70'
/// variables:
///   enhanced:
///     fn::invoke:
///       function: alicloud:vpc:getEnhancedNatAvailableZones
///       arguments: {}
///   cloudEfficiency:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${enhanced.zones[0].zoneId}
///         cpuCoreCount: 4
///         memorySize: 8
///         kubernetesNodeRole: Worker
///         systemDiskCategory: cloud_efficiency
///   default:
///     fn::invoke:
///       function: alicloud:cs:getKubernetesNodePools
///       arguments:
///         ids:
///           - ${defaultNodePool.nodePoolId}
///         clusterId: ${defaultManagedKubernetes.id}
/// outputs:
///   alicloudCsKubernetesNodePoolExampleId: ${default.nodepools[0].nodePoolId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_kubernetes_node_pools_get_kubernetes_node_pools_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesNodePoolsResult> getKubernetesNodePools(
  GetKubernetesNodePoolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getKubernetesNodePools:getKubernetesNodePools',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesNodePoolsResult.fromMap(result);
}

/// This data source provides a list of Ram user permissions.
///
/// > **NOTE:** Available since v1.122.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const _default = alicloud.ram.getUsers({});
/// // permissions
/// const defaultGetKubernetesPermission = _default.then(_default => alicloud.cs.getKubernetesPermission({
///     uid: _default.users?.[0]?.id,
/// }));
/// export const permissions = defaultGetKubernetesPermission.then(defaultGetKubernetesPermission => defaultGetKubernetesPermission.permissions);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// default = alicloud.ram.get_users()
/// # permissions
/// default_get_kubernetes_permission = alicloud.cs.get_kubernetes_permission(uid=default.users[0].id)
/// pulumi.export("permissions", default_get_kubernetes_permission.permissions)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var @default = AliCloud.Ram.GetUsers.Invoke();
///
///     // permissions
///     var defaultGetKubernetesPermission = AliCloud.CS.GetKubernetesPermission.Invoke(new()
///     {
///         Uid = @default.Apply(getUsersResult => getUsersResult.Users[0]?.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["permissions"] = defaultGetKubernetesPermission.Apply(getKubernetesPermissionResult => getKubernetesPermissionResult.Permissions),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		_default, err := ram.GetUsers(ctx, &ram.GetUsersArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// permissions
/// 		defaultGetKubernetesPermission, err := cs.LookupKubernetesPermission(ctx, &cs.LookupKubernetesPermissionArgs{
/// 			Uid: _default.Users[0].Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("permissions", defaultGetKubernetesPermission.Permissions)
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
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetUsersArgs;
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesPermissionArgs;
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
///         // Declare the data source
///         final var default = RamFunctions.getUsers(GetUsersArgs.builder()
///             .build());
///
///         // permissions
///         final var defaultGetKubernetesPermission = CsFunctions.getKubernetesPermission(GetKubernetesPermissionArgs.builder()
///             .uid(default_.users()[0].id())
///             .build());
///
///         ctx.export("permissions", defaultGetKubernetesPermission.permissions());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   default:
///     fn::invoke:
///       function: alicloud:ram:getUsers
///       arguments: {}
///   # permissions
///   defaultGetKubernetesPermission:
///     fn::invoke:
///       function: alicloud:cs:getKubernetesPermission
///       arguments:
///         uid: ${default.users[0].id}
/// outputs:
///   permissions: ${defaultGetKubernetesPermission.permissions}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_kubernetes_permission_get_kubernetes_permission_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesPermissionResult> getKubernetesPermission(
  GetKubernetesPermissionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getKubernetesPermission:getKubernetesPermission',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesPermissionResult.fromMap(result);
}

/// This data source provides the details of the Kubernetes version supported by ACK.
///
/// > **NOTE:** Available since v1.170.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Query the managed kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
/// const _default = alicloud.cs.getKubernetesVersion({
///     clusterType: "ManagedKubernetes",
///     kubernetesVersion: "1.22.3-aliyun.1",
///     profile: "Default",
/// });
/// export const metadata = _default.then(_default => _default.metadatas);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Query the managed kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
/// default = alicloud.cs.get_kubernetes_version(cluster_type="ManagedKubernetes",
///     kubernetes_version="1.22.3-aliyun.1",
///     profile="Default")
/// pulumi.export("metadata", default.metadatas)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Query the managed kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
///     var @default = AliCloud.CS.GetKubernetesVersion.Invoke(new()
///     {
///         ClusterType = "ManagedKubernetes",
///         KubernetesVersion = "1.22.3-aliyun.1",
///         Profile = "Default",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["metadata"] = @default.Apply(@default => @default.Apply(getKubernetesVersionResult => getKubernetesVersionResult.Metadatas)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Query the managed kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
/// 		_default, err := cs.GetKubernetesVersion(ctx, &cs.GetKubernetesVersionArgs{
/// 			ClusterType:       "ManagedKubernetes",
/// 			KubernetesVersion: pulumi.StringRef("1.22.3-aliyun.1"),
/// 			Profile:           pulumi.StringRef("Default"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("metadata", _default.Metadatas)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesVersionArgs;
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
///         // Query the managed kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
///         final var default = CsFunctions.getKubernetesVersion(GetKubernetesVersionArgs.builder()
///             .clusterType("ManagedKubernetes")
///             .kubernetesVersion("1.22.3-aliyun.1")
///             .profile("Default")
///             .build());
///
///         ctx.export("metadata", default_.metadatas());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Query the managed kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
///   default:
///     fn::invoke:
///       function: alicloud:cs:getKubernetesVersion
///       arguments:
///         clusterType: ManagedKubernetes
///         kubernetesVersion: 1.22.3-aliyun.1
///         profile: Default
/// outputs:
///   metadata: ${default.metadatas}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Query the kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
/// const _default = alicloud.cs.getKubernetesVersion({
///     clusterType: "Kubernetes",
///     kubernetesVersion: "1.22.3-aliyun.1",
///     profile: "Default",
/// });
/// export const metadata = _default.then(_default => _default.metadatas);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Query the kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
/// default = alicloud.cs.get_kubernetes_version(cluster_type="Kubernetes",
///     kubernetes_version="1.22.3-aliyun.1",
///     profile="Default")
/// pulumi.export("metadata", default.metadatas)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Query the kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
///     var @default = AliCloud.CS.GetKubernetesVersion.Invoke(new()
///     {
///         ClusterType = "Kubernetes",
///         KubernetesVersion = "1.22.3-aliyun.1",
///         Profile = "Default",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["metadata"] = @default.Apply(@default => @default.Apply(getKubernetesVersionResult => getKubernetesVersionResult.Metadatas)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Query the kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
/// 		_default, err := cs.GetKubernetesVersion(ctx, &cs.GetKubernetesVersionArgs{
/// 			ClusterType:       "Kubernetes",
/// 			KubernetesVersion: pulumi.StringRef("1.22.3-aliyun.1"),
/// 			Profile:           pulumi.StringRef("Default"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("metadata", _default.Metadatas)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesVersionArgs;
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
///         // Query the kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
///         final var default = CsFunctions.getKubernetesVersion(GetKubernetesVersionArgs.builder()
///             .clusterType("Kubernetes")
///             .kubernetesVersion("1.22.3-aliyun.1")
///             .profile("Default")
///             .build());
///
///         ctx.export("metadata", default_.metadatas());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Query the kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
///   default:
///     fn::invoke:
///       function: alicloud:cs:getKubernetesVersion
///       arguments:
///         clusterType: Kubernetes
///         kubernetesVersion: 1.22.3-aliyun.1
///         profile: Default
/// outputs:
///   metadata: ${default.metadatas}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Query the serverless kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
/// const _default = alicloud.cs.getKubernetesVersion({
///     clusterType: "ManagedKubernetes",
///     kubernetesVersion: "1.22.3-aliyun.1",
///     profile: "Serverless",
/// });
/// export const metadata = _default.then(_default => _default.metadatas);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Query the serverless kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
/// default = alicloud.cs.get_kubernetes_version(cluster_type="ManagedKubernetes",
///     kubernetes_version="1.22.3-aliyun.1",
///     profile="Serverless")
/// pulumi.export("metadata", default.metadatas)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Query the serverless kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
///     var @default = AliCloud.CS.GetKubernetesVersion.Invoke(new()
///     {
///         ClusterType = "ManagedKubernetes",
///         KubernetesVersion = "1.22.3-aliyun.1",
///         Profile = "Serverless",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["metadata"] = @default.Apply(@default => @default.Apply(getKubernetesVersionResult => getKubernetesVersionResult.Metadatas)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Query the serverless kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
/// 		_default, err := cs.GetKubernetesVersion(ctx, &cs.GetKubernetesVersionArgs{
/// 			ClusterType:       "ManagedKubernetes",
/// 			KubernetesVersion: pulumi.StringRef("1.22.3-aliyun.1"),
/// 			Profile:           pulumi.StringRef("Serverless"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("metadata", _default.Metadatas)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesVersionArgs;
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
///         // Query the serverless kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
///         final var default = CsFunctions.getKubernetesVersion(GetKubernetesVersionArgs.builder()
///             .clusterType("ManagedKubernetes")
///             .kubernetesVersion("1.22.3-aliyun.1")
///             .profile("Serverless")
///             .build());
///
///         ctx.export("metadata", default_.metadatas());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Query the serverless kubernetes cluster metadata of version 1.22.3-aliyun.1 in the region specified by the client.
///   default:
///     fn::invoke:
///       function: alicloud:cs:getKubernetesVersion
///       arguments:
///         clusterType: ManagedKubernetes
///         kubernetesVersion: 1.22.3-aliyun.1
///         profile: Serverless
/// outputs:
///   metadata: ${default.metadatas}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Query the edge kubernetes cluster metadata of version 1.20.11-aliyunedge.1 in the region specified by the client.
/// const _default = alicloud.cs.getKubernetesVersion({
///     clusterType: "ManagedKubernetes",
///     kubernetesVersion: "1.20.11-aliyunedge.1",
///     profile: "Edge",
/// });
/// export const metadata = _default.then(_default => _default.metadatas);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Query the edge kubernetes cluster metadata of version 1.20.11-aliyunedge.1 in the region specified by the client.
/// default = alicloud.cs.get_kubernetes_version(cluster_type="ManagedKubernetes",
///     kubernetes_version="1.20.11-aliyunedge.1",
///     profile="Edge")
/// pulumi.export("metadata", default.metadatas)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Query the edge kubernetes cluster metadata of version 1.20.11-aliyunedge.1 in the region specified by the client.
///     var @default = AliCloud.CS.GetKubernetesVersion.Invoke(new()
///     {
///         ClusterType = "ManagedKubernetes",
///         KubernetesVersion = "1.20.11-aliyunedge.1",
///         Profile = "Edge",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["metadata"] = @default.Apply(@default => @default.Apply(getKubernetesVersionResult => getKubernetesVersionResult.Metadatas)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Query the edge kubernetes cluster metadata of version 1.20.11-aliyunedge.1 in the region specified by the client.
/// 		_default, err := cs.GetKubernetesVersion(ctx, &cs.GetKubernetesVersionArgs{
/// 			ClusterType:       "ManagedKubernetes",
/// 			KubernetesVersion: pulumi.StringRef("1.20.11-aliyunedge.1"),
/// 			Profile:           pulumi.StringRef("Edge"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("metadata", _default.Metadatas)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesVersionArgs;
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
///         // Query the edge kubernetes cluster metadata of version 1.20.11-aliyunedge.1 in the region specified by the client.
///         final var default = CsFunctions.getKubernetesVersion(GetKubernetesVersionArgs.builder()
///             .clusterType("ManagedKubernetes")
///             .kubernetesVersion("1.20.11-aliyunedge.1")
///             .profile("Edge")
///             .build());
///
///         ctx.export("metadata", default_.metadatas());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Query the edge kubernetes cluster metadata of version 1.20.11-aliyunedge.1 in the region specified by the client.
///   default:
///     fn::invoke:
///       function: alicloud:cs:getKubernetesVersion
///       arguments:
///         clusterType: ManagedKubernetes
///         kubernetesVersion: 1.20.11-aliyunedge.1
///         profile: Edge
/// outputs:
///   metadata: ${default.metadatas}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_kubernetes_version_get_kubernetes_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesVersionResult> getKubernetesVersion(
  GetKubernetesVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getKubernetesVersion:getKubernetesVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesVersionResult.fromMap(result);
}

/// This data source provides a list Container Service Managed Kubernetes Clusters on Alibaba Cloud.
///
/// > **NOTE:** Available since v1.35.0
///
/// > **NOTE:** From version 1.177.0+, We supported batch export of clusters' kube config information by `kube_config_file_prefix`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const k8sClusters = alicloud.cs.getManagedKubernetesClusters({
///     nameRegex: "my-first-k8s",
///     outputFile: "my-first-k8s-json",
///     kubeConfigFilePrefix: "~/.kube/managed",
/// });
/// export const output = k8sClusters.then(k8sClusters => k8sClusters.clusters);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// k8s_clusters = alicloud.cs.get_managed_kubernetes_clusters(name_regex="my-first-k8s",
///     output_file="my-first-k8s-json",
///     kube_config_file_prefix="~/.kube/managed")
/// pulumi.export("output", k8s_clusters.clusters)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var k8sClusters = AliCloud.CS.GetManagedKubernetesClusters.Invoke(new()
///     {
///         NameRegex = "my-first-k8s",
///         OutputFile = "my-first-k8s-json",
///         KubeConfigFilePrefix = "~/.kube/managed",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["output"] = k8sClusters.Apply(getManagedKubernetesClustersResult => getManagedKubernetesClustersResult.Clusters),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		k8sClusters, err := cs.GetManagedKubernetesClusters(ctx, &cs.GetManagedKubernetesClustersArgs{
/// 			NameRegex:            pulumi.StringRef("my-first-k8s"),
/// 			OutputFile:           pulumi.StringRef("my-first-k8s-json"),
/// 			KubeConfigFilePrefix: pulumi.StringRef("~/.kube/managed"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("output", k8sClusters.Clusters)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetManagedKubernetesClustersArgs;
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
///         // Declare the data source
///         final var k8sClusters = CsFunctions.getManagedKubernetesClusters(GetManagedKubernetesClustersArgs.builder()
///             .nameRegex("my-first-k8s")
///             .outputFile("my-first-k8s-json")
///             .kubeConfigFilePrefix("~/.kube/managed")
///             .build());
///
///         ctx.export("output", k8sClusters.clusters());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   k8sClusters:
///     fn::invoke:
///       function: alicloud:cs:getManagedKubernetesClusters
///       arguments:
///         nameRegex: my-first-k8s
///         outputFile: my-first-k8s-json
///         kubeConfigFilePrefix: ~/.kube/managed
/// outputs:
///   output: ${k8sClusters.clusters}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_managed_kubernetes_clusters_get_managed_kubernetes_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedKubernetesClustersResult> getManagedKubernetesClusters(
  GetManagedKubernetesClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getManagedKubernetesClusters:getManagedKubernetesClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedKubernetesClustersResult.fromMap(result);
}

/// This data source provides a list Container Registry Enterprise Edition instances on Alibaba Cloud.
///
/// > **NOTE:** Available in v1.86.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const myInstances = alicloud.cs.getRegistryEnterpriseInstances({
///     nameRegex: "my-instances",
///     outputFile: "my-instances-json",
/// });
/// export const output = myInstances.then(myInstances => myInstances.instances);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// my_instances = alicloud.cs.get_registry_enterprise_instances(name_regex="my-instances",
///     output_file="my-instances-json")
/// pulumi.export("output", my_instances.instances)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var myInstances = AliCloud.CS.GetRegistryEnterpriseInstances.Invoke(new()
///     {
///         NameRegex = "my-instances",
///         OutputFile = "my-instances-json",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["output"] = myInstances.Apply(getRegistryEnterpriseInstancesResult => getRegistryEnterpriseInstancesResult.Instances),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		myInstances, err := cs.GetRegistryEnterpriseInstances(ctx, &cs.GetRegistryEnterpriseInstancesArgs{
/// 			NameRegex:  pulumi.StringRef("my-instances"),
/// 			OutputFile: pulumi.StringRef("my-instances-json"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("output", myInstances.Instances)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetRegistryEnterpriseInstancesArgs;
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
///         // Declare the data source
///         final var myInstances = CsFunctions.getRegistryEnterpriseInstances(GetRegistryEnterpriseInstancesArgs.builder()
///             .nameRegex("my-instances")
///             .outputFile("my-instances-json")
///             .build());
///
///         ctx.export("output", myInstances.instances());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   myInstances:
///     fn::invoke:
///       function: alicloud:cs:getRegistryEnterpriseInstances
///       arguments:
///         nameRegex: my-instances
///         outputFile: my-instances-json
/// outputs:
///   output: ${myInstances.instances}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_registry_enterprise_instances_get_registry_enterprise_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryEnterpriseInstancesResult> getRegistryEnterpriseInstances(
  GetRegistryEnterpriseInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getRegistryEnterpriseInstances:getRegistryEnterpriseInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryEnterpriseInstancesResult.fromMap(result);
}

/// This data source provides a list Container Registry Enterprise Edition namespaces on Alibaba Cloud.
///
/// > **NOTE:** Available in v1.86.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const myNamespaces = alicloud.cs.getRegistryEnterpriseNamespaces({
///     instanceId: "cri-xxx",
///     nameRegex: "my-namespace",
///     outputFile: "my-namespace-json",
/// });
/// export const output = myNamespaces.then(myNamespaces => myNamespaces.namespaces);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// my_namespaces = alicloud.cs.get_registry_enterprise_namespaces(instance_id="cri-xxx",
///     name_regex="my-namespace",
///     output_file="my-namespace-json")
/// pulumi.export("output", my_namespaces.namespaces)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var myNamespaces = AliCloud.CS.GetRegistryEnterpriseNamespaces.Invoke(new()
///     {
///         InstanceId = "cri-xxx",
///         NameRegex = "my-namespace",
///         OutputFile = "my-namespace-json",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["output"] = myNamespaces.Apply(getRegistryEnterpriseNamespacesResult => getRegistryEnterpriseNamespacesResult.Namespaces),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		myNamespaces, err := cs.GetRegistryEnterpriseNamespaces(ctx, &cs.GetRegistryEnterpriseNamespacesArgs{
/// 			InstanceId: "cri-xxx",
/// 			NameRegex:  pulumi.StringRef("my-namespace"),
/// 			OutputFile: pulumi.StringRef("my-namespace-json"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("output", myNamespaces.Namespaces)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetRegistryEnterpriseNamespacesArgs;
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
///         // Declare the data source
///         final var myNamespaces = CsFunctions.getRegistryEnterpriseNamespaces(GetRegistryEnterpriseNamespacesArgs.builder()
///             .instanceId("cri-xxx")
///             .nameRegex("my-namespace")
///             .outputFile("my-namespace-json")
///             .build());
///
///         ctx.export("output", myNamespaces.namespaces());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   myNamespaces:
///     fn::invoke:
///       function: alicloud:cs:getRegistryEnterpriseNamespaces
///       arguments:
///         instanceId: cri-xxx
///         nameRegex: my-namespace
///         outputFile: my-namespace-json
/// outputs:
///   output: ${myNamespaces.namespaces}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_registry_enterprise_namespaces_get_registry_enterprise_namespaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryEnterpriseNamespacesResult> getRegistryEnterpriseNamespaces(
  GetRegistryEnterpriseNamespacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getRegistryEnterpriseNamespaces:getRegistryEnterpriseNamespaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryEnterpriseNamespacesResult.fromMap(result);
}

/// This data source provides the Container Registry Enterprise Edition Repositories of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.87.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.cs.getRegistryEnterpriseInstances({
///     nameRegex: "default-nodeleting",
/// });
/// const defaultRegistryEnterpriseNamespace = new alicloud.cs.RegistryEnterpriseNamespace("default", {
///     instanceId: _default.then(_default => _default.ids?.[0]),
///     name: name,
///     autoCreate: true,
///     defaultVisibility: "PRIVATE",
/// });
/// const defaultRegistryEnterpriseRepo = new alicloud.cs.RegistryEnterpriseRepo("default", {
///     instanceId: defaultRegistryEnterpriseNamespace.instanceId,
///     namespace: defaultRegistryEnterpriseNamespace.name,
///     name: name,
///     repoType: "PRIVATE",
///     summary: name,
/// });
/// const ids = alicloud.cs.getRegistryEnterpriseReposOutput({
///     ids: [defaultRegistryEnterpriseRepo.repoId],
///     instanceId: defaultRegistryEnterpriseRepo.instanceId,
/// });
/// export const crEeReposId0 = ids.apply(ids => ids.repos?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.cs.get_registry_enterprise_instances(name_regex="default-nodeleting")
/// default_registry_enterprise_namespace = alicloud.cs.RegistryEnterpriseNamespace("default",
///     instance_id=default.ids[0],
///     name=name,
///     auto_create=True,
///     default_visibility="PRIVATE")
/// default_registry_enterprise_repo = alicloud.cs.RegistryEnterpriseRepo("default",
///     instance_id=default_registry_enterprise_namespace.instance_id,
///     namespace=default_registry_enterprise_namespace.name,
///     name=name,
///     repo_type="PRIVATE",
///     summary=name)
/// ids = alicloud.cs.get_registry_enterprise_repos_output(ids=[default_registry_enterprise_repo.repo_id],
///     instance_id=default_registry_enterprise_repo.instance_id)
/// pulumi.export("crEeReposId0", ids.repos[0].id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.CS.GetRegistryEnterpriseInstances.Invoke(new()
///     {
///         NameRegex = "default-nodeleting",
///     });
///
///     var defaultRegistryEnterpriseNamespace = new AliCloud.CS.RegistryEnterpriseNamespace("default", new()
///     {
///         InstanceId = @default.Apply(@default => @default.Apply(getRegistryEnterpriseInstancesResult => getRegistryEnterpriseInstancesResult.Ids[0])),
///         Name = name,
///         AutoCreate = true,
///         DefaultVisibility = "PRIVATE",
///     });
///
///     var defaultRegistryEnterpriseRepo = new AliCloud.CS.RegistryEnterpriseRepo("default", new()
///     {
///         InstanceId = defaultRegistryEnterpriseNamespace.InstanceId,
///         Namespace = defaultRegistryEnterpriseNamespace.Name,
///         Name = name,
///         RepoType = "PRIVATE",
///         Summary = name,
///     });
///
///     var ids = AliCloud.CS.GetRegistryEnterpriseRepos.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultRegistryEnterpriseRepo.RepoId,
///         },
///         InstanceId = defaultRegistryEnterpriseRepo.InstanceId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["crEeReposId0"] = ids.Apply(getRegistryEnterpriseReposResult => getRegistryEnterpriseReposResult.Repos[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := cs.GetRegistryEnterpriseInstances(ctx, &cs.GetRegistryEnterpriseInstancesArgs{
/// 			NameRegex: pulumi.StringRef("default-nodeleting"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegistryEnterpriseNamespace, err := cs.NewRegistryEnterpriseNamespace(ctx, "default", &cs.RegistryEnterpriseNamespaceArgs{
/// 			InstanceId:        pulumi.String(_default.Ids[0]),
/// 			Name:              pulumi.String(name),
/// 			AutoCreate:        pulumi.Bool(true),
/// 			DefaultVisibility: pulumi.String("PRIVATE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegistryEnterpriseRepo, err := cs.NewRegistryEnterpriseRepo(ctx, "default", &cs.RegistryEnterpriseRepoArgs{
/// 			InstanceId: defaultRegistryEnterpriseNamespace.InstanceId,
/// 			Namespace:  defaultRegistryEnterpriseNamespace.Name,
/// 			Name:       pulumi.String(name),
/// 			RepoType:   pulumi.String("PRIVATE"),
/// 			Summary:    pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := cs.GetRegistryEnterpriseReposOutput(ctx, cs.GetRegistryEnterpriseReposOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultRegistryEnterpriseRepo.RepoId,
/// 			},
/// 			InstanceId: defaultRegistryEnterpriseRepo.InstanceId,
/// 		}, nil)
/// 		ctx.Export("crEeReposId0", ids.ApplyT(func(ids cs.GetRegistryEnterpriseReposResult) (*string, error) {
/// 			return &ids.Repos[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetRegistryEnterpriseInstancesArgs;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseNamespace;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseNamespaceArgs;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseRepo;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseRepoArgs;
/// import com.pulumi.alicloud.cs.inputs.GetRegistryEnterpriseReposArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = CsFunctions.getRegistryEnterpriseInstances(GetRegistryEnterpriseInstancesArgs.builder()
///             .nameRegex("default-nodeleting")
///             .build());
///
///         var defaultRegistryEnterpriseNamespace = new RegistryEnterpriseNamespace("defaultRegistryEnterpriseNamespace", RegistryEnterpriseNamespaceArgs.builder()
///             .instanceId(default_.ids()[0])
///             .name(name)
///             .autoCreate(true)
///             .defaultVisibility("PRIVATE")
///             .build());
///
///         var defaultRegistryEnterpriseRepo = new RegistryEnterpriseRepo("defaultRegistryEnterpriseRepo", RegistryEnterpriseRepoArgs.builder()
///             .instanceId(defaultRegistryEnterpriseNamespace.instanceId())
///             .namespace(defaultRegistryEnterpriseNamespace.name())
///             .name(name)
///             .repoType("PRIVATE")
///             .summary(name)
///             .build());
///
///         final var ids = CsFunctions.getRegistryEnterpriseRepos(GetRegistryEnterpriseReposArgs.builder()
///             .ids(defaultRegistryEnterpriseRepo.repoId())
///             .instanceId(defaultRegistryEnterpriseRepo.instanceId())
///             .build());
///
///         ctx.export("crEeReposId0", ids.applyValue(_ids -> _ids.repos()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultRegistryEnterpriseNamespace:
///     type: alicloud:cs:RegistryEnterpriseNamespace
///     name: default
///     properties:
///       instanceId: ${default.ids[0]}
///       name: ${name}
///       autoCreate: true
///       defaultVisibility: PRIVATE
///   defaultRegistryEnterpriseRepo:
///     type: alicloud:cs:RegistryEnterpriseRepo
///     name: default
///     properties:
///       instanceId: ${defaultRegistryEnterpriseNamespace.instanceId}
///       namespace: ${defaultRegistryEnterpriseNamespace.name}
///       name: ${name}
///       repoType: PRIVATE
///       summary: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cs:getRegistryEnterpriseInstances
///       arguments:
///         nameRegex: default-nodeleting
///   ids:
///     fn::invoke:
///       function: alicloud:cs:getRegistryEnterpriseRepos
///       arguments:
///         ids:
///           - ${defaultRegistryEnterpriseRepo.repoId}
///         instanceId: ${defaultRegistryEnterpriseRepo.instanceId}
/// outputs:
///   crEeReposId0: ${ids.repos[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_registry_enterprise_repos_get_registry_enterprise_repos_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryEnterpriseReposResult> getRegistryEnterpriseRepos(
  GetRegistryEnterpriseReposArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getRegistryEnterpriseRepos:getRegistryEnterpriseRepos',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryEnterpriseReposResult.fromMap(result);
}

/// This data source provides a list Container Registry Enterprise Edition sync rules on Alibaba Cloud.
///
/// > **NOTE:** Available in v1.90.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const mySyncRules = alicloud.cs.getRegistryEnterpriseSyncRules({
///     instanceId: "cri-xxx",
///     namespaceName: "test-namespace",
///     repoName: "test-repo",
///     targetInstanceId: "cri-yyy",
///     nameRegex: "test-rule",
/// });
/// export const output = mySyncRules.then(mySyncRules => mySyncRules.rules.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// my_sync_rules = alicloud.cs.get_registry_enterprise_sync_rules(instance_id="cri-xxx",
///     namespace_name="test-namespace",
///     repo_name="test-repo",
///     target_instance_id="cri-yyy",
///     name_regex="test-rule")
/// pulumi.export("output", [__item.id for __item in my_sync_rules.rules])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var mySyncRules = AliCloud.CS.GetRegistryEnterpriseSyncRules.Invoke(new()
///     {
///         InstanceId = "cri-xxx",
///         NamespaceName = "test-namespace",
///         RepoName = "test-repo",
///         TargetInstanceId = "cri-yyy",
///         NameRegex = "test-rule",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["output"] = mySyncRules.Apply(getRegistryEnterpriseSyncRulesResult => getRegistryEnterpriseSyncRulesResult.Rules).Select(__item => __item.Id).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Declare the data source
/// mySyncRules, err := cs.GetRegistryEnterpriseSyncRules(ctx, &cs.GetRegistryEnterpriseSyncRulesArgs{
/// InstanceId: "cri-xxx",
/// NamespaceName: pulumi.StringRef("test-namespace"),
/// RepoName: pulumi.StringRef("test-repo"),
/// TargetInstanceId: pulumi.StringRef("cri-yyy"),
/// NameRegex: pulumi.StringRef("test-rule"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("output", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:10,11-34)))
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetRegistryEnterpriseSyncRulesArgs;
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
///         // Declare the data source
///         final var mySyncRules = CsFunctions.getRegistryEnterpriseSyncRules(GetRegistryEnterpriseSyncRulesArgs.builder()
///             .instanceId("cri-xxx")
///             .namespaceName("test-namespace")
///             .repoName("test-repo")
///             .targetInstanceId("cri-yyy")
///             .nameRegex("test-rule")
///             .build());
///
///         ctx.export("output", mySyncRules.rules().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_registry_enterprise_sync_rules_get_registry_enterprise_sync_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryEnterpriseSyncRulesResult> getRegistryEnterpriseSyncRules(
  GetRegistryEnterpriseSyncRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getRegistryEnterpriseSyncRules:getRegistryEnterpriseSyncRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryEnterpriseSyncRulesResult.fromMap(result);
}

/// This data source provides a list Container Service Serverless Kubernetes Clusters on Alibaba Cloud.
///
/// > **NOTE:** Available since v1.58.0
///
/// > **NOTE:** From version v1.177.0+, We supported batch export of clusters' kube config information by `kube_config_file_prefix`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const k8sClusters = alicloud.cs.getServerlessKubernetesClusters({
///     nameRegex: "my-first-k8s",
///     outputFile: "my-first-k8s-json",
///     kubeConfigFilePrefix: "~/.kube/serverless",
/// });
/// export const output = k8sClusters.then(k8sClusters => k8sClusters.clusters);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// k8s_clusters = alicloud.cs.get_serverless_kubernetes_clusters(name_regex="my-first-k8s",
///     output_file="my-first-k8s-json",
///     kube_config_file_prefix="~/.kube/serverless")
/// pulumi.export("output", k8s_clusters.clusters)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var k8sClusters = AliCloud.CS.GetServerlessKubernetesClusters.Invoke(new()
///     {
///         NameRegex = "my-first-k8s",
///         OutputFile = "my-first-k8s-json",
///         KubeConfigFilePrefix = "~/.kube/serverless",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["output"] = k8sClusters.Apply(getServerlessKubernetesClustersResult => getServerlessKubernetesClustersResult.Clusters),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		k8sClusters, err := cs.GetServerlessKubernetesClusters(ctx, &cs.GetServerlessKubernetesClustersArgs{
/// 			NameRegex:            pulumi.StringRef("my-first-k8s"),
/// 			OutputFile:           pulumi.StringRef("my-first-k8s-json"),
/// 			KubeConfigFilePrefix: pulumi.StringRef("~/.kube/serverless"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("output", k8sClusters.Clusters)
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
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetServerlessKubernetesClustersArgs;
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
///         // Declare the data source
///         final var k8sClusters = CsFunctions.getServerlessKubernetesClusters(GetServerlessKubernetesClustersArgs.builder()
///             .nameRegex("my-first-k8s")
///             .outputFile("my-first-k8s-json")
///             .kubeConfigFilePrefix("~/.kube/serverless")
///             .build());
///
///         ctx.export("output", k8sClusters.clusters());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   k8sClusters:
///     fn::invoke:
///       function: alicloud:cs:getServerlessKubernetesClusters
///       arguments:
///         nameRegex: my-first-k8s
///         outputFile: my-first-k8s-json
///         kubeConfigFilePrefix: ~/.kube/serverless
/// outputs:
///   output: ${k8sClusters.clusters}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cs_get_serverless_kubernetes_clusters_get_serverless_kubernetes_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessKubernetesClustersResult> getServerlessKubernetesClusters(
  GetServerlessKubernetesClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cs/getServerlessKubernetesClusters:getServerlessKubernetesClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessKubernetesClustersResult.fromMap(result);
}
