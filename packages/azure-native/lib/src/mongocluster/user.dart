import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'user_args.dart';
import 'user_properties_response.dart';

/// Represents a Mongo cluster user.
///
/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-08-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mongocluster [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates a user on a Mongo Cluster resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user = new AzureNative.MongoCluster.User("user", new()
///     {
///         MongoClusterName = "myMongoCluster",
///         Properties = new AzureNative.MongoCluster.Inputs.UserPropertiesArgs
///         {
///             IdentityProvider = new AzureNative.MongoCluster.Inputs.EntraIdentityProviderArgs
///             {
///                 Properties = new AzureNative.MongoCluster.Inputs.EntraIdentityProviderPropertiesArgs
///                 {
///                     PrincipalType = AzureNative.MongoCluster.EntraPrincipalType.User,
///                 },
///                 Type = "MicrosoftEntraID",
///             },
///             Roles = new[]
///             {
///                 new AzureNative.MongoCluster.Inputs.DatabaseRoleArgs
///                 {
///                     Db = "admin",
///                     Role = AzureNative.MongoCluster.UserRole.DatabaseOwner,
///                 },
///             },
///         },
///         ResourceGroupName = "TestGroup",
///         UserName = "uuuuuuuu-uuuu-uuuu-uuuu-uuuuuuuuuuuu",
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
/// 	mongocluster "github.com/pulumi/pulumi-azure-native-sdk/mongocluster/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mongocluster.NewUser(ctx, "user", &mongocluster.UserArgs{
/// 			MongoClusterName: pulumi.String("myMongoCluster"),
/// 			Properties: &mongocluster.UserPropertiesArgs{
/// 				IdentityProvider: &mongocluster.EntraIdentityProviderArgs{
/// 					Properties: &mongocluster.EntraIdentityProviderPropertiesArgs{
/// 						PrincipalType: pulumi.String(mongocluster.EntraPrincipalTypeUser),
/// 					},
/// 					Type: pulumi.String("MicrosoftEntraID"),
/// 				},
/// 				Roles: mongocluster.DatabaseRoleArray{
/// 					&mongocluster.DatabaseRoleArgs{
/// 						Db:   pulumi.String("admin"),
/// 						Role: pulumi.String(mongocluster.UserRoleDatabaseOwner),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			UserName:          pulumi.String("uuuuuuuu-uuuu-uuuu-uuuu-uuuuuuuuuuuu"),
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
/// import com.pulumi.azurenative.mongocluster.User;
/// import com.pulumi.azurenative.mongocluster.UserArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.UserPropertiesArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.EntraIdentityProviderArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.EntraIdentityProviderPropertiesArgs;
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
///         var user = new User("user", UserArgs.builder()
///             .mongoClusterName("myMongoCluster")
///             .properties(UserPropertiesArgs.builder()
///                 .identityProvider(Map.ofEntries(
///                     Map.entry("properties", EntraIdentityProviderPropertiesArgs.builder()
///                         .principalType("user")
///                         .build()),
///                     Map.entry("type", "MicrosoftEntraID")
///                 ))
///                 .roles(DatabaseRoleArgs.builder()
///                     .db("admin")
///                     .role("dbOwner")
///                     .build())
///                 .build())
///             .resourceGroupName("TestGroup")
///             .userName("uuuuuuuu-uuuu-uuuu-uuuu-uuuuuuuuuuuu")
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
/// const user = new azure_native.mongocluster.User("user", {
///     mongoClusterName: "myMongoCluster",
///     properties: {
///         identityProvider: {
///             properties: {
///                 principalType: azure_native.mongocluster.EntraPrincipalType.User,
///             },
///             type: "MicrosoftEntraID",
///         },
///         roles: [{
///             db: "admin",
///             role: azure_native.mongocluster.UserRole.DatabaseOwner,
///         }],
///     },
///     resourceGroupName: "TestGroup",
///     userName: "uuuuuuuu-uuuu-uuuu-uuuu-uuuuuuuuuuuu",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// user = azure_native.mongocluster.User("user",
///     mongo_cluster_name="myMongoCluster",
///     properties={
///         "identity_provider": {
///             "properties": {
///                 "principal_type": azure_native.mongocluster.EntraPrincipalType.USER,
///             },
///             "type": "MicrosoftEntraID",
///         },
///         "roles": [{
///             "db": "admin",
///             "role": azure_native.mongocluster.UserRole.DATABASE_OWNER,
///         }],
///     },
///     resource_group_name="TestGroup",
///     user_name="uuuuuuuu-uuuu-uuuu-uuuu-uuuuuuuuuuuu")
///
/// ```
///
/// ```yaml
/// resources:
///   user:
///     type: azure-native:mongocluster:User
///     properties:
///       mongoClusterName: myMongoCluster
///       properties:
///         identityProvider:
///           properties:
///             principalType: user
///           type: MicrosoftEntraID
///         roles:
///           - db: admin
///             role: dbOwner
///       resourceGroupName: TestGroup
///       userName: uuuuuuuu-uuuu-uuuu-uuuu-uuuuuuuuuuuu
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
/// $ pulumi import azure-native:mongocluster:User uuuuuuuu-uuuu-uuuu-uuuu-uuuuuuuuuuuu /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/mongoClusters/{mongoClusterName}/users/{userName}
/// ```
class User extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<UserPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_mongocluster_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:mongocluster:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<UserPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
