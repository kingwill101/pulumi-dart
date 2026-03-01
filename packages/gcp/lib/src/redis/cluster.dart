import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_automated_backup_config.dart';
import 'cluster_cross_cluster_replication_config.dart';
import 'cluster_discovery_endpoint.dart';
import 'cluster_gcs_source.dart';
import 'cluster_maintenance_policy.dart';
import 'cluster_maintenance_schedule.dart';
import 'cluster_managed_backup_source.dart';
import 'cluster_managed_server_ca.dart';
import 'cluster_persistence_config.dart';
import 'cluster_psc_config.dart';
import 'cluster_psc_connection.dart';
import 'cluster_psc_service_attachment.dart';
import 'cluster_state_info.dart';
import 'cluster_zone_distribution_config.dart';

/// ## Example Usage
///
/// ### Redis Cluster Ha With Labels
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const consumerNet = new gcp.compute.Network("consumer_net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const consumerSubnet = new gcp.compute.Subnetwork("consumer_subnet", {
///     name: "my-subnet",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: consumerNet.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "my-policy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore-redis",
///     description: "my basic service connection policy",
///     network: consumerNet.id,
///     pscConfig: {
///         subnetworks: [consumerSubnet.id],
///     },
/// });
/// const cluster_ha_with_labels = new gcp.redis.Cluster("cluster-ha-with-labels", {
///     name: "ha-cluster",
///     shardCount: 3,
///     labels: {
///         my_key: "my_val",
///         other_key: "other_val",
///     },
///     pscConfigs: [{
///         network: consumerNet.id,
///     }],
///     region: "us-central1",
///     replicaCount: 1,
///     nodeType: "REDIS_SHARED_CORE_NANO",
///     transitEncryptionMode: "TRANSIT_ENCRYPTION_MODE_DISABLED",
///     authorizationMode: "AUTH_MODE_DISABLED",
///     redisConfigs: {
///         "maxmemory-policy": "volatile-ttl",
///     },
///     deletionProtectionEnabled: true,
///     zoneDistributionConfig: {
///         mode: "MULTI_ZONE",
///     },
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "MONDAY",
///             startTime: {
///                 hours: 1,
///                 minutes: 0,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// consumer_net = gcp.compute.Network("consumer_net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// consumer_subnet = gcp.compute.Subnetwork("consumer_subnet",
///     name="my-subnet",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=consumer_net.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="my-policy",
///     location="us-central1",
///     service_class="gcp-memorystore-redis",
///     description="my basic service connection policy",
///     network=consumer_net.id,
///     psc_config={
///         "subnetworks": [consumer_subnet.id],
///     })
/// cluster_ha_with_labels = gcp.redis.Cluster("cluster-ha-with-labels",
///     name="ha-cluster",
///     shard_count=3,
///     labels={
///         "my_key": "my_val",
///         "other_key": "other_val",
///     },
///     psc_configs=[{
///         "network": consumer_net.id,
///     }],
///     region="us-central1",
///     replica_count=1,
///     node_type="REDIS_SHARED_CORE_NANO",
///     transit_encryption_mode="TRANSIT_ENCRYPTION_MODE_DISABLED",
///     authorization_mode="AUTH_MODE_DISABLED",
///     redis_configs={
///         "maxmemory-policy": "volatile-ttl",
///     },
///     deletion_protection_enabled=True,
///     zone_distribution_config={
///         "mode": "MULTI_ZONE",
///     },
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "MONDAY",
///             "start_time": {
///                 "hours": 1,
///                 "minutes": 0,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var consumerNet = new Gcp.Compute.Network("consumer_net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var consumerSubnet = new Gcp.Compute.Subnetwork("consumer_subnet", new()
///     {
///         Name = "my-subnet",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = consumerNet.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "my-policy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore-redis",
///         Description = "my basic service connection policy",
///         Network = consumerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 consumerSubnet.Id,
///             },
///         },
///     });
///
///     var cluster_ha_with_labels = new Gcp.Redis.Cluster("cluster-ha-with-labels", new()
///     {
///         Name = "ha-cluster",
///         ShardCount = 3,
///         Labels =
///         {
///             { "my_key", "my_val" },
///             { "other_key", "other_val" },
///         },
///         PscConfigs = new[]
///         {
///             new Gcp.Redis.Inputs.ClusterPscConfigArgs
///             {
///                 Network = consumerNet.Id,
///             },
///         },
///         Region = "us-central1",
///         ReplicaCount = 1,
///         NodeType = "REDIS_SHARED_CORE_NANO",
///         TransitEncryptionMode = "TRANSIT_ENCRYPTION_MODE_DISABLED",
///         AuthorizationMode = "AUTH_MODE_DISABLED",
///         RedisConfigs =
///         {
///             { "maxmemory-policy", "volatile-ttl" },
///         },
///         DeletionProtectionEnabled = true,
///         ZoneDistributionConfig = new Gcp.Redis.Inputs.ClusterZoneDistributionConfigArgs
///         {
///             Mode = "MULTI_ZONE",
///         },
///         MaintenancePolicy = new Gcp.Redis.Inputs.ClusterMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "MONDAY",
///                     StartTime = new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 1,
///                         Minutes = 0,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		consumerNet, err := compute.NewNetwork(ctx, "consumer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		consumerSubnet, err := compute.NewSubnetwork(ctx, "consumer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     consumerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore-redis"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      consumerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					consumerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewCluster(ctx, "cluster-ha-with-labels", &redis.ClusterArgs{
/// 			Name:       pulumi.String("ha-cluster"),
/// 			ShardCount: pulumi.Int(3),
/// 			Labels: pulumi.StringMap{
/// 				"my_key":    pulumi.String("my_val"),
/// 				"other_key": pulumi.String("other_val"),
/// 			},
/// 			PscConfigs: redis.ClusterPscConfigArray{
/// 				&redis.ClusterPscConfigArgs{
/// 					Network: consumerNet.ID(),
/// 				},
/// 			},
/// 			Region:                pulumi.String("us-central1"),
/// 			ReplicaCount:          pulumi.Int(1),
/// 			NodeType:              pulumi.String("REDIS_SHARED_CORE_NANO"),
/// 			TransitEncryptionMode: pulumi.String("TRANSIT_ENCRYPTION_MODE_DISABLED"),
/// 			AuthorizationMode:     pulumi.String("AUTH_MODE_DISABLED"),
/// 			RedisConfigs: pulumi.StringMap{
/// 				"maxmemory-policy": pulumi.String("volatile-ttl"),
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 			ZoneDistributionConfig: &redis.ClusterZoneDistributionConfigArgs{
/// 				Mode: pulumi.String("MULTI_ZONE"),
/// 			},
/// 			MaintenancePolicy: &redis.ClusterMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day: pulumi.String("MONDAY"),
/// 						StartTime: &redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(1),
/// 							Minutes: pulumi.Int(0),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.redis.Cluster;
/// import com.pulumi.gcp.redis.ClusterArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPscConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterZoneDistributionConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterMaintenancePolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var consumerNet = new Network("consumerNet", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var consumerSubnet = new Subnetwork("consumerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(consumerNet.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore-redis")
///             .description("my basic service connection policy")
///             .network(consumerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(consumerSubnet.id())
///                 .build())
///             .build());
///
///         var cluster_ha_with_labels = new Cluster("cluster-ha-with-labels", ClusterArgs.builder()
///             .name("ha-cluster")
///             .shardCount(3)
///             .labels(Map.ofEntries(
///                 Map.entry("my_key", "my_val"),
///                 Map.entry("other_key", "other_val")
///             ))
///             .pscConfigs(ClusterPscConfigArgs.builder()
///                 .network(consumerNet.id())
///                 .build())
///             .region("us-central1")
///             .replicaCount(1)
///             .nodeType("REDIS_SHARED_CORE_NANO")
///             .transitEncryptionMode("TRANSIT_ENCRYPTION_MODE_DISABLED")
///             .authorizationMode("AUTH_MODE_DISABLED")
///             .redisConfigs(Map.of("maxmemory-policy", "volatile-ttl"))
///             .deletionProtectionEnabled(true)
///             .zoneDistributionConfig(ClusterZoneDistributionConfigArgs.builder()
///                 .mode("MULTI_ZONE")
///                 .build())
///             .maintenancePolicy(ClusterMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("MONDAY")
///                     .startTime(ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(1)
///                         .minutes(0)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster-ha-with-labels:
///     type: gcp:redis:Cluster
///     properties:
///       name: ha-cluster
///       shardCount: 3
///       labels:
///         my_key: my_val
///         other_key: other_val
///       pscConfigs:
///         - network: ${consumerNet.id}
///       region: us-central1
///       replicaCount: 1
///       nodeType: REDIS_SHARED_CORE_NANO
///       transitEncryptionMode: TRANSIT_ENCRYPTION_MODE_DISABLED
///       authorizationMode: AUTH_MODE_DISABLED
///       redisConfigs:
///         maxmemory-policy: volatile-ttl
///       deletionProtectionEnabled: true
///       zoneDistributionConfig:
///         mode: MULTI_ZONE
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: MONDAY
///             startTime:
///               hours: 1
///               minutes: 0
///               seconds: 0
///               nanos: 0
///     options:
///       dependsOn:
///         - ${default}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: my-policy
///       location: us-central1
///       serviceClass: gcp-memorystore-redis
///       description: my basic service connection policy
///       network: ${consumerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${consumerSubnet.id}
///   consumerSubnet:
///     type: gcp:compute:Subnetwork
///     name: consumer_subnet
///     properties:
///       name: my-subnet
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${consumerNet.id}
///   consumerNet:
///     type: gcp:compute:Network
///     name: consumer_net
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Redis Cluster Ha
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const consumerNet = new gcp.compute.Network("consumer_net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const consumerSubnet = new gcp.compute.Subnetwork("consumer_subnet", {
///     name: "my-subnet",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: consumerNet.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "my-policy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore-redis",
///     description: "my basic service connection policy",
///     network: consumerNet.id,
///     pscConfig: {
///         subnetworks: [consumerSubnet.id],
///     },
/// });
/// const cluster_ha = new gcp.redis.Cluster("cluster-ha", {
///     name: "ha-cluster",
///     shardCount: 3,
///     pscConfigs: [{
///         network: consumerNet.id,
///     }],
///     region: "us-central1",
///     replicaCount: 1,
///     nodeType: "REDIS_SHARED_CORE_NANO",
///     transitEncryptionMode: "TRANSIT_ENCRYPTION_MODE_DISABLED",
///     authorizationMode: "AUTH_MODE_DISABLED",
///     redisConfigs: {
///         "maxmemory-policy": "volatile-ttl",
///     },
///     deletionProtectionEnabled: true,
///     zoneDistributionConfig: {
///         mode: "MULTI_ZONE",
///     },
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "MONDAY",
///             startTime: {
///                 hours: 1,
///                 minutes: 0,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// consumer_net = gcp.compute.Network("consumer_net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// consumer_subnet = gcp.compute.Subnetwork("consumer_subnet",
///     name="my-subnet",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=consumer_net.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="my-policy",
///     location="us-central1",
///     service_class="gcp-memorystore-redis",
///     description="my basic service connection policy",
///     network=consumer_net.id,
///     psc_config={
///         "subnetworks": [consumer_subnet.id],
///     })
/// cluster_ha = gcp.redis.Cluster("cluster-ha",
///     name="ha-cluster",
///     shard_count=3,
///     psc_configs=[{
///         "network": consumer_net.id,
///     }],
///     region="us-central1",
///     replica_count=1,
///     node_type="REDIS_SHARED_CORE_NANO",
///     transit_encryption_mode="TRANSIT_ENCRYPTION_MODE_DISABLED",
///     authorization_mode="AUTH_MODE_DISABLED",
///     redis_configs={
///         "maxmemory-policy": "volatile-ttl",
///     },
///     deletion_protection_enabled=True,
///     zone_distribution_config={
///         "mode": "MULTI_ZONE",
///     },
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "MONDAY",
///             "start_time": {
///                 "hours": 1,
///                 "minutes": 0,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var consumerNet = new Gcp.Compute.Network("consumer_net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var consumerSubnet = new Gcp.Compute.Subnetwork("consumer_subnet", new()
///     {
///         Name = "my-subnet",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = consumerNet.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "my-policy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore-redis",
///         Description = "my basic service connection policy",
///         Network = consumerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 consumerSubnet.Id,
///             },
///         },
///     });
///
///     var cluster_ha = new Gcp.Redis.Cluster("cluster-ha", new()
///     {
///         Name = "ha-cluster",
///         ShardCount = 3,
///         PscConfigs = new[]
///         {
///             new Gcp.Redis.Inputs.ClusterPscConfigArgs
///             {
///                 Network = consumerNet.Id,
///             },
///         },
///         Region = "us-central1",
///         ReplicaCount = 1,
///         NodeType = "REDIS_SHARED_CORE_NANO",
///         TransitEncryptionMode = "TRANSIT_ENCRYPTION_MODE_DISABLED",
///         AuthorizationMode = "AUTH_MODE_DISABLED",
///         RedisConfigs =
///         {
///             { "maxmemory-policy", "volatile-ttl" },
///         },
///         DeletionProtectionEnabled = true,
///         ZoneDistributionConfig = new Gcp.Redis.Inputs.ClusterZoneDistributionConfigArgs
///         {
///             Mode = "MULTI_ZONE",
///         },
///         MaintenancePolicy = new Gcp.Redis.Inputs.ClusterMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "MONDAY",
///                     StartTime = new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 1,
///                         Minutes = 0,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		consumerNet, err := compute.NewNetwork(ctx, "consumer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		consumerSubnet, err := compute.NewSubnetwork(ctx, "consumer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     consumerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore-redis"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      consumerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					consumerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewCluster(ctx, "cluster-ha", &redis.ClusterArgs{
/// 			Name:       pulumi.String("ha-cluster"),
/// 			ShardCount: pulumi.Int(3),
/// 			PscConfigs: redis.ClusterPscConfigArray{
/// 				&redis.ClusterPscConfigArgs{
/// 					Network: consumerNet.ID(),
/// 				},
/// 			},
/// 			Region:                pulumi.String("us-central1"),
/// 			ReplicaCount:          pulumi.Int(1),
/// 			NodeType:              pulumi.String("REDIS_SHARED_CORE_NANO"),
/// 			TransitEncryptionMode: pulumi.String("TRANSIT_ENCRYPTION_MODE_DISABLED"),
/// 			AuthorizationMode:     pulumi.String("AUTH_MODE_DISABLED"),
/// 			RedisConfigs: pulumi.StringMap{
/// 				"maxmemory-policy": pulumi.String("volatile-ttl"),
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 			ZoneDistributionConfig: &redis.ClusterZoneDistributionConfigArgs{
/// 				Mode: pulumi.String("MULTI_ZONE"),
/// 			},
/// 			MaintenancePolicy: &redis.ClusterMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day: pulumi.String("MONDAY"),
/// 						StartTime: &redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(1),
/// 							Minutes: pulumi.Int(0),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.redis.Cluster;
/// import com.pulumi.gcp.redis.ClusterArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPscConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterZoneDistributionConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterMaintenancePolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var consumerNet = new Network("consumerNet", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var consumerSubnet = new Subnetwork("consumerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(consumerNet.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore-redis")
///             .description("my basic service connection policy")
///             .network(consumerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(consumerSubnet.id())
///                 .build())
///             .build());
///
///         var cluster_ha = new Cluster("cluster-ha", ClusterArgs.builder()
///             .name("ha-cluster")
///             .shardCount(3)
///             .pscConfigs(ClusterPscConfigArgs.builder()
///                 .network(consumerNet.id())
///                 .build())
///             .region("us-central1")
///             .replicaCount(1)
///             .nodeType("REDIS_SHARED_CORE_NANO")
///             .transitEncryptionMode("TRANSIT_ENCRYPTION_MODE_DISABLED")
///             .authorizationMode("AUTH_MODE_DISABLED")
///             .redisConfigs(Map.of("maxmemory-policy", "volatile-ttl"))
///             .deletionProtectionEnabled(true)
///             .zoneDistributionConfig(ClusterZoneDistributionConfigArgs.builder()
///                 .mode("MULTI_ZONE")
///                 .build())
///             .maintenancePolicy(ClusterMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("MONDAY")
///                     .startTime(ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(1)
///                         .minutes(0)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster-ha:
///     type: gcp:redis:Cluster
///     properties:
///       name: ha-cluster
///       shardCount: 3
///       pscConfigs:
///         - network: ${consumerNet.id}
///       region: us-central1
///       replicaCount: 1
///       nodeType: REDIS_SHARED_CORE_NANO
///       transitEncryptionMode: TRANSIT_ENCRYPTION_MODE_DISABLED
///       authorizationMode: AUTH_MODE_DISABLED
///       redisConfigs:
///         maxmemory-policy: volatile-ttl
///       deletionProtectionEnabled: true
///       zoneDistributionConfig:
///         mode: MULTI_ZONE
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: MONDAY
///             startTime:
///               hours: 1
///               minutes: 0
///               seconds: 0
///               nanos: 0
///     options:
///       dependsOn:
///         - ${default}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: my-policy
///       location: us-central1
///       serviceClass: gcp-memorystore-redis
///       description: my basic service connection policy
///       network: ${consumerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${consumerSubnet.id}
///   consumerSubnet:
///     type: gcp:compute:Subnetwork
///     name: consumer_subnet
///     properties:
///       name: my-subnet
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${consumerNet.id}
///   consumerNet:
///     type: gcp:compute:Network
///     name: consumer_net
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Redis Cluster Ha Single Zone
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const consumerNet = new gcp.compute.Network("consumer_net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const consumerSubnet = new gcp.compute.Subnetwork("consumer_subnet", {
///     name: "my-subnet",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: consumerNet.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "my-policy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore-redis",
///     description: "my basic service connection policy",
///     network: consumerNet.id,
///     pscConfig: {
///         subnetworks: [consumerSubnet.id],
///     },
/// });
/// const cluster_ha_single_zone = new gcp.redis.Cluster("cluster-ha-single-zone", {
///     name: "ha-cluster-single-zone",
///     shardCount: 3,
///     pscConfigs: [{
///         network: consumerNet.id,
///     }],
///     region: "us-central1",
///     zoneDistributionConfig: {
///         mode: "SINGLE_ZONE",
///         zone: "us-central1-f",
///     },
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "MONDAY",
///             startTime: {
///                 hours: 1,
///                 minutes: 0,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
///     deletionProtectionEnabled: true,
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// consumer_net = gcp.compute.Network("consumer_net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// consumer_subnet = gcp.compute.Subnetwork("consumer_subnet",
///     name="my-subnet",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=consumer_net.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="my-policy",
///     location="us-central1",
///     service_class="gcp-memorystore-redis",
///     description="my basic service connection policy",
///     network=consumer_net.id,
///     psc_config={
///         "subnetworks": [consumer_subnet.id],
///     })
/// cluster_ha_single_zone = gcp.redis.Cluster("cluster-ha-single-zone",
///     name="ha-cluster-single-zone",
///     shard_count=3,
///     psc_configs=[{
///         "network": consumer_net.id,
///     }],
///     region="us-central1",
///     zone_distribution_config={
///         "mode": "SINGLE_ZONE",
///         "zone": "us-central1-f",
///     },
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "MONDAY",
///             "start_time": {
///                 "hours": 1,
///                 "minutes": 0,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
///         }],
///     },
///     deletion_protection_enabled=True,
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var consumerNet = new Gcp.Compute.Network("consumer_net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var consumerSubnet = new Gcp.Compute.Subnetwork("consumer_subnet", new()
///     {
///         Name = "my-subnet",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = consumerNet.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "my-policy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore-redis",
///         Description = "my basic service connection policy",
///         Network = consumerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 consumerSubnet.Id,
///             },
///         },
///     });
///
///     var cluster_ha_single_zone = new Gcp.Redis.Cluster("cluster-ha-single-zone", new()
///     {
///         Name = "ha-cluster-single-zone",
///         ShardCount = 3,
///         PscConfigs = new[]
///         {
///             new Gcp.Redis.Inputs.ClusterPscConfigArgs
///             {
///                 Network = consumerNet.Id,
///             },
///         },
///         Region = "us-central1",
///         ZoneDistributionConfig = new Gcp.Redis.Inputs.ClusterZoneDistributionConfigArgs
///         {
///             Mode = "SINGLE_ZONE",
///             Zone = "us-central1-f",
///         },
///         MaintenancePolicy = new Gcp.Redis.Inputs.ClusterMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "MONDAY",
///                     StartTime = new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 1,
///                         Minutes = 0,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
///                 },
///             },
///         },
///         DeletionProtectionEnabled = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		consumerNet, err := compute.NewNetwork(ctx, "consumer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		consumerSubnet, err := compute.NewSubnetwork(ctx, "consumer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     consumerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore-redis"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      consumerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					consumerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewCluster(ctx, "cluster-ha-single-zone", &redis.ClusterArgs{
/// 			Name:       pulumi.String("ha-cluster-single-zone"),
/// 			ShardCount: pulumi.Int(3),
/// 			PscConfigs: redis.ClusterPscConfigArray{
/// 				&redis.ClusterPscConfigArgs{
/// 					Network: consumerNet.ID(),
/// 				},
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			ZoneDistributionConfig: &redis.ClusterZoneDistributionConfigArgs{
/// 				Mode: pulumi.String("SINGLE_ZONE"),
/// 				Zone: pulumi.String("us-central1-f"),
/// 			},
/// 			MaintenancePolicy: &redis.ClusterMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day: pulumi.String("MONDAY"),
/// 						StartTime: &redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(1),
/// 							Minutes: pulumi.Int(0),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.redis.Cluster;
/// import com.pulumi.gcp.redis.ClusterArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPscConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterZoneDistributionConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterMaintenancePolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var consumerNet = new Network("consumerNet", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var consumerSubnet = new Subnetwork("consumerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(consumerNet.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore-redis")
///             .description("my basic service connection policy")
///             .network(consumerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(consumerSubnet.id())
///                 .build())
///             .build());
///
///         var cluster_ha_single_zone = new Cluster("cluster-ha-single-zone", ClusterArgs.builder()
///             .name("ha-cluster-single-zone")
///             .shardCount(3)
///             .pscConfigs(ClusterPscConfigArgs.builder()
///                 .network(consumerNet.id())
///                 .build())
///             .region("us-central1")
///             .zoneDistributionConfig(ClusterZoneDistributionConfigArgs.builder()
///                 .mode("SINGLE_ZONE")
///                 .zone("us-central1-f")
///                 .build())
///             .maintenancePolicy(ClusterMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("MONDAY")
///                     .startTime(ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(1)
///                         .minutes(0)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .deletionProtectionEnabled(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster-ha-single-zone:
///     type: gcp:redis:Cluster
///     properties:
///       name: ha-cluster-single-zone
///       shardCount: 3
///       pscConfigs:
///         - network: ${consumerNet.id}
///       region: us-central1
///       zoneDistributionConfig:
///         mode: SINGLE_ZONE
///         zone: us-central1-f
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: MONDAY
///             startTime:
///               hours: 1
///               minutes: 0
///               seconds: 0
///               nanos: 0
///       deletionProtectionEnabled: true
///     options:
///       dependsOn:
///         - ${default}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: my-policy
///       location: us-central1
///       serviceClass: gcp-memorystore-redis
///       description: my basic service connection policy
///       network: ${consumerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${consumerSubnet.id}
///   consumerSubnet:
///     type: gcp:compute:Subnetwork
///     name: consumer_subnet
///     properties:
///       name: my-subnet
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${consumerNet.id}
///   consumerNet:
///     type: gcp:compute:Network
///     name: consumer_net
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Redis Cluster Secondary
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const consumerNet = new gcp.compute.Network("consumer_net", {
///     name: "mynetwork",
///     autoCreateSubnetworks: false,
/// });
/// const primaryClusterConsumerSubnet = new gcp.compute.Subnetwork("primary_cluster_consumer_subnet", {
///     name: "mysubnet-primary-cluster",
///     ipCidrRange: "10.0.1.0/29",
///     region: "us-east1",
///     network: consumerNet.id,
/// });
/// const primaryClusterRegionScp = new gcp.networkconnectivity.ServiceConnectionPolicy("primary_cluster_region_scp", {
///     name: "mypolicy-primary-cluster",
///     location: "us-east1",
///     serviceClass: "gcp-memorystore-redis",
///     description: "Primary cluster service connection policy",
///     network: consumerNet.id,
///     pscConfig: {
///         subnetworks: [primaryClusterConsumerSubnet.id],
///     },
/// });
/// // Primary cluster
/// const primaryCluster = new gcp.redis.Cluster("primary_cluster", {
///     name: "my-primary-cluster",
///     region: "us-east1",
///     pscConfigs: [{
///         network: consumerNet.id,
///     }],
///     authorizationMode: "AUTH_MODE_DISABLED",
///     transitEncryptionMode: "TRANSIT_ENCRYPTION_MODE_DISABLED",
///     shardCount: 3,
///     redisConfigs: {
///         "maxmemory-policy": "volatile-ttl",
///     },
///     nodeType: "REDIS_HIGHMEM_MEDIUM",
///     persistenceConfig: {
///         mode: "RDB",
///         rdbConfig: {
///             rdbSnapshotPeriod: "ONE_HOUR",
///             rdbSnapshotStartTime: "2024-10-02T15:01:23Z",
///         },
///     },
///     zoneDistributionConfig: {
///         mode: "MULTI_ZONE",
///     },
///     replicaCount: 1,
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "MONDAY",
///             startTime: {
///                 hours: 1,
///                 minutes: 0,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
///     deletionProtectionEnabled: true,
/// }, {
///     dependsOn: [primaryClusterRegionScp],
/// });
/// const secondaryClusterConsumerSubnet = new gcp.compute.Subnetwork("secondary_cluster_consumer_subnet", {
///     name: "mysubnet-secondary-cluster",
///     ipCidrRange: "10.0.2.0/29",
///     region: "europe-west1",
///     network: consumerNet.id,
/// });
/// const secondaryClusterRegionScp = new gcp.networkconnectivity.ServiceConnectionPolicy("secondary_cluster_region_scp", {
///     name: "mypolicy-secondary-cluster",
///     location: "europe-west1",
///     serviceClass: "gcp-memorystore-redis",
///     description: "Secondary cluster service connection policy",
///     network: consumerNet.id,
///     pscConfig: {
///         subnetworks: [secondaryClusterConsumerSubnet.id],
///     },
/// });
/// // Secondary cluster
/// const secondaryCluster = new gcp.redis.Cluster("secondary_cluster", {
///     name: "my-secondary-cluster",
///     region: "europe-west1",
///     pscConfigs: [{
///         network: consumerNet.id,
///     }],
///     authorizationMode: "AUTH_MODE_DISABLED",
///     transitEncryptionMode: "TRANSIT_ENCRYPTION_MODE_DISABLED",
///     shardCount: 3,
///     redisConfigs: {
///         "maxmemory-policy": "volatile-ttl",
///     },
///     nodeType: "REDIS_HIGHMEM_MEDIUM",
///     persistenceConfig: {
///         mode: "RDB",
///         rdbConfig: {
///             rdbSnapshotPeriod: "ONE_HOUR",
///             rdbSnapshotStartTime: "2024-10-02T15:01:23Z",
///         },
///     },
///     zoneDistributionConfig: {
///         mode: "MULTI_ZONE",
///     },
///     replicaCount: 2,
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "WEDNESDAY",
///             startTime: {
///                 hours: 1,
///                 minutes: 0,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
///     deletionProtectionEnabled: true,
///     crossClusterReplicationConfig: {
///         clusterRole: "SECONDARY",
///         primaryCluster: {
///             cluster: primaryCluster.id,
///         },
///     },
/// }, {
///     dependsOn: [secondaryClusterRegionScp],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// consumer_net = gcp.compute.Network("consumer_net",
///     name="mynetwork",
///     auto_create_subnetworks=False)
/// primary_cluster_consumer_subnet = gcp.compute.Subnetwork("primary_cluster_consumer_subnet",
///     name="mysubnet-primary-cluster",
///     ip_cidr_range="10.0.1.0/29",
///     region="us-east1",
///     network=consumer_net.id)
/// primary_cluster_region_scp = gcp.networkconnectivity.ServiceConnectionPolicy("primary_cluster_region_scp",
///     name="mypolicy-primary-cluster",
///     location="us-east1",
///     service_class="gcp-memorystore-redis",
///     description="Primary cluster service connection policy",
///     network=consumer_net.id,
///     psc_config={
///         "subnetworks": [primary_cluster_consumer_subnet.id],
///     })
/// # Primary cluster
/// primary_cluster = gcp.redis.Cluster("primary_cluster",
///     name="my-primary-cluster",
///     region="us-east1",
///     psc_configs=[{
///         "network": consumer_net.id,
///     }],
///     authorization_mode="AUTH_MODE_DISABLED",
///     transit_encryption_mode="TRANSIT_ENCRYPTION_MODE_DISABLED",
///     shard_count=3,
///     redis_configs={
///         "maxmemory-policy": "volatile-ttl",
///     },
///     node_type="REDIS_HIGHMEM_MEDIUM",
///     persistence_config={
///         "mode": "RDB",
///         "rdb_config": {
///             "rdb_snapshot_period": "ONE_HOUR",
///             "rdb_snapshot_start_time": "2024-10-02T15:01:23Z",
///         },
///     },
///     zone_distribution_config={
///         "mode": "MULTI_ZONE",
///     },
///     replica_count=1,
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "MONDAY",
///             "start_time": {
///                 "hours": 1,
///                 "minutes": 0,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
///         }],
///     },
///     deletion_protection_enabled=True,
///     opts = pulumi.ResourceOptions(depends_on=[primary_cluster_region_scp]))
/// secondary_cluster_consumer_subnet = gcp.compute.Subnetwork("secondary_cluster_consumer_subnet",
///     name="mysubnet-secondary-cluster",
///     ip_cidr_range="10.0.2.0/29",
///     region="europe-west1",
///     network=consumer_net.id)
/// secondary_cluster_region_scp = gcp.networkconnectivity.ServiceConnectionPolicy("secondary_cluster_region_scp",
///     name="mypolicy-secondary-cluster",
///     location="europe-west1",
///     service_class="gcp-memorystore-redis",
///     description="Secondary cluster service connection policy",
///     network=consumer_net.id,
///     psc_config={
///         "subnetworks": [secondary_cluster_consumer_subnet.id],
///     })
/// # Secondary cluster
/// secondary_cluster = gcp.redis.Cluster("secondary_cluster",
///     name="my-secondary-cluster",
///     region="europe-west1",
///     psc_configs=[{
///         "network": consumer_net.id,
///     }],
///     authorization_mode="AUTH_MODE_DISABLED",
///     transit_encryption_mode="TRANSIT_ENCRYPTION_MODE_DISABLED",
///     shard_count=3,
///     redis_configs={
///         "maxmemory-policy": "volatile-ttl",
///     },
///     node_type="REDIS_HIGHMEM_MEDIUM",
///     persistence_config={
///         "mode": "RDB",
///         "rdb_config": {
///             "rdb_snapshot_period": "ONE_HOUR",
///             "rdb_snapshot_start_time": "2024-10-02T15:01:23Z",
///         },
///     },
///     zone_distribution_config={
///         "mode": "MULTI_ZONE",
///     },
///     replica_count=2,
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "WEDNESDAY",
///             "start_time": {
///                 "hours": 1,
///                 "minutes": 0,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
///         }],
///     },
///     deletion_protection_enabled=True,
///     cross_cluster_replication_config={
///         "cluster_role": "SECONDARY",
///         "primary_cluster": {
///             "cluster": primary_cluster.id,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[secondary_cluster_region_scp]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var consumerNet = new Gcp.Compute.Network("consumer_net", new()
///     {
///         Name = "mynetwork",
///         AutoCreateSubnetworks = false,
///     });
///
///     var primaryClusterConsumerSubnet = new Gcp.Compute.Subnetwork("primary_cluster_consumer_subnet", new()
///     {
///         Name = "mysubnet-primary-cluster",
///         IpCidrRange = "10.0.1.0/29",
///         Region = "us-east1",
///         Network = consumerNet.Id,
///     });
///
///     var primaryClusterRegionScp = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("primary_cluster_region_scp", new()
///     {
///         Name = "mypolicy-primary-cluster",
///         Location = "us-east1",
///         ServiceClass = "gcp-memorystore-redis",
///         Description = "Primary cluster service connection policy",
///         Network = consumerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 primaryClusterConsumerSubnet.Id,
///             },
///         },
///     });
///
///     // Primary cluster
///     var primaryCluster = new Gcp.Redis.Cluster("primary_cluster", new()
///     {
///         Name = "my-primary-cluster",
///         Region = "us-east1",
///         PscConfigs = new[]
///         {
///             new Gcp.Redis.Inputs.ClusterPscConfigArgs
///             {
///                 Network = consumerNet.Id,
///             },
///         },
///         AuthorizationMode = "AUTH_MODE_DISABLED",
///         TransitEncryptionMode = "TRANSIT_ENCRYPTION_MODE_DISABLED",
///         ShardCount = 3,
///         RedisConfigs =
///         {
///             { "maxmemory-policy", "volatile-ttl" },
///         },
///         NodeType = "REDIS_HIGHMEM_MEDIUM",
///         PersistenceConfig = new Gcp.Redis.Inputs.ClusterPersistenceConfigArgs
///         {
///             Mode = "RDB",
///             RdbConfig = new Gcp.Redis.Inputs.ClusterPersistenceConfigRdbConfigArgs
///             {
///                 RdbSnapshotPeriod = "ONE_HOUR",
///                 RdbSnapshotStartTime = "2024-10-02T15:01:23Z",
///             },
///         },
///         ZoneDistributionConfig = new Gcp.Redis.Inputs.ClusterZoneDistributionConfigArgs
///         {
///             Mode = "MULTI_ZONE",
///         },
///         ReplicaCount = 1,
///         MaintenancePolicy = new Gcp.Redis.Inputs.ClusterMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "MONDAY",
///                     StartTime = new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 1,
///                         Minutes = 0,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
///                 },
///             },
///         },
///         DeletionProtectionEnabled = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryClusterRegionScp,
///         },
///     });
///
///     var secondaryClusterConsumerSubnet = new Gcp.Compute.Subnetwork("secondary_cluster_consumer_subnet", new()
///     {
///         Name = "mysubnet-secondary-cluster",
///         IpCidrRange = "10.0.2.0/29",
///         Region = "europe-west1",
///         Network = consumerNet.Id,
///     });
///
///     var secondaryClusterRegionScp = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("secondary_cluster_region_scp", new()
///     {
///         Name = "mypolicy-secondary-cluster",
///         Location = "europe-west1",
///         ServiceClass = "gcp-memorystore-redis",
///         Description = "Secondary cluster service connection policy",
///         Network = consumerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 secondaryClusterConsumerSubnet.Id,
///             },
///         },
///     });
///
///     // Secondary cluster
///     var secondaryCluster = new Gcp.Redis.Cluster("secondary_cluster", new()
///     {
///         Name = "my-secondary-cluster",
///         Region = "europe-west1",
///         PscConfigs = new[]
///         {
///             new Gcp.Redis.Inputs.ClusterPscConfigArgs
///             {
///                 Network = consumerNet.Id,
///             },
///         },
///         AuthorizationMode = "AUTH_MODE_DISABLED",
///         TransitEncryptionMode = "TRANSIT_ENCRYPTION_MODE_DISABLED",
///         ShardCount = 3,
///         RedisConfigs =
///         {
///             { "maxmemory-policy", "volatile-ttl" },
///         },
///         NodeType = "REDIS_HIGHMEM_MEDIUM",
///         PersistenceConfig = new Gcp.Redis.Inputs.ClusterPersistenceConfigArgs
///         {
///             Mode = "RDB",
///             RdbConfig = new Gcp.Redis.Inputs.ClusterPersistenceConfigRdbConfigArgs
///             {
///                 RdbSnapshotPeriod = "ONE_HOUR",
///                 RdbSnapshotStartTime = "2024-10-02T15:01:23Z",
///             },
///         },
///         ZoneDistributionConfig = new Gcp.Redis.Inputs.ClusterZoneDistributionConfigArgs
///         {
///             Mode = "MULTI_ZONE",
///         },
///         ReplicaCount = 2,
///         MaintenancePolicy = new Gcp.Redis.Inputs.ClusterMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "WEDNESDAY",
///                     StartTime = new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 1,
///                         Minutes = 0,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
///                 },
///             },
///         },
///         DeletionProtectionEnabled = true,
///         CrossClusterReplicationConfig = new Gcp.Redis.Inputs.ClusterCrossClusterReplicationConfigArgs
///         {
///             ClusterRole = "SECONDARY",
///             PrimaryCluster = new Gcp.Redis.Inputs.ClusterCrossClusterReplicationConfigPrimaryClusterArgs
///             {
///                 Cluster = primaryCluster.Id,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secondaryClusterRegionScp,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		consumerNet, err := compute.NewNetwork(ctx, "consumer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("mynetwork"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryClusterConsumerSubnet, err := compute.NewSubnetwork(ctx, "primary_cluster_consumer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("mysubnet-primary-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.1.0/29"),
/// 			Region:      pulumi.String("us-east1"),
/// 			Network:     consumerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryClusterRegionScp, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "primary_cluster_region_scp", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("mypolicy-primary-cluster"),
/// 			Location:     pulumi.String("us-east1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore-redis"),
/// 			Description:  pulumi.String("Primary cluster service connection policy"),
/// 			Network:      consumerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					primaryClusterConsumerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Primary cluster
/// 		primaryCluster, err := redis.NewCluster(ctx, "primary_cluster", &redis.ClusterArgs{
/// 			Name:   pulumi.String("my-primary-cluster"),
/// 			Region: pulumi.String("us-east1"),
/// 			PscConfigs: redis.ClusterPscConfigArray{
/// 				&redis.ClusterPscConfigArgs{
/// 					Network: consumerNet.ID(),
/// 				},
/// 			},
/// 			AuthorizationMode:     pulumi.String("AUTH_MODE_DISABLED"),
/// 			TransitEncryptionMode: pulumi.String("TRANSIT_ENCRYPTION_MODE_DISABLED"),
/// 			ShardCount:            pulumi.Int(3),
/// 			RedisConfigs: pulumi.StringMap{
/// 				"maxmemory-policy": pulumi.String("volatile-ttl"),
/// 			},
/// 			NodeType: pulumi.String("REDIS_HIGHMEM_MEDIUM"),
/// 			PersistenceConfig: &redis.ClusterPersistenceConfigArgs{
/// 				Mode: pulumi.String("RDB"),
/// 				RdbConfig: &redis.ClusterPersistenceConfigRdbConfigArgs{
/// 					RdbSnapshotPeriod:    pulumi.String("ONE_HOUR"),
/// 					RdbSnapshotStartTime: pulumi.String("2024-10-02T15:01:23Z"),
/// 				},
/// 			},
/// 			ZoneDistributionConfig: &redis.ClusterZoneDistributionConfigArgs{
/// 				Mode: pulumi.String("MULTI_ZONE"),
/// 			},
/// 			ReplicaCount: pulumi.Int(1),
/// 			MaintenancePolicy: &redis.ClusterMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day: pulumi.String("MONDAY"),
/// 						StartTime: &redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(1),
/// 							Minutes: pulumi.Int(0),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryClusterRegionScp,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryClusterConsumerSubnet, err := compute.NewSubnetwork(ctx, "secondary_cluster_consumer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("mysubnet-secondary-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.2.0/29"),
/// 			Region:      pulumi.String("europe-west1"),
/// 			Network:     consumerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryClusterRegionScp, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "secondary_cluster_region_scp", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("mypolicy-secondary-cluster"),
/// 			Location:     pulumi.String("europe-west1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore-redis"),
/// 			Description:  pulumi.String("Secondary cluster service connection policy"),
/// 			Network:      consumerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					secondaryClusterConsumerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Secondary cluster
/// 		_, err = redis.NewCluster(ctx, "secondary_cluster", &redis.ClusterArgs{
/// 			Name:   pulumi.String("my-secondary-cluster"),
/// 			Region: pulumi.String("europe-west1"),
/// 			PscConfigs: redis.ClusterPscConfigArray{
/// 				&redis.ClusterPscConfigArgs{
/// 					Network: consumerNet.ID(),
/// 				},
/// 			},
/// 			AuthorizationMode:     pulumi.String("AUTH_MODE_DISABLED"),
/// 			TransitEncryptionMode: pulumi.String("TRANSIT_ENCRYPTION_MODE_DISABLED"),
/// 			ShardCount:            pulumi.Int(3),
/// 			RedisConfigs: pulumi.StringMap{
/// 				"maxmemory-policy": pulumi.String("volatile-ttl"),
/// 			},
/// 			NodeType: pulumi.String("REDIS_HIGHMEM_MEDIUM"),
/// 			PersistenceConfig: &redis.ClusterPersistenceConfigArgs{
/// 				Mode: pulumi.String("RDB"),
/// 				RdbConfig: &redis.ClusterPersistenceConfigRdbConfigArgs{
/// 					RdbSnapshotPeriod:    pulumi.String("ONE_HOUR"),
/// 					RdbSnapshotStartTime: pulumi.String("2024-10-02T15:01:23Z"),
/// 				},
/// 			},
/// 			ZoneDistributionConfig: &redis.ClusterZoneDistributionConfigArgs{
/// 				Mode: pulumi.String("MULTI_ZONE"),
/// 			},
/// 			ReplicaCount: pulumi.Int(2),
/// 			MaintenancePolicy: &redis.ClusterMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day: pulumi.String("WEDNESDAY"),
/// 						StartTime: &redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(1),
/// 							Minutes: pulumi.Int(0),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 			CrossClusterReplicationConfig: &redis.ClusterCrossClusterReplicationConfigArgs{
/// 				ClusterRole: pulumi.String("SECONDARY"),
/// 				PrimaryCluster: &redis.ClusterCrossClusterReplicationConfigPrimaryClusterArgs{
/// 					Cluster: primaryCluster.ID(),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secondaryClusterRegionScp,
/// 		}))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.redis.Cluster;
/// import com.pulumi.gcp.redis.ClusterArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPscConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPersistenceConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPersistenceConfigRdbConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterZoneDistributionConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterMaintenancePolicyArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterCrossClusterReplicationConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterCrossClusterReplicationConfigPrimaryClusterArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var consumerNet = new Network("consumerNet", NetworkArgs.builder()
///             .name("mynetwork")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var primaryClusterConsumerSubnet = new Subnetwork("primaryClusterConsumerSubnet", SubnetworkArgs.builder()
///             .name("mysubnet-primary-cluster")
///             .ipCidrRange("10.0.1.0/29")
///             .region("us-east1")
///             .network(consumerNet.id())
///             .build());
///
///         var primaryClusterRegionScp = new ServiceConnectionPolicy("primaryClusterRegionScp", ServiceConnectionPolicyArgs.builder()
///             .name("mypolicy-primary-cluster")
///             .location("us-east1")
///             .serviceClass("gcp-memorystore-redis")
///             .description("Primary cluster service connection policy")
///             .network(consumerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(primaryClusterConsumerSubnet.id())
///                 .build())
///             .build());
///
///         // Primary cluster
///         var primaryCluster = new Cluster("primaryCluster", ClusterArgs.builder()
///             .name("my-primary-cluster")
///             .region("us-east1")
///             .pscConfigs(ClusterPscConfigArgs.builder()
///                 .network(consumerNet.id())
///                 .build())
///             .authorizationMode("AUTH_MODE_DISABLED")
///             .transitEncryptionMode("TRANSIT_ENCRYPTION_MODE_DISABLED")
///             .shardCount(3)
///             .redisConfigs(Map.of("maxmemory-policy", "volatile-ttl"))
///             .nodeType("REDIS_HIGHMEM_MEDIUM")
///             .persistenceConfig(ClusterPersistenceConfigArgs.builder()
///                 .mode("RDB")
///                 .rdbConfig(ClusterPersistenceConfigRdbConfigArgs.builder()
///                     .rdbSnapshotPeriod("ONE_HOUR")
///                     .rdbSnapshotStartTime("2024-10-02T15:01:23Z")
///                     .build())
///                 .build())
///             .zoneDistributionConfig(ClusterZoneDistributionConfigArgs.builder()
///                 .mode("MULTI_ZONE")
///                 .build())
///             .replicaCount(1)
///             .maintenancePolicy(ClusterMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("MONDAY")
///                     .startTime(ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(1)
///                         .minutes(0)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .deletionProtectionEnabled(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primaryClusterRegionScp)
///                 .build());
///
///         var secondaryClusterConsumerSubnet = new Subnetwork("secondaryClusterConsumerSubnet", SubnetworkArgs.builder()
///             .name("mysubnet-secondary-cluster")
///             .ipCidrRange("10.0.2.0/29")
///             .region("europe-west1")
///             .network(consumerNet.id())
///             .build());
///
///         var secondaryClusterRegionScp = new ServiceConnectionPolicy("secondaryClusterRegionScp", ServiceConnectionPolicyArgs.builder()
///             .name("mypolicy-secondary-cluster")
///             .location("europe-west1")
///             .serviceClass("gcp-memorystore-redis")
///             .description("Secondary cluster service connection policy")
///             .network(consumerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(secondaryClusterConsumerSubnet.id())
///                 .build())
///             .build());
///
///         // Secondary cluster
///         var secondaryCluster = new Cluster("secondaryCluster", ClusterArgs.builder()
///             .name("my-secondary-cluster")
///             .region("europe-west1")
///             .pscConfigs(ClusterPscConfigArgs.builder()
///                 .network(consumerNet.id())
///                 .build())
///             .authorizationMode("AUTH_MODE_DISABLED")
///             .transitEncryptionMode("TRANSIT_ENCRYPTION_MODE_DISABLED")
///             .shardCount(3)
///             .redisConfigs(Map.of("maxmemory-policy", "volatile-ttl"))
///             .nodeType("REDIS_HIGHMEM_MEDIUM")
///             .persistenceConfig(ClusterPersistenceConfigArgs.builder()
///                 .mode("RDB")
///                 .rdbConfig(ClusterPersistenceConfigRdbConfigArgs.builder()
///                     .rdbSnapshotPeriod("ONE_HOUR")
///                     .rdbSnapshotStartTime("2024-10-02T15:01:23Z")
///                     .build())
///                 .build())
///             .zoneDistributionConfig(ClusterZoneDistributionConfigArgs.builder()
///                 .mode("MULTI_ZONE")
///                 .build())
///             .replicaCount(2)
///             .maintenancePolicy(ClusterMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("WEDNESDAY")
///                     .startTime(ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(1)
///                         .minutes(0)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .deletionProtectionEnabled(true)
///             .crossClusterReplicationConfig(ClusterCrossClusterReplicationConfigArgs.builder()
///                 .clusterRole("SECONDARY")
///                 .primaryCluster(ClusterCrossClusterReplicationConfigPrimaryClusterArgs.builder()
///                     .cluster(primaryCluster.id())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secondaryClusterRegionScp)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Primary cluster
///   primaryCluster:
///     type: gcp:redis:Cluster
///     name: primary_cluster
///     properties:
///       name: my-primary-cluster
///       region: us-east1
///       pscConfigs:
///         - network: ${consumerNet.id}
///       authorizationMode: AUTH_MODE_DISABLED
///       transitEncryptionMode: TRANSIT_ENCRYPTION_MODE_DISABLED
///       shardCount: 3
///       redisConfigs:
///         maxmemory-policy: volatile-ttl
///       nodeType: REDIS_HIGHMEM_MEDIUM
///       persistenceConfig:
///         mode: RDB
///         rdbConfig:
///           rdbSnapshotPeriod: ONE_HOUR
///           rdbSnapshotStartTime: 2024-10-02T15:01:23Z
///       zoneDistributionConfig:
///         mode: MULTI_ZONE
///       replicaCount: 1
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: MONDAY
///             startTime:
///               hours: 1
///               minutes: 0
///               seconds: 0
///               nanos: 0
///       deletionProtectionEnabled: true
///     options:
///       dependsOn:
///         - ${primaryClusterRegionScp}
///   # Secondary cluster
///   secondaryCluster:
///     type: gcp:redis:Cluster
///     name: secondary_cluster
///     properties:
///       name: my-secondary-cluster
///       region: europe-west1
///       pscConfigs:
///         - network: ${consumerNet.id}
///       authorizationMode: AUTH_MODE_DISABLED
///       transitEncryptionMode: TRANSIT_ENCRYPTION_MODE_DISABLED
///       shardCount: 3
///       redisConfigs:
///         maxmemory-policy: volatile-ttl
///       nodeType: REDIS_HIGHMEM_MEDIUM
///       persistenceConfig:
///         mode: RDB
///         rdbConfig:
///           rdbSnapshotPeriod: ONE_HOUR
///           rdbSnapshotStartTime: 2024-10-02T15:01:23Z
///       zoneDistributionConfig:
///         mode: MULTI_ZONE
///       replicaCount: 2
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: WEDNESDAY
///             startTime:
///               hours: 1
///               minutes: 0
///               seconds: 0
///               nanos: 0
///       deletionProtectionEnabled: true # Cross cluster replication config
///       crossClusterReplicationConfig:
///         clusterRole: SECONDARY
///         primaryCluster:
///           cluster: ${primaryCluster.id}
///     options:
///       dependsOn:
///         - ${secondaryClusterRegionScp}
///   primaryClusterRegionScp:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     name: primary_cluster_region_scp
///     properties:
///       name: mypolicy-primary-cluster
///       location: us-east1
///       serviceClass: gcp-memorystore-redis
///       description: Primary cluster service connection policy
///       network: ${consumerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${primaryClusterConsumerSubnet.id}
///   primaryClusterConsumerSubnet:
///     type: gcp:compute:Subnetwork
///     name: primary_cluster_consumer_subnet
///     properties:
///       name: mysubnet-primary-cluster
///       ipCidrRange: 10.0.1.0/29
///       region: us-east1
///       network: ${consumerNet.id}
///   secondaryClusterRegionScp:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     name: secondary_cluster_region_scp
///     properties:
///       name: mypolicy-secondary-cluster
///       location: europe-west1
///       serviceClass: gcp-memorystore-redis
///       description: Secondary cluster service connection policy
///       network: ${consumerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${secondaryClusterConsumerSubnet.id}
///   secondaryClusterConsumerSubnet:
///     type: gcp:compute:Subnetwork
///     name: secondary_cluster_consumer_subnet
///     properties:
///       name: mysubnet-secondary-cluster
///       ipCidrRange: 10.0.2.0/29
///       region: europe-west1
///       network: ${consumerNet.id}
///   consumerNet:
///     type: gcp:compute:Network
///     name: consumer_net
///     properties:
///       name: mynetwork
///       autoCreateSubnetworks: false
/// ```
///
/// ### Redis Cluster Rdb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const consumerNet = new gcp.compute.Network("consumer_net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const consumerSubnet = new gcp.compute.Subnetwork("consumer_subnet", {
///     name: "my-subnet",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: consumerNet.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "my-policy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore-redis",
///     description: "my basic service connection policy",
///     network: consumerNet.id,
///     pscConfig: {
///         subnetworks: [consumerSubnet.id],
///     },
/// });
/// const cluster_rdb = new gcp.redis.Cluster("cluster-rdb", {
///     name: "rdb-cluster",
///     shardCount: 3,
///     pscConfigs: [{
///         network: consumerNet.id,
///     }],
///     region: "us-central1",
///     replicaCount: 0,
///     nodeType: "REDIS_SHARED_CORE_NANO",
///     transitEncryptionMode: "TRANSIT_ENCRYPTION_MODE_DISABLED",
///     authorizationMode: "AUTH_MODE_DISABLED",
///     redisConfigs: {
///         "maxmemory-policy": "volatile-ttl",
///     },
///     deletionProtectionEnabled: true,
///     zoneDistributionConfig: {
///         mode: "MULTI_ZONE",
///     },
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "MONDAY",
///             startTime: {
///                 hours: 1,
///                 minutes: 0,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
///     persistenceConfig: {
///         mode: "RDB",
///         rdbConfig: {
///             rdbSnapshotPeriod: "ONE_HOUR",
///             rdbSnapshotStartTime: "2024-10-02T15:01:23Z",
///         },
///     },
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// consumer_net = gcp.compute.Network("consumer_net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// consumer_subnet = gcp.compute.Subnetwork("consumer_subnet",
///     name="my-subnet",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=consumer_net.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="my-policy",
///     location="us-central1",
///     service_class="gcp-memorystore-redis",
///     description="my basic service connection policy",
///     network=consumer_net.id,
///     psc_config={
///         "subnetworks": [consumer_subnet.id],
///     })
/// cluster_rdb = gcp.redis.Cluster("cluster-rdb",
///     name="rdb-cluster",
///     shard_count=3,
///     psc_configs=[{
///         "network": consumer_net.id,
///     }],
///     region="us-central1",
///     replica_count=0,
///     node_type="REDIS_SHARED_CORE_NANO",
///     transit_encryption_mode="TRANSIT_ENCRYPTION_MODE_DISABLED",
///     authorization_mode="AUTH_MODE_DISABLED",
///     redis_configs={
///         "maxmemory-policy": "volatile-ttl",
///     },
///     deletion_protection_enabled=True,
///     zone_distribution_config={
///         "mode": "MULTI_ZONE",
///     },
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "MONDAY",
///             "start_time": {
///                 "hours": 1,
///                 "minutes": 0,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
///         }],
///     },
///     persistence_config={
///         "mode": "RDB",
///         "rdb_config": {
///             "rdb_snapshot_period": "ONE_HOUR",
///             "rdb_snapshot_start_time": "2024-10-02T15:01:23Z",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var consumerNet = new Gcp.Compute.Network("consumer_net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var consumerSubnet = new Gcp.Compute.Subnetwork("consumer_subnet", new()
///     {
///         Name = "my-subnet",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = consumerNet.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "my-policy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore-redis",
///         Description = "my basic service connection policy",
///         Network = consumerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 consumerSubnet.Id,
///             },
///         },
///     });
///
///     var cluster_rdb = new Gcp.Redis.Cluster("cluster-rdb", new()
///     {
///         Name = "rdb-cluster",
///         ShardCount = 3,
///         PscConfigs = new[]
///         {
///             new Gcp.Redis.Inputs.ClusterPscConfigArgs
///             {
///                 Network = consumerNet.Id,
///             },
///         },
///         Region = "us-central1",
///         ReplicaCount = 0,
///         NodeType = "REDIS_SHARED_CORE_NANO",
///         TransitEncryptionMode = "TRANSIT_ENCRYPTION_MODE_DISABLED",
///         AuthorizationMode = "AUTH_MODE_DISABLED",
///         RedisConfigs =
///         {
///             { "maxmemory-policy", "volatile-ttl" },
///         },
///         DeletionProtectionEnabled = true,
///         ZoneDistributionConfig = new Gcp.Redis.Inputs.ClusterZoneDistributionConfigArgs
///         {
///             Mode = "MULTI_ZONE",
///         },
///         MaintenancePolicy = new Gcp.Redis.Inputs.ClusterMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "MONDAY",
///                     StartTime = new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 1,
///                         Minutes = 0,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
///                 },
///             },
///         },
///         PersistenceConfig = new Gcp.Redis.Inputs.ClusterPersistenceConfigArgs
///         {
///             Mode = "RDB",
///             RdbConfig = new Gcp.Redis.Inputs.ClusterPersistenceConfigRdbConfigArgs
///             {
///                 RdbSnapshotPeriod = "ONE_HOUR",
///                 RdbSnapshotStartTime = "2024-10-02T15:01:23Z",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		consumerNet, err := compute.NewNetwork(ctx, "consumer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		consumerSubnet, err := compute.NewSubnetwork(ctx, "consumer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     consumerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore-redis"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      consumerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					consumerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewCluster(ctx, "cluster-rdb", &redis.ClusterArgs{
/// 			Name:       pulumi.String("rdb-cluster"),
/// 			ShardCount: pulumi.Int(3),
/// 			PscConfigs: redis.ClusterPscConfigArray{
/// 				&redis.ClusterPscConfigArgs{
/// 					Network: consumerNet.ID(),
/// 				},
/// 			},
/// 			Region:                pulumi.String("us-central1"),
/// 			ReplicaCount:          pulumi.Int(0),
/// 			NodeType:              pulumi.String("REDIS_SHARED_CORE_NANO"),
/// 			TransitEncryptionMode: pulumi.String("TRANSIT_ENCRYPTION_MODE_DISABLED"),
/// 			AuthorizationMode:     pulumi.String("AUTH_MODE_DISABLED"),
/// 			RedisConfigs: pulumi.StringMap{
/// 				"maxmemory-policy": pulumi.String("volatile-ttl"),
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 			ZoneDistributionConfig: &redis.ClusterZoneDistributionConfigArgs{
/// 				Mode: pulumi.String("MULTI_ZONE"),
/// 			},
/// 			MaintenancePolicy: &redis.ClusterMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day: pulumi.String("MONDAY"),
/// 						StartTime: &redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(1),
/// 							Minutes: pulumi.Int(0),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			PersistenceConfig: &redis.ClusterPersistenceConfigArgs{
/// 				Mode: pulumi.String("RDB"),
/// 				RdbConfig: &redis.ClusterPersistenceConfigRdbConfigArgs{
/// 					RdbSnapshotPeriod:    pulumi.String("ONE_HOUR"),
/// 					RdbSnapshotStartTime: pulumi.String("2024-10-02T15:01:23Z"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.redis.Cluster;
/// import com.pulumi.gcp.redis.ClusterArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPscConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterZoneDistributionConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterMaintenancePolicyArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPersistenceConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPersistenceConfigRdbConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var consumerNet = new Network("consumerNet", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var consumerSubnet = new Subnetwork("consumerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(consumerNet.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore-redis")
///             .description("my basic service connection policy")
///             .network(consumerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(consumerSubnet.id())
///                 .build())
///             .build());
///
///         var cluster_rdb = new Cluster("cluster-rdb", ClusterArgs.builder()
///             .name("rdb-cluster")
///             .shardCount(3)
///             .pscConfigs(ClusterPscConfigArgs.builder()
///                 .network(consumerNet.id())
///                 .build())
///             .region("us-central1")
///             .replicaCount(0)
///             .nodeType("REDIS_SHARED_CORE_NANO")
///             .transitEncryptionMode("TRANSIT_ENCRYPTION_MODE_DISABLED")
///             .authorizationMode("AUTH_MODE_DISABLED")
///             .redisConfigs(Map.of("maxmemory-policy", "volatile-ttl"))
///             .deletionProtectionEnabled(true)
///             .zoneDistributionConfig(ClusterZoneDistributionConfigArgs.builder()
///                 .mode("MULTI_ZONE")
///                 .build())
///             .maintenancePolicy(ClusterMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("MONDAY")
///                     .startTime(ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(1)
///                         .minutes(0)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .persistenceConfig(ClusterPersistenceConfigArgs.builder()
///                 .mode("RDB")
///                 .rdbConfig(ClusterPersistenceConfigRdbConfigArgs.builder()
///                     .rdbSnapshotPeriod("ONE_HOUR")
///                     .rdbSnapshotStartTime("2024-10-02T15:01:23Z")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster-rdb:
///     type: gcp:redis:Cluster
///     properties:
///       name: rdb-cluster
///       shardCount: 3
///       pscConfigs:
///         - network: ${consumerNet.id}
///       region: us-central1
///       replicaCount: 0
///       nodeType: REDIS_SHARED_CORE_NANO
///       transitEncryptionMode: TRANSIT_ENCRYPTION_MODE_DISABLED
///       authorizationMode: AUTH_MODE_DISABLED
///       redisConfigs:
///         maxmemory-policy: volatile-ttl
///       deletionProtectionEnabled: true
///       zoneDistributionConfig:
///         mode: MULTI_ZONE
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: MONDAY
///             startTime:
///               hours: 1
///               minutes: 0
///               seconds: 0
///               nanos: 0
///       persistenceConfig:
///         mode: RDB
///         rdbConfig:
///           rdbSnapshotPeriod: ONE_HOUR
///           rdbSnapshotStartTime: 2024-10-02T15:01:23Z
///     options:
///       dependsOn:
///         - ${default}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: my-policy
///       location: us-central1
///       serviceClass: gcp-memorystore-redis
///       description: my basic service connection policy
///       network: ${consumerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${consumerSubnet.id}
///   consumerSubnet:
///     type: gcp:compute:Subnetwork
///     name: consumer_subnet
///     properties:
///       name: my-subnet
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${consumerNet.id}
///   consumerNet:
///     type: gcp:compute:Network
///     name: consumer_net
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Redis Cluster Aof
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const consumerNet = new gcp.compute.Network("consumer_net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const consumerSubnet = new gcp.compute.Subnetwork("consumer_subnet", {
///     name: "my-subnet",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: consumerNet.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "my-policy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore-redis",
///     description: "my basic service connection policy",
///     network: consumerNet.id,
///     pscConfig: {
///         subnetworks: [consumerSubnet.id],
///     },
/// });
/// const cluster_aof = new gcp.redis.Cluster("cluster-aof", {
///     name: "aof-cluster",
///     shardCount: 3,
///     pscConfigs: [{
///         network: consumerNet.id,
///     }],
///     region: "us-central1",
///     replicaCount: 0,
///     nodeType: "REDIS_SHARED_CORE_NANO",
///     transitEncryptionMode: "TRANSIT_ENCRYPTION_MODE_DISABLED",
///     authorizationMode: "AUTH_MODE_DISABLED",
///     redisConfigs: {
///         "maxmemory-policy": "volatile-ttl",
///     },
///     deletionProtectionEnabled: true,
///     zoneDistributionConfig: {
///         mode: "MULTI_ZONE",
///     },
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "MONDAY",
///             startTime: {
///                 hours: 1,
///                 minutes: 0,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
///     persistenceConfig: {
///         mode: "AOF",
///         aofConfig: {
///             appendFsync: "EVERYSEC",
///         },
///     },
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// consumer_net = gcp.compute.Network("consumer_net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// consumer_subnet = gcp.compute.Subnetwork("consumer_subnet",
///     name="my-subnet",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=consumer_net.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="my-policy",
///     location="us-central1",
///     service_class="gcp-memorystore-redis",
///     description="my basic service connection policy",
///     network=consumer_net.id,
///     psc_config={
///         "subnetworks": [consumer_subnet.id],
///     })
/// cluster_aof = gcp.redis.Cluster("cluster-aof",
///     name="aof-cluster",
///     shard_count=3,
///     psc_configs=[{
///         "network": consumer_net.id,
///     }],
///     region="us-central1",
///     replica_count=0,
///     node_type="REDIS_SHARED_CORE_NANO",
///     transit_encryption_mode="TRANSIT_ENCRYPTION_MODE_DISABLED",
///     authorization_mode="AUTH_MODE_DISABLED",
///     redis_configs={
///         "maxmemory-policy": "volatile-ttl",
///     },
///     deletion_protection_enabled=True,
///     zone_distribution_config={
///         "mode": "MULTI_ZONE",
///     },
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "MONDAY",
///             "start_time": {
///                 "hours": 1,
///                 "minutes": 0,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
///         }],
///     },
///     persistence_config={
///         "mode": "AOF",
///         "aof_config": {
///             "append_fsync": "EVERYSEC",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var consumerNet = new Gcp.Compute.Network("consumer_net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var consumerSubnet = new Gcp.Compute.Subnetwork("consumer_subnet", new()
///     {
///         Name = "my-subnet",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = consumerNet.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "my-policy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore-redis",
///         Description = "my basic service connection policy",
///         Network = consumerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 consumerSubnet.Id,
///             },
///         },
///     });
///
///     var cluster_aof = new Gcp.Redis.Cluster("cluster-aof", new()
///     {
///         Name = "aof-cluster",
///         ShardCount = 3,
///         PscConfigs = new[]
///         {
///             new Gcp.Redis.Inputs.ClusterPscConfigArgs
///             {
///                 Network = consumerNet.Id,
///             },
///         },
///         Region = "us-central1",
///         ReplicaCount = 0,
///         NodeType = "REDIS_SHARED_CORE_NANO",
///         TransitEncryptionMode = "TRANSIT_ENCRYPTION_MODE_DISABLED",
///         AuthorizationMode = "AUTH_MODE_DISABLED",
///         RedisConfigs =
///         {
///             { "maxmemory-policy", "volatile-ttl" },
///         },
///         DeletionProtectionEnabled = true,
///         ZoneDistributionConfig = new Gcp.Redis.Inputs.ClusterZoneDistributionConfigArgs
///         {
///             Mode = "MULTI_ZONE",
///         },
///         MaintenancePolicy = new Gcp.Redis.Inputs.ClusterMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "MONDAY",
///                     StartTime = new Gcp.Redis.Inputs.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 1,
///                         Minutes = 0,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
///                 },
///             },
///         },
///         PersistenceConfig = new Gcp.Redis.Inputs.ClusterPersistenceConfigArgs
///         {
///             Mode = "AOF",
///             AofConfig = new Gcp.Redis.Inputs.ClusterPersistenceConfigAofConfigArgs
///             {
///                 AppendFsync = "EVERYSEC",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		consumerNet, err := compute.NewNetwork(ctx, "consumer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		consumerSubnet, err := compute.NewSubnetwork(ctx, "consumer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     consumerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore-redis"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      consumerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					consumerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewCluster(ctx, "cluster-aof", &redis.ClusterArgs{
/// 			Name:       pulumi.String("aof-cluster"),
/// 			ShardCount: pulumi.Int(3),
/// 			PscConfigs: redis.ClusterPscConfigArray{
/// 				&redis.ClusterPscConfigArgs{
/// 					Network: consumerNet.ID(),
/// 				},
/// 			},
/// 			Region:                pulumi.String("us-central1"),
/// 			ReplicaCount:          pulumi.Int(0),
/// 			NodeType:              pulumi.String("REDIS_SHARED_CORE_NANO"),
/// 			TransitEncryptionMode: pulumi.String("TRANSIT_ENCRYPTION_MODE_DISABLED"),
/// 			AuthorizationMode:     pulumi.String("AUTH_MODE_DISABLED"),
/// 			RedisConfigs: pulumi.StringMap{
/// 				"maxmemory-policy": pulumi.String("volatile-ttl"),
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 			ZoneDistributionConfig: &redis.ClusterZoneDistributionConfigArgs{
/// 				Mode: pulumi.String("MULTI_ZONE"),
/// 			},
/// 			MaintenancePolicy: &redis.ClusterMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day: pulumi.String("MONDAY"),
/// 						StartTime: &redis.ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(1),
/// 							Minutes: pulumi.Int(0),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			PersistenceConfig: &redis.ClusterPersistenceConfigArgs{
/// 				Mode: pulumi.String("AOF"),
/// 				AofConfig: &redis.ClusterPersistenceConfigAofConfigArgs{
/// 					AppendFsync: pulumi.String("EVERYSEC"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.redis.Cluster;
/// import com.pulumi.gcp.redis.ClusterArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPscConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterZoneDistributionConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterMaintenancePolicyArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPersistenceConfigArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPersistenceConfigAofConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var consumerNet = new Network("consumerNet", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var consumerSubnet = new Subnetwork("consumerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(consumerNet.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore-redis")
///             .description("my basic service connection policy")
///             .network(consumerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(consumerSubnet.id())
///                 .build())
///             .build());
///
///         var cluster_aof = new Cluster("cluster-aof", ClusterArgs.builder()
///             .name("aof-cluster")
///             .shardCount(3)
///             .pscConfigs(ClusterPscConfigArgs.builder()
///                 .network(consumerNet.id())
///                 .build())
///             .region("us-central1")
///             .replicaCount(0)
///             .nodeType("REDIS_SHARED_CORE_NANO")
///             .transitEncryptionMode("TRANSIT_ENCRYPTION_MODE_DISABLED")
///             .authorizationMode("AUTH_MODE_DISABLED")
///             .redisConfigs(Map.of("maxmemory-policy", "volatile-ttl"))
///             .deletionProtectionEnabled(true)
///             .zoneDistributionConfig(ClusterZoneDistributionConfigArgs.builder()
///                 .mode("MULTI_ZONE")
///                 .build())
///             .maintenancePolicy(ClusterMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(ClusterMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("MONDAY")
///                     .startTime(ClusterMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(1)
///                         .minutes(0)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .persistenceConfig(ClusterPersistenceConfigArgs.builder()
///                 .mode("AOF")
///                 .aofConfig(ClusterPersistenceConfigAofConfigArgs.builder()
///                     .appendFsync("EVERYSEC")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster-aof:
///     type: gcp:redis:Cluster
///     properties:
///       name: aof-cluster
///       shardCount: 3
///       pscConfigs:
///         - network: ${consumerNet.id}
///       region: us-central1
///       replicaCount: 0
///       nodeType: REDIS_SHARED_CORE_NANO
///       transitEncryptionMode: TRANSIT_ENCRYPTION_MODE_DISABLED
///       authorizationMode: AUTH_MODE_DISABLED
///       redisConfigs:
///         maxmemory-policy: volatile-ttl
///       deletionProtectionEnabled: true
///       zoneDistributionConfig:
///         mode: MULTI_ZONE
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: MONDAY
///             startTime:
///               hours: 1
///               minutes: 0
///               seconds: 0
///               nanos: 0
///       persistenceConfig:
///         mode: AOF
///         aofConfig:
///           appendFsync: EVERYSEC
///     options:
///       dependsOn:
///         - ${default}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: my-policy
///       location: us-central1
///       serviceClass: gcp-memorystore-redis
///       description: my basic service connection policy
///       network: ${consumerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${consumerSubnet.id}
///   consumerSubnet:
///     type: gcp:compute:Subnetwork
///     name: consumer_subnet
///     properties:
///       name: my-subnet
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${consumerNet.id}
///   consumerNet:
///     type: gcp:compute:Network
///     name: consumer_net
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Redis Cluster Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const consumerNet = new gcp.compute.Network("consumer_net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const consumerSubnet = new gcp.compute.Subnetwork("consumer_subnet", {
///     name: "my-subnet",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: consumerNet.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "my-policy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore-redis",
///     description: "my basic service connection policy",
///     network: consumerNet.id,
///     pscConfig: {
///         subnetworks: [consumerSubnet.id],
///     },
/// });
/// const cluster_cmek = new gcp.redis.Cluster("cluster-cmek", {
///     name: "cmek-cluster",
///     shardCount: 3,
///     pscConfigs: [{
///         network: consumerNet.id,
///     }],
///     kmsKey: "my-key",
///     region: "us-central1",
///     deletionProtectionEnabled: true,
/// }, {
///     dependsOn: [_default],
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// consumer_net = gcp.compute.Network("consumer_net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// consumer_subnet = gcp.compute.Subnetwork("consumer_subnet",
///     name="my-subnet",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=consumer_net.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="my-policy",
///     location="us-central1",
///     service_class="gcp-memorystore-redis",
///     description="my basic service connection policy",
///     network=consumer_net.id,
///     psc_config={
///         "subnetworks": [consumer_subnet.id],
///     })
/// cluster_cmek = gcp.redis.Cluster("cluster-cmek",
///     name="cmek-cluster",
///     shard_count=3,
///     psc_configs=[{
///         "network": consumer_net.id,
///     }],
///     kms_key="my-key",
///     region="us-central1",
///     deletion_protection_enabled=True,
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var consumerNet = new Gcp.Compute.Network("consumer_net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var consumerSubnet = new Gcp.Compute.Subnetwork("consumer_subnet", new()
///     {
///         Name = "my-subnet",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = consumerNet.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "my-policy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore-redis",
///         Description = "my basic service connection policy",
///         Network = consumerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 consumerSubnet.Id,
///             },
///         },
///     });
///
///     var cluster_cmek = new Gcp.Redis.Cluster("cluster-cmek", new()
///     {
///         Name = "cmek-cluster",
///         ShardCount = 3,
///         PscConfigs = new[]
///         {
///             new Gcp.Redis.Inputs.ClusterPscConfigArgs
///             {
///                 Network = consumerNet.Id,
///             },
///         },
///         KmsKey = "my-key",
///         Region = "us-central1",
///         DeletionProtectionEnabled = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		consumerNet, err := compute.NewNetwork(ctx, "consumer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		consumerSubnet, err := compute.NewSubnetwork(ctx, "consumer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     consumerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore-redis"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      consumerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					consumerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewCluster(ctx, "cluster-cmek", &redis.ClusterArgs{
/// 			Name:       pulumi.String("cmek-cluster"),
/// 			ShardCount: pulumi.Int(3),
/// 			PscConfigs: redis.ClusterPscConfigArray{
/// 				&redis.ClusterPscConfigArgs{
/// 					Network: consumerNet.ID(),
/// 				},
/// 			},
/// 			KmsKey:                    pulumi.String("my-key"),
/// 			Region:                    pulumi.String("us-central1"),
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.redis.Cluster;
/// import com.pulumi.gcp.redis.ClusterArgs;
/// import com.pulumi.gcp.redis.inputs.ClusterPscConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var consumerNet = new Network("consumerNet", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var consumerSubnet = new Subnetwork("consumerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(consumerNet.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore-redis")
///             .description("my basic service connection policy")
///             .network(consumerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(consumerSubnet.id())
///                 .build())
///             .build());
///
///         var cluster_cmek = new Cluster("cluster-cmek", ClusterArgs.builder()
///             .name("cmek-cluster")
///             .shardCount(3)
///             .pscConfigs(ClusterPscConfigArgs.builder()
///                 .network(consumerNet.id())
///                 .build())
///             .kmsKey("my-key")
///             .region("us-central1")
///             .deletionProtectionEnabled(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster-cmek:
///     type: gcp:redis:Cluster
///     properties:
///       name: cmek-cluster
///       shardCount: 3
///       pscConfigs:
///         - network: ${consumerNet.id}
///       kmsKey: my-key
///       region: us-central1
///       deletionProtectionEnabled: true
///     options:
///       dependsOn:
///         - ${default}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: my-policy
///       location: us-central1
///       serviceClass: gcp-memorystore-redis
///       description: my basic service connection policy
///       network: ${consumerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${consumerSubnet.id}
///   consumerSubnet:
///     type: gcp:compute:Subnetwork
///     name: consumer_subnet
///     properties:
///       name: my-subnet
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${consumerNet.id}
///   consumerNet:
///     type: gcp:compute:Network
///     name: consumer_net
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/clusters/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:redis/cluster:Cluster default projects/{{project}}/locations/{{region}}/clusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/cluster:Cluster default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/cluster:Cluster default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/cluster:Cluster default {{name}}
/// ```
class Cluster extends pulumi.CustomResource {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  /// Default value is `AUTH_MODE_DISABLED`.
  /// Possible values are: `AUTH_MODE_UNSPECIFIED`, `AUTH_MODE_IAM_AUTH`, `AUTH_MODE_DISABLED`.
  late final pulumi.Output<String?> authorizationMode;

  /// The automated backup config for a instance.
  /// Structure is documented below.
  late final pulumi.Output<ClusterAutomatedBackupConfig?> automatedBackupConfig;

  /// This field is used to determine the available maintenance versions for the self service update.
  late final pulumi.Output<List<String>> availableMaintenanceVersions;

  /// The backup collection full resource name.
  /// Example: projects/{project}/locations/{location}/backupCollections/{collection}
  late final pulumi.Output<String> backupCollection;

  /// The timestamp associated with the cluster creation request. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// Cross cluster replication config
  /// Structure is documented below.
  late final pulumi.Output<ClusterCrossClusterReplicationConfig>
  crossClusterReplicationConfig;

  /// Optional. Indicates if the cluster is deletion protected or not.
  /// If the value if set to true, any delete cluster operation will fail.
  /// Default value is true.
  late final pulumi.Output<bool?> deletionProtectionEnabled;

  /// Output only. Endpoints created on each given network,
  /// for Redis clients to connect to the cluster.
  /// Currently only one endpoint is supported.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterDiscoveryEndpoint>> discoveryEndpoints;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This field represents the actual maintenance version of the cluster.
  late final pulumi.Output<String> effectiveMaintenanceVersion;

  /// Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.
  /// Structure is documented below.
  late final pulumi.Output<ClusterGcsSource?> gcsSource;

  /// The KMS key used to encrypt the at-rest data of the cluster.
  late final pulumi.Output<String?> kmsKey;

  /// Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Maintenance policy for a cluster
  /// Structure is documented below.
  late final pulumi.Output<ClusterMaintenancePolicy?> maintenancePolicy;

  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterMaintenanceSchedule>>
  maintenanceSchedules;

  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  late final pulumi.Output<String?> maintenanceVersion;

  /// Backups that generated and managed by memorystore.
  /// Structure is documented below.
  late final pulumi.Output<ClusterManagedBackupSource?> managedBackupSource;

  /// Cluster's Certificate Authority. This field will only be populated if Redis Cluster's transit_encryption_mode is TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterManagedServerCa>> managedServerCas;

  /// Unique name of the resource in this scope including project and location using the form:
  /// projects/{projectId}/locations/{locationId}/clusters/{clusterId}
  late final pulumi.Output<String> name;

  /// The nodeType for the Redis cluster.
  /// If not provided, REDIS_HIGHMEM_MEDIUM will be used as default
  /// Possible values are: `REDIS_SHARED_CORE_NANO`, `REDIS_HIGHMEM_MEDIUM`, `REDIS_HIGHMEM_XLARGE`, `REDIS_STANDARD_SMALL`.
  late final pulumi.Output<String> nodeType;

  /// Persistence config (RDB, AOF) for the cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterPersistenceConfig> persistenceConfig;

  /// Output only. Redis memory precise size in GB for the entire cluster.
  late final pulumi.Output<double> preciseSizeGb;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Required. Each PscConfig configures the consumer network where two
  /// network addresses will be designated to the cluster for client access.
  /// Currently, only one PscConfig is supported.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterPscConfig>?> pscConfigs;

  /// Output only. PSC connections for discovery of the cluster topology and accessing the cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterPscConnection>> pscConnections;

  /// Service attachment details to configure Psc connections.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterPscServiceAttachment>>
  pscServiceAttachments;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Configure Redis Cluster behavior using a subset of native Redis configuration parameters.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/cluster/supported-instance-configurations
  late final pulumi.Output<Map<String, String>?> redisConfigs;

  /// The name of the region of the Redis cluster.
  late final pulumi.Output<String> region;

  /// Optional. The number of replica nodes per shard.
  late final pulumi.Output<int?> replicaCount;

  /// Required. Number of shards for the Redis cluster.
  late final pulumi.Output<int> shardCount;

  /// Output only. Redis memory size in GB for the entire cluster.
  late final pulumi.Output<int> sizeGb;

  /// The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
  late final pulumi.Output<String> state;

  /// Output only. Additional information about the current state of the cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterStateInfo>> stateInfos;

  /// Optional. The in-transit encryption for the Redis cluster.
  /// If not provided, encryption is disabled for the cluster.
  /// Default value is `TRANSIT_ENCRYPTION_MODE_DISABLED`.
  /// Possible values are: `TRANSIT_ENCRYPTION_MODE_UNSPECIFIED`, `TRANSIT_ENCRYPTION_MODE_DISABLED`, `TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION`.
  late final pulumi.Output<String?> transitEncryptionMode;

  /// System assigned, unique identifier for the cluster.
  late final pulumi.Output<String> uid;

  /// Immutable. Zone distribution config for Memorystore Redis cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterZoneDistributionConfig>
  zoneDistributionConfig;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_redis_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:redis/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.authorizationMode = registerOutput<String?>('authorizationMode');
    this.automatedBackupConfig = registerOutput<ClusterAutomatedBackupConfig?>(
      'automatedBackupConfig',
    );
    this.availableMaintenanceVersions = registerOutput<List<String>>(
      'availableMaintenanceVersions',
    );
    this.backupCollection = registerOutput<String>('backupCollection');
    this.createTime = registerOutput<String>('createTime');
    this.crossClusterReplicationConfig =
        registerOutput<ClusterCrossClusterReplicationConfig>(
          'crossClusterReplicationConfig',
        );
    this.deletionProtectionEnabled = registerOutput<bool?>(
      'deletionProtectionEnabled',
    );
    this.discoveryEndpoints = registerOutput<List<ClusterDiscoveryEndpoint>>(
      'discoveryEndpoints',
    );
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.effectiveMaintenanceVersion = registerOutput<String>(
      'effectiveMaintenanceVersion',
    );
    this.gcsSource = registerOutput<ClusterGcsSource?>('gcsSource');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.maintenancePolicy = registerOutput<ClusterMaintenancePolicy?>(
      'maintenancePolicy',
    );
    this.maintenanceSchedules =
        registerOutput<List<ClusterMaintenanceSchedule>>(
          'maintenanceSchedules',
        );
    this.maintenanceVersion = registerOutput<String?>('maintenanceVersion');
    this.managedBackupSource = registerOutput<ClusterManagedBackupSource?>(
      'managedBackupSource',
    );
    this.managedServerCas = registerOutput<List<ClusterManagedServerCa>>(
      'managedServerCas',
    );
    this.name = registerOutput<String>('name');
    this.nodeType = registerOutput<String>('nodeType');
    this.persistenceConfig = registerOutput<ClusterPersistenceConfig>(
      'persistenceConfig',
    );
    this.preciseSizeGb = registerOutput<double>('preciseSizeGb');
    this.project = registerOutput<String>('project');
    this.pscConfigs = registerOutput<List<ClusterPscConfig>?>('pscConfigs');
    this.pscConnections = registerOutput<List<ClusterPscConnection>>(
      'pscConnections',
    );
    this.pscServiceAttachments =
        registerOutput<List<ClusterPscServiceAttachment>>(
          'pscServiceAttachments',
        );
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.redisConfigs = registerOutput<Map<String, String>?>('redisConfigs');
    this.region = registerOutput<String>('region');
    this.replicaCount = registerOutput<int?>('replicaCount');
    this.shardCount = registerOutput<int>('shardCount');
    this.sizeGb = registerOutput<int>('sizeGb');
    this.state = registerOutput<String>('state');
    this.stateInfos = registerOutput<List<ClusterStateInfo>>('stateInfos');
    this.transitEncryptionMode = registerOutput<String?>(
      'transitEncryptionMode',
    );
    this.uid = registerOutput<String>('uid');
    this.zoneDistributionConfig = registerOutput<ClusterZoneDistributionConfig>(
      'zoneDistributionConfig',
    );
  }
}
