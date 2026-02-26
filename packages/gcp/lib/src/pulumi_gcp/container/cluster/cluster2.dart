import 'package:pulumi/pulumi.dart';
import '../cluster_addons_config/cluster_addons_config.dart';
import '../cluster_anonymous_authentication_config/cluster_anonymous_authentication_config.dart';
import '../cluster_authenticator_groups_config/cluster_authenticator_groups_config.dart';
import '../cluster_binary_authorization/cluster_binary_authorization.dart';
import '../cluster_cluster_autoscaling/cluster_cluster_autoscaling.dart';
import '../cluster_cluster_telemetry/cluster_cluster_telemetry.dart';
import '../cluster_confidential_nodes/cluster_confidential_nodes.dart';
import '../cluster_control_plane_endpoints_config/cluster_control_plane_endpoints_config.dart';
import '../cluster_cost_management_config/cluster_cost_management_config.dart';
import '../cluster_database_encryption/cluster_database_encryption.dart';
import '../cluster_default_snat_status/cluster_default_snat_status.dart';
import '../cluster_dns_config/cluster_dns_config.dart';
import '../cluster_enable_k8s_beta_apis/cluster_enable_k8s_beta_apis.dart';
import '../cluster_enterprise_config/cluster_enterprise_config.dart';
import '../cluster_fleet/cluster_fleet.dart';
import '../cluster_gateway_api_config/cluster_gateway_api_config.dart';
import '../cluster_gke_auto_upgrade_config/cluster_gke_auto_upgrade_config.dart';
import '../cluster_identity_service_config/cluster_identity_service_config.dart';
import '../cluster_ip_allocation_policy/cluster_ip_allocation_policy.dart';
import '../cluster_logging_config/cluster_logging_config.dart';
import '../cluster_maintenance_policy/cluster_maintenance_policy.dart';
import '../cluster_managed_opentelemetry_config/cluster_managed_opentelemetry_config.dart';
import '../cluster_master_auth/cluster_master_auth.dart';
import '../cluster_master_authorized_networks_config/cluster_master_authorized_networks_config.dart';
import '../cluster_mesh_certificates/cluster_mesh_certificates.dart';
import '../cluster_monitoring_config/cluster_monitoring_config.dart';
import '../cluster_network_performance_config/cluster_network_performance_config.dart';
import '../cluster_network_policy/cluster_network_policy.dart';
import '../cluster_node_config/cluster_node_config.dart';
import '../cluster_node_pool/cluster_node_pool.dart';
import '../cluster_node_pool_auto_config/cluster_node_pool_auto_config.dart';
import '../cluster_node_pool_defaults/cluster_node_pool_defaults.dart';
import '../cluster_notification_config/cluster_notification_config.dart';
import '../cluster_pod_autoscaling/cluster_pod_autoscaling.dart';
import '../cluster_pod_security_policy_config/cluster_pod_security_policy_config.dart';
import '../cluster_private_cluster_config/cluster_private_cluster_config.dart';
import '../cluster_protect_config/cluster_protect_config.dart';
import '../cluster_rbac_binding_config/cluster_rbac_binding_config.dart';
import '../cluster_release_channel/cluster_release_channel.dart';
import '../cluster_resource_usage_export_config/cluster_resource_usage_export_config.dart';
import '../cluster_secret_manager_config/cluster_secret_manager_config.dart';
import '../cluster_secret_sync_config/cluster_secret_sync_config.dart';
import '../cluster_security_posture_config/cluster_security_posture_config.dart';
import '../cluster_service_external_ips_config/cluster_service_external_ips_config.dart';
import '../cluster_tpu_config/cluster_tpu_config.dart';
import '../cluster_user_managed_keys_config/cluster_user_managed_keys_config.dart';
import '../cluster_vertical_pod_autoscaling/cluster_vertical_pod_autoscaling.dart';
import '../cluster_workload_alts_config/cluster_workload_alts_config.dart';
import '../cluster_workload_identity_config/cluster_workload_identity_config.dart';
import 'cluster_args2.dart';

/// Manages a Google Kubernetes Engine (GKE) cluster.
///
/// To get more information about GKE clusters, see:
/// * [The API reference](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters)
/// * How-to guides
/// * [GKE overview](https://cloud.google.com/kubernetes-engine/docs/concepts/kubernetes-engine-overview)
/// * [About cluster configuration choices](https://cloud.google.com/kubernetes-engine/docs/concepts/types-of-clusters)
///
/// > On version 5.0.0+ of the provider, you must explicitly set <span pulumi-lang-nodejs="`deletionProtection " pulumi-lang-dotnet="`DeletionProtection " pulumi-lang-go="`deletionProtection " pulumi-lang-python="`deletion_protection " pulumi-lang-yaml="`deletionProtection " pulumi-lang-java="`deletionProtection ">`deletion_protection </span>= false`
/// and run `pulumi up` to write the field to state in order to destroy a cluster.
///
/// > All arguments and attributes (including certificate outputs) will be stored in the raw state as
/// plaintext. [Read more about secrets in state](https://www.pulumi.com/docs/intro/concepts/programming-model/#secrets).
///
/// ## Example Usage
///
/// ### With A Separately Managed Node Pool (Recommended)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.serviceaccount.Account("default", {
/// accountId: "service-account-id",
/// displayName: "Service Account",
/// });
/// const primary = new gcp.container.Cluster("primary", {
/// name: "my-gke-cluster",
/// location: "us-central1",
/// removeDefaultNodePool: true,
/// initialNodeCount: 1,
/// });
/// const primaryPreemptibleNodes = new gcp.container.NodePool("primary_preemptible_nodes", {
/// name: "my-node-pool",
/// location: "us-central1",
/// cluster: primary.name,
/// nodeCount: 1,
/// nodeConfig: {
/// preemptible: true,
/// machineType: "e2-medium",
/// serviceAccount: _default.email,
/// oauthScopes: ["https://www.googleapis.com/auth/cloud-platform"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.serviceaccount.Account("default",
/// account_id="service-account-id",
/// display_name="Service Account")
/// primary = gcp.container.Cluster("primary",
/// name="my-gke-cluster",
/// location="us-central1",
/// remove_default_node_pool=True,
/// initial_node_count=1)
/// primary_preemptible_nodes = gcp.container.NodePool("primary_preemptible_nodes",
/// name="my-node-pool",
/// location="us-central1",
/// cluster=primary.name,
/// node_count=1,
/// node_config={
/// "preemptible": True,
/// "machine_type": "e2-medium",
/// "service_account": default.email,
/// "oauth_scopes": ["https://www.googleapis.com/auth/cloud-platform"],
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
/// var @default = new Gcp.ServiceAccount.Account("default", new()
/// {
/// AccountId = "service-account-id",
/// DisplayName = "Service Account",
/// });
///
/// var primary = new Gcp.Container.Cluster("primary", new()
/// {
/// Name = "my-gke-cluster",
/// Location = "us-central1",
/// RemoveDefaultNodePool = true,
/// InitialNodeCount = 1,
/// });
///
/// var primaryPreemptibleNodes = new Gcp.Container.NodePool("primary_preemptible_nodes", new()
/// {
/// Name = "my-node-pool",
/// Location = "us-central1",
/// Cluster = primary.Name,
/// NodeCount = 1,
/// NodeConfig = new Gcp.Container.Inputs.NodePoolNodeConfigArgs
/// {
/// Preemptible = true,
/// MachineType = "e2-medium",
/// ServiceAccount = @default.Email,
/// OauthScopes = new[]
/// {
/// "https://www.googleapis.com/auth/cloud-platform",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// AccountId:   pulumi.String("service-account-id"),
/// DisplayName: pulumi.String("Service Account"),
/// })
/// if err != nil {
/// return err
/// }
/// primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// Name:                  pulumi.String("my-gke-cluster"),
/// Location:              pulumi.String("us-central1"),
/// RemoveDefaultNodePool: pulumi.Bool(true),
/// InitialNodeCount:      pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = container.NewNodePool(ctx, "primary_preemptible_nodes", &container.NodePoolArgs{
/// Name:      pulumi.String("my-node-pool"),
/// Location:  pulumi.String("us-central1"),
/// Cluster:   primary.Name,
/// NodeCount: pulumi.Int(1),
/// NodeConfig: &container.NodePoolNodeConfigArgs{
/// Preemptible:    pulumi.Bool(true),
/// MachineType:    pulumi.String("e2-medium"),
/// ServiceAccount: _default.Email,
/// OauthScopes: pulumi.StringArray{
/// pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.NodePool;
/// import com.pulumi.gcp.container.NodePoolArgs;
/// import com.pulumi.gcp.container.inputs.NodePoolNodeConfigArgs;
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
/// var default_ = new Account("default", AccountArgs.builder()
/// .accountId("service-account-id")
/// .displayName("Service Account")
/// .build());
///
/// var primary = new Cluster("primary", ClusterArgs.builder()
/// .name("my-gke-cluster")
/// .location("us-central1")
/// .removeDefaultNodePool(true)
/// .initialNodeCount(1)
/// .build());
///
/// var primaryPreemptibleNodes = new NodePool("primaryPreemptibleNodes", NodePoolArgs.builder()
/// .name("my-node-pool")
/// .location("us-central1")
/// .cluster(primary.name())
/// .nodeCount(1)
/// .nodeConfig(NodePoolNodeConfigArgs.builder()
/// .preemptible(true)
/// .machineType("e2-medium")
/// .serviceAccount(default_.email())
/// .oauthScopes("https://www.googleapis.com/auth/cloud-platform")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:serviceaccount:Account
/// properties:
/// accountId: service-account-id
/// displayName: Service Account
/// primary:
/// type: gcp:container:Cluster
/// properties:
/// name: my-gke-cluster
/// location: us-central1
/// removeDefaultNodePool: true
/// initialNodeCount: 1
/// primaryPreemptibleNodes:
/// type: gcp:container:NodePool
/// name: primary_preemptible_nodes
/// properties:
/// name: my-node-pool
/// location: us-central1
/// cluster: ${primary.name}
/// nodeCount: 1
/// nodeConfig:
/// preemptible: true
/// machineType: e2-medium
/// serviceAccount: ${default.email}
/// oauthScopes:
/// - https://www.googleapis.com/auth/cloud-platform
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > **Note:** It is recommended that node pools be created and managed as separate resources as in the example above.
/// This allows node pools to be added and removed without recreating the cluster.  Node pools defined directly in the
/// <span pulumi-lang-nodejs="`gcp.container.Cluster`" pulumi-lang-dotnet="`gcp.container.Cluster`" pulumi-lang-go="`container.Cluster`" pulumi-lang-python="`container.Cluster`" pulumi-lang-yaml="`gcp.container.Cluster`" pulumi-lang-java="`gcp.container.Cluster`">`gcp.container.Cluster`</span> resource cannot be removed without re-creating the cluster.
///
/// ### With The Default Node Pool
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.serviceaccount.Account("default", {
/// accountId: "service-account-id",
/// displayName: "Service Account",
/// });
/// const primary = new gcp.container.Cluster("primary", {
/// name: "marcellus-wallace",
/// location: "us-central1-a",
/// initialNodeCount: 3,
/// nodeConfig: {
/// serviceAccount: _default.email,
/// oauthScopes: ["https://www.googleapis.com/auth/cloud-platform"],
/// labels: {
/// foo: "bar",
/// },
/// tags: [
/// "foo",
/// "bar",
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.serviceaccount.Account("default",
/// account_id="service-account-id",
/// display_name="Service Account")
/// primary = gcp.container.Cluster("primary",
/// name="marcellus-wallace",
/// location="us-central1-a",
/// initial_node_count=3,
/// node_config={
/// "service_account": default.email,
/// "oauth_scopes": ["https://www.googleapis.com/auth/cloud-platform"],
/// "labels": {
/// "foo": "bar",
/// },
/// "tags": [
/// "foo",
/// "bar",
/// ],
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
/// var @default = new Gcp.ServiceAccount.Account("default", new()
/// {
/// AccountId = "service-account-id",
/// DisplayName = "Service Account",
/// });
///
/// var primary = new Gcp.Container.Cluster("primary", new()
/// {
/// Name = "marcellus-wallace",
/// Location = "us-central1-a",
/// InitialNodeCount = 3,
/// NodeConfig = new Gcp.Container.Inputs.ClusterNodeConfigArgs
/// {
/// ServiceAccount = @default.Email,
/// OauthScopes = new[]
/// {
/// "https://www.googleapis.com/auth/cloud-platform",
/// },
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Tags = new[]
/// {
/// "foo",
/// "bar",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// AccountId:   pulumi.String("service-account-id"),
/// DisplayName: pulumi.String("Service Account"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// Name:             pulumi.String("marcellus-wallace"),
/// Location:         pulumi.String("us-central1-a"),
/// InitialNodeCount: pulumi.Int(3),
/// NodeConfig: &container.ClusterNodeConfigArgs{
/// ServiceAccount: _default.Email,
/// OauthScopes: pulumi.StringArray{
/// pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// },
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Tags: pulumi.StringArray{
/// pulumi.String("foo"),
/// pulumi.String("bar"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterNodeConfigArgs;
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
/// var default_ = new Account("default", AccountArgs.builder()
/// .accountId("service-account-id")
/// .displayName("Service Account")
/// .build());
///
/// var primary = new Cluster("primary", ClusterArgs.builder()
/// .name("marcellus-wallace")
/// .location("us-central1-a")
/// .initialNodeCount(3)
/// .nodeConfig(ClusterNodeConfigArgs.builder()
/// .serviceAccount(default_.email())
/// .oauthScopes("https://www.googleapis.com/auth/cloud-platform")
/// .labels(Map.of("foo", "bar"))
/// .tags(
/// "foo",
/// "bar")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:serviceaccount:Account
/// properties:
/// accountId: service-account-id
/// displayName: Service Account
/// primary:
/// type: gcp:container:Cluster
/// properties:
/// name: marcellus-wallace
/// location: us-central1-a
/// initialNodeCount: 3
/// nodeConfig:
/// serviceAccount: ${default.email}
/// oauthScopes:
/// - https://www.googleapis.com/auth/cloud-platform
/// labels:
/// foo: bar
/// tags:
/// - foo
/// - bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Autopilot
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.serviceaccount.Account("default", {
/// accountId: "service-account-id",
/// displayName: "Service Account",
/// });
/// const primary = new gcp.container.Cluster("primary", {
/// name: "marcellus-wallace",
/// location: "us-central1-a",
/// enableAutopilot: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.serviceaccount.Account("default",
/// account_id="service-account-id",
/// display_name="Service Account")
/// primary = gcp.container.Cluster("primary",
/// name="marcellus-wallace",
/// location="us-central1-a",
/// enable_autopilot=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.ServiceAccount.Account("default", new()
/// {
/// AccountId = "service-account-id",
/// DisplayName = "Service Account",
/// });
///
/// var primary = new Gcp.Container.Cluster("primary", new()
/// {
/// Name = "marcellus-wallace",
/// Location = "us-central1-a",
/// EnableAutopilot = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// AccountId:   pulumi.String("service-account-id"),
/// DisplayName: pulumi.String("Service Account"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// Name:            pulumi.String("marcellus-wallace"),
/// Location:        pulumi.String("us-central1-a"),
/// EnableAutopilot: pulumi.Bool(true),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
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
/// var default_ = new Account("default", AccountArgs.builder()
/// .accountId("service-account-id")
/// .displayName("Service Account")
/// .build());
///
/// var primary = new Cluster("primary", ClusterArgs.builder()
/// .name("marcellus-wallace")
/// .location("us-central1-a")
/// .enableAutopilot(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:serviceaccount:Account
/// properties:
/// accountId: service-account-id
/// displayName: Service Account
/// primary:
/// type: gcp:container:Cluster
/// properties:
/// name: marcellus-wallace
/// location: us-central1-a
/// enableAutopilot: true
/// ```
/// <!--End PulumiCodeChooser -->
class Cluster2 extends CustomResource {
  /// The configuration for addons supported by GKE.
  /// Structure is documented below.
  late final Output<ClusterAddonsConfig> addonsConfig;

  /// Enable NET_ADMIN for the cluster. Defaults to
  /// <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. This field should only be enabled for Autopilot clusters (<span pulumi-lang-nodejs="`enableAutopilot`" pulumi-lang-dotnet="`EnableAutopilot`" pulumi-lang-go="`enableAutopilot`" pulumi-lang-python="`enable_autopilot`" pulumi-lang-yaml="`enableAutopilot`" pulumi-lang-java="`enableAutopilot`">`enable_autopilot`</span>
  /// set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>).
  late final Output<bool?> allowNetAdmin;

  /// Configuration for [anonymous authentication restrictions](https://cloud.google.com/kubernetes-engine/docs/how-to/hardening-your-cluster#restrict-anon-access). Structure is documented below.
  late final Output<ClusterAnonymousAuthenticationConfig>
      anonymousAuthenticationConfig;

  /// Configuration for the
  /// [Google Groups for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control#groups-setup-gsuite) feature.
  /// Structure is documented below.
  late final Output<ClusterAuthenticatorGroupsConfig> authenticatorGroupsConfig;

  /// Configuration options for the Binary
  /// Authorization feature. Structure is documented below.
  late final Output<ClusterBinaryAuthorization?> binaryAuthorization;

  /// Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to
  /// automatically adjust the size of the cluster and create/delete node pools based
  /// on the current needs of the cluster's workload. See the
  /// [guide to using Node Auto-Provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)
  /// for more details. Structure is documented below.
  late final Output<ClusterClusterAutoscaling> clusterAutoscaling;

  /// The IP address range of the Kubernetes pods
  /// in this cluster in CIDR notation (e.g. `10.96.0.0/14`). Leave blank to have one
  /// automatically chosen or specify a `/14` block in `10.0.0.0/8`. This field will
  /// default a new cluster to routes-based, where <span pulumi-lang-nodejs="`ipAllocationPolicy`" pulumi-lang-dotnet="`IpAllocationPolicy`" pulumi-lang-go="`ipAllocationPolicy`" pulumi-lang-python="`ip_allocation_policy`" pulumi-lang-yaml="`ipAllocationPolicy`" pulumi-lang-java="`ipAllocationPolicy`">`ip_allocation_policy`</span> is not defined.
  late final Output<String> clusterIpv4Cidr;

  /// Configuration for
  /// [ClusterTelemetry](https://cloud.google.com/monitoring/kubernetes-engine/installing#controlling_the_collection_of_application_logs) feature,
  /// Structure is documented below.
  late final Output<ClusterClusterTelemetry> clusterTelemetry;

  /// Configuration for [Confidential Nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/confidential-gke-nodes) feature. Structure is documented below documented below.
  late final Output<ClusterConfidentialNodes> confidentialNodes;

  /// Configuration for all of the cluster's control plane endpoints.
  /// Structure is documented below.
  late final Output<ClusterControlPlaneEndpointsConfig>
      controlPlaneEndpointsConfig;

  /// Configuration for the
  /// [Cost Allocation](https://cloud.google.com/kubernetes-engine/docs/how-to/cost-allocations) feature.
  /// Structure is documented below.
  late final Output<ClusterCostManagementConfig> costManagementConfig;

  /// Structure is documented below.
  late final Output<ClusterDatabaseEncryption> databaseEncryption;

  /// The desired datapath provider for this cluster. This is set to `LEGACY_DATAPATH` by default, which uses the IPTables-based kube-proxy implementation. Set to `ADVANCED_DATAPATH` to enable Dataplane v2.
  late final Output<String> datapathProvider;

  /// The default maximum number of pods
  /// per node in this cluster. This doesn't work on "routes-based" clusters, clusters
  /// that don't have IP Aliasing enabled. See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr)
  /// for more information.
  late final Output<int> defaultMaxPodsPerNode;

  /// [GKE SNAT](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent#how_ipmasq_works) DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster, [API doc](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#networkconfig). Structure is documented below
  late final Output<ClusterDefaultSnatStatus> defaultSnatStatus;
  late final Output<bool?> deletionProtection;

  /// Description of the cluster.
  late final Output<String?> description;

  /// Disable L4 load balancer VPC firewalls to enable firewall policies.
  late final Output<bool?> disableL4LbFirewallReconciliation;

  /// Configuration for [Using Cloud DNS for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/cloud-dns). Structure is documented below.
  late final Output<ClusterDnsConfig?> dnsConfig;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Enable Autopilot for this cluster. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  /// Note that when this option is enabled, certain features of Standard GKE are not available.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview#comparison)
  /// for available features.
  late final Output<bool?> enableAutopilot;

  /// Whether CiliumClusterWideNetworkPolicy is enabled on this cluster. Defaults to false.
  late final Output<bool?> enableCiliumClusterwideNetworkPolicy;

  /// Whether FQDN Network Policy is enabled on this cluster. Users who enable this feature for existing Standard clusters must restart the GKE Dataplane V2 <span pulumi-lang-nodejs="`anetd`" pulumi-lang-dotnet="`Anetd`" pulumi-lang-go="`anetd`" pulumi-lang-python="`anetd`" pulumi-lang-yaml="`anetd`" pulumi-lang-java="`anetd`">`anetd`</span> DaemonSet after enabling it. See the [Enable FQDN Network Policy in an existing cluster](https://cloud.google.com/kubernetes-engine/docs/how-to/fqdn-network-policies#enable_fqdn_network_policy_in_an_existing_cluster) for more information.
  late final Output<bool?> enableFqdnNetworkPolicy;

  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  late final Output<bool> enableIntranodeVisibility;

  /// Configuration for Kubernetes Beta APIs.
  /// Structure is documented below.
  late final Output<ClusterEnableK8sBetaApis?> enableK8sBetaApis;

  /// Whether to enable Kubernetes Alpha features for
  /// this cluster. Note that when this option is enabled, the cluster cannot be upgraded
  /// and will be automatically deleted after 30 days.
  late final Output<bool?> enableKubernetesAlpha;

  /// Whether L4ILB Subsetting is enabled for this cluster.
  late final Output<bool> enableL4IlbSubsetting;

  /// Whether the ABAC authorizer is enabled for this cluster.
  /// When enabled, identities in the system, including service accounts, nodes, and controllers,
  /// will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  /// Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  late final Output<bool?> enableLegacyAbac;

  /// Whether multi-networking is enabled for this cluster.
  late final Output<bool?> enableMultiNetworking;

  /// Enable Shielded Nodes features on all nodes in this cluster.  Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enableShieldedNodes;

  /// Whether to enable Cloud TPU resources in this cluster.
  /// See the [official documentation](https://cloud.google.com/tpu/docs/kubernetes-engine-setup).
  late final Output<bool> enableTpu;

  /// The IP address of this cluster's Kubernetes master.
  late final Output<String> endpoint;

  /// (DEPRECATED) Configuration for [Enterprise edition].(https://cloud.google.com/kubernetes-engine/enterprise/docs/concepts/gke-editions). Structure is documented below. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  late final Output<ClusterEnterpriseConfig> enterpriseConfig;

  /// Fleet configuration for the cluster. Structure is documented below.
  late final Output<ClusterFleet?> fleet;

  /// Configuration for [GKE Gateway API controller](https://cloud.google.com/kubernetes-engine/docs/concepts/gateway-api). Structure is documented below.
  late final Output<ClusterGatewayApiConfig> gatewayApiConfig;

  /// Configuration options for the auto-upgrade patch type feature, which provide more control over the speed of automatic upgrades of your GKE clusters.
  /// Structure is documented below.
  late final Output<ClusterGkeAutoUpgradeConfig> gkeAutoUpgradeConfig;

  /// . Structure is documented below.
  late final Output<ClusterIdentityServiceConfig> identityServiceConfig;

  /// Defines the config of in-transit encryption. Valid values are `IN_TRANSIT_ENCRYPTION_DISABLED` and `IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT`.
  late final Output<String?> inTransitEncryptionConfig;

  /// The number of nodes to create in this
  /// cluster's default node pool. In regional or multi-zonal clusters, this is the
  /// number of nodes per zone. Must be set if <span pulumi-lang-nodejs="`nodePool`" pulumi-lang-dotnet="`NodePool`" pulumi-lang-go="`nodePool`" pulumi-lang-python="`node_pool`" pulumi-lang-yaml="`nodePool`" pulumi-lang-java="`nodePool`">`node_pool`</span> is not set. If you're using
  /// <span pulumi-lang-nodejs="`gcp.container.NodePool`" pulumi-lang-dotnet="`gcp.container.NodePool`" pulumi-lang-go="`container.NodePool`" pulumi-lang-python="`container.NodePool`" pulumi-lang-yaml="`gcp.container.NodePool`" pulumi-lang-java="`gcp.container.NodePool`">`gcp.container.NodePool`</span> objects with no default node pool, you'll need to
  /// set this to a value of at least <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, alongside setting
  /// <span pulumi-lang-nodejs="`removeDefaultNodePool`" pulumi-lang-dotnet="`RemoveDefaultNodePool`" pulumi-lang-go="`removeDefaultNodePool`" pulumi-lang-python="`remove_default_node_pool`" pulumi-lang-yaml="`removeDefaultNodePool`" pulumi-lang-java="`removeDefaultNodePool`">`remove_default_node_pool`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<int?> initialNodeCount;

  /// Configuration of cluster IP allocation for
  /// VPC-native clusters. If this block is unset during creation, it will be set by the GKE backend.
  /// Structure is documented below.
  late final Output<ClusterIpAllocationPolicy> ipAllocationPolicy;

  /// The fingerprint of the set of labels for this cluster.
  late final Output<String> labelFingerprint;

  /// The location (region or zone) in which the cluster
  /// master will be created, as well as the default node location. If you specify a
  /// zone (such as `us-central1-a`), the cluster will be a zonal cluster with a
  /// single cluster master. If you specify a region (such as `us-west1`), the
  /// cluster will be a regional cluster with multiple masters spread across zones in
  /// the region, and with default node locations in those zones as well
  late final Output<String> location;

  /// Logging configuration for the cluster.
  /// Structure is documented below.
  late final Output<ClusterLoggingConfig> loggingConfig;

  /// The logging service that the cluster should
  /// write logs to. Available options include `logging.googleapis.com`(Legacy Stackdriver),
  /// `logging.googleapis.com/kubernetes`(Stackdriver Kubernetes Engine Logging), and <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>. Defaults to `logging.googleapis.com/kubernetes`
  late final Output<String> loggingService;

  /// The maintenance policy to use for the cluster. Structure is
  /// documented below.
  late final Output<ClusterMaintenancePolicy?> maintenancePolicy;

  /// Configuration for the [GKE Managed OpenTelemetry](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/managed-otel-gke) feature. Structure is documented below.
  late final Output<ClusterManagedOpentelemetryConfig>
      managedOpentelemetryConfig;

  /// The authentication information for accessing the
  /// Kubernetes master. Some values in this block are only returned by the API if
  /// your service account has permission to get credentials for your GKE cluster. If
  /// you see an unexpected diff unsetting your client cert, ensure you have the
  /// `container.clusters.getCredentials` permission.
  /// Structure is documented below.
  late final Output<ClusterMasterAuth> masterAuth;

  /// The desired
  /// configuration options for master authorized networks. Omit the
  /// nested <span pulumi-lang-nodejs="`cidrBlocks`" pulumi-lang-dotnet="`CidrBlocks`" pulumi-lang-go="`cidrBlocks`" pulumi-lang-python="`cidr_blocks`" pulumi-lang-yaml="`cidrBlocks`" pulumi-lang-java="`cidrBlocks`">`cidr_blocks`</span> attribute to disallow external access (except
  /// the cluster node IPs, which GKE automatically whitelists).
  /// Structure is documented below.
  late final Output<ClusterMasterAuthorizedNetworksConfig>
      masterAuthorizedNetworksConfig;

  /// The current version of the master in the cluster. This may be different than the<span pulumi-lang-nodejs=" minMasterVersion " pulumi-lang-dotnet=" MinMasterVersion " pulumi-lang-go=" minMasterVersion " pulumi-lang-python=" min_master_version " pulumi-lang-yaml=" minMasterVersion " pulumi-lang-java=" minMasterVersion "> min_master_version </span>set in the config if the master has been updated by GKE.
  late final Output<String> masterVersion;

  /// Structure is documented below.
  late final Output<ClusterMeshCertificates> meshCertificates;

  /// The minimum version of the master. GKE
  /// will auto-update the master to new versions, so this does not guarantee the
  /// current master version--use the read-only <span pulumi-lang-nodejs="`masterVersion`" pulumi-lang-dotnet="`MasterVersion`" pulumi-lang-go="`masterVersion`" pulumi-lang-python="`master_version`" pulumi-lang-yaml="`masterVersion`" pulumi-lang-java="`masterVersion`">`master_version`</span> field to obtain that.
  /// If unset, the cluster's version will be set by GKE to the version of the most recent
  /// official release (which is not necessarily the latest version).  Most users will find
  /// the <span pulumi-lang-nodejs="`gcp.container.getEngineVersions`" pulumi-lang-dotnet="`gcp.container.getEngineVersions`" pulumi-lang-go="`container.getEngineVersions`" pulumi-lang-python="`container_get_engine_versions`" pulumi-lang-yaml="`gcp.container.getEngineVersions`" pulumi-lang-java="`gcp.container.getEngineVersions`">`gcp.container.getEngineVersions`</span> data source useful - it indicates which versions
  /// are available. If you intend to specify versions manually,
  /// [the docs](https://cloud.google.com/kubernetes-engine/versioning-and-upgrades#specifying_cluster_version)
  /// describe the various acceptable formats for this field.
  ///
  /// > If you are using the <span pulumi-lang-nodejs="`gcp.container.getEngineVersions`" pulumi-lang-dotnet="`gcp.container.getEngineVersions`" pulumi-lang-go="`container.getEngineVersions`" pulumi-lang-python="`container_get_engine_versions`" pulumi-lang-yaml="`gcp.container.getEngineVersions`" pulumi-lang-java="`gcp.container.getEngineVersions`">`gcp.container.getEngineVersions`</span> datasource with a regional cluster, ensure that you have provided a <span pulumi-lang-nodejs="`location`" pulumi-lang-dotnet="`Location`" pulumi-lang-go="`location`" pulumi-lang-python="`location`" pulumi-lang-yaml="`location`" pulumi-lang-java="`location`">`location`</span>
  /// to the datasource. A region can have a different set of supported versions than its corresponding zones, and not all zones in a
  /// region are guaranteed to support the same version.
  late final Output<String?> minMasterVersion;

  /// Monitoring configuration for the cluster.
  /// Structure is documented below.
  late final Output<ClusterMonitoringConfig> monitoringConfig;

  /// The monitoring service that the cluster
  /// should write metrics to.
  /// Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API.
  /// VM metrics will be collected by Google Compute Engine regardless of this setting
  /// Available options include
  /// `monitoring.googleapis.com`(Legacy Stackdriver), `monitoring.googleapis.com/kubernetes`(Stackdriver Kubernetes Engine Monitoring), and <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>.
  /// Defaults to `monitoring.googleapis.com/kubernetes`
  late final Output<String> monitoringService;

  /// The name of the cluster, unique within the project and
  /// location.
  ///
  /// - - -
  late final Output<String> name;

  /// The name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the Google Compute Engine
  /// network to which the cluster is connected. For Shared VPC, set this to the self link of the
  /// shared network.
  late final Output<String?> network;

  /// Network bandwidth tier configuration.
  late final Output<ClusterNetworkPerformanceConfig?> networkPerformanceConfig;

  /// Configuration options for the
  /// [NetworkPolicy](https://kubernetes.io/docs/concepts/services-networking/networkpolicies/)
  /// feature. Structure is documented below.
  late final Output<ClusterNetworkPolicy?> networkPolicy;

  /// Determines whether alias IPs or routes will be used for pod IPs in the cluster.
  /// Options are `VPC_NATIVE` or `ROUTES`. `VPC_NATIVE` enables [IP aliasing](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-aliases). Newly created clusters will default to `VPC_NATIVE`.
  late final Output<String> networkingMode;

  /// Parameters used in creating the default node pool.
  /// Generally, this field should not be used at the same time as a
  /// <span pulumi-lang-nodejs="`gcp.container.NodePool`" pulumi-lang-dotnet="`gcp.container.NodePool`" pulumi-lang-go="`container.NodePool`" pulumi-lang-python="`container.NodePool`" pulumi-lang-yaml="`gcp.container.NodePool`" pulumi-lang-java="`gcp.container.NodePool`">`gcp.container.NodePool`</span> or a <span pulumi-lang-nodejs="`nodePool`" pulumi-lang-dotnet="`NodePool`" pulumi-lang-go="`nodePool`" pulumi-lang-python="`node_pool`" pulumi-lang-yaml="`nodePool`" pulumi-lang-java="`nodePool`">`node_pool`</span> block; this configuration
  /// manages the default node pool, which isn't recommended to be used.
  /// Structure is documented below.
  late final Output<ClusterNodeConfig> nodeConfig;

  /// The list of zones in which the cluster's nodes
  /// are located. Nodes must be in the region of their regional cluster or in the
  /// same region as their cluster's zone for zonal clusters. If this is specified for
  /// a zonal cluster, omit the cluster's zone.
  ///
  /// > A "multi-zonal" cluster is a zonal cluster with at least one additional zone
  /// defined; in a multi-zonal cluster, the cluster master is only present in a
  /// single zone while nodes are present in each of the primary zone and the node
  /// locations. In contrast, in a regional cluster, cluster master nodes are present
  /// in multiple zones in the region. For that reason, regional clusters should be
  /// preferred.
  late final Output<List<String>> nodeLocations;

  /// Node pool configs that apply to auto-provisioned node pools in
  /// [autopilot](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview#comparison) clusters and
  /// [node auto-provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)-enabled clusters. Structure is documented below.
  late final Output<ClusterNodePoolAutoConfig> nodePoolAutoConfig;

  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object. Structure is documented below.
  late final Output<ClusterNodePoolDefaults> nodePoolDefaults;

  /// List of node pools associated with this cluster.
  /// See<span pulumi-lang-nodejs=" gcp.container.NodePool " pulumi-lang-dotnet=" gcp.container.NodePool " pulumi-lang-go=" container.NodePool " pulumi-lang-python=" container.NodePool " pulumi-lang-yaml=" gcp.container.NodePool " pulumi-lang-java=" gcp.container.NodePool "> gcp.container.NodePool </span>for schema.
  /// **Warning:** node pools defined inside a cluster can't be changed (or added/removed) after
  /// cluster creation without deleting and recreating the entire cluster. Unless you absolutely need the ability
  /// to say "these are the _only_ node pools associated with this cluster", use the<span pulumi-lang-nodejs="
  /// gcp.container.NodePool " pulumi-lang-dotnet="
  /// gcp.container.NodePool " pulumi-lang-go="
  /// container.NodePool " pulumi-lang-python="
  /// container.NodePool " pulumi-lang-yaml="
  /// gcp.container.NodePool " pulumi-lang-java="
  /// gcp.container.NodePool ">
  /// gcp.container.NodePool </span>resource instead of this property.
  late final Output<List<ClusterNodePool>> nodePools;

  /// The Kubernetes version on the nodes. Must either be unset
  /// or set to the same value as <span pulumi-lang-nodejs="`minMasterVersion`" pulumi-lang-dotnet="`MinMasterVersion`" pulumi-lang-go="`minMasterVersion`" pulumi-lang-python="`min_master_version`" pulumi-lang-yaml="`minMasterVersion`" pulumi-lang-java="`minMasterVersion`">`min_master_version`</span> on create. Defaults to the default
  /// version set by GKE which is not necessarily the latest version. This only affects
  /// nodes in the default node pool. While a fuzzy version can be specified, it's
  /// recommended that you specify explicit versions as the provider will see spurious diffs
  /// when fuzzy versions are used. See the <span pulumi-lang-nodejs="`gcp.container.getEngineVersions`" pulumi-lang-dotnet="`gcp.container.getEngineVersions`" pulumi-lang-go="`container.getEngineVersions`" pulumi-lang-python="`container_get_engine_versions`" pulumi-lang-yaml="`gcp.container.getEngineVersions`" pulumi-lang-java="`gcp.container.getEngineVersions`">`gcp.container.getEngineVersions`</span> data source's
  /// <span pulumi-lang-nodejs="`versionPrefix`" pulumi-lang-dotnet="`VersionPrefix`" pulumi-lang-go="`versionPrefix`" pulumi-lang-python="`version_prefix`" pulumi-lang-yaml="`versionPrefix`" pulumi-lang-java="`versionPrefix`">`version_prefix`</span> field to approximate fuzzy versions.
  /// To update nodes in other node pools, use the <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> attribute on the node pool.
  late final Output<String> nodeVersion;

  /// Configuration for the [cluster upgrade notifications](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-upgrade-notifications) feature. Structure is documented below.
  late final Output<ClusterNotificationConfig> notificationConfig;
  late final Output<String> operation;

  /// Configuration for the
  /// Structure is documented below.
  late final Output<ClusterPodAutoscaling> podAutoscaling;

  /// Configuration for the
  /// [PodSecurityPolicy](https://cloud.google.com/kubernetes-engine/docs/how-to/pod-security-policies) feature.
  /// Structure is documented below.
  late final Output<ClusterPodSecurityPolicyConfig?> podSecurityPolicyConfig;

  /// Configuration for [private clusters](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters),
  /// clusters with private nodes. Structure is documented below.
  late final Output<ClusterPrivateClusterConfig> privateClusterConfig;

  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4).
  late final Output<String> privateIpv6GoogleAccess;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// Enable/Disable Protect API features for the cluster. Structure is documented below.
  late final Output<ClusterProtectConfig> protectConfig;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created. Structure is documented below.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedDefaultSnatStatus"" pulumi-lang-dotnet=""NestedDefaultSnatStatus"" pulumi-lang-go=""nestedDefaultSnatStatus"" pulumi-lang-python=""nested_default_snat_status"" pulumi-lang-yaml=""nestedDefaultSnatStatus"" pulumi-lang-java=""nestedDefaultSnatStatus"">"nested_default_snat_status"</span>></a>The <span pulumi-lang-nodejs="`defaultSnatStatus`" pulumi-lang-dotnet="`DefaultSnatStatus`" pulumi-lang-go="`defaultSnatStatus`" pulumi-lang-python="`default_snat_status`" pulumi-lang-yaml="`defaultSnatStatus`" pulumi-lang-java="`defaultSnatStatus`">`default_snat_status`</span> block supports
  late final Output<ClusterRbacBindingConfig> rbacBindingConfig;

  /// Configuration options for the [Release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels)
  /// feature, which provide more control over automatic upgrades of your GKE clusters.
  /// When updating this field, GKE imposes specific version requirements. See
  /// [Selecting a new release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels#selecting_a_new_release_channel)
  /// for more details; the <span pulumi-lang-nodejs="`gcp.container.getEngineVersions`" pulumi-lang-dotnet="`gcp.container.getEngineVersions`" pulumi-lang-go="`container.getEngineVersions`" pulumi-lang-python="`container_get_engine_versions`" pulumi-lang-yaml="`gcp.container.getEngineVersions`" pulumi-lang-java="`gcp.container.getEngineVersions`">`gcp.container.getEngineVersions`</span> datasource can provide
  /// the default version for a channel. Note that removing the <span pulumi-lang-nodejs="`releaseChannel`" pulumi-lang-dotnet="`ReleaseChannel`" pulumi-lang-go="`releaseChannel`" pulumi-lang-python="`release_channel`" pulumi-lang-yaml="`releaseChannel`" pulumi-lang-java="`releaseChannel`">`release_channel`</span>
  /// field from your config will cause the provider to stop managing your cluster's
  /// release channel, but will not unenroll it. Instead, use the `"UNSPECIFIED"`
  /// channel. Structure is documented below.
  late final Output<ClusterReleaseChannel> releaseChannel;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, deletes the default node
  /// pool upon cluster creation. If you're using <span pulumi-lang-nodejs="`gcp.container.NodePool`" pulumi-lang-dotnet="`gcp.container.NodePool`" pulumi-lang-go="`container.NodePool`" pulumi-lang-python="`container.NodePool`" pulumi-lang-yaml="`gcp.container.NodePool`" pulumi-lang-java="`gcp.container.NodePool`">`gcp.container.NodePool`</span>
  /// resources with no default node pool, this should be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, alongside
  /// setting <span pulumi-lang-nodejs="`initialNodeCount`" pulumi-lang-dotnet="`InitialNodeCount`" pulumi-lang-go="`initialNodeCount`" pulumi-lang-python="`initial_node_count`" pulumi-lang-yaml="`initialNodeCount`" pulumi-lang-java="`initialNodeCount`">`initial_node_count`</span> to at least <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  late final Output<bool?> removeDefaultNodePool;

  /// The GCE resource labels (a map of key/value pairs) to be applied to the cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> resourceLabels;

  /// Configuration for the
  /// [ResourceUsageExportConfig](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-usage-metering) feature.
  /// Structure is documented below.
  late final Output<ClusterResourceUsageExportConfig?>
      resourceUsageExportConfig;

  /// Configuration for the
  /// [SecretManagerConfig](https://cloud.google.com/secret-manager/docs/secret-manager-managed-csi-component) feature.
  /// Structure is documented below.
  late final Output<ClusterSecretManagerConfig?> secretManagerConfig;

  /// Configuration for the
  /// [SecretSyncConfig](https://cloud.google.com/secret-manager/docs/sync-k8-secrets) feature.
  /// Structure is documented below.
  late final Output<ClusterSecretSyncConfig?> secretSyncConfig;

  /// Enable/Disable Security Posture API features for the cluster. Structure is documented below.
  late final Output<ClusterSecurityPostureConfig> securityPostureConfig;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Structure is documented below.
  late final Output<ClusterServiceExternalIpsConfig> serviceExternalIpsConfig;

  /// The IP address range of the Kubernetes services in this cluster, in CIDR notation (e.g. 1.2.3.4/29). Service addresses are typically put in the last /16 from the container CIDR.
  late final Output<String> servicesIpv4Cidr;

  /// The name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  late final Output<String> subnetwork;

  /// TPU configuration for the cluster.
  late final Output<ClusterTpuConfig> tpuConfig;

  /// The IP address range of the Cloud TPUs in this cluster, in CIDR notation (e.g. 1.2.3.4/29).
  late final Output<String> tpuIpv4CidrBlock;

  /// The custom keys configuration of the cluster Structure is documented below.
  late final Output<ClusterUserManagedKeysConfig?> userManagedKeysConfig;

  /// Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it.
  /// Structure is documented below.
  late final Output<ClusterVerticalPodAutoscaling> verticalPodAutoscaling;

  /// Configuration for [direct-path (via ALTS) with workload identity.](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#workloadaltsconfig). Structure is documented below.
  late final Output<ClusterWorkloadAltsConfig> workloadAltsConfig;

  /// Workload Identity allows Kubernetes service accounts to act as a user-managed
  /// [Google IAM Service Account](https://cloud.google.com/iam/docs/service-accounts#user-managed_service_accounts).
  /// Structure is documented below.
  late final Output<ClusterWorkloadIdentityConfig> workloadIdentityConfig;

  Cluster2(
    String name, {
    ClusterArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:container/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addonsConfig = registerOutput<ClusterAddonsConfig>('addonsConfig');
    this.allowNetAdmin = registerOutput<bool?>('allowNetAdmin');
    this.anonymousAuthenticationConfig =
        registerOutput<ClusterAnonymousAuthenticationConfig>(
            'anonymousAuthenticationConfig');
    this.authenticatorGroupsConfig =
        registerOutput<ClusterAuthenticatorGroupsConfig>(
            'authenticatorGroupsConfig');
    this.binaryAuthorization =
        registerOutput<ClusterBinaryAuthorization?>('binaryAuthorization');
    this.clusterAutoscaling =
        registerOutput<ClusterClusterAutoscaling>('clusterAutoscaling');
    this.clusterIpv4Cidr = registerOutput<String>('clusterIpv4Cidr');
    this.clusterTelemetry =
        registerOutput<ClusterClusterTelemetry>('clusterTelemetry');
    this.confidentialNodes =
        registerOutput<ClusterConfidentialNodes>('confidentialNodes');
    this.controlPlaneEndpointsConfig =
        registerOutput<ClusterControlPlaneEndpointsConfig>(
            'controlPlaneEndpointsConfig');
    this.costManagementConfig =
        registerOutput<ClusterCostManagementConfig>('costManagementConfig');
    this.databaseEncryption =
        registerOutput<ClusterDatabaseEncryption>('databaseEncryption');
    this.datapathProvider = registerOutput<String>('datapathProvider');
    this.defaultMaxPodsPerNode = registerOutput<int>('defaultMaxPodsPerNode');
    this.defaultSnatStatus =
        registerOutput<ClusterDefaultSnatStatus>('defaultSnatStatus');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.disableL4LbFirewallReconciliation =
        registerOutput<bool?>('disableL4LbFirewallReconciliation');
    this.dnsConfig = registerOutput<ClusterDnsConfig?>('dnsConfig');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableAutopilot = registerOutput<bool?>('enableAutopilot');
    this.enableCiliumClusterwideNetworkPolicy =
        registerOutput<bool?>('enableCiliumClusterwideNetworkPolicy');
    this.enableFqdnNetworkPolicy =
        registerOutput<bool?>('enableFqdnNetworkPolicy');
    this.enableIntranodeVisibility =
        registerOutput<bool>('enableIntranodeVisibility');
    this.enableK8sBetaApis =
        registerOutput<ClusterEnableK8sBetaApis?>('enableK8sBetaApis');
    this.enableKubernetesAlpha = registerOutput<bool?>('enableKubernetesAlpha');
    this.enableL4IlbSubsetting = registerOutput<bool>('enableL4IlbSubsetting');
    this.enableLegacyAbac = registerOutput<bool?>('enableLegacyAbac');
    this.enableMultiNetworking = registerOutput<bool?>('enableMultiNetworking');
    this.enableShieldedNodes = registerOutput<bool?>('enableShieldedNodes');
    this.enableTpu = registerOutput<bool>('enableTpu');
    this.endpoint = registerOutput<String>('endpoint');
    this.enterpriseConfig =
        registerOutput<ClusterEnterpriseConfig>('enterpriseConfig');
    this.fleet = registerOutput<ClusterFleet?>('fleet');
    this.gatewayApiConfig =
        registerOutput<ClusterGatewayApiConfig>('gatewayApiConfig');
    this.gkeAutoUpgradeConfig =
        registerOutput<ClusterGkeAutoUpgradeConfig>('gkeAutoUpgradeConfig');
    this.identityServiceConfig =
        registerOutput<ClusterIdentityServiceConfig>('identityServiceConfig');
    this.inTransitEncryptionConfig =
        registerOutput<String?>('inTransitEncryptionConfig');
    this.initialNodeCount = registerOutput<int?>('initialNodeCount');
    this.ipAllocationPolicy =
        registerOutput<ClusterIpAllocationPolicy>('ipAllocationPolicy');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.location = registerOutput<String>('location');
    this.loggingConfig = registerOutput<ClusterLoggingConfig>('loggingConfig');
    this.loggingService = registerOutput<String>('loggingService');
    this.maintenancePolicy =
        registerOutput<ClusterMaintenancePolicy?>('maintenancePolicy');
    this.managedOpentelemetryConfig =
        registerOutput<ClusterManagedOpentelemetryConfig>(
            'managedOpentelemetryConfig');
    this.masterAuth = registerOutput<ClusterMasterAuth>('masterAuth');
    this.masterAuthorizedNetworksConfig =
        registerOutput<ClusterMasterAuthorizedNetworksConfig>(
            'masterAuthorizedNetworksConfig');
    this.masterVersion = registerOutput<String>('masterVersion');
    this.meshCertificates =
        registerOutput<ClusterMeshCertificates>('meshCertificates');
    this.minMasterVersion = registerOutput<String?>('minMasterVersion');
    this.monitoringConfig =
        registerOutput<ClusterMonitoringConfig>('monitoringConfig');
    this.monitoringService = registerOutput<String>('monitoringService');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.networkPerformanceConfig =
        registerOutput<ClusterNetworkPerformanceConfig?>(
            'networkPerformanceConfig');
    this.networkPolicy = registerOutput<ClusterNetworkPolicy?>('networkPolicy');
    this.networkingMode = registerOutput<String>('networkingMode');
    this.nodeConfig = registerOutput<ClusterNodeConfig>('nodeConfig');
    this.nodeLocations = registerOutput<List<String>>('nodeLocations');
    this.nodePoolAutoConfig =
        registerOutput<ClusterNodePoolAutoConfig>('nodePoolAutoConfig');
    this.nodePoolDefaults =
        registerOutput<ClusterNodePoolDefaults>('nodePoolDefaults');
    this.nodePools = registerOutput<List<ClusterNodePool>>('nodePools');
    this.nodeVersion = registerOutput<String>('nodeVersion');
    this.notificationConfig =
        registerOutput<ClusterNotificationConfig>('notificationConfig');
    this.operation = registerOutput<String>('operation');
    this.podAutoscaling =
        registerOutput<ClusterPodAutoscaling>('podAutoscaling');
    this.podSecurityPolicyConfig =
        registerOutput<ClusterPodSecurityPolicyConfig?>(
            'podSecurityPolicyConfig');
    this.privateClusterConfig =
        registerOutput<ClusterPrivateClusterConfig>('privateClusterConfig');
    this.privateIpv6GoogleAccess =
        registerOutput<String>('privateIpv6GoogleAccess');
    this.project = registerOutput<String>('project');
    this.protectConfig = registerOutput<ClusterProtectConfig>('protectConfig');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rbacBindingConfig =
        registerOutput<ClusterRbacBindingConfig>('rbacBindingConfig');
    this.releaseChannel =
        registerOutput<ClusterReleaseChannel>('releaseChannel');
    this.removeDefaultNodePool = registerOutput<bool?>('removeDefaultNodePool');
    this.resourceLabels =
        registerOutput<Map<String, String>?>('resourceLabels');
    this.resourceUsageExportConfig =
        registerOutput<ClusterResourceUsageExportConfig?>(
            'resourceUsageExportConfig');
    this.secretManagerConfig =
        registerOutput<ClusterSecretManagerConfig?>('secretManagerConfig');
    this.secretSyncConfig =
        registerOutput<ClusterSecretSyncConfig?>('secretSyncConfig');
    this.securityPostureConfig =
        registerOutput<ClusterSecurityPostureConfig>('securityPostureConfig');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceExternalIpsConfig =
        registerOutput<ClusterServiceExternalIpsConfig>(
            'serviceExternalIpsConfig');
    this.servicesIpv4Cidr = registerOutput<String>('servicesIpv4Cidr');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.tpuConfig = registerOutput<ClusterTpuConfig>('tpuConfig');
    this.tpuIpv4CidrBlock = registerOutput<String>('tpuIpv4CidrBlock');
    this.userManagedKeysConfig =
        registerOutput<ClusterUserManagedKeysConfig?>('userManagedKeysConfig');
    this.verticalPodAutoscaling =
        registerOutput<ClusterVerticalPodAutoscaling>('verticalPodAutoscaling');
    this.workloadAltsConfig =
        registerOutput<ClusterWorkloadAltsConfig>('workloadAltsConfig');
    this.workloadIdentityConfig =
        registerOutput<ClusterWorkloadIdentityConfig>('workloadIdentityConfig');
  }
}
