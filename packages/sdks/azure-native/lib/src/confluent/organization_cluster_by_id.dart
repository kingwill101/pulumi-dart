import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_status_entity_response.dart';
import 'organization_cluster_by_id_args.dart';
import 'sccluster_spec_entity_response.dart';
import 'scmetadata_entity_response.dart';
import 'system_data_response.dart';

/// Details of cluster record
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2024-07-01.
///
/// Other available API versions: 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Cluster_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var organizationClusterById = new AzureNative.Confluent.OrganizationClusterById("organizationClusterById", new()
///     {
///         ClusterId = "cluster-1",
///         EnvironmentId = "env-1",
///         OrganizationName = "myOrganization",
///         ResourceGroupName = "myResourceGroup",
///         Spec = new AzureNative.Confluent.Inputs.SCClusterSpecEntityArgs
///         {
///             Environment = new AzureNative.Confluent.Inputs.SCClusterNetworkEnvironmentEntityArgs
///             {
///                 Id = "env-1",
///             },
///             Package = AzureNative.Confluent.Package.ESSENTIALS,
///             Region = "us-east4",
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
/// 	confluent "github.com/pulumi/pulumi-azure-native-sdk/confluent/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := confluent.NewOrganizationClusterById(ctx, "organizationClusterById", &confluent.OrganizationClusterByIdArgs{
/// 			ClusterId:         pulumi.String("cluster-1"),
/// 			EnvironmentId:     pulumi.String("env-1"),
/// 			OrganizationName:  pulumi.String("myOrganization"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Spec: &confluent.SCClusterSpecEntityArgs{
/// 				Environment: &confluent.SCClusterNetworkEnvironmentEntityArgs{
/// 					Id: pulumi.String("env-1"),
/// 				},
/// 				Package: pulumi.String(confluent.PackageESSENTIALS),
/// 				Region:  pulumi.String("us-east4"),
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
/// import com.pulumi.azurenative.confluent.OrganizationClusterById;
/// import com.pulumi.azurenative.confluent.OrganizationClusterByIdArgs;
/// import com.pulumi.azurenative.confluent.inputs.SCClusterSpecEntityArgs;
/// import com.pulumi.azurenative.confluent.inputs.SCClusterNetworkEnvironmentEntityArgs;
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
///         var organizationClusterById = new OrganizationClusterById("organizationClusterById", OrganizationClusterByIdArgs.builder()
///             .clusterId("cluster-1")
///             .environmentId("env-1")
///             .organizationName("myOrganization")
///             .resourceGroupName("myResourceGroup")
///             .spec(SCClusterSpecEntityArgs.builder()
///                 .environment(SCClusterNetworkEnvironmentEntityArgs.builder()
///                     .id("env-1")
///                     .build())
///                 .package_("ESSENTIALS")
///                 .region("us-east4")
///                 .build())
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
/// const organizationClusterById = new azure_native.confluent.OrganizationClusterById("organizationClusterById", {
///     clusterId: "cluster-1",
///     environmentId: "env-1",
///     organizationName: "myOrganization",
///     resourceGroupName: "myResourceGroup",
///     spec: {
///         environment: {
///             id: "env-1",
///         },
///         "package": azure_native.confluent.Package.ESSENTIALS,
///         region: "us-east4",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// organization_cluster_by_id = azure_native.confluent.OrganizationClusterById("organizationClusterById",
///     cluster_id="cluster-1",
///     environment_id="env-1",
///     organization_name="myOrganization",
///     resource_group_name="myResourceGroup",
///     spec={
///         "environment": {
///             "id": "env-1",
///         },
///         "package": azure_native.confluent.Package.ESSENTIALS,
///         "region": "us-east4",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   organizationClusterById:
///     type: azure-native:confluent:OrganizationClusterById
///     properties:
///       clusterId: cluster-1
///       environmentId: env-1
///       organizationName: myOrganization
///       resourceGroupName: myResourceGroup
///       spec:
///         environment:
///           id: env-1
///         package: ESSENTIALS
///         region: us-east4
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
/// $ pulumi import azure-native:confluent:OrganizationClusterById cluster-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Confluent/organizations/{organizationName}/environments/{environmentId}/clusters/{clusterId}
/// ```
class OrganizationClusterById extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Type of cluster
  late final pulumi.Output<String?> kind;
  /// Metadata of the record
  late final pulumi.Output<SCMetadataEntityResponse?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specification of the cluster
  late final pulumi.Output<SCClusterSpecEntityResponse?> spec;
  /// Specification of the cluster status
  late final pulumi.Output<ClusterStatusEntityResponse?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OrganizationClusterById].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationClusterById]. {@macro pulumi_confluent_organization_cluster_by_id_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationClusterById(
    String name, {
    OrganizationClusterByIdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:confluent:OrganizationClusterById',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<SCMetadataEntityResponse?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SCMetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    spec = registerOutput<SCClusterSpecEntityResponse?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SCClusterSpecEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ClusterStatusEntityResponse?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterStatusEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
