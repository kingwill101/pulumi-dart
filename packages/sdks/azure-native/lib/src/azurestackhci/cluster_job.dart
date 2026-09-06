import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_job_args.dart';
import 'system_data_response.dart';

/// Cluster Jobs resource
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2026-02-15-preview, 2026-04-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ClusterJobs_CreateOrUpdate_ConfigureCVMJob
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clusterJob = new AzureNative.AzureStackHCI.ClusterJob("clusterJob", new()
///     {
///         ClusterName = "myCluster",
///         JobsName = "ConfigureCVM",
///         Properties = new AzureNative.AzureStackHCI.Inputs.HciConfigureCvmJobPropertiesArgs
///         {
///             ConfidentialVmIntent = AzureNative.AzureStackHCI.ConfidentialVmIntent.Enable,
///             DeploymentMode = AzureNative.AzureStackHCI.DeploymentMode.Deploy,
///             JobType = "ConfigureCVM",
///         },
///         ResourceGroupName = "test-rg",
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
/// 		_, err := azurestackhci.NewClusterJob(ctx, "clusterJob", &azurestackhci.ClusterJobArgs{
/// 			ClusterName: pulumi.String("myCluster"),
/// 			JobsName:    pulumi.String("ConfigureCVM"),
/// 			Properties: &azurestackhci.HciConfigureCvmJobPropertiesArgs{
/// 				ConfidentialVmIntent: pulumi.String(azurestackhci.ConfidentialVmIntentEnable),
/// 				DeploymentMode:       pulumi.String(azurestackhci.DeploymentModeDeploy),
/// 				JobType:              pulumi.String("ConfigureCVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// resource "azure-native_azurestackhci_clusterjob" "clusterJob" {
///   cluster_name = "myCluster"
///   jobs_name    = "ConfigureCVM"
///   properties = {
///     "confidentialVmIntent" = "Enable"
///     "deploymentMode"       = "Deploy"
///     "jobType"              = "ConfigureCVM"
///   }
///   resource_group_name = "test-rg"
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
/// import com.pulumi.azurenative.azurestackhci.ClusterJob;
/// import com.pulumi.azurenative.azurestackhci.ClusterJobArgs;
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
///         var clusterJob = new ClusterJob("clusterJob", ClusterJobArgs.builder()
///             .clusterName("myCluster")
///             .jobsName("ConfigureCVM")
///             .properties(HciConfigureCvmJobPropertiesArgs.builder()
///                 .confidentialVmIntent("Enable")
///                 .deploymentMode("Deploy")
///                 .jobType("ConfigureCVM")
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const clusterJob = new azure_native.azurestackhci.ClusterJob("clusterJob", {
///     clusterName: "myCluster",
///     jobsName: "ConfigureCVM",
///     properties: {
///         confidentialVmIntent: azure_native.azurestackhci.ConfidentialVmIntent.Enable,
///         deploymentMode: azure_native.azurestackhci.DeploymentMode.Deploy,
///         jobType: "ConfigureCVM",
///     },
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster_job = azure_native.azurestackhci.ClusterJob("clusterJob",
///     cluster_name="myCluster",
///     jobs_name="ConfigureCVM",
///     properties={
///         "confidential_vm_intent": azure_native.azurestackhci.ConfidentialVmIntent.ENABLE,
///         "deployment_mode": azure_native.azurestackhci.DeploymentMode.DEPLOY,
///         "job_type": "ConfigureCVM",
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   clusterJob:
///     type: azure-native:azurestackhci:ClusterJob
///     properties:
///       clusterName: myCluster
///       jobsName: ConfigureCVM
///       properties:
///         confidentialVmIntent: Enable
///         deploymentMode: Deploy
///         jobType: ConfigureCVM
///       resourceGroupName: test-rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ClusterJobs_CreateOrUpdate_ConfigureSdnIntegration_Enable
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clusterJob = new AzureNative.AzureStackHCI.ClusterJob("clusterJob", new()
///     {
///         ClusterName = "myCluster",
///         JobsName = "configureSdnIntegration",
///         Properties = new AzureNative.AzureStackHCI.Inputs.HciConfigureSdnIntegrationJobPropertiesArgs
///         {
///             DeploymentMode = AzureNative.AzureStackHCI.DeploymentMode.Deploy,
///             JobType = "ConfigureSdnIntegration",
///             SdnIntegrationIntent = AzureNative.AzureStackHCI.SdnIntegrationIntent.Enable,
///         },
///         ResourceGroupName = "test-rg",
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
/// 		_, err := azurestackhci.NewClusterJob(ctx, "clusterJob", &azurestackhci.ClusterJobArgs{
/// 			ClusterName: pulumi.String("myCluster"),
/// 			JobsName:    pulumi.String("configureSdnIntegration"),
/// 			Properties: &azurestackhci.HciConfigureSdnIntegrationJobPropertiesArgs{
/// 				DeploymentMode:       pulumi.String(azurestackhci.DeploymentModeDeploy),
/// 				JobType:              pulumi.String("ConfigureSdnIntegration"),
/// 				SdnIntegrationIntent: pulumi.String(azurestackhci.SdnIntegrationIntentEnable),
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// resource "azure-native_azurestackhci_clusterjob" "clusterJob" {
///   cluster_name = "myCluster"
///   jobs_name    = "configureSdnIntegration"
///   properties = {
///     "deploymentMode"       = "Deploy"
///     "jobType"              = "ConfigureSdnIntegration"
///     "sdnIntegrationIntent" = "Enable"
///   }
///   resource_group_name = "test-rg"
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
/// import com.pulumi.azurenative.azurestackhci.ClusterJob;
/// import com.pulumi.azurenative.azurestackhci.ClusterJobArgs;
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
///         var clusterJob = new ClusterJob("clusterJob", ClusterJobArgs.builder()
///             .clusterName("myCluster")
///             .jobsName("configureSdnIntegration")
///             .properties(HciConfigureSdnIntegrationJobPropertiesArgs.builder()
///                 .deploymentMode("Deploy")
///                 .jobType("ConfigureSdnIntegration")
///                 .sdnIntegrationIntent("Enable")
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const clusterJob = new azure_native.azurestackhci.ClusterJob("clusterJob", {
///     clusterName: "myCluster",
///     jobsName: "configureSdnIntegration",
///     properties: {
///         deploymentMode: azure_native.azurestackhci.DeploymentMode.Deploy,
///         jobType: "ConfigureSdnIntegration",
///         sdnIntegrationIntent: azure_native.azurestackhci.SdnIntegrationIntent.Enable,
///     },
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster_job = azure_native.azurestackhci.ClusterJob("clusterJob",
///     cluster_name="myCluster",
///     jobs_name="configureSdnIntegration",
///     properties={
///         "deployment_mode": azure_native.azurestackhci.DeploymentMode.DEPLOY,
///         "job_type": "ConfigureSdnIntegration",
///         "sdn_integration_intent": azure_native.azurestackhci.SdnIntegrationIntent.ENABLE,
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   clusterJob:
///     type: azure-native:azurestackhci:ClusterJob
///     properties:
///       clusterName: myCluster
///       jobsName: configureSdnIntegration
///       properties:
///         deploymentMode: Deploy
///         jobType: ConfigureSdnIntegration
///         sdnIntegrationIntent: Enable
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:azurestackhci:ClusterJob configureSdnIntegration /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/clusters/{clusterName}/jobs/{jobsName}
/// ```
class ClusterJob extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<dynamic> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ClusterJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterJob]. {@macro pulumi_azurestackhci_cluster_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterJob(
    String name, {
    ClusterJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:ClusterJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ClusterJob] resource.
  ClusterJob.reference(String urn)
    : super(
        'azure-native:azurestackhci:ClusterJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
