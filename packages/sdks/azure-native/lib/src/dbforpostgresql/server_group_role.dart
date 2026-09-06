import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_role_args.dart';
import 'system_data_response.dart';

/// Represents a cluster role.
///
/// Uses Azure REST API version 2023-03-02-preview.
///
/// Other available API versions: 2022-11-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RoleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverGroupRole = new AzureNative.DBforPostgreSQL.ServerGroupRole("serverGroupRole", new()
///     {
///         ClusterName = "pgtestsvc4",
///         Password = "password",
///         ResourceGroupName = "TestGroup",
///         RoleName = "role1",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewServerGroupRole(ctx, "serverGroupRole", &dbforpostgresql.ServerGroupRoleArgs{
/// 			ClusterName:       pulumi.String("pgtestsvc4"),
/// 			Password:          pulumi.String("password"),
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			RoleName:          pulumi.String("role1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbforpostgresql_servergrouprole" "serverGroupRole" {
///   cluster_name        = "pgtestsvc4"
///   password            = "password"
///   resource_group_name = "TestGroup"
///   role_name           = "role1"
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
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupRole;
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupRoleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var serverGroupRole = new ServerGroupRole("serverGroupRole", ServerGroupRoleArgs.builder()
///             .clusterName("pgtestsvc4")
///             .password("password")
///             .resourceGroupName("TestGroup")
///             .roleName("role1")
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
/// const serverGroupRole = new azure_native.dbforpostgresql.ServerGroupRole("serverGroupRole", {
///     clusterName: "pgtestsvc4",
///     password: "password",
///     resourceGroupName: "TestGroup",
///     roleName: "role1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_group_role = azure_native.dbforpostgresql.ServerGroupRole("serverGroupRole",
///     cluster_name="pgtestsvc4",
///     password="password",
///     resource_group_name="TestGroup",
///     role_name="role1")
///
/// ```
///
/// ```yaml
/// resources:
///   serverGroupRole:
///     type: azure-native:dbforpostgresql:ServerGroupRole
///     properties:
///       clusterName: pgtestsvc4
///       password: password
///       resourceGroupName: TestGroup
///       roleName: role1
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
/// $ pulumi import azure-native:dbforpostgresql:ServerGroupRole role1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/{clusterName}/roles/{roleName}
/// ```
class ServerGroupRole extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A type definition that refers the id to an Azure Resource Manager resource.
  late final pulumi.Output<String> objectId;
  late final pulumi.Output<String> principalType;
  /// Provisioning state of the role
  late final pulumi.Output<String> provisioningState;
  late final pulumi.Output<String?> roleType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// A type definition that refers the id to an Azure Resource Manager resource.
  late final pulumi.Output<String?> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServerGroupRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroupRole]. {@macro pulumi_dbforpostgresql_server_group_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroupRole(
    String name, {
    ServerGroupRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:ServerGroupRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String>('objectId');
    principalType = registerOutput<String>('principalType');
    provisioningState = registerOutput<String>('provisioningState');
    roleType = registerOutput<String?>('roleType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ServerGroupRole] resource.
  ServerGroupRole.reference(String urn)
    : super(
        'azure-native:dbforpostgresql:ServerGroupRole',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String>('objectId');
    principalType = registerOutput<String>('principalType');
    provisioningState = registerOutput<String>('provisioningState');
    roleType = registerOutput<String?>('roleType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
