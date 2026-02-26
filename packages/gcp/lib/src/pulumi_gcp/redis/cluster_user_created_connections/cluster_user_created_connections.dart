import 'package:pulumi/pulumi.dart';
import '../cluster_user_created_connections_cluster_endpoint/cluster_user_created_connections_cluster_endpoint.dart';
import 'cluster_user_created_connections_args.dart';

/// ## Example Usage
///
/// ### Redis Cluster User Created Connections
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network1 = new gcp.compute.Network("network1", {
/// name: "net1",
/// autoCreateSubnetworks: false,
/// });
/// const subnetNetwork1 = new gcp.compute.Subnetwork("subnet_network1", {
/// name: "subnet-net1",
/// ipCidrRange: "10.0.0.248/29",
/// region: "us-central1",
/// network: network1.id,
/// });
/// const ip1Network1 = new gcp.compute.Address("ip1_network1", {
/// name: "ip1-net1",
/// region: "us-central1",
/// subnetwork: subnetNetwork1.id,
/// addressType: "INTERNAL",
/// purpose: "GCE_ENDPOINT",
/// });
/// // redis cluster without endpoint
/// const cluster_user_connCluster = new gcp.redis.Cluster("cluster-user-conn", {
/// name: "cluster-user-conn",
/// shardCount: 3,
/// region: "us-central1",
/// replicaCount: 0,
/// deletionProtectionEnabled: false,
/// });
/// const forwardingRule1Network1 = new gcp.compute.ForwardingRule("forwarding_rule1_network1", {
/// name: "fwd1-net1",
/// region: "us-central1",
/// ipAddress: ip1Network1.id,
/// loadBalancingScheme: "",
/// network: network1.id,
/// target: cluster_user_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[0].serviceAttachment),
/// });
/// const ip2Network1 = new gcp.compute.Address("ip2_network1", {
/// name: "ip2-net1",
/// region: "us-central1",
/// subnetwork: subnetNetwork1.id,
/// addressType: "INTERNAL",
/// purpose: "GCE_ENDPOINT",
/// });
/// const forwardingRule2Network1 = new gcp.compute.ForwardingRule("forwarding_rule2_network1", {
/// name: "fwd2-net1",
/// region: "us-central1",
/// ipAddress: ip2Network1.id,
/// loadBalancingScheme: "",
/// network: network1.id,
/// target: cluster_user_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[1].serviceAttachment),
/// });
/// const network2 = new gcp.compute.Network("network2", {
/// name: "network2",
/// autoCreateSubnetworks: false,
/// });
/// const subnetNetwork2 = new gcp.compute.Subnetwork("subnet_network2", {
/// name: "subnet-net2",
/// ipCidrRange: "10.0.0.248/29",
/// region: "us-central1",
/// network: network2.id,
/// });
/// const ip1Network2 = new gcp.compute.Address("ip1_network2", {
/// name: "ip1-net2",
/// region: "us-central1",
/// subnetwork: subnetNetwork2.id,
/// addressType: "INTERNAL",
/// purpose: "GCE_ENDPOINT",
/// });
/// const forwardingRule1Network2 = new gcp.compute.ForwardingRule("forwarding_rule1_network2", {
/// name: "fwd1-net2",
/// region: "us-central1",
/// ipAddress: ip1Network2.id,
/// loadBalancingScheme: "",
/// network: network2.id,
/// target: cluster_user_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[0].serviceAttachment),
/// });
/// const ip2Network2 = new gcp.compute.Address("ip2_network2", {
/// name: "ip2-net2",
/// region: "us-central1",
/// subnetwork: subnetNetwork2.id,
/// addressType: "INTERNAL",
/// purpose: "GCE_ENDPOINT",
/// });
/// const forwardingRule2Network2 = new gcp.compute.ForwardingRule("forwarding_rule2_network2", {
/// name: "fwd2-net2",
/// region: "us-central1",
/// ipAddress: ip2Network2.id,
/// loadBalancingScheme: "",
/// network: network2.id,
/// target: cluster_user_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[1].serviceAttachment),
/// });
/// const project = gcp.organizations.getProject({});
/// const cluster_user_conn = new gcp.redis.ClusterUserCreatedConnections("cluster-user-conn", {
/// name: "cluster-user-conn",
/// region: "us-central1",
/// clusterEndpoints: [
/// {
/// connections: [
/// {
/// pscConnection: {
/// pscConnectionId: forwardingRule1Network1.pscConnectionId,
/// address: ip1Network1.address,
/// forwardingRule: forwardingRule1Network1.id,
/// network: network1.id,
/// projectId: project.then(project => project.projectId),
/// serviceAttachment: cluster_user_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[0].serviceAttachment),
/// },
/// },
/// {
/// pscConnection: {
/// pscConnectionId: forwardingRule2Network1.pscConnectionId,
/// address: ip2Network1.address,
/// forwardingRule: forwardingRule2Network1.id,
/// network: network1.id,
/// serviceAttachment: cluster_user_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[1].serviceAttachment),
/// },
/// },
/// ],
/// },
/// {
/// connections: [
/// {
/// pscConnection: {
/// pscConnectionId: forwardingRule1Network2.pscConnectionId,
/// address: ip1Network2.address,
/// forwardingRule: forwardingRule1Network2.id,
/// network: network2.id,
/// serviceAttachment: cluster_user_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[0].serviceAttachment),
/// },
/// },
/// {
/// pscConnection: {
/// pscConnectionId: forwardingRule2Network2.pscConnectionId,
/// address: ip2Network2.address,
/// forwardingRule: forwardingRule2Network2.id,
/// network: network2.id,
/// serviceAttachment: cluster_user_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[1].serviceAttachment),
/// },
/// },
/// ],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network1 = gcp.compute.Network("network1",
/// name="net1",
/// auto_create_subnetworks=False)
/// subnet_network1 = gcp.compute.Subnetwork("subnet_network1",
/// name="subnet-net1",
/// ip_cidr_range="10.0.0.248/29",
/// region="us-central1",
/// network=network1.id)
/// ip1_network1 = gcp.compute.Address("ip1_network1",
/// name="ip1-net1",
/// region="us-central1",
/// subnetwork=subnet_network1.id,
/// address_type="INTERNAL",
/// purpose="GCE_ENDPOINT")
/// # redis cluster without endpoint
/// cluster_user_conn_cluster = gcp.redis.Cluster("cluster-user-conn",
/// name="cluster-user-conn",
/// shard_count=3,
/// region="us-central1",
/// replica_count=0,
/// deletion_protection_enabled=False)
/// forwarding_rule1_network1 = gcp.compute.ForwardingRule("forwarding_rule1_network1",
/// name="fwd1-net1",
/// region="us-central1",
/// ip_address=ip1_network1.id,
/// load_balancing_scheme="",
/// network=network1.id,
/// target=cluster_user_conn_cluster.psc_service_attachments[0].service_attachment)
/// ip2_network1 = gcp.compute.Address("ip2_network1",
/// name="ip2-net1",
/// region="us-central1",
/// subnetwork=subnet_network1.id,
/// address_type="INTERNAL",
/// purpose="GCE_ENDPOINT")
/// forwarding_rule2_network1 = gcp.compute.ForwardingRule("forwarding_rule2_network1",
/// name="fwd2-net1",
/// region="us-central1",
/// ip_address=ip2_network1.id,
/// load_balancing_scheme="",
/// network=network1.id,
/// target=cluster_user_conn_cluster.psc_service_attachments[1].service_attachment)
/// network2 = gcp.compute.Network("network2",
/// name="network2",
/// auto_create_subnetworks=False)
/// subnet_network2 = gcp.compute.Subnetwork("subnet_network2",
/// name="subnet-net2",
/// ip_cidr_range="10.0.0.248/29",
/// region="us-central1",
/// network=network2.id)
/// ip1_network2 = gcp.compute.Address("ip1_network2",
/// name="ip1-net2",
/// region="us-central1",
/// subnetwork=subnet_network2.id,
/// address_type="INTERNAL",
/// purpose="GCE_ENDPOINT")
/// forwarding_rule1_network2 = gcp.compute.ForwardingRule("forwarding_rule1_network2",
/// name="fwd1-net2",
/// region="us-central1",
/// ip_address=ip1_network2.id,
/// load_balancing_scheme="",
/// network=network2.id,
/// target=cluster_user_conn_cluster.psc_service_attachments[0].service_attachment)
/// ip2_network2 = gcp.compute.Address("ip2_network2",
/// name="ip2-net2",
/// region="us-central1",
/// subnetwork=subnet_network2.id,
/// address_type="INTERNAL",
/// purpose="GCE_ENDPOINT")
/// forwarding_rule2_network2 = gcp.compute.ForwardingRule("forwarding_rule2_network2",
/// name="fwd2-net2",
/// region="us-central1",
/// ip_address=ip2_network2.id,
/// load_balancing_scheme="",
/// network=network2.id,
/// target=cluster_user_conn_cluster.psc_service_attachments[1].service_attachment)
/// project = gcp.organizations.get_project()
/// cluster_user_conn = gcp.redis.ClusterUserCreatedConnections("cluster-user-conn",
/// name="cluster-user-conn",
/// region="us-central1",
/// cluster_endpoints=[
/// {
/// "connections": [
/// {
/// "psc_connection": {
/// "psc_connection_id": forwarding_rule1_network1.psc_connection_id,
/// "address": ip1_network1.address,
/// "forwarding_rule": forwarding_rule1_network1.id,
/// "network": network1.id,
/// "project_id": project.project_id,
/// "service_attachment": cluster_user_conn_cluster.psc_service_attachments[0].service_attachment,
/// },
/// },
/// {
/// "psc_connection": {
/// "psc_connection_id": forwarding_rule2_network1.psc_connection_id,
/// "address": ip2_network1.address,
/// "forwarding_rule": forwarding_rule2_network1.id,
/// "network": network1.id,
/// "service_attachment": cluster_user_conn_cluster.psc_service_attachments[1].service_attachment,
/// },
/// },
/// ],
/// },
/// {
/// "connections": [
/// {
/// "psc_connection": {
/// "psc_connection_id": forwarding_rule1_network2.psc_connection_id,
/// "address": ip1_network2.address,
/// "forwarding_rule": forwarding_rule1_network2.id,
/// "network": network2.id,
/// "service_attachment": cluster_user_conn_cluster.psc_service_attachments[0].service_attachment,
/// },
/// },
/// {
/// "psc_connection": {
/// "psc_connection_id": forwarding_rule2_network2.psc_connection_id,
/// "address": ip2_network2.address,
/// "forwarding_rule": forwarding_rule2_network2.id,
/// "network": network2.id,
/// "service_attachment": cluster_user_conn_cluster.psc_service_attachments[1].service_attachment,
/// },
/// },
/// ],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var network1 = new Gcp.Compute.Network("network1", new()
/// {
/// Name = "net1",
/// AutoCreateSubnetworks = false,
/// });
///
/// var subnetNetwork1 = new Gcp.Compute.Subnetwork("subnet_network1", new()
/// {
/// Name = "subnet-net1",
/// IpCidrRange = "10.0.0.248/29",
/// Region = "us-central1",
/// Network = network1.Id,
/// });
///
/// var ip1Network1 = new Gcp.Compute.Address("ip1_network1", new()
/// {
/// Name = "ip1-net1",
/// Region = "us-central1",
/// Subnetwork = subnetNetwork1.Id,
/// AddressType = "INTERNAL",
/// Purpose = "GCE_ENDPOINT",
/// });
///
/// // redis cluster without endpoint
/// var cluster_user_connCluster = new Gcp.Redis.Cluster("cluster-user-conn", new()
/// {
/// Name = "cluster-user-conn",
/// ShardCount = 3,
/// Region = "us-central1",
/// ReplicaCount = 0,
/// DeletionProtectionEnabled = false,
/// });
///
/// var forwardingRule1Network1 = new Gcp.Compute.ForwardingRule("forwarding_rule1_network1", new()
/// {
/// Name = "fwd1-net1",
/// Region = "us-central1",
/// IpAddress = ip1Network1.Id,
/// LoadBalancingScheme = "",
/// Network = network1.Id,
/// Target = cluster_user_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[0].ServiceAttachment),
/// });
///
/// var ip2Network1 = new Gcp.Compute.Address("ip2_network1", new()
/// {
/// Name = "ip2-net1",
/// Region = "us-central1",
/// Subnetwork = subnetNetwork1.Id,
/// AddressType = "INTERNAL",
/// Purpose = "GCE_ENDPOINT",
/// });
///
/// var forwardingRule2Network1 = new Gcp.Compute.ForwardingRule("forwarding_rule2_network1", new()
/// {
/// Name = "fwd2-net1",
/// Region = "us-central1",
/// IpAddress = ip2Network1.Id,
/// LoadBalancingScheme = "",
/// Network = network1.Id,
/// Target = cluster_user_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[1].ServiceAttachment),
/// });
///
/// var network2 = new Gcp.Compute.Network("network2", new()
/// {
/// Name = "network2",
/// AutoCreateSubnetworks = false,
/// });
///
/// var subnetNetwork2 = new Gcp.Compute.Subnetwork("subnet_network2", new()
/// {
/// Name = "subnet-net2",
/// IpCidrRange = "10.0.0.248/29",
/// Region = "us-central1",
/// Network = network2.Id,
/// });
///
/// var ip1Network2 = new Gcp.Compute.Address("ip1_network2", new()
/// {
/// Name = "ip1-net2",
/// Region = "us-central1",
/// Subnetwork = subnetNetwork2.Id,
/// AddressType = "INTERNAL",
/// Purpose = "GCE_ENDPOINT",
/// });
///
/// var forwardingRule1Network2 = new Gcp.Compute.ForwardingRule("forwarding_rule1_network2", new()
/// {
/// Name = "fwd1-net2",
/// Region = "us-central1",
/// IpAddress = ip1Network2.Id,
/// LoadBalancingScheme = "",
/// Network = network2.Id,
/// Target = cluster_user_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[0].ServiceAttachment),
/// });
///
/// var ip2Network2 = new Gcp.Compute.Address("ip2_network2", new()
/// {
/// Name = "ip2-net2",
/// Region = "us-central1",
/// Subnetwork = subnetNetwork2.Id,
/// AddressType = "INTERNAL",
/// Purpose = "GCE_ENDPOINT",
/// });
///
/// var forwardingRule2Network2 = new Gcp.Compute.ForwardingRule("forwarding_rule2_network2", new()
/// {
/// Name = "fwd2-net2",
/// Region = "us-central1",
/// IpAddress = ip2Network2.Id,
/// LoadBalancingScheme = "",
/// Network = network2.Id,
/// Target = cluster_user_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[1].ServiceAttachment),
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var cluster_user_conn = new Gcp.Redis.ClusterUserCreatedConnections("cluster-user-conn", new()
/// {
/// Name = "cluster-user-conn",
/// Region = "us-central1",
/// ClusterEndpoints = new[]
/// {
/// new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointArgs
/// {
/// Connections = new[]
/// {
/// new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs
/// {
/// PscConnection = new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs
/// {
/// PscConnectionId = forwardingRule1Network1.PscConnectionId,
/// Address = ip1Network1.IPAddress,
/// ForwardingRule = forwardingRule1Network1.Id,
/// Network = network1.Id,
/// ProjectId = project.Apply(getProjectResult => getProjectResult.ProjectId),
/// ServiceAttachment = cluster_user_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[0].ServiceAttachment),
/// },
/// },
/// new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs
/// {
/// PscConnection = new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs
/// {
/// PscConnectionId = forwardingRule2Network1.PscConnectionId,
/// Address = ip2Network1.IPAddress,
/// ForwardingRule = forwardingRule2Network1.Id,
/// Network = network1.Id,
/// ServiceAttachment = cluster_user_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[1].ServiceAttachment),
/// },
/// },
/// },
/// },
/// new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointArgs
/// {
/// Connections = new[]
/// {
/// new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs
/// {
/// PscConnection = new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs
/// {
/// PscConnectionId = forwardingRule1Network2.PscConnectionId,
/// Address = ip1Network2.IPAddress,
/// ForwardingRule = forwardingRule1Network2.Id,
/// Network = network2.Id,
/// ServiceAttachment = cluster_user_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[0].ServiceAttachment),
/// },
/// },
/// new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs
/// {
/// PscConnection = new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs
/// {
/// PscConnectionId = forwardingRule2Network2.PscConnectionId,
/// Address = ip2Network2.IPAddress,
/// ForwardingRule = forwardingRule2Network2.Id,
/// Network = network2.Id,
/// ServiceAttachment = cluster_user_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[1].ServiceAttachment),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network1, err := compute.NewNetwork(ctx, "network1", &compute.NetworkArgs{
/// Name:                  pulumi.String("net1"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnetNetwork1, err := compute.NewSubnetwork(ctx, "subnet_network1", &compute.SubnetworkArgs{
/// Name:        pulumi.String("subnet-net1"),
/// IpCidrRange: pulumi.String("10.0.0.248/29"),
/// Region:      pulumi.String("us-central1"),
/// Network:     network1.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// ip1Network1, err := compute.NewAddress(ctx, "ip1_network1", &compute.AddressArgs{
/// Name:        pulumi.String("ip1-net1"),
/// Region:      pulumi.String("us-central1"),
/// Subnetwork:  subnetNetwork1.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// Purpose:     pulumi.String("GCE_ENDPOINT"),
/// })
/// if err != nil {
/// return err
/// }
/// // redis cluster without endpoint
/// cluster_user_connCluster, err := redis.NewCluster(ctx, "cluster-user-conn", &redis.ClusterArgs{
/// Name:                      pulumi.String("cluster-user-conn"),
/// ShardCount:                pulumi.Int(3),
/// Region:                    pulumi.String("us-central1"),
/// ReplicaCount:              pulumi.Int(0),
/// DeletionProtectionEnabled: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// forwardingRule1Network1, err := compute.NewForwardingRule(ctx, "forwarding_rule1_network1", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("fwd1-net1"),
/// Region:              pulumi.String("us-central1"),
/// IpAddress:           ip1Network1.ID(),
/// LoadBalancingScheme: pulumi.String(""),
/// Network:             network1.ID(),
/// Target: pulumi.String(cluster_user_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[0].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// ip2Network1, err := compute.NewAddress(ctx, "ip2_network1", &compute.AddressArgs{
/// Name:        pulumi.String("ip2-net1"),
/// Region:      pulumi.String("us-central1"),
/// Subnetwork:  subnetNetwork1.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// Purpose:     pulumi.String("GCE_ENDPOINT"),
/// })
/// if err != nil {
/// return err
/// }
/// forwardingRule2Network1, err := compute.NewForwardingRule(ctx, "forwarding_rule2_network1", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("fwd2-net1"),
/// Region:              pulumi.String("us-central1"),
/// IpAddress:           ip2Network1.ID(),
/// LoadBalancingScheme: pulumi.String(""),
/// Network:             network1.ID(),
/// Target: pulumi.String(cluster_user_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[1].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// network2, err := compute.NewNetwork(ctx, "network2", &compute.NetworkArgs{
/// Name:                  pulumi.String("network2"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnetNetwork2, err := compute.NewSubnetwork(ctx, "subnet_network2", &compute.SubnetworkArgs{
/// Name:        pulumi.String("subnet-net2"),
/// IpCidrRange: pulumi.String("10.0.0.248/29"),
/// Region:      pulumi.String("us-central1"),
/// Network:     network2.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// ip1Network2, err := compute.NewAddress(ctx, "ip1_network2", &compute.AddressArgs{
/// Name:        pulumi.String("ip1-net2"),
/// Region:      pulumi.String("us-central1"),
/// Subnetwork:  subnetNetwork2.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// Purpose:     pulumi.String("GCE_ENDPOINT"),
/// })
/// if err != nil {
/// return err
/// }
/// forwardingRule1Network2, err := compute.NewForwardingRule(ctx, "forwarding_rule1_network2", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("fwd1-net2"),
/// Region:              pulumi.String("us-central1"),
/// IpAddress:           ip1Network2.ID(),
/// LoadBalancingScheme: pulumi.String(""),
/// Network:             network2.ID(),
/// Target: pulumi.String(cluster_user_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[0].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// ip2Network2, err := compute.NewAddress(ctx, "ip2_network2", &compute.AddressArgs{
/// Name:        pulumi.String("ip2-net2"),
/// Region:      pulumi.String("us-central1"),
/// Subnetwork:  subnetNetwork2.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// Purpose:     pulumi.String("GCE_ENDPOINT"),
/// })
/// if err != nil {
/// return err
/// }
/// forwardingRule2Network2, err := compute.NewForwardingRule(ctx, "forwarding_rule2_network2", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("fwd2-net2"),
/// Region:              pulumi.String("us-central1"),
/// IpAddress:           ip2Network2.ID(),
/// LoadBalancingScheme: pulumi.String(""),
/// Network:             network2.ID(),
/// Target: pulumi.String(cluster_user_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[1].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = redis.NewClusterUserCreatedConnections(ctx, "cluster-user-conn", &redis.ClusterUserCreatedConnectionsArgs{
/// Name:   pulumi.String("cluster-user-conn"),
/// Region: pulumi.String("us-central1"),
/// ClusterEndpoints: redis.ClusterUserCreatedConnectionsClusterEndpointArray{
/// &redis.ClusterUserCreatedConnectionsClusterEndpointArgs{
/// Connections: redis.ClusterUserCreatedConnectionsClusterEndpointConnectionArray{
/// &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs{
/// PscConnection: &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs{
/// PscConnectionId: forwardingRule1Network1.PscConnectionId,
/// Address:         ip1Network1.Address,
/// ForwardingRule:  forwardingRule1Network1.ID(),
/// Network:         network1.ID(),
/// ProjectId:       pulumi.String(project.ProjectId),
/// ServiceAttachment: cluster_user_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[0].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput),
/// },
/// },
/// &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs{
/// PscConnection: &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs{
/// PscConnectionId: forwardingRule2Network1.PscConnectionId,
/// Address:         ip2Network1.Address,
/// ForwardingRule:  forwardingRule2Network1.ID(),
/// Network:         network1.ID(),
/// ServiceAttachment: cluster_user_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[1].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput),
/// },
/// },
/// },
/// },
/// &redis.ClusterUserCreatedConnectionsClusterEndpointArgs{
/// Connections: redis.ClusterUserCreatedConnectionsClusterEndpointConnectionArray{
/// &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs{
/// PscConnection: &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs{
/// PscConnectionId: forwardingRule1Network2.PscConnectionId,
/// Address:         ip1Network2.Address,
/// ForwardingRule:  forwardingRule1Network2.ID(),
/// Network:         network2.ID(),
/// ServiceAttachment: cluster_user_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[0].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput),
/// },
/// },
/// &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs{
/// PscConnection: &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs{
/// PscConnectionId: forwardingRule2Network2.PscConnectionId,
/// Address:         ip2Network2.Address,
/// ForwardingRule:  forwardingRule2Network2.ID(),
/// Network:         network2.ID(),
/// ServiceAttachment: cluster_user_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[1].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput),
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
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.redis.Cluster;
/// import com.pulumi.gcp.redis.ClusterArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.redis.ClusterUserCreatedConnections;
/// import com.pulumi.gcp.redis.ClusterUserCreatedConnectionsArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterUserCreatedConnectionsClusterEndpointArgs;
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
/// var network1 = new Network("network1", NetworkArgs.builder()
/// .name("net1")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var subnetNetwork1 = new Subnetwork("subnetNetwork1", SubnetworkArgs.builder()
/// .name("subnet-net1")
/// .ipCidrRange("10.0.0.248/29")
/// .region("us-central1")
/// .network(network1.id())
/// .build());
///
/// var ip1Network1 = new Address("ip1Network1", AddressArgs.builder()
/// .name("ip1-net1")
/// .region("us-central1")
/// .subnetwork(subnetNetwork1.id())
/// .addressType("INTERNAL")
/// .purpose("GCE_ENDPOINT")
/// .build());
///
/// // redis cluster without endpoint
/// var cluster_user_connCluster = new Cluster("cluster-user-connCluster", ClusterArgs.builder()
/// .name("cluster-user-conn")
/// .shardCount(3)
/// .region("us-central1")
/// .replicaCount(0)
/// .deletionProtectionEnabled(false)
/// .build());
///
/// var forwardingRule1Network1 = new ForwardingRule("forwardingRule1Network1", ForwardingRuleArgs.builder()
/// .name("fwd1-net1")
/// .region("us-central1")
/// .ipAddress(ip1Network1.id())
/// .loadBalancingScheme("")
/// .network(network1.id())
/// .target(cluster_user_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[0].serviceAttachment()))
/// .build());
///
/// var ip2Network1 = new Address("ip2Network1", AddressArgs.builder()
/// .name("ip2-net1")
/// .region("us-central1")
/// .subnetwork(subnetNetwork1.id())
/// .addressType("INTERNAL")
/// .purpose("GCE_ENDPOINT")
/// .build());
///
/// var forwardingRule2Network1 = new ForwardingRule("forwardingRule2Network1", ForwardingRuleArgs.builder()
/// .name("fwd2-net1")
/// .region("us-central1")
/// .ipAddress(ip2Network1.id())
/// .loadBalancingScheme("")
/// .network(network1.id())
/// .target(cluster_user_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[1].serviceAttachment()))
/// .build());
///
/// var network2 = new Network("network2", NetworkArgs.builder()
/// .name("network2")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var subnetNetwork2 = new Subnetwork("subnetNetwork2", SubnetworkArgs.builder()
/// .name("subnet-net2")
/// .ipCidrRange("10.0.0.248/29")
/// .region("us-central1")
/// .network(network2.id())
/// .build());
///
/// var ip1Network2 = new Address("ip1Network2", AddressArgs.builder()
/// .name("ip1-net2")
/// .region("us-central1")
/// .subnetwork(subnetNetwork2.id())
/// .addressType("INTERNAL")
/// .purpose("GCE_ENDPOINT")
/// .build());
///
/// var forwardingRule1Network2 = new ForwardingRule("forwardingRule1Network2", ForwardingRuleArgs.builder()
/// .name("fwd1-net2")
/// .region("us-central1")
/// .ipAddress(ip1Network2.id())
/// .loadBalancingScheme("")
/// .network(network2.id())
/// .target(cluster_user_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[0].serviceAttachment()))
/// .build());
///
/// var ip2Network2 = new Address("ip2Network2", AddressArgs.builder()
/// .name("ip2-net2")
/// .region("us-central1")
/// .subnetwork(subnetNetwork2.id())
/// .addressType("INTERNAL")
/// .purpose("GCE_ENDPOINT")
/// .build());
///
/// var forwardingRule2Network2 = new ForwardingRule("forwardingRule2Network2", ForwardingRuleArgs.builder()
/// .name("fwd2-net2")
/// .region("us-central1")
/// .ipAddress(ip2Network2.id())
/// .loadBalancingScheme("")
/// .network(network2.id())
/// .target(cluster_user_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[1].serviceAttachment()))
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var cluster_user_conn = new ClusterUserCreatedConnections("cluster-user-conn", ClusterUserCreatedConnectionsArgs.builder()
/// .name("cluster-user-conn")
/// .region("us-central1")
/// .clusterEndpoints(
/// ClusterUserCreatedConnectionsClusterEndpointArgs.builder()
/// .connections(
/// ClusterUserCreatedConnectionsClusterEndpointConnectionArgs.builder()
/// .pscConnection(ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs.builder()
/// .pscConnectionId(forwardingRule1Network1.pscConnectionId())
/// .address(ip1Network1.address())
/// .forwardingRule(forwardingRule1Network1.id())
/// .network(network1.id())
/// .projectId(project.projectId())
/// .serviceAttachment(cluster_user_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[0].serviceAttachment()))
/// .build())
/// .build(),
/// ClusterUserCreatedConnectionsClusterEndpointConnectionArgs.builder()
/// .pscConnection(ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs.builder()
/// .pscConnectionId(forwardingRule2Network1.pscConnectionId())
/// .address(ip2Network1.address())
/// .forwardingRule(forwardingRule2Network1.id())
/// .network(network1.id())
/// .serviceAttachment(cluster_user_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[1].serviceAttachment()))
/// .build())
/// .build())
/// .build(),
/// ClusterUserCreatedConnectionsClusterEndpointArgs.builder()
/// .connections(
/// ClusterUserCreatedConnectionsClusterEndpointConnectionArgs.builder()
/// .pscConnection(ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs.builder()
/// .pscConnectionId(forwardingRule1Network2.pscConnectionId())
/// .address(ip1Network2.address())
/// .forwardingRule(forwardingRule1Network2.id())
/// .network(network2.id())
/// .serviceAttachment(cluster_user_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[0].serviceAttachment()))
/// .build())
/// .build(),
/// ClusterUserCreatedConnectionsClusterEndpointConnectionArgs.builder()
/// .pscConnection(ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs.builder()
/// .pscConnectionId(forwardingRule2Network2.pscConnectionId())
/// .address(ip2Network2.address())
/// .forwardingRule(forwardingRule2Network2.id())
/// .network(network2.id())
/// .serviceAttachment(cluster_user_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[1].serviceAttachment()))
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
/// cluster-user-conn:
/// type: gcp:redis:ClusterUserCreatedConnections
/// properties:
/// name: cluster-user-conn
/// region: us-central1
/// clusterEndpoints:
/// - connections:
/// - pscConnection:
/// pscConnectionId: ${forwardingRule1Network1.pscConnectionId}
/// address: ${ip1Network1.address}
/// forwardingRule: ${forwardingRule1Network1.id}
/// network: ${network1.id}
/// projectId: ${project.projectId}
/// serviceAttachment: ${["cluster-user-connCluster"].pscServiceAttachments[0].serviceAttachment}
/// - pscConnection:
/// pscConnectionId: ${forwardingRule2Network1.pscConnectionId}
/// address: ${ip2Network1.address}
/// forwardingRule: ${forwardingRule2Network1.id}
/// network: ${network1.id}
/// serviceAttachment: ${["cluster-user-connCluster"].pscServiceAttachments[1].serviceAttachment}
/// - connections:
/// - pscConnection:
/// pscConnectionId: ${forwardingRule1Network2.pscConnectionId}
/// address: ${ip1Network2.address}
/// forwardingRule: ${forwardingRule1Network2.id}
/// network: ${network2.id}
/// serviceAttachment: ${["cluster-user-connCluster"].pscServiceAttachments[0].serviceAttachment}
/// - pscConnection:
/// pscConnectionId: ${forwardingRule2Network2.pscConnectionId}
/// address: ${ip2Network2.address}
/// forwardingRule: ${forwardingRule2Network2.id}
/// network: ${network2.id}
/// serviceAttachment: ${["cluster-user-connCluster"].pscServiceAttachments[1].serviceAttachment}
/// forwardingRule1Network1:
/// type: gcp:compute:ForwardingRule
/// name: forwarding_rule1_network1
/// properties:
/// name: fwd1-net1
/// region: us-central1
/// ipAddress: ${ip1Network1.id}
/// loadBalancingScheme: ""
/// network: ${network1.id}
/// target: ${["cluster-user-connCluster"].pscServiceAttachments[0].serviceAttachment}
/// forwardingRule2Network1:
/// type: gcp:compute:ForwardingRule
/// name: forwarding_rule2_network1
/// properties:
/// name: fwd2-net1
/// region: us-central1
/// ipAddress: ${ip2Network1.id}
/// loadBalancingScheme: ""
/// network: ${network1.id}
/// target: ${["cluster-user-connCluster"].pscServiceAttachments[1].serviceAttachment}
/// ip1Network1:
/// type: gcp:compute:Address
/// name: ip1_network1
/// properties:
/// name: ip1-net1
/// region: us-central1
/// subnetwork: ${subnetNetwork1.id}
/// addressType: INTERNAL
/// purpose: GCE_ENDPOINT
/// ip2Network1:
/// type: gcp:compute:Address
/// name: ip2_network1
/// properties:
/// name: ip2-net1
/// region: us-central1
/// subnetwork: ${subnetNetwork1.id}
/// addressType: INTERNAL
/// purpose: GCE_ENDPOINT
/// subnetNetwork1:
/// type: gcp:compute:Subnetwork
/// name: subnet_network1
/// properties:
/// name: subnet-net1
/// ipCidrRange: 10.0.0.248/29
/// region: us-central1
/// network: ${network1.id}
/// network1:
/// type: gcp:compute:Network
/// properties:
/// name: net1
/// autoCreateSubnetworks: false
/// forwardingRule1Network2:
/// type: gcp:compute:ForwardingRule
/// name: forwarding_rule1_network2
/// properties:
/// name: fwd1-net2
/// region: us-central1
/// ipAddress: ${ip1Network2.id}
/// loadBalancingScheme: ""
/// network: ${network2.id}
/// target: ${["cluster-user-connCluster"].pscServiceAttachments[0].serviceAttachment}
/// forwardingRule2Network2:
/// type: gcp:compute:ForwardingRule
/// name: forwarding_rule2_network2
/// properties:
/// name: fwd2-net2
/// region: us-central1
/// ipAddress: ${ip2Network2.id}
/// loadBalancingScheme: ""
/// network: ${network2.id}
/// target: ${["cluster-user-connCluster"].pscServiceAttachments[1].serviceAttachment}
/// ip1Network2:
/// type: gcp:compute:Address
/// name: ip1_network2
/// properties:
/// name: ip1-net2
/// region: us-central1
/// subnetwork: ${subnetNetwork2.id}
/// addressType: INTERNAL
/// purpose: GCE_ENDPOINT
/// ip2Network2:
/// type: gcp:compute:Address
/// name: ip2_network2
/// properties:
/// name: ip2-net2
/// region: us-central1
/// subnetwork: ${subnetNetwork2.id}
/// addressType: INTERNAL
/// purpose: GCE_ENDPOINT
/// subnetNetwork2:
/// type: gcp:compute:Subnetwork
/// name: subnet_network2
/// properties:
/// name: subnet-net2
/// ipCidrRange: 10.0.0.248/29
/// region: us-central1
/// network: ${network2.id}
/// network2:
/// type: gcp:compute:Network
/// properties:
/// name: network2
/// autoCreateSubnetworks: false
/// # redis cluster without endpoint
/// cluster-user-connCluster:
/// type: gcp:redis:Cluster
/// name: cluster-user-conn
/// properties:
/// name: cluster-user-conn
/// shardCount: 3
/// region: us-central1
/// replicaCount: 0
/// deletionProtectionEnabled: false
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Redis Cluster User And Auto Created Connections
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network2 = new gcp.compute.Network("network2", {
/// name: "network2",
/// autoCreateSubnetworks: false,
/// });
/// const subnetNetwork2 = new gcp.compute.Subnetwork("subnet_network2", {
/// name: "subnet-net2",
/// ipCidrRange: "10.0.0.248/29",
/// region: "us-central1",
/// network: network2.id,
/// });
/// const ip1Network2 = new gcp.compute.Address("ip1_network2", {
/// name: "ip1-net2",
/// region: "us-central1",
/// subnetwork: subnetNetwork2.id,
/// addressType: "INTERNAL",
/// purpose: "GCE_ENDPOINT",
/// });
/// const network1 = new gcp.compute.Network("network1", {
/// name: "net1",
/// autoCreateSubnetworks: false,
/// });
/// const subnetNetwork1 = new gcp.compute.Subnetwork("subnet_network1", {
/// name: "subnet-net1",
/// ipCidrRange: "10.0.0.248/29",
/// region: "us-central1",
/// network: network1.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
/// name: "scpolicy",
/// location: "us-central1",
/// serviceClass: "gcp-memorystore-redis",
/// description: "my basic service connection policy",
/// network: network1.id,
/// pscConfig: {
/// subnetworks: [subnetNetwork1.id],
/// },
/// });
/// // redis cluster without endpoint
/// const cluster_user_auto_connCluster = new gcp.redis.Cluster("cluster-user-auto-conn", {
/// name: "cluster-user-auto-conn",
/// shardCount: 3,
/// region: "us-central1",
/// replicaCount: 0,
/// deletionProtectionEnabled: false,
/// pscConfigs: [{
/// network: network1.id,
/// }],
/// }, {
/// dependsOn: [_default],
/// });
/// const forwardingRule1Network2 = new gcp.compute.ForwardingRule("forwarding_rule1_network2", {
/// name: "fwd1-net2",
/// region: "us-central1",
/// ipAddress: ip1Network2.id,
/// loadBalancingScheme: "",
/// network: network2.id,
/// target: cluster_user_auto_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[0].serviceAttachment),
/// });
/// const ip2Network2 = new gcp.compute.Address("ip2_network2", {
/// name: "ip2-net2",
/// region: "us-central1",
/// subnetwork: subnetNetwork2.id,
/// addressType: "INTERNAL",
/// purpose: "GCE_ENDPOINT",
/// });
/// const forwardingRule2Network2 = new gcp.compute.ForwardingRule("forwarding_rule2_network2", {
/// name: "fwd2-net2",
/// region: "us-central1",
/// ipAddress: ip2Network2.id,
/// loadBalancingScheme: "",
/// network: network2.id,
/// target: cluster_user_auto_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[1].serviceAttachment),
/// });
/// const cluster_user_auto_conn = new gcp.redis.ClusterUserCreatedConnections("cluster-user-auto-conn", {
/// name: "cluster-user-auto-conn",
/// region: "us-central1",
/// clusterEndpoints: [{
/// connections: [
/// {
/// pscConnection: {
/// pscConnectionId: forwardingRule1Network2.pscConnectionId,
/// address: ip1Network2.address,
/// forwardingRule: forwardingRule1Network2.id,
/// network: network2.id,
/// serviceAttachment: cluster_user_auto_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[0].serviceAttachment),
/// },
/// },
/// {
/// pscConnection: {
/// pscConnectionId: forwardingRule2Network2.pscConnectionId,
/// address: ip2Network2.address,
/// forwardingRule: forwardingRule2Network2.id,
/// network: network2.id,
/// serviceAttachment: cluster_user_auto_connCluster.pscServiceAttachments.apply(pscServiceAttachments => pscServiceAttachments[1].serviceAttachment),
/// },
/// },
/// ],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network2 = gcp.compute.Network("network2",
/// name="network2",
/// auto_create_subnetworks=False)
/// subnet_network2 = gcp.compute.Subnetwork("subnet_network2",
/// name="subnet-net2",
/// ip_cidr_range="10.0.0.248/29",
/// region="us-central1",
/// network=network2.id)
/// ip1_network2 = gcp.compute.Address("ip1_network2",
/// name="ip1-net2",
/// region="us-central1",
/// subnetwork=subnet_network2.id,
/// address_type="INTERNAL",
/// purpose="GCE_ENDPOINT")
/// network1 = gcp.compute.Network("network1",
/// name="net1",
/// auto_create_subnetworks=False)
/// subnet_network1 = gcp.compute.Subnetwork("subnet_network1",
/// name="subnet-net1",
/// ip_cidr_range="10.0.0.248/29",
/// region="us-central1",
/// network=network1.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
/// name="scpolicy",
/// location="us-central1",
/// service_class="gcp-memorystore-redis",
/// description="my basic service connection policy",
/// network=network1.id,
/// psc_config={
/// "subnetworks": [subnet_network1.id],
/// })
/// # redis cluster without endpoint
/// cluster_user_auto_conn_cluster = gcp.redis.Cluster("cluster-user-auto-conn",
/// name="cluster-user-auto-conn",
/// shard_count=3,
/// region="us-central1",
/// replica_count=0,
/// deletion_protection_enabled=False,
/// psc_configs=[{
/// "network": network1.id,
/// }],
/// opts = pulumi.ResourceOptions(depends_on=[default]))
/// forwarding_rule1_network2 = gcp.compute.ForwardingRule("forwarding_rule1_network2",
/// name="fwd1-net2",
/// region="us-central1",
/// ip_address=ip1_network2.id,
/// load_balancing_scheme="",
/// network=network2.id,
/// target=cluster_user_auto_conn_cluster.psc_service_attachments[0].service_attachment)
/// ip2_network2 = gcp.compute.Address("ip2_network2",
/// name="ip2-net2",
/// region="us-central1",
/// subnetwork=subnet_network2.id,
/// address_type="INTERNAL",
/// purpose="GCE_ENDPOINT")
/// forwarding_rule2_network2 = gcp.compute.ForwardingRule("forwarding_rule2_network2",
/// name="fwd2-net2",
/// region="us-central1",
/// ip_address=ip2_network2.id,
/// load_balancing_scheme="",
/// network=network2.id,
/// target=cluster_user_auto_conn_cluster.psc_service_attachments[1].service_attachment)
/// cluster_user_auto_conn = gcp.redis.ClusterUserCreatedConnections("cluster-user-auto-conn",
/// name="cluster-user-auto-conn",
/// region="us-central1",
/// cluster_endpoints=[{
/// "connections": [
/// {
/// "psc_connection": {
/// "psc_connection_id": forwarding_rule1_network2.psc_connection_id,
/// "address": ip1_network2.address,
/// "forwarding_rule": forwarding_rule1_network2.id,
/// "network": network2.id,
/// "service_attachment": cluster_user_auto_conn_cluster.psc_service_attachments[0].service_attachment,
/// },
/// },
/// {
/// "psc_connection": {
/// "psc_connection_id": forwarding_rule2_network2.psc_connection_id,
/// "address": ip2_network2.address,
/// "forwarding_rule": forwarding_rule2_network2.id,
/// "network": network2.id,
/// "service_attachment": cluster_user_auto_conn_cluster.psc_service_attachments[1].service_attachment,
/// },
/// },
/// ],
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
/// var network2 = new Gcp.Compute.Network("network2", new()
/// {
/// Name = "network2",
/// AutoCreateSubnetworks = false,
/// });
///
/// var subnetNetwork2 = new Gcp.Compute.Subnetwork("subnet_network2", new()
/// {
/// Name = "subnet-net2",
/// IpCidrRange = "10.0.0.248/29",
/// Region = "us-central1",
/// Network = network2.Id,
/// });
///
/// var ip1Network2 = new Gcp.Compute.Address("ip1_network2", new()
/// {
/// Name = "ip1-net2",
/// Region = "us-central1",
/// Subnetwork = subnetNetwork2.Id,
/// AddressType = "INTERNAL",
/// Purpose = "GCE_ENDPOINT",
/// });
///
/// var network1 = new Gcp.Compute.Network("network1", new()
/// {
/// Name = "net1",
/// AutoCreateSubnetworks = false,
/// });
///
/// var subnetNetwork1 = new Gcp.Compute.Subnetwork("subnet_network1", new()
/// {
/// Name = "subnet-net1",
/// IpCidrRange = "10.0.0.248/29",
/// Region = "us-central1",
/// Network = network1.Id,
/// });
///
/// var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
/// {
/// Name = "scpolicy",
/// Location = "us-central1",
/// ServiceClass = "gcp-memorystore-redis",
/// Description = "my basic service connection policy",
/// Network = network1.Id,
/// PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
/// {
/// Subnetworks = new[]
/// {
/// subnetNetwork1.Id,
/// },
/// },
/// });
///
/// // redis cluster without endpoint
/// var cluster_user_auto_connCluster = new Gcp.Redis.Cluster("cluster-user-auto-conn", new()
/// {
/// Name = "cluster-user-auto-conn",
/// ShardCount = 3,
/// Region = "us-central1",
/// ReplicaCount = 0,
/// DeletionProtectionEnabled = false,
/// PscConfigs = new[]
/// {
/// new Gcp.Redis.Inputs.ClusterPscConfigArgs
/// {
/// Network = network1.Id,
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// @default,
/// },
/// });
///
/// var forwardingRule1Network2 = new Gcp.Compute.ForwardingRule("forwarding_rule1_network2", new()
/// {
/// Name = "fwd1-net2",
/// Region = "us-central1",
/// IpAddress = ip1Network2.Id,
/// LoadBalancingScheme = "",
/// Network = network2.Id,
/// Target = cluster_user_auto_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[0].ServiceAttachment),
/// });
///
/// var ip2Network2 = new Gcp.Compute.Address("ip2_network2", new()
/// {
/// Name = "ip2-net2",
/// Region = "us-central1",
/// Subnetwork = subnetNetwork2.Id,
/// AddressType = "INTERNAL",
/// Purpose = "GCE_ENDPOINT",
/// });
///
/// var forwardingRule2Network2 = new Gcp.Compute.ForwardingRule("forwarding_rule2_network2", new()
/// {
/// Name = "fwd2-net2",
/// Region = "us-central1",
/// IpAddress = ip2Network2.Id,
/// LoadBalancingScheme = "",
/// Network = network2.Id,
/// Target = cluster_user_auto_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[1].ServiceAttachment),
/// });
///
/// var cluster_user_auto_conn = new Gcp.Redis.ClusterUserCreatedConnections("cluster-user-auto-conn", new()
/// {
/// Name = "cluster-user-auto-conn",
/// Region = "us-central1",
/// ClusterEndpoints = new[]
/// {
/// new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointArgs
/// {
/// Connections = new[]
/// {
/// new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs
/// {
/// PscConnection = new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs
/// {
/// PscConnectionId = forwardingRule1Network2.PscConnectionId,
/// Address = ip1Network2.IPAddress,
/// ForwardingRule = forwardingRule1Network2.Id,
/// Network = network2.Id,
/// ServiceAttachment = cluster_user_auto_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[0].ServiceAttachment),
/// },
/// },
/// new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs
/// {
/// PscConnection = new Gcp.Redis.Inputs.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs
/// {
/// PscConnectionId = forwardingRule2Network2.PscConnectionId,
/// Address = ip2Network2.IPAddress,
/// ForwardingRule = forwardingRule2Network2.Id,
/// Network = network2.Id,
/// ServiceAttachment = cluster_user_auto_connCluster.PscServiceAttachments.Apply(pscServiceAttachments => pscServiceAttachments[1].ServiceAttachment),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network2, err := compute.NewNetwork(ctx, "network2", &compute.NetworkArgs{
/// Name:                  pulumi.String("network2"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnetNetwork2, err := compute.NewSubnetwork(ctx, "subnet_network2", &compute.SubnetworkArgs{
/// Name:        pulumi.String("subnet-net2"),
/// IpCidrRange: pulumi.String("10.0.0.248/29"),
/// Region:      pulumi.String("us-central1"),
/// Network:     network2.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// ip1Network2, err := compute.NewAddress(ctx, "ip1_network2", &compute.AddressArgs{
/// Name:        pulumi.String("ip1-net2"),
/// Region:      pulumi.String("us-central1"),
/// Subnetwork:  subnetNetwork2.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// Purpose:     pulumi.String("GCE_ENDPOINT"),
/// })
/// if err != nil {
/// return err
/// }
/// network1, err := compute.NewNetwork(ctx, "network1", &compute.NetworkArgs{
/// Name:                  pulumi.String("net1"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnetNetwork1, err := compute.NewSubnetwork(ctx, "subnet_network1", &compute.SubnetworkArgs{
/// Name:        pulumi.String("subnet-net1"),
/// IpCidrRange: pulumi.String("10.0.0.248/29"),
/// Region:      pulumi.String("us-central1"),
/// Network:     network1.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// Name:         pulumi.String("scpolicy"),
/// Location:     pulumi.String("us-central1"),
/// ServiceClass: pulumi.String("gcp-memorystore-redis"),
/// Description:  pulumi.String("my basic service connection policy"),
/// Network:      network1.ID(),
/// PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// Subnetworks: pulumi.StringArray{
/// subnetNetwork1.ID(),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // redis cluster without endpoint
/// cluster_user_auto_connCluster, err := redis.NewCluster(ctx, "cluster-user-auto-conn", &redis.ClusterArgs{
/// Name:                      pulumi.String("cluster-user-auto-conn"),
/// ShardCount:                pulumi.Int(3),
/// Region:                    pulumi.String("us-central1"),
/// ReplicaCount:              pulumi.Int(0),
/// DeletionProtectionEnabled: pulumi.Bool(false),
/// PscConfigs: redis.ClusterPscConfigArray{
/// &redis.ClusterPscConfigArgs{
/// Network: network1.ID(),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// _default,
/// }))
/// if err != nil {
/// return err
/// }
/// forwardingRule1Network2, err := compute.NewForwardingRule(ctx, "forwarding_rule1_network2", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("fwd1-net2"),
/// Region:              pulumi.String("us-central1"),
/// IpAddress:           ip1Network2.ID(),
/// LoadBalancingScheme: pulumi.String(""),
/// Network:             network2.ID(),
/// Target: pulumi.String(cluster_user_auto_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[0].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// ip2Network2, err := compute.NewAddress(ctx, "ip2_network2", &compute.AddressArgs{
/// Name:        pulumi.String("ip2-net2"),
/// Region:      pulumi.String("us-central1"),
/// Subnetwork:  subnetNetwork2.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// Purpose:     pulumi.String("GCE_ENDPOINT"),
/// })
/// if err != nil {
/// return err
/// }
/// forwardingRule2Network2, err := compute.NewForwardingRule(ctx, "forwarding_rule2_network2", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("fwd2-net2"),
/// Region:              pulumi.String("us-central1"),
/// IpAddress:           ip2Network2.ID(),
/// LoadBalancingScheme: pulumi.String(""),
/// Network:             network2.ID(),
/// Target: pulumi.String(cluster_user_auto_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[1].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = redis.NewClusterUserCreatedConnections(ctx, "cluster-user-auto-conn", &redis.ClusterUserCreatedConnectionsArgs{
/// Name:   pulumi.String("cluster-user-auto-conn"),
/// Region: pulumi.String("us-central1"),
/// ClusterEndpoints: redis.ClusterUserCreatedConnectionsClusterEndpointArray{
/// &redis.ClusterUserCreatedConnectionsClusterEndpointArgs{
/// Connections: redis.ClusterUserCreatedConnectionsClusterEndpointConnectionArray{
/// &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs{
/// PscConnection: &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs{
/// PscConnectionId: forwardingRule1Network2.PscConnectionId,
/// Address:         ip1Network2.Address,
/// ForwardingRule:  forwardingRule1Network2.ID(),
/// Network:         network2.ID(),
/// ServiceAttachment: cluster_user_auto_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[0].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput),
/// },
/// },
/// &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionArgs{
/// PscConnection: &redis.ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs{
/// PscConnectionId: forwardingRule2Network2.PscConnectionId,
/// Address:         ip2Network2.Address,
/// ForwardingRule:  forwardingRule2Network2.ID(),
/// Network:         network2.ID(),
/// ServiceAttachment: cluster_user_auto_connCluster.PscServiceAttachments.ApplyT(func(pscServiceAttachments []redis.ClusterPscServiceAttachment) (*string, error) {
/// return &pscServiceAttachments[1].ServiceAttachment, nil
/// }).(pulumi.StringPtrOutput),
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
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.redis.Cluster;
/// import com.pulumi.gcp.redis.ClusterArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPscConfigArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.redis.ClusterUserCreatedConnections;
/// import com.pulumi.gcp.redis.ClusterUserCreatedConnectionsArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterUserCreatedConnectionsClusterEndpointArgs;
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
/// var network2 = new Network("network2", NetworkArgs.builder()
/// .name("network2")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var subnetNetwork2 = new Subnetwork("subnetNetwork2", SubnetworkArgs.builder()
/// .name("subnet-net2")
/// .ipCidrRange("10.0.0.248/29")
/// .region("us-central1")
/// .network(network2.id())
/// .build());
///
/// var ip1Network2 = new Address("ip1Network2", AddressArgs.builder()
/// .name("ip1-net2")
/// .region("us-central1")
/// .subnetwork(subnetNetwork2.id())
/// .addressType("INTERNAL")
/// .purpose("GCE_ENDPOINT")
/// .build());
///
/// var network1 = new Network("network1", NetworkArgs.builder()
/// .name("net1")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var subnetNetwork1 = new Subnetwork("subnetNetwork1", SubnetworkArgs.builder()
/// .name("subnet-net1")
/// .ipCidrRange("10.0.0.248/29")
/// .region("us-central1")
/// .network(network1.id())
/// .build());
///
/// var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
/// .name("scpolicy")
/// .location("us-central1")
/// .serviceClass("gcp-memorystore-redis")
/// .description("my basic service connection policy")
/// .network(network1.id())
/// .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
/// .subnetworks(subnetNetwork1.id())
/// .build())
/// .build());
///
/// // redis cluster without endpoint
/// var cluster_user_auto_connCluster = new Cluster("cluster-user-auto-connCluster", ClusterArgs.builder()
/// .name("cluster-user-auto-conn")
/// .shardCount(3)
/// .region("us-central1")
/// .replicaCount(0)
/// .deletionProtectionEnabled(false)
/// .pscConfigs(ClusterPscConfigArgs.builder()
/// .network(network1.id())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(default_)
/// .build());
///
/// var forwardingRule1Network2 = new ForwardingRule("forwardingRule1Network2", ForwardingRuleArgs.builder()
/// .name("fwd1-net2")
/// .region("us-central1")
/// .ipAddress(ip1Network2.id())
/// .loadBalancingScheme("")
/// .network(network2.id())
/// .target(cluster_user_auto_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[0].serviceAttachment()))
/// .build());
///
/// var ip2Network2 = new Address("ip2Network2", AddressArgs.builder()
/// .name("ip2-net2")
/// .region("us-central1")
/// .subnetwork(subnetNetwork2.id())
/// .addressType("INTERNAL")
/// .purpose("GCE_ENDPOINT")
/// .build());
///
/// var forwardingRule2Network2 = new ForwardingRule("forwardingRule2Network2", ForwardingRuleArgs.builder()
/// .name("fwd2-net2")
/// .region("us-central1")
/// .ipAddress(ip2Network2.id())
/// .loadBalancingScheme("")
/// .network(network2.id())
/// .target(cluster_user_auto_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[1].serviceAttachment()))
/// .build());
///
/// var cluster_user_auto_conn = new ClusterUserCreatedConnections("cluster-user-auto-conn", ClusterUserCreatedConnectionsArgs.builder()
/// .name("cluster-user-auto-conn")
/// .region("us-central1")
/// .clusterEndpoints(ClusterUserCreatedConnectionsClusterEndpointArgs.builder()
/// .connections(
/// ClusterUserCreatedConnectionsClusterEndpointConnectionArgs.builder()
/// .pscConnection(ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs.builder()
/// .pscConnectionId(forwardingRule1Network2.pscConnectionId())
/// .address(ip1Network2.address())
/// .forwardingRule(forwardingRule1Network2.id())
/// .network(network2.id())
/// .serviceAttachment(cluster_user_auto_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[0].serviceAttachment()))
/// .build())
/// .build(),
/// ClusterUserCreatedConnectionsClusterEndpointConnectionArgs.builder()
/// .pscConnection(ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnectionArgs.builder()
/// .pscConnectionId(forwardingRule2Network2.pscConnectionId())
/// .address(ip2Network2.address())
/// .forwardingRule(forwardingRule2Network2.id())
/// .network(network2.id())
/// .serviceAttachment(cluster_user_auto_connCluster.pscServiceAttachments().applyValue(_pscServiceAttachments -> _pscServiceAttachments[1].serviceAttachment()))
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
/// cluster-user-auto-conn:
/// type: gcp:redis:ClusterUserCreatedConnections
/// properties:
/// name: cluster-user-auto-conn
/// region: us-central1
/// clusterEndpoints:
/// - connections:
/// - pscConnection:
/// pscConnectionId: ${forwardingRule1Network2.pscConnectionId}
/// address: ${ip1Network2.address}
/// forwardingRule: ${forwardingRule1Network2.id}
/// network: ${network2.id}
/// serviceAttachment: ${["cluster-user-auto-connCluster"].pscServiceAttachments[0].serviceAttachment}
/// - pscConnection:
/// pscConnectionId: ${forwardingRule2Network2.pscConnectionId}
/// address: ${ip2Network2.address}
/// forwardingRule: ${forwardingRule2Network2.id}
/// network: ${network2.id}
/// serviceAttachment: ${["cluster-user-auto-connCluster"].pscServiceAttachments[1].serviceAttachment}
/// forwardingRule1Network2:
/// type: gcp:compute:ForwardingRule
/// name: forwarding_rule1_network2
/// properties:
/// name: fwd1-net2
/// region: us-central1
/// ipAddress: ${ip1Network2.id}
/// loadBalancingScheme: ""
/// network: ${network2.id}
/// target: ${["cluster-user-auto-connCluster"].pscServiceAttachments[0].serviceAttachment}
/// forwardingRule2Network2:
/// type: gcp:compute:ForwardingRule
/// name: forwarding_rule2_network2
/// properties:
/// name: fwd2-net2
/// region: us-central1
/// ipAddress: ${ip2Network2.id}
/// loadBalancingScheme: ""
/// network: ${network2.id}
/// target: ${["cluster-user-auto-connCluster"].pscServiceAttachments[1].serviceAttachment}
/// ip1Network2:
/// type: gcp:compute:Address
/// name: ip1_network2
/// properties:
/// name: ip1-net2
/// region: us-central1
/// subnetwork: ${subnetNetwork2.id}
/// addressType: INTERNAL
/// purpose: GCE_ENDPOINT
/// ip2Network2:
/// type: gcp:compute:Address
/// name: ip2_network2
/// properties:
/// name: ip2-net2
/// region: us-central1
/// subnetwork: ${subnetNetwork2.id}
/// addressType: INTERNAL
/// purpose: GCE_ENDPOINT
/// subnetNetwork2:
/// type: gcp:compute:Subnetwork
/// name: subnet_network2
/// properties:
/// name: subnet-net2
/// ipCidrRange: 10.0.0.248/29
/// region: us-central1
/// network: ${network2.id}
/// network2:
/// type: gcp:compute:Network
/// properties:
/// name: network2
/// autoCreateSubnetworks: false
/// # redis cluster without endpoint
/// cluster-user-auto-connCluster:
/// type: gcp:redis:Cluster
/// name: cluster-user-auto-conn
/// properties:
/// name: cluster-user-auto-conn
/// shardCount: 3
/// region: us-central1
/// replicaCount: 0
/// deletionProtectionEnabled: false
/// pscConfigs:
/// - network: ${network1.id}
/// options:
/// dependsOn:
/// - ${default}
/// default:
/// type: gcp:networkconnectivity:ServiceConnectionPolicy
/// properties:
/// name: scpolicy
/// location: us-central1
/// serviceClass: gcp-memorystore-redis
/// description: my basic service connection policy
/// network: ${network1.id}
/// pscConfig:
/// subnetworks:
/// - ${subnetNetwork1.id}
/// subnetNetwork1:
/// type: gcp:compute:Subnetwork
/// name: subnet_network1
/// properties:
/// name: subnet-net1
/// ipCidrRange: 10.0.0.248/29
/// region: us-central1
/// network: ${network1.id}
/// network1:
/// type: gcp:compute:Network
/// properties:
/// name: net1
/// autoCreateSubnetworks: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ClusterUserCreatedConnections can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/clusters/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ClusterUserCreatedConnections can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:redis/clusterUserCreatedConnections:ClusterUserCreatedConnections default projects/{{project}}/locations/{{region}}/clusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/clusterUserCreatedConnections:ClusterUserCreatedConnections default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/clusterUserCreatedConnections:ClusterUserCreatedConnections default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/clusterUserCreatedConnections:ClusterUserCreatedConnections default {{name}}
/// ```
class ClusterUserCreatedConnections extends CustomResource {
  /// A list of cluster endpoints
  /// Structure is documented below.
  late final Output<List<ClusterUserCreatedConnectionsClusterEndpoint>?>
      clusterEndpoints;

  /// The name of the Redis cluster these endpoints should be added to.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The name of the region of the Redis cluster these endpoints should be added to.
  late final Output<String> region;

  ClusterUserCreatedConnections(
    String name, {
    ClusterUserCreatedConnectionsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:redis/clusterUserCreatedConnections:ClusterUserCreatedConnections',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterEndpoints =
        registerOutput<List<ClusterUserCreatedConnectionsClusterEndpoint>?>(
            'clusterEndpoints');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
