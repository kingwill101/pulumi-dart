import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_identity_response.dart';
import 'user_secret_store_response.dart';

/// Profile of a lab user.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Users_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user = new AzureNative.DevTestLab.User("user", new()
///     {
///         Identity = new AzureNative.DevTestLab.Inputs.UserIdentityArgs
///         {
///             AppId = "{appId}",
///             ObjectId = "{objectId}",
///             PrincipalId = "{principalId}",
///             PrincipalName = "{principalName}",
///             TenantId = "{tenantId}",
///         },
///         LabName = "{devtestlabName}",
///         Location = "{location}",
///         Name = "{userName}",
///         ResourceGroupName = "resourceGroupName",
///         SecretStore = new AzureNative.DevTestLab.Inputs.UserSecretStoreArgs
///         {
///             KeyVaultId = "{keyVaultId}",
///             KeyVaultUri = "{keyVaultUri}",
///         },
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewUser(ctx, "user", &devtestlab.UserArgs{
/// 			Identity: &devtestlab.UserIdentityArgs{
/// 				AppId:         pulumi.String("{appId}"),
/// 				ObjectId:      pulumi.String("{objectId}"),
/// 				PrincipalId:   pulumi.String("{principalId}"),
/// 				PrincipalName: pulumi.String("{principalName}"),
/// 				TenantId:      pulumi.String("{tenantId}"),
/// 			},
/// 			LabName:           pulumi.String("{devtestlabName}"),
/// 			Location:          pulumi.String("{location}"),
/// 			Name:              pulumi.String("{userName}"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			SecretStore: &devtestlab.UserSecretStoreArgs{
/// 				KeyVaultId:  pulumi.String("{keyVaultId}"),
/// 				KeyVaultUri: pulumi.String("{keyVaultUri}"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
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
/// import com.pulumi.azurenative.devtestlab.User;
/// import com.pulumi.azurenative.devtestlab.UserArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.UserIdentityArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.UserSecretStoreArgs;
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
///             .identity(UserIdentityArgs.builder()
///                 .appId("{appId}")
///                 .objectId("{objectId}")
///                 .principalId("{principalId}")
///                 .principalName("{principalName}")
///                 .tenantId("{tenantId}")
///                 .build())
///             .labName("{devtestlabName}")
///             .location("{location}")
///             .name("{userName}")
///             .resourceGroupName("resourceGroupName")
///             .secretStore(UserSecretStoreArgs.builder()
///                 .keyVaultId("{keyVaultId}")
///                 .keyVaultUri("{keyVaultUri}")
///                 .build())
///             .tags(Map.of("tagName1", "tagValue1"))
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
/// const user = new azure_native.devtestlab.User("user", {
///     identity: {
///         appId: "{appId}",
///         objectId: "{objectId}",
///         principalId: "{principalId}",
///         principalName: "{principalName}",
///         tenantId: "{tenantId}",
///     },
///     labName: "{devtestlabName}",
///     location: "{location}",
///     name: "{userName}",
///     resourceGroupName: "resourceGroupName",
///     secretStore: {
///         keyVaultId: "{keyVaultId}",
///         keyVaultUri: "{keyVaultUri}",
///     },
///     tags: {
///         tagName1: "tagValue1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// user = azure_native.devtestlab.User("user",
///     identity={
///         "app_id": "{appId}",
///         "object_id": "{objectId}",
///         "principal_id": "{principalId}",
///         "principal_name": "{principalName}",
///         "tenant_id": "{tenantId}",
///     },
///     lab_name="{devtestlabName}",
///     location="{location}",
///     name="{userName}",
///     resource_group_name="resourceGroupName",
///     secret_store={
///         "key_vault_id": "{keyVaultId}",
///         "key_vault_uri": "{keyVaultUri}",
///     },
///     tags={
///         "tagName1": "tagValue1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   user:
///     type: azure-native:devtestlab:User
///     properties:
///       identity:
///         appId: '{appId}'
///         objectId: '{objectId}'
///         principalId: '{principalId}'
///         principalName: '{principalName}'
///         tenantId: '{tenantId}'
///       labName: '{devtestlabName}'
///       location: '{location}'
///       name: '{userName}'
///       resourceGroupName: resourceGroupName
///       secretStore:
///         keyVaultId: '{keyVaultId}'
///         keyVaultUri: '{keyVaultUri}'
///       tags:
///         tagName1: tagValue1
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
/// $ pulumi import azure-native:devtestlab:User {userName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/users/{name}
/// ```
class User extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of the user profile.
  late final pulumi.Output<String> createdDate;
  /// The identity of the user.
  late final pulumi.Output<UserIdentityResponse?> identity;
  /// The location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The secret store of the user.
  late final pulumi.Output<UserSecretStoreResponse?> secretStore;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_devtestlab_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String>('createdDate');
    identity = registerOutput<UserIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    secretStore = registerOutput<UserSecretStoreResponse?>('secretStore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserSecretStoreResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
  }
}
