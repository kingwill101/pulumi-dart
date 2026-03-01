import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_desired_properties_response.dart';
import 'cluster_reported_properties_response.dart';
import 'isolated_vm_attestation_configuration_response.dart';
import 'log_collection_properties_response.dart';
import 'remote_support_properties_response.dart';
import 'software_assurance_properties_response.dart';
import 'system_data_response.dart';
import 'user_assigned_identity_response.dart';

/// Cluster details.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.AzureStackHCI.Cluster("cluster", new()
///     {
///         AadClientId = "24a6e53d-04e5-44d2-b7cc-1b732a847dfc",
///         AadTenantId = "7e589cc1-a8b6-4dff-91bd-5ec0fa18db94",
///         CloudManagementEndpoint = "https://98294836-31be-4668-aeae-698667faf99b.waconazure.com",
///         ClusterName = "myCluster",
///         Location = "East US",
///         ResourceGroupName = "test-rg",
///         Type = AzureNative.AzureStackHCI.ManagedServiceIdentityType.SystemAssigned,
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewCluster(ctx, "cluster", &azurestackhci.ClusterArgs{
/// 			AadClientId:             pulumi.String("24a6e53d-04e5-44d2-b7cc-1b732a847dfc"),
/// 			AadTenantId:             pulumi.String("7e589cc1-a8b6-4dff-91bd-5ec0fa18db94"),
/// 			CloudManagementEndpoint: pulumi.String("https://98294836-31be-4668-aeae-698667faf99b.waconazure.com"),
/// 			ClusterName:             pulumi.String("myCluster"),
/// 			Location:                pulumi.String("East US"),
/// 			ResourceGroupName:       pulumi.String("test-rg"),
/// 			Type:                    pulumi.String(azurestackhci.ManagedServiceIdentityTypeSystemAssigned),
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
/// import com.pulumi.azurenative.azurestackhci.Cluster;
/// import com.pulumi.azurenative.azurestackhci.ClusterArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .aadClientId("24a6e53d-04e5-44d2-b7cc-1b732a847dfc")
///             .aadTenantId("7e589cc1-a8b6-4dff-91bd-5ec0fa18db94")
///             .cloudManagementEndpoint("https://98294836-31be-4668-aeae-698667faf99b.waconazure.com")
///             .clusterName("myCluster")
///             .location("East US")
///             .resourceGroupName("test-rg")
///             .type("SystemAssigned")
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
/// const cluster = new azure_native.azurestackhci.Cluster("cluster", {
///     aadClientId: "24a6e53d-04e5-44d2-b7cc-1b732a847dfc",
///     aadTenantId: "7e589cc1-a8b6-4dff-91bd-5ec0fa18db94",
///     cloudManagementEndpoint: "https://98294836-31be-4668-aeae-698667faf99b.waconazure.com",
///     clusterName: "myCluster",
///     location: "East US",
///     resourceGroupName: "test-rg",
///     type: azure_native.azurestackhci.ManagedServiceIdentityType.SystemAssigned,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.azurestackhci.Cluster("cluster",
///     aad_client_id="24a6e53d-04e5-44d2-b7cc-1b732a847dfc",
///     aad_tenant_id="7e589cc1-a8b6-4dff-91bd-5ec0fa18db94",
///     cloud_management_endpoint="https://98294836-31be-4668-aeae-698667faf99b.waconazure.com",
///     cluster_name="myCluster",
///     location="East US",
///     resource_group_name="test-rg",
///     type=azure_native.azurestackhci.ManagedServiceIdentityType.SYSTEM_ASSIGNED)
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:azurestackhci:Cluster
///     properties:
///       aadClientId: 24a6e53d-04e5-44d2-b7cc-1b732a847dfc
///       aadTenantId: 7e589cc1-a8b6-4dff-91bd-5ec0fa18db94
///       cloudManagementEndpoint: https://98294836-31be-4668-aeae-698667faf99b.waconazure.com
///       clusterName: myCluster
///       location: East US
///       resourceGroupName: test-rg
///       type: SystemAssigned
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
/// $ pulumi import azure-native:azurestackhci:Cluster myCluster /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/clusters/{clusterName}
/// ```
class Cluster extends pulumi.CustomResource {
  /// Object id of cluster AAD identity.
  late final pulumi.Output<String?> aadApplicationObjectId;
  /// App id of cluster AAD identity.
  late final pulumi.Output<String?> aadClientId;
  /// Id of cluster identity service principal.
  late final pulumi.Output<String?> aadServicePrincipalObjectId;
  /// Tenant id of cluster AAD identity.
  late final pulumi.Output<String?> aadTenantId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Type of billing applied to the resource.
  late final pulumi.Output<String> billingModel;
  /// Unique, immutable resource id.
  late final pulumi.Output<String> cloudId;
  /// Endpoint configured for management from the Azure portal.
  late final pulumi.Output<String?> cloudManagementEndpoint;
  /// Overall connectivity status for the cluster resource.
  late final pulumi.Output<String> connectivityStatus;
  /// Desired properties of the cluster.
  late final pulumi.Output<ClusterDesiredPropertiesResponse?> desiredProperties;
  /// Attestation configurations for isolated VM (e.g. TVM, CVM) of the cluster.
  late final pulumi.Output<IsolatedVmAttestationConfigurationResponse> isolatedVmAttestationConfiguration;
  /// Most recent billing meter timestamp.
  late final pulumi.Output<String> lastBillingTimestamp;
  /// Most recent cluster sync timestamp.
  late final pulumi.Output<String> lastSyncTimestamp;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Log Collection properties of the cluster.
  late final pulumi.Output<LogCollectionPropertiesResponse?> logCollectionProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  late final pulumi.Output<String> principalId;
  /// Provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// First cluster sync timestamp.
  late final pulumi.Output<String> registrationTimestamp;
  /// RemoteSupport properties of the cluster.
  late final pulumi.Output<RemoteSupportPropertiesResponse?> remoteSupportProperties;
  /// Properties reported by cluster agent.
  late final pulumi.Output<ClusterReportedPropertiesResponse> reportedProperties;
  /// Object id of RP Service Principal
  late final pulumi.Output<String> resourceProviderObjectId;
  /// Region specific DataPath Endpoint of the cluster.
  late final pulumi.Output<String> serviceEndpoint;
  /// Software Assurance properties of the cluster.
  late final pulumi.Output<SoftwareAssurancePropertiesResponse?> softwareAssuranceProperties;
  /// Status of the cluster agent.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  late final pulumi.Output<String> tenantId;
  /// Number of days remaining in the trial period.
  late final pulumi.Output<double> trialDaysRemaining;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  late final pulumi.Output<Map<String, UserAssignedIdentityResponse>?> userAssignedIdentities;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_azurestackhci_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aadApplicationObjectId = registerOutput<String?>('aadApplicationObjectId');
    this.aadClientId = registerOutput<String?>('aadClientId');
    this.aadServicePrincipalObjectId = registerOutput<String?>('aadServicePrincipalObjectId');
    this.aadTenantId = registerOutput<String?>('aadTenantId');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.billingModel = registerOutput<String>('billingModel');
    this.cloudId = registerOutput<String>('cloudId');
    this.cloudManagementEndpoint = registerOutput<String?>('cloudManagementEndpoint');
    this.connectivityStatus = registerOutput<String>('connectivityStatus');
    this.desiredProperties = registerOutput<ClusterDesiredPropertiesResponse?>('desiredProperties');
    this.isolatedVmAttestationConfiguration = registerOutput<IsolatedVmAttestationConfigurationResponse>('isolatedVmAttestationConfiguration');
    this.lastBillingTimestamp = registerOutput<String>('lastBillingTimestamp');
    this.lastSyncTimestamp = registerOutput<String>('lastSyncTimestamp');
    this.location = registerOutput<String>('location');
    this.logCollectionProperties = registerOutput<LogCollectionPropertiesResponse?>('logCollectionProperties');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.registrationTimestamp = registerOutput<String>('registrationTimestamp');
    this.remoteSupportProperties = registerOutput<RemoteSupportPropertiesResponse?>('remoteSupportProperties');
    this.reportedProperties = registerOutput<ClusterReportedPropertiesResponse>('reportedProperties');
    this.resourceProviderObjectId = registerOutput<String>('resourceProviderObjectId');
    this.serviceEndpoint = registerOutput<String>('serviceEndpoint');
    this.softwareAssuranceProperties = registerOutput<SoftwareAssurancePropertiesResponse?>('softwareAssuranceProperties');
    this.status = registerOutput<String>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.trialDaysRemaining = registerOutput<double>('trialDaysRemaining');
    this.type = registerOutput<String>('type');
    this.userAssignedIdentities = registerOutput<Map<String, UserAssignedIdentityResponse>?>('userAssignedIdentities');
  }
}
