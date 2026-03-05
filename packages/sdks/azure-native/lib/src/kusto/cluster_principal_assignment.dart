import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_principal_assignment_args.dart';

/// Class representing a cluster principal assignment.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// Other available API versions: 2019-11-09, 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoClusterPrincipalAssignmentsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clusterPrincipalAssignment = new AzureNative.Kusto.ClusterPrincipalAssignment("clusterPrincipalAssignment", new()
///     {
///         ClusterName = "kustoCluster",
///         PrincipalAssignmentName = "kustoprincipal1",
///         PrincipalId = "87654321-1234-1234-1234-123456789123",
///         PrincipalType = AzureNative.Kusto.PrincipalType.App,
///         ResourceGroupName = "kustorptest",
///         Role = AzureNative.Kusto.ClusterPrincipalRole.AllDatabasesAdmin,
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
/// 		_, err := kusto.NewClusterPrincipalAssignment(ctx, "clusterPrincipalAssignment", &kusto.ClusterPrincipalAssignmentArgs{
/// 			ClusterName:             pulumi.String("kustoCluster"),
/// 			PrincipalAssignmentName: pulumi.String("kustoprincipal1"),
/// 			PrincipalId:             pulumi.String("87654321-1234-1234-1234-123456789123"),
/// 			PrincipalType:           pulumi.String(kusto.PrincipalTypeApp),
/// 			ResourceGroupName:       pulumi.String("kustorptest"),
/// 			Role:                    pulumi.String(kusto.ClusterPrincipalRoleAllDatabasesAdmin),
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
/// import com.pulumi.azurenative.kusto.ClusterPrincipalAssignment;
/// import com.pulumi.azurenative.kusto.ClusterPrincipalAssignmentArgs;
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
///         var clusterPrincipalAssignment = new ClusterPrincipalAssignment("clusterPrincipalAssignment", ClusterPrincipalAssignmentArgs.builder()
///             .clusterName("kustoCluster")
///             .principalAssignmentName("kustoprincipal1")
///             .principalId("87654321-1234-1234-1234-123456789123")
///             .principalType("App")
///             .resourceGroupName("kustorptest")
///             .role("AllDatabasesAdmin")
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
/// const clusterPrincipalAssignment = new azure_native.kusto.ClusterPrincipalAssignment("clusterPrincipalAssignment", {
///     clusterName: "kustoCluster",
///     principalAssignmentName: "kustoprincipal1",
///     principalId: "87654321-1234-1234-1234-123456789123",
///     principalType: azure_native.kusto.PrincipalType.App,
///     resourceGroupName: "kustorptest",
///     role: azure_native.kusto.ClusterPrincipalRole.AllDatabasesAdmin,
///     tenantId: "12345678-1234-1234-1234-123456789123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster_principal_assignment = azure_native.kusto.ClusterPrincipalAssignment("clusterPrincipalAssignment",
///     cluster_name="kustoCluster",
///     principal_assignment_name="kustoprincipal1",
///     principal_id="87654321-1234-1234-1234-123456789123",
///     principal_type=azure_native.kusto.PrincipalType.APP,
///     resource_group_name="kustorptest",
///     role=azure_native.kusto.ClusterPrincipalRole.ALL_DATABASES_ADMIN,
///     tenant_id="12345678-1234-1234-1234-123456789123")
///
/// ```
///
/// ```yaml
/// resources:
///   clusterPrincipalAssignment:
///     type: azure-native:kusto:ClusterPrincipalAssignment
///     properties:
///       clusterName: kustoCluster
///       principalAssignmentName: kustoprincipal1
///       principalId: 87654321-1234-1234-1234-123456789123
///       principalType: App
///       resourceGroupName: kustorptest
///       role: AllDatabasesAdmin
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
/// $ pulumi import azure-native:kusto:ClusterPrincipalAssignment kustoCluster/kustoprincipal1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/principalAssignments/{principalAssignmentName}
/// ```
class ClusterPrincipalAssignment extends pulumi.CustomResource {
  /// The service principal object id in AAD (Azure active directory)
  late final pulumi.Output<String> aadObjectId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name.
  late final pulumi.Output<String> principalId;
  /// The principal name
  late final pulumi.Output<String> principalName;
  /// Principal type.
  late final pulumi.Output<String> principalType;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Cluster principal role.
  late final pulumi.Output<String> role;
  /// The tenant id of the principal
  late final pulumi.Output<String?> tenantId;
  /// The tenant name of the principal
  late final pulumi.Output<String> tenantName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ClusterPrincipalAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterPrincipalAssignment]. {@macro pulumi_kusto_cluster_principal_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterPrincipalAssignment(
    String name, {
    ClusterPrincipalAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:ClusterPrincipalAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aadObjectId = registerOutput<String>('aadObjectId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String>('principalId');
    principalName = registerOutput<String>('principalName');
    principalType = registerOutput<String>('principalType');
    provisioningState = registerOutput<String>('provisioningState');
    role = registerOutput<String>('role');
    tenantId = registerOutput<String?>('tenantId');
    tenantName = registerOutput<String>('tenantName');
    type = registerOutput<String>('type');
  }
}
