import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_firewall_args.dart';
import 'database_firewall_rule.dart';

/// Provides a DigitalOcean database firewall resource allowing you to restrict
/// connections to your database to trusted sources. You may limit connections to
/// specific Droplets, Kubernetes clusters, or IP addresses.
///
/// ## Example Usage
///
/// ### Create a new database firewall allowing multiple IP addresses
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const postgres_example = new digitalocean.DatabaseCluster("postgres-example", {
///     name: "example-postgres-cluster",
///     engine: "pg",
///     version: "15",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// const example_fw = new digitalocean.DatabaseFirewall("example-fw", {
///     clusterId: postgres_example.id,
///     rules: [
///         {
///             type: "ip_addr",
///             value: "192.168.1.1",
///         },
///         {
///             type: "ip_addr",
///             value: "192.0.2.0",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// postgres_example = digitalocean.DatabaseCluster("postgres-example",
///     name="example-postgres-cluster",
///     engine="pg",
///     version="15",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// example_fw = digitalocean.DatabaseFirewall("example-fw",
///     cluster_id=postgres_example.id,
///     rules=[
///         {
///             "type": "ip_addr",
///             "value": "192.168.1.1",
///         },
///         {
///             "type": "ip_addr",
///             "value": "192.0.2.0",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgres_example = new DigitalOcean.DatabaseCluster("postgres-example", new()
///     {
///         Name = "example-postgres-cluster",
///         Engine = "pg",
///         Version = "15",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///     });
///
///     var example_fw = new DigitalOcean.DatabaseFirewall("example-fw", new()
///     {
///         ClusterId = postgres_example.Id,
///         Rules = new[]
///         {
///             new DigitalOcean.Inputs.DatabaseFirewallRuleArgs
///             {
///                 Type = "ip_addr",
///                 Value = "192.168.1.1",
///             },
///             new DigitalOcean.Inputs.DatabaseFirewallRuleArgs
///             {
///                 Type = "ip_addr",
///                 Value = "192.0.2.0",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		postgres_example, err := digitalocean.NewDatabaseCluster(ctx, "postgres-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-postgres-cluster"),
/// 			Engine:    pulumi.String("pg"),
/// 			Version:   pulumi.String("15"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseFirewall(ctx, "example-fw", &digitalocean.DatabaseFirewallArgs{
/// 			ClusterId: postgres_example.ID(),
/// 			Rules: digitalocean.DatabaseFirewallRuleArray{
/// 				&digitalocean.DatabaseFirewallRuleArgs{
/// 					Type:  pulumi.String("ip_addr"),
/// 					Value: pulumi.String("192.168.1.1"),
/// 				},
/// 				&digitalocean.DatabaseFirewallRuleArgs{
/// 					Type:  pulumi.String("ip_addr"),
/// 					Value: pulumi.String("192.0.2.0"),
/// 				},
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
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabaseFirewall;
/// import com.pulumi.digitalocean.DatabaseFirewallArgs;
/// import com.pulumi.digitalocean.inputs.DatabaseFirewallRuleArgs;
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
///         var postgres_example = new DatabaseCluster("postgres-example", DatabaseClusterArgs.builder()
///             .name("example-postgres-cluster")
///             .engine("pg")
///             .version("15")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var example_fw = new DatabaseFirewall("example-fw", DatabaseFirewallArgs.builder()
///             .clusterId(postgres_example.id())
///             .rules(
///                 DatabaseFirewallRuleArgs.builder()
///                     .type("ip_addr")
///                     .value("192.168.1.1")
///                     .build(),
///                 DatabaseFirewallRuleArgs.builder()
///                     .type("ip_addr")
///                     .value("192.0.2.0")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-fw:
///     type: digitalocean:DatabaseFirewall
///     properties:
///       clusterId: ${["postgres-example"].id}
///       rules:
///         - type: ip_addr
///           value: 192.168.1.1
///         - type: ip_addr
///           value: 192.0.2.0
///   postgres-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-postgres-cluster
///       engine: pg
///       version: '15'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ### Create a new database firewall allowing a Droplet
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const web = new digitalocean.Droplet("web", {
///     name: "web-01",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-22-04-x64",
///     region: digitalocean.Region.NYC3,
/// });
/// const postgres_example = new digitalocean.DatabaseCluster("postgres-example", {
///     name: "example-postgres-cluster",
///     engine: "pg",
///     version: "15",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// const example_fw = new digitalocean.DatabaseFirewall("example-fw", {
///     clusterId: postgres_example.id,
///     rules: [{
///         type: "droplet",
///         value: web.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// web = digitalocean.Droplet("web",
///     name="web-01",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-22-04-x64",
///     region=digitalocean.Region.NYC3)
/// postgres_example = digitalocean.DatabaseCluster("postgres-example",
///     name="example-postgres-cluster",
///     engine="pg",
///     version="15",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// example_fw = digitalocean.DatabaseFirewall("example-fw",
///     cluster_id=postgres_example.id,
///     rules=[{
///         "type": "droplet",
///         "value": web.id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new DigitalOcean.Droplet("web", new()
///     {
///         Name = "web-01",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-22-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var postgres_example = new DigitalOcean.DatabaseCluster("postgres-example", new()
///     {
///         Name = "example-postgres-cluster",
///         Engine = "pg",
///         Version = "15",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///     });
///
///     var example_fw = new DigitalOcean.DatabaseFirewall("example-fw", new()
///     {
///         ClusterId = postgres_example.Id,
///         Rules = new[]
///         {
///             new DigitalOcean.Inputs.DatabaseFirewallRuleArgs
///             {
///                 Type = "droplet",
///                 Value = web.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		web, err := digitalocean.NewDroplet(ctx, "web", &digitalocean.DropletArgs{
/// 			Name:   pulumi.String("web-01"),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:  pulumi.String("ubuntu-22-04-x64"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		postgres_example, err := digitalocean.NewDatabaseCluster(ctx, "postgres-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-postgres-cluster"),
/// 			Engine:    pulumi.String("pg"),
/// 			Version:   pulumi.String("15"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseFirewall(ctx, "example-fw", &digitalocean.DatabaseFirewallArgs{
/// 			ClusterId: postgres_example.ID(),
/// 			Rules: digitalocean.DatabaseFirewallRuleArray{
/// 				&digitalocean.DatabaseFirewallRuleArgs{
/// 					Type:  pulumi.String("droplet"),
/// 					Value: web.ID(),
/// 				},
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
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabaseFirewall;
/// import com.pulumi.digitalocean.DatabaseFirewallArgs;
/// import com.pulumi.digitalocean.inputs.DatabaseFirewallRuleArgs;
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
///         var web = new Droplet("web", DropletArgs.builder()
///             .name("web-01")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-22-04-x64")
///             .region("nyc3")
///             .build());
///
///         var postgres_example = new DatabaseCluster("postgres-example", DatabaseClusterArgs.builder()
///             .name("example-postgres-cluster")
///             .engine("pg")
///             .version("15")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var example_fw = new DatabaseFirewall("example-fw", DatabaseFirewallArgs.builder()
///             .clusterId(postgres_example.id())
///             .rules(DatabaseFirewallRuleArgs.builder()
///                 .type("droplet")
///                 .value(web.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-fw:
///     type: digitalocean:DatabaseFirewall
///     properties:
///       clusterId: ${["postgres-example"].id}
///       rules:
///         - type: droplet
///           value: ${web.id}
///   web:
///     type: digitalocean:Droplet
///     properties:
///       name: web-01
///       size: s-1vcpu-1gb
///       image: ubuntu-22-04-x64
///       region: nyc3
///   postgres-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-postgres-cluster
///       engine: pg
///       version: '15'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ### Create a new database firewall for a database replica
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const postgres_example = new digitalocean.DatabaseCluster("postgres-example", {
///     name: "example-postgres-cluster",
///     engine: "pg",
///     version: "15",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// const replica_example = new digitalocean.DatabaseReplica("replica-example", {
///     clusterId: postgres_example.id,
///     name: "replica-example",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
/// });
/// // Create firewall rule for database replica
/// const example_fw = new digitalocean.DatabaseFirewall("example-fw", {
///     clusterId: replica_example.uuid,
///     rules: [{
///         type: "ip_addr",
///         value: "192.168.1.1",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// postgres_example = digitalocean.DatabaseCluster("postgres-example",
///     name="example-postgres-cluster",
///     engine="pg",
///     version="15",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// replica_example = digitalocean.DatabaseReplica("replica-example",
///     cluster_id=postgres_example.id,
///     name="replica-example",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1)
/// # Create firewall rule for database replica
/// example_fw = digitalocean.DatabaseFirewall("example-fw",
///     cluster_id=replica_example.uuid,
///     rules=[{
///         "type": "ip_addr",
///         "value": "192.168.1.1",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgres_example = new DigitalOcean.DatabaseCluster("postgres-example", new()
///     {
///         Name = "example-postgres-cluster",
///         Engine = "pg",
///         Version = "15",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///     });
///
///     var replica_example = new DigitalOcean.DatabaseReplica("replica-example", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "replica-example",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///     });
///
///     // Create firewall rule for database replica
///     var example_fw = new DigitalOcean.DatabaseFirewall("example-fw", new()
///     {
///         ClusterId = replica_example.Uuid,
///         Rules = new[]
///         {
///             new DigitalOcean.Inputs.DatabaseFirewallRuleArgs
///             {
///                 Type = "ip_addr",
///                 Value = "192.168.1.1",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		postgres_example, err := digitalocean.NewDatabaseCluster(ctx, "postgres-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-postgres-cluster"),
/// 			Engine:    pulumi.String("pg"),
/// 			Version:   pulumi.String("15"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		replica_example, err := digitalocean.NewDatabaseReplica(ctx, "replica-example", &digitalocean.DatabaseReplicaArgs{
/// 			ClusterId: postgres_example.ID(),
/// 			Name:      pulumi.String("replica-example"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create firewall rule for database replica
/// 		_, err = digitalocean.NewDatabaseFirewall(ctx, "example-fw", &digitalocean.DatabaseFirewallArgs{
/// 			ClusterId: replica_example.Uuid,
/// 			Rules: digitalocean.DatabaseFirewallRuleArray{
/// 				&digitalocean.DatabaseFirewallRuleArgs{
/// 					Type:  pulumi.String("ip_addr"),
/// 					Value: pulumi.String("192.168.1.1"),
/// 				},
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
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabaseReplica;
/// import com.pulumi.digitalocean.DatabaseReplicaArgs;
/// import com.pulumi.digitalocean.DatabaseFirewall;
/// import com.pulumi.digitalocean.DatabaseFirewallArgs;
/// import com.pulumi.digitalocean.inputs.DatabaseFirewallRuleArgs;
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
///         var postgres_example = new DatabaseCluster("postgres-example", DatabaseClusterArgs.builder()
///             .name("example-postgres-cluster")
///             .engine("pg")
///             .version("15")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var replica_example = new DatabaseReplica("replica-example", DatabaseReplicaArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("replica-example")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .build());
///
///         // Create firewall rule for database replica
///         var example_fw = new DatabaseFirewall("example-fw", DatabaseFirewallArgs.builder()
///             .clusterId(replica_example.uuid())
///             .rules(DatabaseFirewallRuleArgs.builder()
///                 .type("ip_addr")
///                 .value("192.168.1.1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   postgres-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-postgres-cluster
///       engine: pg
///       version: '15'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
///   replica-example:
///     type: digitalocean:DatabaseReplica
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: replica-example
///       size: db-s-1vcpu-1gb
///       region: nyc1
///   # Create firewall rule for database replica
///   example-fw:
///     type: digitalocean:DatabaseFirewall
///     properties:
///       clusterId: ${["replica-example"].uuid}
///       rules:
///         - type: ip_addr
///           value: 192.168.1.1
/// ```
///
///
/// ## Import
///
/// Database firewalls can be imported using the `id` of the target database cluster
/// For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseFirewall:DatabaseFirewall example-fw 5f55c6cd-863b-4907-99b8-7e09b0275d54
/// ```
class DatabaseFirewall extends pulumi.CustomResource {
  /// The ID of the target database cluster.
  late final pulumi.Output<String> clusterId;
  /// A rule specifying a resource allowed to access the database cluster. The following arguments must be specified:
  late final pulumi.Output<List<DatabaseFirewallRule>> rules;

  /// Creates a new [DatabaseFirewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseFirewall]. {@macro pulumi_index_database_firewall_database_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseFirewall(
    String name, {
    DatabaseFirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseFirewall:DatabaseFirewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.rules = registerOutput<List<DatabaseFirewallRule>>('rules');
  }
}
