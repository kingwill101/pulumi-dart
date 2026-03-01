import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_target_group_args.dart';
import 'job_target_response.dart';

/// A group of job targets.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a target group with all properties.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jobTargetGroup = new AzureNative.Sql.JobTargetGroup("jobTargetGroup", new()
///     {
///         JobAgentName = "agent1",
///         Members = new[]
///         {
///             new AzureNative.Sql.Inputs.JobTargetArgs
///             {
///                 DatabaseName = "database1",
///                 MembershipType = AzureNative.Sql.JobTargetGroupMembershipType.Exclude,
///                 ServerName = "server1",
///                 Type = AzureNative.Sql.JobTargetType.SqlDatabase,
///             },
///             new AzureNative.Sql.Inputs.JobTargetArgs
///             {
///                 MembershipType = AzureNative.Sql.JobTargetGroupMembershipType.Include,
///                 RefreshCredential = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential",
///                 ServerName = "server1",
///                 Type = AzureNative.Sql.JobTargetType.SqlServer,
///             },
///             new AzureNative.Sql.Inputs.JobTargetArgs
///             {
///                 ElasticPoolName = "pool1",
///                 MembershipType = AzureNative.Sql.JobTargetGroupMembershipType.Include,
///                 RefreshCredential = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential",
///                 ServerName = "server2",
///                 Type = AzureNative.Sql.JobTargetType.SqlElasticPool,
///             },
///             new AzureNative.Sql.Inputs.JobTargetArgs
///             {
///                 MembershipType = AzureNative.Sql.JobTargetGroupMembershipType.Include,
///                 RefreshCredential = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential",
///                 ServerName = "server3",
///                 ShardMapName = "shardMap1",
///                 Type = AzureNative.Sql.JobTargetType.SqlShardMap,
///             },
///         },
///         ResourceGroupName = "group1",
///         ServerName = "server1",
///         TargetGroupName = "targetGroup1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewJobTargetGroup(ctx, "jobTargetGroup", &sql.JobTargetGroupArgs{
/// 			JobAgentName: pulumi.String("agent1"),
/// 			Members: sql.JobTargetArray{
/// 				&sql.JobTargetArgs{
/// 					DatabaseName:   pulumi.String("database1"),
/// 					MembershipType: sql.JobTargetGroupMembershipTypeExclude,
/// 					ServerName:     pulumi.String("server1"),
/// 					Type:           pulumi.String(sql.JobTargetTypeSqlDatabase),
/// 				},
/// 				&sql.JobTargetArgs{
/// 					MembershipType:    sql.JobTargetGroupMembershipTypeInclude,
/// 					RefreshCredential: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential"),
/// 					ServerName:        pulumi.String("server1"),
/// 					Type:              pulumi.String(sql.JobTargetTypeSqlServer),
/// 				},
/// 				&sql.JobTargetArgs{
/// 					ElasticPoolName:   pulumi.String("pool1"),
/// 					MembershipType:    sql.JobTargetGroupMembershipTypeInclude,
/// 					RefreshCredential: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential"),
/// 					ServerName:        pulumi.String("server2"),
/// 					Type:              pulumi.String(sql.JobTargetTypeSqlElasticPool),
/// 				},
/// 				&sql.JobTargetArgs{
/// 					MembershipType:    sql.JobTargetGroupMembershipTypeInclude,
/// 					RefreshCredential: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential"),
/// 					ServerName:        pulumi.String("server3"),
/// 					ShardMapName:      pulumi.String("shardMap1"),
/// 					Type:              pulumi.String(sql.JobTargetTypeSqlShardMap),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			ServerName:        pulumi.String("server1"),
/// 			TargetGroupName:   pulumi.String("targetGroup1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.JobTargetGroup;
/// import com.pulumi.azurenative.sql.JobTargetGroupArgs;
/// import com.pulumi.azurenative.sql.inputs.JobTargetArgs;
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
///         var jobTargetGroup = new JobTargetGroup("jobTargetGroup", JobTargetGroupArgs.builder()
///             .jobAgentName("agent1")
///             .members(
///                 JobTargetArgs.builder()
///                     .databaseName("database1")
///                     .membershipType("Exclude")
///                     .serverName("server1")
///                     .type("SqlDatabase")
///                     .build(),
///                 JobTargetArgs.builder()
///                     .membershipType("Include")
///                     .refreshCredential("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential")
///                     .serverName("server1")
///                     .type("SqlServer")
///                     .build(),
///                 JobTargetArgs.builder()
///                     .elasticPoolName("pool1")
///                     .membershipType("Include")
///                     .refreshCredential("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential")
///                     .serverName("server2")
///                     .type("SqlElasticPool")
///                     .build(),
///                 JobTargetArgs.builder()
///                     .membershipType("Include")
///                     .refreshCredential("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential")
///                     .serverName("server3")
///                     .shardMapName("shardMap1")
///                     .type("SqlShardMap")
///                     .build())
///             .resourceGroupName("group1")
///             .serverName("server1")
///             .targetGroupName("targetGroup1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const jobTargetGroup = new azure_native.sql.JobTargetGroup("jobTargetGroup", {
///     jobAgentName: "agent1",
///     members: [
///         {
///             databaseName: "database1",
///             membershipType: azure_native.sql.JobTargetGroupMembershipType.Exclude,
///             serverName: "server1",
///             type: azure_native.sql.JobTargetType.SqlDatabase,
///         },
///         {
///             membershipType: azure_native.sql.JobTargetGroupMembershipType.Include,
///             refreshCredential: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential",
///             serverName: "server1",
///             type: azure_native.sql.JobTargetType.SqlServer,
///         },
///         {
///             elasticPoolName: "pool1",
///             membershipType: azure_native.sql.JobTargetGroupMembershipType.Include,
///             refreshCredential: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential",
///             serverName: "server2",
///             type: azure_native.sql.JobTargetType.SqlElasticPool,
///         },
///         {
///             membershipType: azure_native.sql.JobTargetGroupMembershipType.Include,
///             refreshCredential: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential",
///             serverName: "server3",
///             shardMapName: "shardMap1",
///             type: azure_native.sql.JobTargetType.SqlShardMap,
///         },
///     ],
///     resourceGroupName: "group1",
///     serverName: "server1",
///     targetGroupName: "targetGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job_target_group = azure_native.sql.JobTargetGroup("jobTargetGroup",
///     job_agent_name="agent1",
///     members=[
///         {
///             "database_name": "database1",
///             "membership_type": azure_native.sql.JobTargetGroupMembershipType.EXCLUDE,
///             "server_name": "server1",
///             "type": azure_native.sql.JobTargetType.SQL_DATABASE,
///         },
///         {
///             "membership_type": azure_native.sql.JobTargetGroupMembershipType.INCLUDE,
///             "refresh_credential": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential",
///             "server_name": "server1",
///             "type": azure_native.sql.JobTargetType.SQL_SERVER,
///         },
///         {
///             "elastic_pool_name": "pool1",
///             "membership_type": azure_native.sql.JobTargetGroupMembershipType.INCLUDE,
///             "refresh_credential": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential",
///             "server_name": "server2",
///             "type": azure_native.sql.JobTargetType.SQL_ELASTIC_POOL,
///         },
///         {
///             "membership_type": azure_native.sql.JobTargetGroupMembershipType.INCLUDE,
///             "refresh_credential": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential",
///             "server_name": "server3",
///             "shard_map_name": "shardMap1",
///             "type": azure_native.sql.JobTargetType.SQL_SHARD_MAP,
///         },
///     ],
///     resource_group_name="group1",
///     server_name="server1",
///     target_group_name="targetGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   jobTargetGroup:
///     type: azure-native:sql:JobTargetGroup
///     properties:
///       jobAgentName: agent1
///       members:
///         - databaseName: database1
///           membershipType: Exclude
///           serverName: server1
///           type: SqlDatabase
///         - membershipType: Include
///           refreshCredential: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential
///           serverName: server1
///           type: SqlServer
///         - elasticPoolName: pool1
///           membershipType: Include
///           refreshCredential: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential
///           serverName: server2
///           type: SqlElasticPool
///         - membershipType: Include
///           refreshCredential: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/jobAgents/agent1/credentials/testCredential
///           serverName: server3
///           shardMapName: shardMap1
///           type: SqlShardMap
///       resourceGroupName: group1
///       serverName: server1
///       targetGroupName: targetGroup1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a target group with minimal properties.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jobTargetGroup = new AzureNative.Sql.JobTargetGroup("jobTargetGroup", new()
///     {
///         JobAgentName = "agent1",
///         Members = new[] {},
///         ResourceGroupName = "group1",
///         ServerName = "server1",
///         TargetGroupName = "targetGroup1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewJobTargetGroup(ctx, "jobTargetGroup", &sql.JobTargetGroupArgs{
/// 			JobAgentName:      pulumi.String("agent1"),
/// 			Members:           sql.JobTargetArray{},
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			ServerName:        pulumi.String("server1"),
/// 			TargetGroupName:   pulumi.String("targetGroup1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.JobTargetGroup;
/// import com.pulumi.azurenative.sql.JobTargetGroupArgs;
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
///         var jobTargetGroup = new JobTargetGroup("jobTargetGroup", JobTargetGroupArgs.builder()
///             .jobAgentName("agent1")
///             .members()
///             .resourceGroupName("group1")
///             .serverName("server1")
///             .targetGroupName("targetGroup1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const jobTargetGroup = new azure_native.sql.JobTargetGroup("jobTargetGroup", {
///     jobAgentName: "agent1",
///     members: [],
///     resourceGroupName: "group1",
///     serverName: "server1",
///     targetGroupName: "targetGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job_target_group = azure_native.sql.JobTargetGroup("jobTargetGroup",
///     job_agent_name="agent1",
///     members=[],
///     resource_group_name="group1",
///     server_name="server1",
///     target_group_name="targetGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   jobTargetGroup:
///     type: azure-native:sql:JobTargetGroup
///     properties:
///       jobAgentName: agent1
///       members: []
///       resourceGroupName: group1
///       serverName: server1
///       targetGroupName: targetGroup1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:sql:JobTargetGroup targetGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/jobAgents/{jobAgentName}/targetGroups/{targetGroupName}
/// ```
class JobTargetGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Members of the target group.
  late final pulumi.Output<List<JobTargetResponse>> members;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [JobTargetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobTargetGroup]. {@macro pulumi_sql_job_target_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobTargetGroup(
    String name, {
    JobTargetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:JobTargetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.members = registerOutput<List<JobTargetResponse>>('members');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }
}
