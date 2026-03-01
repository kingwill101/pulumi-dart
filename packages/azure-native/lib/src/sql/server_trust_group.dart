import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_info_response.dart';
import 'server_trust_group_args.dart';

/// A server trust group.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create server trust group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverTrustGroup = new AzureNative.Sql.ServerTrustGroup("serverTrustGroup", new()
///     {
///         GroupMembers = new[]
///         {
///             new AzureNative.Sql.Inputs.ServerInfoArgs
///             {
///                 ServerId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-1",
///             },
///             new AzureNative.Sql.Inputs.ServerInfoArgs
///             {
///                 ServerId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-2",
///             },
///         },
///         LocationName = "Japan East",
///         ResourceGroupName = "Default",
///         ServerTrustGroupName = "server-trust-group-test",
///         TrustScopes = new[]
///         {
///             AzureNative.Sql.TrustScope.GlobalTransactions,
///             AzureNative.Sql.TrustScope.ServiceBroker,
///         },
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
/// 		_, err := sql.NewServerTrustGroup(ctx, "serverTrustGroup", &sql.ServerTrustGroupArgs{
/// 			GroupMembers: sql.ServerInfoArray{
/// 				&sql.ServerInfoArgs{
/// 					ServerId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-1"),
/// 				},
/// 				&sql.ServerInfoArgs{
/// 					ServerId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-2"),
/// 				},
/// 			},
/// 			LocationName:         pulumi.String("Japan East"),
/// 			ResourceGroupName:    pulumi.String("Default"),
/// 			ServerTrustGroupName: pulumi.String("server-trust-group-test"),
/// 			TrustScopes: pulumi.StringArray{
/// 				pulumi.String(sql.TrustScopeGlobalTransactions),
/// 				pulumi.String(sql.TrustScopeServiceBroker),
/// 			},
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
/// import com.pulumi.azurenative.sql.ServerTrustGroup;
/// import com.pulumi.azurenative.sql.ServerTrustGroupArgs;
/// import com.pulumi.azurenative.sql.inputs.ServerInfoArgs;
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
///         var serverTrustGroup = new ServerTrustGroup("serverTrustGroup", ServerTrustGroupArgs.builder()
///             .groupMembers(
///                 ServerInfoArgs.builder()
///                     .serverId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-1")
///                     .build(),
///                 ServerInfoArgs.builder()
///                     .serverId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-2")
///                     .build())
///             .locationName("Japan East")
///             .resourceGroupName("Default")
///             .serverTrustGroupName("server-trust-group-test")
///             .trustScopes(
///                 "GlobalTransactions",
///                 "ServiceBroker")
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
/// const serverTrustGroup = new azure_native.sql.ServerTrustGroup("serverTrustGroup", {
///     groupMembers: [
///         {
///             serverId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-1",
///         },
///         {
///             serverId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-2",
///         },
///     ],
///     locationName: "Japan East",
///     resourceGroupName: "Default",
///     serverTrustGroupName: "server-trust-group-test",
///     trustScopes: [
///         azure_native.sql.TrustScope.GlobalTransactions,
///         azure_native.sql.TrustScope.ServiceBroker,
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_trust_group = azure_native.sql.ServerTrustGroup("serverTrustGroup",
///     group_members=[
///         {
///             "server_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-1",
///         },
///         {
///             "server_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-2",
///         },
///     ],
///     location_name="Japan East",
///     resource_group_name="Default",
///     server_trust_group_name="server-trust-group-test",
///     trust_scopes=[
///         azure_native.sql.TrustScope.GLOBAL_TRANSACTIONS,
///         azure_native.sql.TrustScope.SERVICE_BROKER,
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   serverTrustGroup:
///     type: azure-native:sql:ServerTrustGroup
///     properties:
///       groupMembers:
///         - serverId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-1
///         - serverId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/managedInstance-2
///       locationName: Japan East
///       resourceGroupName: Default
///       serverTrustGroupName: server-trust-group-test
///       trustScopes:
///         - GlobalTransactions
///         - ServiceBroker
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
/// $ pulumi import azure-native:sql:ServerTrustGroup server-trust-group-test /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/locations/{locationName}/serverTrustGroups/{serverTrustGroupName}
/// ```
class ServerTrustGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Group members information for the server trust group.
  late final pulumi.Output<List<ServerInfoResponse>> groupMembers;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Trust scope of the server trust group.
  late final pulumi.Output<List<String>> trustScopes;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerTrustGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerTrustGroup]. {@macro pulumi_sql_server_trust_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerTrustGroup(
    String name, {
    ServerTrustGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ServerTrustGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.groupMembers = registerOutput<List<ServerInfoResponse>>('groupMembers');
    this.name = registerOutput<String>('name');
    this.trustScopes = registerOutput<List<String>>('trustScopes');
    this.type = registerOutput<String>('type');
  }
}
