import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'user_assigned_identity_args.dart';

/// Describes an identity resource.
///
/// Uses Azure REST API version 2023-01-31. In version 2.x of the Azure Native provider, it used API version 2023-01-31.
///
/// Other available API versions: 2022-01-31-preview, 2023-07-31-preview, 2024-11-30, 2025-01-31-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managedidentity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IdentityCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var userAssignedIdentity = new AzureNative.ManagedIdentity.UserAssignedIdentity("userAssignedIdentity", new()
///     {
///         Location = "eastus",
///         ResourceGroupName = "rgName",
///         ResourceName = "resourceName",
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	managedidentity "github.com/pulumi/pulumi-azure-native-sdk/managedidentity/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managedidentity.NewUserAssignedIdentity(ctx, "userAssignedIdentity", &managedidentity.UserAssignedIdentityArgs{
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("rgName"),
/// 			ResourceName:      pulumi.String("resourceName"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// import com.pulumi.azurenative.managedidentity.UserAssignedIdentity;
/// import com.pulumi.azurenative.managedidentity.UserAssignedIdentityArgs;
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
///         var userAssignedIdentity = new UserAssignedIdentity("userAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .location("eastus")
///             .resourceGroupName("rgName")
///             .resourceName("resourceName")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
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
/// const userAssignedIdentity = new azure_native.managedidentity.UserAssignedIdentity("userAssignedIdentity", {
///     location: "eastus",
///     resourceGroupName: "rgName",
///     resourceName: "resourceName",
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// user_assigned_identity = azure_native.managedidentity.UserAssignedIdentity("userAssignedIdentity",
///     location="eastus",
///     resource_group_name="rgName",
///     resource_name_="resourceName",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   userAssignedIdentity:
///     type: azure-native:managedidentity:UserAssignedIdentity
///     properties:
///       location: eastus
///       resourceGroupName: rgName
///       resourceName: resourceName
///       tags:
///         key1: value1
///         key2: value2
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
/// $ pulumi import azure-native:managedidentity:UserAssignedIdentity identityName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{resourceName}
/// ```
class UserAssignedIdentity extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The id of the app associated with the identity. This is a random generated UUID by MSI.
  late final pulumi.Output<String> clientId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The id of the service principal object associated with the created identity.
  late final pulumi.Output<String> principalId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The id of the tenant which the identity belongs to.
  late final pulumi.Output<String> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [UserAssignedIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserAssignedIdentity]. {@macro pulumi_managedidentity_user_assigned_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserAssignedIdentity(
    String name, {
    UserAssignedIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managedidentity:UserAssignedIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientId = registerOutput<String>('clientId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String>('principalId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
