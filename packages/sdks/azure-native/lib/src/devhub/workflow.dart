import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_workflow_profile_response.dart';
import 'system_data_response.dart';
import 'workflow_args.dart';

/// Resource representation of a workflow
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2022-10-11-preview.
///
/// Other available API versions: 2022-10-11-preview, 2024-05-01-preview, 2024-08-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Workflow
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workflow = new AzureNative.DevHub.Workflow("workflow", new()
///     {
///         GithubWorkflowProfile = new AzureNative.DevHub.Inputs.GitHubWorkflowProfileArgs
///         {
///             Acr = new AzureNative.DevHub.Inputs.ACRArgs
///             {
///                 AcrRegistryName = "registry1",
///                 AcrRepositoryName = "repo1",
///                 AcrResourceGroup = "resourceGroup1",
///                 AcrSubscriptionId = "subscriptionId1",
///             },
///             AksResourceId = "/subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1",
///             BranchName = "branch1",
///             DeploymentProperties = new AzureNative.DevHub.Inputs.DeploymentPropertiesArgs
///             {
///                 KubeManifestLocations = new[]
///                 {
///                     "/src/manifests/",
///                 },
///                 ManifestType = AzureNative.DevHub.ManifestType.Kube,
///                 Overrides =
///                 {
///                     { "key1", "value1" },
///                 },
///             },
///             DockerBuildContext = "repo1/src/",
///             Dockerfile = "repo1/images/Dockerfile",
///             Namespace = "namespace1",
///             OidcCredentials = new AzureNative.DevHub.Inputs.GitHubWorkflowProfileOidcCredentialsArgs
///             {
///                 AzureClientId = "12345678-3456-7890-5678-012345678901",
///                 AzureTenantId = "66666666-3456-7890-5678-012345678901",
///             },
///             RepositoryName = "repo1",
///             RepositoryOwner = "owner1",
///         },
///         Location = "location1",
///         ResourceGroupName = "resourceGroup1",
///         Tags =
///         {
///             { "appname", "testApp" },
///         },
///         WorkflowName = "workflow1",
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
/// 	devhub "github.com/pulumi/pulumi-azure-native-sdk/devhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devhub.NewWorkflow(ctx, "workflow", &devhub.WorkflowArgs{
/// 			GithubWorkflowProfile: &devhub.GitHubWorkflowProfileArgs{
/// 				Acr: &devhub.ACRArgs{
/// 					AcrRegistryName:   pulumi.String("registry1"),
/// 					AcrRepositoryName: pulumi.String("repo1"),
/// 					AcrResourceGroup:  pulumi.String("resourceGroup1"),
/// 					AcrSubscriptionId: pulumi.String("subscriptionId1"),
/// 				},
/// 				AksResourceId: pulumi.String("/subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1"),
/// 				BranchName:    pulumi.String("branch1"),
/// 				DeploymentProperties: &devhub.DeploymentPropertiesArgs{
/// 					KubeManifestLocations: pulumi.StringArray{
/// 						pulumi.String("/src/manifests/"),
/// 					},
/// 					ManifestType: pulumi.String(devhub.ManifestTypeKube),
/// 					Overrides: pulumi.StringMap{
/// 						"key1": pulumi.String("value1"),
/// 					},
/// 				},
/// 				DockerBuildContext: pulumi.String("repo1/src/"),
/// 				Dockerfile:         pulumi.String("repo1/images/Dockerfile"),
/// 				Namespace:          pulumi.String("namespace1"),
/// 				OidcCredentials: &devhub.GitHubWorkflowProfileOidcCredentialsArgs{
/// 					AzureClientId: pulumi.String("12345678-3456-7890-5678-012345678901"),
/// 					AzureTenantId: pulumi.String("66666666-3456-7890-5678-012345678901"),
/// 				},
/// 				RepositoryName:  pulumi.String("repo1"),
/// 				RepositoryOwner: pulumi.String("owner1"),
/// 			},
/// 			Location:          pulumi.String("location1"),
/// 			ResourceGroupName: pulumi.String("resourceGroup1"),
/// 			Tags: pulumi.StringMap{
/// 				"appname": pulumi.String("testApp"),
/// 			},
/// 			WorkflowName: pulumi.String("workflow1"),
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
/// import com.pulumi.azurenative.devhub.Workflow;
/// import com.pulumi.azurenative.devhub.WorkflowArgs;
/// import com.pulumi.azurenative.devhub.inputs.GitHubWorkflowProfileArgs;
/// import com.pulumi.azurenative.devhub.inputs.ACRArgs;
/// import com.pulumi.azurenative.devhub.inputs.DeploymentPropertiesArgs;
/// import com.pulumi.azurenative.devhub.inputs.GitHubWorkflowProfileOidcCredentialsArgs;
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
///         var workflow = new Workflow("workflow", WorkflowArgs.builder()
///             .githubWorkflowProfile(GitHubWorkflowProfileArgs.builder()
///                 .acr(ACRArgs.builder()
///                     .acrRegistryName("registry1")
///                     .acrRepositoryName("repo1")
///                     .acrResourceGroup("resourceGroup1")
///                     .acrSubscriptionId("subscriptionId1")
///                     .build())
///                 .aksResourceId("/subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1")
///                 .branchName("branch1")
///                 .deploymentProperties(DeploymentPropertiesArgs.builder()
///                     .kubeManifestLocations("/src/manifests/")
///                     .manifestType("kube")
///                     .overrides(Map.of("key1", "value1"))
///                     .build())
///                 .dockerBuildContext("repo1/src/")
///                 .dockerfile("repo1/images/Dockerfile")
///                 .namespace("namespace1")
///                 .oidcCredentials(GitHubWorkflowProfileOidcCredentialsArgs.builder()
///                     .azureClientId("12345678-3456-7890-5678-012345678901")
///                     .azureTenantId("66666666-3456-7890-5678-012345678901")
///                     .build())
///                 .repositoryName("repo1")
///                 .repositoryOwner("owner1")
///                 .build())
///             .location("location1")
///             .resourceGroupName("resourceGroup1")
///             .tags(Map.of("appname", "testApp"))
///             .workflowName("workflow1")
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
/// const workflow = new azure_native.devhub.Workflow("workflow", {
///     githubWorkflowProfile: {
///         acr: {
///             acrRegistryName: "registry1",
///             acrRepositoryName: "repo1",
///             acrResourceGroup: "resourceGroup1",
///             acrSubscriptionId: "subscriptionId1",
///         },
///         aksResourceId: "/subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1",
///         branchName: "branch1",
///         deploymentProperties: {
///             kubeManifestLocations: ["/src/manifests/"],
///             manifestType: azure_native.devhub.ManifestType.Kube,
///             overrides: {
///                 key1: "value1",
///             },
///         },
///         dockerBuildContext: "repo1/src/",
///         dockerfile: "repo1/images/Dockerfile",
///         namespace: "namespace1",
///         oidcCredentials: {
///             azureClientId: "12345678-3456-7890-5678-012345678901",
///             azureTenantId: "66666666-3456-7890-5678-012345678901",
///         },
///         repositoryName: "repo1",
///         repositoryOwner: "owner1",
///     },
///     location: "location1",
///     resourceGroupName: "resourceGroup1",
///     tags: {
///         appname: "testApp",
///     },
///     workflowName: "workflow1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workflow = azure_native.devhub.Workflow("workflow",
///     github_workflow_profile={
///         "acr": {
///             "acr_registry_name": "registry1",
///             "acr_repository_name": "repo1",
///             "acr_resource_group": "resourceGroup1",
///             "acr_subscription_id": "subscriptionId1",
///         },
///         "aks_resource_id": "/subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1",
///         "branch_name": "branch1",
///         "deployment_properties": {
///             "kube_manifest_locations": ["/src/manifests/"],
///             "manifest_type": azure_native.devhub.ManifestType.KUBE,
///             "overrides": {
///                 "key1": "value1",
///             },
///         },
///         "docker_build_context": "repo1/src/",
///         "dockerfile": "repo1/images/Dockerfile",
///         "namespace": "namespace1",
///         "oidc_credentials": {
///             "azure_client_id": "12345678-3456-7890-5678-012345678901",
///             "azure_tenant_id": "66666666-3456-7890-5678-012345678901",
///         },
///         "repository_name": "repo1",
///         "repository_owner": "owner1",
///     },
///     location="location1",
///     resource_group_name="resourceGroup1",
///     tags={
///         "appname": "testApp",
///     },
///     workflow_name="workflow1")
///
/// ```
///
/// ```yaml
/// resources:
///   workflow:
///     type: azure-native:devhub:Workflow
///     properties:
///       githubWorkflowProfile:
///         acr:
///           acrRegistryName: registry1
///           acrRepositoryName: repo1
///           acrResourceGroup: resourceGroup1
///           acrSubscriptionId: subscriptionId1
///         aksResourceId: /subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1
///         branchName: branch1
///         deploymentProperties:
///           kubeManifestLocations:
///             - /src/manifests/
///           manifestType: kube
///           overrides:
///             key1: value1
///         dockerBuildContext: repo1/src/
///         dockerfile: repo1/images/Dockerfile
///         namespace: namespace1
///         oidcCredentials:
///           azureClientId: 12345678-3456-7890-5678-012345678901
///           azureTenantId: 66666666-3456-7890-5678-012345678901
///         repositoryName: repo1
///         repositoryOwner: owner1
///       location: location1
///       resourceGroupName: resourceGroup1
///       tags:
///         appname: testApp
///       workflowName: workflow1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Workflow With Artifact Generation
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workflow = new AzureNative.DevHub.Workflow("workflow", new()
///     {
///         AppName = "my-app",
///         DockerfileGenerationMode = AzureNative.DevHub.DockerfileGenerationMode.Enabled,
///         DockerfileOutputDirectory = "./",
///         GenerationLanguage = AzureNative.DevHub.GenerationLanguage.Javascript,
///         GithubWorkflowProfile = new AzureNative.DevHub.Inputs.GitHubWorkflowProfileArgs
///         {
///             Acr = new AzureNative.DevHub.Inputs.ACRArgs
///             {
///                 AcrRegistryName = "registry1",
///                 AcrRepositoryName = "repo1",
///                 AcrResourceGroup = "resourceGroup1",
///                 AcrSubscriptionId = "subscriptionId1",
///             },
///             AksResourceId = "/subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1",
///             BranchName = "branch1",
///             DeploymentProperties = new AzureNative.DevHub.Inputs.DeploymentPropertiesArgs
///             {
///                 KubeManifestLocations = new[]
///                 {
///                     "/src/manifests/",
///                 },
///                 ManifestType = AzureNative.DevHub.ManifestType.Kube,
///                 Overrides =
///                 {
///                     { "key1", "value1" },
///                 },
///             },
///             DockerBuildContext = "repo1/src/",
///             Dockerfile = "repo1/images/Dockerfile",
///             OidcCredentials = new AzureNative.DevHub.Inputs.GitHubWorkflowProfileOidcCredentialsArgs
///             {
///                 AzureClientId = "12345678-3456-7890-5678-012345678901",
///                 AzureTenantId = "66666666-3456-7890-5678-012345678901",
///             },
///             RepositoryName = "repo1",
///             RepositoryOwner = "owner1",
///         },
///         ImageName = "myimage",
///         ImageTag = "latest",
///         LanguageVersion = "14",
///         Location = "location1",
///         ManifestGenerationMode = AzureNative.DevHub.ManifestGenerationMode.Enabled,
///         ManifestOutputDirectory = "./",
///         ManifestType = AzureNative.DevHub.GenerationManifestType.Kube,
///         Namespace = "my-namespace",
///         Port = "80",
///         ResourceGroupName = "resourceGroup1",
///         Tags =
///         {
///             { "appname", "testApp" },
///         },
///         WorkflowName = "workflow1",
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
/// 	devhub "github.com/pulumi/pulumi-azure-native-sdk/devhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devhub.NewWorkflow(ctx, "workflow", &devhub.WorkflowArgs{
/// 			AppName:                   pulumi.String("my-app"),
/// 			DockerfileGenerationMode:  pulumi.String(devhub.DockerfileGenerationModeEnabled),
/// 			DockerfileOutputDirectory: pulumi.String("./"),
/// 			GenerationLanguage:        pulumi.String(devhub.GenerationLanguageJavascript),
/// 			GithubWorkflowProfile: &devhub.GitHubWorkflowProfileArgs{
/// 				Acr: &devhub.ACRArgs{
/// 					AcrRegistryName:   pulumi.String("registry1"),
/// 					AcrRepositoryName: pulumi.String("repo1"),
/// 					AcrResourceGroup:  pulumi.String("resourceGroup1"),
/// 					AcrSubscriptionId: pulumi.String("subscriptionId1"),
/// 				},
/// 				AksResourceId: pulumi.String("/subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1"),
/// 				BranchName:    pulumi.String("branch1"),
/// 				DeploymentProperties: &devhub.DeploymentPropertiesArgs{
/// 					KubeManifestLocations: pulumi.StringArray{
/// 						pulumi.String("/src/manifests/"),
/// 					},
/// 					ManifestType: pulumi.String(devhub.ManifestTypeKube),
/// 					Overrides: pulumi.StringMap{
/// 						"key1": pulumi.String("value1"),
/// 					},
/// 				},
/// 				DockerBuildContext: pulumi.String("repo1/src/"),
/// 				Dockerfile:         pulumi.String("repo1/images/Dockerfile"),
/// 				OidcCredentials: &devhub.GitHubWorkflowProfileOidcCredentialsArgs{
/// 					AzureClientId: pulumi.String("12345678-3456-7890-5678-012345678901"),
/// 					AzureTenantId: pulumi.String("66666666-3456-7890-5678-012345678901"),
/// 				},
/// 				RepositoryName:  pulumi.String("repo1"),
/// 				RepositoryOwner: pulumi.String("owner1"),
/// 			},
/// 			ImageName:               pulumi.String("myimage"),
/// 			ImageTag:                pulumi.String("latest"),
/// 			LanguageVersion:         pulumi.String("14"),
/// 			Location:                pulumi.String("location1"),
/// 			ManifestGenerationMode:  pulumi.String(devhub.ManifestGenerationModeEnabled),
/// 			ManifestOutputDirectory: pulumi.String("./"),
/// 			ManifestType:            pulumi.String(devhub.GenerationManifestTypeKube),
/// 			Namespace:               pulumi.String("my-namespace"),
/// 			Port:                    pulumi.String("80"),
/// 			ResourceGroupName:       pulumi.String("resourceGroup1"),
/// 			Tags: pulumi.StringMap{
/// 				"appname": pulumi.String("testApp"),
/// 			},
/// 			WorkflowName: pulumi.String("workflow1"),
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
/// import com.pulumi.azurenative.devhub.Workflow;
/// import com.pulumi.azurenative.devhub.WorkflowArgs;
/// import com.pulumi.azurenative.devhub.inputs.GitHubWorkflowProfileArgs;
/// import com.pulumi.azurenative.devhub.inputs.ACRArgs;
/// import com.pulumi.azurenative.devhub.inputs.DeploymentPropertiesArgs;
/// import com.pulumi.azurenative.devhub.inputs.GitHubWorkflowProfileOidcCredentialsArgs;
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
///         var workflow = new Workflow("workflow", WorkflowArgs.builder()
///             .appName("my-app")
///             .dockerfileGenerationMode("enabled")
///             .dockerfileOutputDirectory("./")
///             .generationLanguage("javascript")
///             .githubWorkflowProfile(GitHubWorkflowProfileArgs.builder()
///                 .acr(ACRArgs.builder()
///                     .acrRegistryName("registry1")
///                     .acrRepositoryName("repo1")
///                     .acrResourceGroup("resourceGroup1")
///                     .acrSubscriptionId("subscriptionId1")
///                     .build())
///                 .aksResourceId("/subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1")
///                 .branchName("branch1")
///                 .deploymentProperties(DeploymentPropertiesArgs.builder()
///                     .kubeManifestLocations("/src/manifests/")
///                     .manifestType("kube")
///                     .overrides(Map.of("key1", "value1"))
///                     .build())
///                 .dockerBuildContext("repo1/src/")
///                 .dockerfile("repo1/images/Dockerfile")
///                 .oidcCredentials(GitHubWorkflowProfileOidcCredentialsArgs.builder()
///                     .azureClientId("12345678-3456-7890-5678-012345678901")
///                     .azureTenantId("66666666-3456-7890-5678-012345678901")
///                     .build())
///                 .repositoryName("repo1")
///                 .repositoryOwner("owner1")
///                 .build())
///             .imageName("myimage")
///             .imageTag("latest")
///             .languageVersion("14")
///             .location("location1")
///             .manifestGenerationMode("enabled")
///             .manifestOutputDirectory("./")
///             .manifestType("kube")
///             .namespace("my-namespace")
///             .port("80")
///             .resourceGroupName("resourceGroup1")
///             .tags(Map.of("appname", "testApp"))
///             .workflowName("workflow1")
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
/// const workflow = new azure_native.devhub.Workflow("workflow", {
///     appName: "my-app",
///     dockerfileGenerationMode: azure_native.devhub.DockerfileGenerationMode.Enabled,
///     dockerfileOutputDirectory: "./",
///     generationLanguage: azure_native.devhub.GenerationLanguage.Javascript,
///     githubWorkflowProfile: {
///         acr: {
///             acrRegistryName: "registry1",
///             acrRepositoryName: "repo1",
///             acrResourceGroup: "resourceGroup1",
///             acrSubscriptionId: "subscriptionId1",
///         },
///         aksResourceId: "/subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1",
///         branchName: "branch1",
///         deploymentProperties: {
///             kubeManifestLocations: ["/src/manifests/"],
///             manifestType: azure_native.devhub.ManifestType.Kube,
///             overrides: {
///                 key1: "value1",
///             },
///         },
///         dockerBuildContext: "repo1/src/",
///         dockerfile: "repo1/images/Dockerfile",
///         oidcCredentials: {
///             azureClientId: "12345678-3456-7890-5678-012345678901",
///             azureTenantId: "66666666-3456-7890-5678-012345678901",
///         },
///         repositoryName: "repo1",
///         repositoryOwner: "owner1",
///     },
///     imageName: "myimage",
///     imageTag: "latest",
///     languageVersion: "14",
///     location: "location1",
///     manifestGenerationMode: azure_native.devhub.ManifestGenerationMode.Enabled,
///     manifestOutputDirectory: "./",
///     manifestType: azure_native.devhub.GenerationManifestType.Kube,
///     namespace: "my-namespace",
///     port: "80",
///     resourceGroupName: "resourceGroup1",
///     tags: {
///         appname: "testApp",
///     },
///     workflowName: "workflow1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workflow = azure_native.devhub.Workflow("workflow",
///     app_name="my-app",
///     dockerfile_generation_mode=azure_native.devhub.DockerfileGenerationMode.ENABLED,
///     dockerfile_output_directory="./",
///     generation_language=azure_native.devhub.GenerationLanguage.JAVASCRIPT,
///     github_workflow_profile={
///         "acr": {
///             "acr_registry_name": "registry1",
///             "acr_repository_name": "repo1",
///             "acr_resource_group": "resourceGroup1",
///             "acr_subscription_id": "subscriptionId1",
///         },
///         "aks_resource_id": "/subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1",
///         "branch_name": "branch1",
///         "deployment_properties": {
///             "kube_manifest_locations": ["/src/manifests/"],
///             "manifest_type": azure_native.devhub.ManifestType.KUBE,
///             "overrides": {
///                 "key1": "value1",
///             },
///         },
///         "docker_build_context": "repo1/src/",
///         "dockerfile": "repo1/images/Dockerfile",
///         "oidc_credentials": {
///             "azure_client_id": "12345678-3456-7890-5678-012345678901",
///             "azure_tenant_id": "66666666-3456-7890-5678-012345678901",
///         },
///         "repository_name": "repo1",
///         "repository_owner": "owner1",
///     },
///     image_name="myimage",
///     image_tag="latest",
///     language_version="14",
///     location="location1",
///     manifest_generation_mode=azure_native.devhub.ManifestGenerationMode.ENABLED,
///     manifest_output_directory="./",
///     manifest_type=azure_native.devhub.GenerationManifestType.KUBE,
///     namespace="my-namespace",
///     port="80",
///     resource_group_name="resourceGroup1",
///     tags={
///         "appname": "testApp",
///     },
///     workflow_name="workflow1")
///
/// ```
///
/// ```yaml
/// resources:
///   workflow:
///     type: azure-native:devhub:Workflow
///     properties:
///       appName: my-app
///       dockerfileGenerationMode: enabled
///       dockerfileOutputDirectory: ./
///       generationLanguage: javascript
///       githubWorkflowProfile:
///         acr:
///           acrRegistryName: registry1
///           acrRepositoryName: repo1
///           acrResourceGroup: resourceGroup1
///           acrSubscriptionId: subscriptionId1
///         aksResourceId: /subscriptions/subscriptionId1/resourcegroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1
///         branchName: branch1
///         deploymentProperties:
///           kubeManifestLocations:
///             - /src/manifests/
///           manifestType: kube
///           overrides:
///             key1: value1
///         dockerBuildContext: repo1/src/
///         dockerfile: repo1/images/Dockerfile
///         oidcCredentials:
///           azureClientId: 12345678-3456-7890-5678-012345678901
///           azureTenantId: 66666666-3456-7890-5678-012345678901
///         repositoryName: repo1
///         repositoryOwner: owner1
///       imageName: myimage
///       imageTag: latest
///       languageVersion: '14'
///       location: location1
///       manifestGenerationMode: enabled
///       manifestOutputDirectory: ./
///       manifestType: kube
///       namespace: my-namespace
///       port: '80'
///       resourceGroupName: resourceGroup1
///       tags:
///         appname: testApp
///       workflowName: workflow1
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
/// $ pulumi import azure-native:devhub:Workflow workflow1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevHub/workflows/{workflowName}
/// ```
class Workflow extends pulumi.CustomResource {
  /// The name of the app.
  late final pulumi.Output<String?> appName;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The version of the language image used for building the code in the generated dockerfile.
  late final pulumi.Output<String?> builderVersion;

  /// The mode of generation to be used for generating Dockerfiles.
  late final pulumi.Output<String?> dockerfileGenerationMode;

  /// The directory to output the generated Dockerfile to.
  late final pulumi.Output<String?> dockerfileOutputDirectory;

  /// The programming language used.
  late final pulumi.Output<String?> generationLanguage;

  /// Profile of a github workflow.
  late final pulumi.Output<GitHubWorkflowProfileResponse?>
  githubWorkflowProfile;

  /// The name of the image to be generated.
  late final pulumi.Output<String?> imageName;

  /// The tag to apply to the generated image.
  late final pulumi.Output<String?> imageTag;

  /// The version of the language image used for execution in the generated dockerfile.
  late final pulumi.Output<String?> languageVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The mode of generation to be used for generating Manifest.
  late final pulumi.Output<String?> manifestGenerationMode;

  /// The directory to output the generated manifests to.
  late final pulumi.Output<String?> manifestOutputDirectory;

  /// Determines the type of manifests to be generated.
  late final pulumi.Output<String?> manifestType;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The namespace to deploy the application to.
  late final pulumi.Output<String?> namespace;

  /// The port the application is exposed on.
  late final pulumi.Output<String?> port;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Workflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workflow]. {@macro pulumi_devhub_workflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devhub:Workflow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appName = registerOutput<String?>('appName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    builderVersion = registerOutput<String?>('builderVersion');
    dockerfileGenerationMode = registerOutput<String?>(
      'dockerfileGenerationMode',
    );
    dockerfileOutputDirectory = registerOutput<String?>(
      'dockerfileOutputDirectory',
    );
    generationLanguage = registerOutput<String?>('generationLanguage');
    githubWorkflowProfile = registerOutput<GitHubWorkflowProfileResponse?>(
      'githubWorkflowProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GitHubWorkflowProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    imageName = registerOutput<String?>('imageName');
    imageTag = registerOutput<String?>('imageTag');
    languageVersion = registerOutput<String?>('languageVersion');
    location = registerOutput<String>('location');
    manifestGenerationMode = registerOutput<String?>('manifestGenerationMode');
    manifestOutputDirectory = registerOutput<String?>(
      'manifestOutputDirectory',
    );
    manifestType = registerOutput<String?>('manifestType');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String?>('namespace');
    port = registerOutput<String?>('port');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
