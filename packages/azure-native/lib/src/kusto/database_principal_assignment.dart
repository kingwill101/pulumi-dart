import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_principal_assignment_args.dart';

/// Class representing a database principal assignment.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// Other available API versions: 2019-11-09, 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoDatabasePrincipalAssignmentsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databasePrincipalAssignment = new AzureNative.Kusto.DatabasePrincipalAssignment("databasePrincipalAssignment", new()
///     {
///         ClusterName = "kustoCluster",
///         DatabaseName = "Kustodatabase8",
///         PrincipalAssignmentName = "kustoprincipal1",
///         PrincipalId = "87654321-1234-1234-1234-123456789123",
///         PrincipalType = AzureNative.Kusto.PrincipalType.App,
///         ResourceGroupName = "kustorptest",
///         Role = AzureNative.Kusto.DatabasePrincipalRole.Admin,
///         TenantId = "12345678-1234-1234-1234-123456789123",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewDatabasePrincipalAssignment(ctx, "databasePrincipalAssignment", &kusto.DatabasePrincipalAssignmentArgs{
/// 			ClusterName:             pulumi.String("kustoCluster"),
/// 			DatabaseName:            pulumi.String("Kustodatabase8"),
/// 			PrincipalAssignmentName: pulumi.String("kustoprincipal1"),
/// 			PrincipalId:             pulumi.String("87654321-1234-1234-1234-123456789123"),
/// 			PrincipalType:           pulumi.String(kusto.PrincipalTypeApp),
/// 			ResourceGroupName:       pulumi.String("kustorptest"),
/// 			Role:                    pulumi.String(kusto.DatabasePrincipalRoleAdmin),
/// 			TenantId:                pulumi.String("12345678-1234-1234-1234-123456789123"),
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
/// import com.pulumi.azurenative.kusto.DatabasePrincipalAssignment;
/// import com.pulumi.azurenative.kusto.DatabasePrincipalAssignmentArgs;
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
///         var databasePrincipalAssignment = new DatabasePrincipalAssignment("databasePrincipalAssignment", DatabasePrincipalAssignmentArgs.builder()
///             .clusterName("kustoCluster")
///             .databaseName("Kustodatabase8")
///             .principalAssignmentName("kustoprincipal1")
///             .principalId("87654321-1234-1234-1234-123456789123")
///             .principalType("App")
///             .resourceGroupName("kustorptest")
///             .role("Admin")
///             .tenantId("12345678-1234-1234-1234-123456789123")
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
/// const databasePrincipalAssignment = new azure_native.kusto.DatabasePrincipalAssignment("databasePrincipalAssignment", {
///     clusterName: "kustoCluster",
///     databaseName: "Kustodatabase8",
///     principalAssignmentName: "kustoprincipal1",
///     principalId: "87654321-1234-1234-1234-123456789123",
///     principalType: azure_native.kusto.PrincipalType.App,
///     resourceGroupName: "kustorptest",
///     role: azure_native.kusto.DatabasePrincipalRole.Admin,
///     tenantId: "12345678-1234-1234-1234-123456789123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_principal_assignment = azure_native.kusto.DatabasePrincipalAssignment("databasePrincipalAssignment",
///     cluster_name="kustoCluster",
///     database_name="Kustodatabase8",
///     principal_assignment_name="kustoprincipal1",
///     principal_id="87654321-1234-1234-1234-123456789123",
///     principal_type=azure_native.kusto.PrincipalType.APP,
///     resource_group_name="kustorptest",
///     role=azure_native.kusto.DatabasePrincipalRole.ADMIN,
///     tenant_id="12345678-1234-1234-1234-123456789123")
///
/// ```
///
/// ```yaml
/// resources:
///   databasePrincipalAssignment:
///     type: azure-native:kusto:DatabasePrincipalAssignment
///     properties:
///       clusterName: kustoCluster
///       databaseName: Kustodatabase8
///       principalAssignmentName: kustoprincipal1
///       principalId: 87654321-1234-1234-1234-123456789123
///       principalType: App
///       resourceGroupName: kustorptest
///       role: Admin
///       tenantId: 12345678-1234-1234-1234-123456789123
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
/// $ pulumi import azure-native:kusto:DatabasePrincipalAssignment kustoCluster/Kustodatabase8/kustoprincipal1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/databases/{databaseName}/principalAssignments/{principalAssignmentName}
/// ```
class DatabasePrincipalAssignment extends pulumi.CustomResource {
  /// The service principal object id in AAD (Azure active directory)
  late final pulumi.Output<String> aadObjectId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The principal ID assigned to the database principal. It can be a user email, application ID, or security group name.
  late final pulumi.Output<String> principalId;
  /// The principal name
  late final pulumi.Output<String> principalName;
  /// Principal type.
  late final pulumi.Output<String> principalType;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Database principal role.
  late final pulumi.Output<String> role;
  /// The tenant id of the principal
  late final pulumi.Output<String?> tenantId;
  /// The tenant name of the principal
  late final pulumi.Output<String> tenantName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DatabasePrincipalAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabasePrincipalAssignment]. {@macro pulumi_kusto_database_principal_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabasePrincipalAssignment(
    String name, {
    DatabasePrincipalAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:DatabasePrincipalAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aadObjectId = registerOutput<String>('aadObjectId');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.principalName = registerOutput<String>('principalName');
    this.principalType = registerOutput<String>('principalType');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.role = registerOutput<String>('role');
    this.tenantId = registerOutput<String?>('tenantId');
    this.tenantName = registerOutput<String>('tenantName');
    this.type = registerOutput<String>('type');
  }
}
