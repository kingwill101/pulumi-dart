import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_definition_response.dart';
import 'bucket_definition_response.dart';
import 'flux_configuration_args.dart';
import 'git_repository_definition_response.dart';
import 'kustomization_definition_response.dart';
import 'system_data_response.dart';

/// The Flux Configuration object returned in Get & Put response.
///
/// Uses Azure REST API version 2023-05-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2022-07-01, 2022-11-01, 2024-04-01-preview, 2024-11-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetesconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Flux Configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fluxConfiguration = new AzureNative.KubernetesConfiguration.FluxConfiguration("fluxConfiguration", new()
///     {
///         ClusterName = "clusterName1",
///         ClusterResourceName = "connectedClusters",
///         ClusterRp = "Microsoft.Kubernetes",
///         FluxConfigurationName = "srs-fluxconfig",
///         GitRepository = new AzureNative.KubernetesConfiguration.Inputs.GitRepositoryDefinitionArgs
///         {
///             HttpsCACert = "ZXhhbXBsZWNlcnRpZmljYXRl",
///             RepositoryRef = new AzureNative.KubernetesConfiguration.Inputs.RepositoryRefDefinitionArgs
///             {
///                 Branch = "master",
///             },
///             SyncIntervalInSeconds = 600,
///             TimeoutInSeconds = 600,
///             Url = "https://github.com/Azure/arc-k8s-demo",
///         },
///         Kustomizations =
///         {
///             { "srs-kustomization1", new AzureNative.KubernetesConfiguration.Inputs.KustomizationDefinitionArgs
///             {
///                 DependsOn = new() { },
///                 Path = "./test/path",
///                 PostBuild = new AzureNative.KubernetesConfiguration.Inputs.PostBuildDefinitionArgs
///                 {
///                     Substitute =
///                     {
///                         { "cluster_env", "prod" },
///                         { "replica_count", "2" },
///                     },
///                     SubstituteFrom = new[]
///                     {
///                         new AzureNative.KubernetesConfiguration.Inputs.SubstituteFromDefinitionArgs
///                         {
///                             Kind = "ConfigMap",
///                             Name = "cluster-test",
///                             Optional = true,
///                         },
///                     },
///                 },
///                 SyncIntervalInSeconds = 600,
///                 TimeoutInSeconds = 600,
///                 Wait = true,
///             } },
///             { "srs-kustomization2", new AzureNative.KubernetesConfiguration.Inputs.KustomizationDefinitionArgs
///             {
///                 DependsOn = new[]
///                 {
///                     "srs-kustomization1",
///                 },
///                 Path = "./other/test/path",
///                 PostBuild = new AzureNative.KubernetesConfiguration.Inputs.PostBuildDefinitionArgs
///                 {
///                     SubstituteFrom = new[]
///                     {
///                         new AzureNative.KubernetesConfiguration.Inputs.SubstituteFromDefinitionArgs
///                         {
///                             Kind = "ConfigMap",
///                             Name = "cluster-values",
///                             Optional = true,
///                         },
///                         new AzureNative.KubernetesConfiguration.Inputs.SubstituteFromDefinitionArgs
///                         {
///                             Kind = "Secret",
///                             Name = "secret-name",
///                             Optional = false,
///                         },
///                     },
///                 },
///                 Prune = false,
///                 RetryIntervalInSeconds = 600,
///                 SyncIntervalInSeconds = 600,
///                 TimeoutInSeconds = 600,
///                 Wait = false,
///             } },
///         },
///         Namespace = "srs-namespace",
///         ReconciliationWaitDuration = "PT30M",
///         ResourceGroupName = "rg1",
///         Scope = AzureNative.KubernetesConfiguration.ScopeType.Cluster,
///         SourceKind = AzureNative.KubernetesConfiguration.SourceKindType.GitRepository,
///         Suspend = false,
///         WaitForReconciliation = true,
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
/// 	kubernetesconfiguration "github.com/pulumi/pulumi-azure-native-sdk/kubernetesconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetesconfiguration.NewFluxConfiguration(ctx, "fluxConfiguration", &kubernetesconfiguration.FluxConfigurationArgs{
/// 			ClusterName:           pulumi.String("clusterName1"),
/// 			ClusterResourceName:   pulumi.String("connectedClusters"),
/// 			ClusterRp:             pulumi.String("Microsoft.Kubernetes"),
/// 			FluxConfigurationName: pulumi.String("srs-fluxconfig"),
/// 			GitRepository: &kubernetesconfiguration.GitRepositoryDefinitionArgs{
/// 				HttpsCACert: pulumi.String("ZXhhbXBsZWNlcnRpZmljYXRl"),
/// 				RepositoryRef: &kubernetesconfiguration.RepositoryRefDefinitionArgs{
/// 					Branch: pulumi.String("master"),
/// 				},
/// 				SyncIntervalInSeconds: pulumi.Float64(600),
/// 				TimeoutInSeconds:      pulumi.Float64(600),
/// 				Url:                   pulumi.String("https://github.com/Azure/arc-k8s-demo"),
/// 			},
/// 			Kustomizations: kubernetesconfiguration.KustomizationDefinitionMap{
/// 				"srs-kustomization1": &kubernetesconfiguration.KustomizationDefinitionArgs{
/// 					DependsOn: pulumi.StringArray{},
/// 					Path:      pulumi.String("./test/path"),
/// 					PostBuild: &kubernetesconfiguration.PostBuildDefinitionArgs{
/// 						Substitute: pulumi.StringMap{
/// 							"cluster_env":   pulumi.String("prod"),
/// 							"replica_count": pulumi.String("2"),
/// 						},
/// 						SubstituteFrom: kubernetesconfiguration.SubstituteFromDefinitionArray{
/// 							&kubernetesconfiguration.SubstituteFromDefinitionArgs{
/// 								Kind:     pulumi.String("ConfigMap"),
/// 								Name:     pulumi.String("cluster-test"),
/// 								Optional: pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					SyncIntervalInSeconds: pulumi.Float64(600),
/// 					TimeoutInSeconds:      pulumi.Float64(600),
/// 					Wait:                  pulumi.Bool(true),
/// 				},
/// 				"srs-kustomization2": &kubernetesconfiguration.KustomizationDefinitionArgs{
/// 					DependsOn: pulumi.StringArray{
/// 						pulumi.String("srs-kustomization1"),
/// 					},
/// 					Path: pulumi.String("./other/test/path"),
/// 					PostBuild: &kubernetesconfiguration.PostBuildDefinitionArgs{
/// 						SubstituteFrom: kubernetesconfiguration.SubstituteFromDefinitionArray{
/// 							&kubernetesconfiguration.SubstituteFromDefinitionArgs{
/// 								Kind:     pulumi.String("ConfigMap"),
/// 								Name:     pulumi.String("cluster-values"),
/// 								Optional: pulumi.Bool(true),
/// 							},
/// 							&kubernetesconfiguration.SubstituteFromDefinitionArgs{
/// 								Kind:     pulumi.String("Secret"),
/// 								Name:     pulumi.String("secret-name"),
/// 								Optional: pulumi.Bool(false),
/// 							},
/// 						},
/// 					},
/// 					Prune:                  pulumi.Bool(false),
/// 					RetryIntervalInSeconds: pulumi.Float64(600),
/// 					SyncIntervalInSeconds:  pulumi.Float64(600),
/// 					TimeoutInSeconds:       pulumi.Float64(600),
/// 					Wait:                   pulumi.Bool(false),
/// 				},
/// 			},
/// 			Namespace:                  pulumi.String("srs-namespace"),
/// 			ReconciliationWaitDuration: pulumi.String("PT30M"),
/// 			ResourceGroupName:          pulumi.String("rg1"),
/// 			Scope:                      pulumi.String(kubernetesconfiguration.ScopeTypeCluster),
/// 			SourceKind:                 pulumi.String(kubernetesconfiguration.SourceKindTypeGitRepository),
/// 			Suspend:                    pulumi.Bool(false),
/// 			WaitForReconciliation:      pulumi.Bool(true),
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
/// import com.pulumi.azurenative.kubernetesconfiguration.FluxConfiguration;
/// import com.pulumi.azurenative.kubernetesconfiguration.FluxConfigurationArgs;
/// import com.pulumi.azurenative.kubernetesconfiguration.inputs.GitRepositoryDefinitionArgs;
/// import com.pulumi.azurenative.kubernetesconfiguration.inputs.RepositoryRefDefinitionArgs;
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
///         var fluxConfiguration = new FluxConfiguration("fluxConfiguration", FluxConfigurationArgs.builder()
///             .clusterName("clusterName1")
///             .clusterResourceName("connectedClusters")
///             .clusterRp("Microsoft.Kubernetes")
///             .fluxConfigurationName("srs-fluxconfig")
///             .gitRepository(GitRepositoryDefinitionArgs.builder()
///                 .httpsCACert("ZXhhbXBsZWNlcnRpZmljYXRl")
///                 .repositoryRef(RepositoryRefDefinitionArgs.builder()
///                     .branch("master")
///                     .build())
///                 .syncIntervalInSeconds(600.0)
///                 .timeoutInSeconds(600.0)
///                 .url("https://github.com/Azure/arc-k8s-demo")
///                 .build())
///             .kustomizations(Map.ofEntries(
///                 Map.entry("srs-kustomization1", KustomizationDefinitionArgs.builder()
///                     .dependsOn()
///                     .path("./test/path")
///                     .postBuild(PostBuildDefinitionArgs.builder()
///                         .substitute(Map.ofEntries(
///                             Map.entry("cluster_env", "prod"),
///                             Map.entry("replica_count", "2")
///                         ))
///                         .substituteFrom(SubstituteFromDefinitionArgs.builder()
///                             .kind("ConfigMap")
///                             .name("cluster-test")
///                             .optional(true)
///                             .build())
///                         .build())
///                     .syncIntervalInSeconds(600.0)
///                     .timeoutInSeconds(600.0)
///                     .wait(true)
///                     .build()),
///                 Map.entry("srs-kustomization2", KustomizationDefinitionArgs.builder()
///                     .dependsOn("srs-kustomization1")
///                     .path("./other/test/path")
///                     .postBuild(PostBuildDefinitionArgs.builder()
///                         .substituteFrom(
///                             SubstituteFromDefinitionArgs.builder()
///                                 .kind("ConfigMap")
///                                 .name("cluster-values")
///                                 .optional(true)
///                                 .build(),
///                             SubstituteFromDefinitionArgs.builder()
///                                 .kind("Secret")
///                                 .name("secret-name")
///                                 .optional(false)
///                                 .build())
///                         .build())
///                     .prune(false)
///                     .retryIntervalInSeconds(600.0)
///                     .syncIntervalInSeconds(600.0)
///                     .timeoutInSeconds(600.0)
///                     .wait(false)
///                     .build())
///             ))
///             .namespace("srs-namespace")
///             .reconciliationWaitDuration("PT30M")
///             .resourceGroupName("rg1")
///             .scope("cluster")
///             .sourceKind("GitRepository")
///             .suspend(false)
///             .waitForReconciliation(true)
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
/// const fluxConfiguration = new azure_native.kubernetesconfiguration.FluxConfiguration("fluxConfiguration", {
///     clusterName: "clusterName1",
///     clusterResourceName: "connectedClusters",
///     clusterRp: "Microsoft.Kubernetes",
///     fluxConfigurationName: "srs-fluxconfig",
///     gitRepository: {
///         httpsCACert: "ZXhhbXBsZWNlcnRpZmljYXRl",
///         repositoryRef: {
///             branch: "master",
///         },
///         syncIntervalInSeconds: 600,
///         timeoutInSeconds: 600,
///         url: "https://github.com/Azure/arc-k8s-demo",
///     },
///     kustomizations: {
///         "srs-kustomization1": {
///             dependsOn: [],
///             path: "./test/path",
///             postBuild: {
///                 substitute: {
///                     cluster_env: "prod",
///                     replica_count: "2",
///                 },
///                 substituteFrom: [{
///                     kind: "ConfigMap",
///                     name: "cluster-test",
///                     optional: true,
///                 }],
///             },
///             syncIntervalInSeconds: 600,
///             timeoutInSeconds: 600,
///             wait: true,
///         },
///         "srs-kustomization2": {
///             dependsOn: ["srs-kustomization1"],
///             path: "./other/test/path",
///             postBuild: {
///                 substituteFrom: [
///                     {
///                         kind: "ConfigMap",
///                         name: "cluster-values",
///                         optional: true,
///                     },
///                     {
///                         kind: "Secret",
///                         name: "secret-name",
///                         optional: false,
///                     },
///                 ],
///             },
///             prune: false,
///             retryIntervalInSeconds: 600,
///             syncIntervalInSeconds: 600,
///             timeoutInSeconds: 600,
///             wait: false,
///         },
///     },
///     namespace: "srs-namespace",
///     reconciliationWaitDuration: "PT30M",
///     resourceGroupName: "rg1",
///     scope: azure_native.kubernetesconfiguration.ScopeType.Cluster,
///     sourceKind: azure_native.kubernetesconfiguration.SourceKindType.GitRepository,
///     suspend: false,
///     waitForReconciliation: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// flux_configuration = azure_native.kubernetesconfiguration.FluxConfiguration("fluxConfiguration",
///     cluster_name="clusterName1",
///     cluster_resource_name="connectedClusters",
///     cluster_rp="Microsoft.Kubernetes",
///     flux_configuration_name="srs-fluxconfig",
///     git_repository={
///         "https_ca_cert": "ZXhhbXBsZWNlcnRpZmljYXRl",
///         "repository_ref": {
///             "branch": "master",
///         },
///         "sync_interval_in_seconds": 600,
///         "timeout_in_seconds": 600,
///         "url": "https://github.com/Azure/arc-k8s-demo",
///     },
///     kustomizations={
///         "srs-kustomization1": {
///             "depends_on": [],
///             "path": "./test/path",
///             "post_build": {
///                 "substitute": {
///                     "cluster_env": "prod",
///                     "replica_count": "2",
///                 },
///                 "substitute_from": [{
///                     "kind": "ConfigMap",
///                     "name": "cluster-test",
///                     "optional": True,
///                 }],
///             },
///             "sync_interval_in_seconds": 600,
///             "timeout_in_seconds": 600,
///             "wait": True,
///         },
///         "srs-kustomization2": {
///             "depends_on": ["srs-kustomization1"],
///             "path": "./other/test/path",
///             "post_build": {
///                 "substitute_from": [
///                     {
///                         "kind": "ConfigMap",
///                         "name": "cluster-values",
///                         "optional": True,
///                     },
///                     {
///                         "kind": "Secret",
///                         "name": "secret-name",
///                         "optional": False,
///                     },
///                 ],
///             },
///             "prune": False,
///             "retry_interval_in_seconds": 600,
///             "sync_interval_in_seconds": 600,
///             "timeout_in_seconds": 600,
///             "wait": False,
///         },
///     },
///     namespace="srs-namespace",
///     reconciliation_wait_duration="PT30M",
///     resource_group_name="rg1",
///     scope=azure_native.kubernetesconfiguration.ScopeType.CLUSTER,
///     source_kind=azure_native.kubernetesconfiguration.SourceKindType.GIT_REPOSITORY,
///     suspend=False,
///     wait_for_reconciliation=True)
///
/// ```
///
/// ```yaml
/// resources:
///   fluxConfiguration:
///     type: azure-native:kubernetesconfiguration:FluxConfiguration
///     properties:
///       clusterName: clusterName1
///       clusterResourceName: connectedClusters
///       clusterRp: Microsoft.Kubernetes
///       fluxConfigurationName: srs-fluxconfig
///       gitRepository:
///         httpsCACert: ZXhhbXBsZWNlcnRpZmljYXRl
///         repositoryRef:
///           branch: master
///         syncIntervalInSeconds: 600
///         timeoutInSeconds: 600
///         url: https://github.com/Azure/arc-k8s-demo
///       kustomizations:
///         srs-kustomization1:
///           dependsOn: []
///           path: ./test/path
///           postBuild:
///             substitute:
///               cluster_env: prod
///               replica_count: '2'
///             substituteFrom:
///               - kind: ConfigMap
///                 name: cluster-test
///                 optional: true
///           syncIntervalInSeconds: 600
///           timeoutInSeconds: 600
///           wait: true
///         srs-kustomization2:
///           dependsOn:
///             - srs-kustomization1
///           path: ./other/test/path
///           postBuild:
///             substituteFrom:
///               - kind: ConfigMap
///                 name: cluster-values
///                 optional: true
///               - kind: Secret
///                 name: secret-name
///                 optional: false
///           prune: false
///           retryIntervalInSeconds: 600
///           syncIntervalInSeconds: 600
///           timeoutInSeconds: 600
///           wait: false
///       namespace: srs-namespace
///       reconciliationWaitDuration: PT30M
///       resourceGroupName: rg1
///       scope: cluster
///       sourceKind: GitRepository
///       suspend: false
///       waitForReconciliation: true
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Flux Configuration with Bucket Source Kind
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fluxConfiguration = new AzureNative.KubernetesConfiguration.FluxConfiguration("fluxConfiguration", new()
///     {
///         Bucket = new AzureNative.KubernetesConfiguration.Inputs.BucketDefinitionArgs
///         {
///             AccessKey = "fluxminiotest",
///             BucketName = "flux",
///             SyncIntervalInSeconds = 1000,
///             TimeoutInSeconds = 1000,
///             Url = "https://fluxminiotest.az.minio.io",
///         },
///         ClusterName = "clusterName1",
///         ClusterResourceName = "connectedClusters",
///         ClusterRp = "Microsoft.Kubernetes",
///         FluxConfigurationName = "srs-fluxconfig",
///         Kustomizations =
///         {
///             { "srs-kustomization1", new AzureNative.KubernetesConfiguration.Inputs.KustomizationDefinitionArgs
///             {
///                 DependsOn = new() { },
///                 Path = "./test/path",
///                 SyncIntervalInSeconds = 600,
///                 TimeoutInSeconds = 600,
///             } },
///             { "srs-kustomization2", new AzureNative.KubernetesConfiguration.Inputs.KustomizationDefinitionArgs
///             {
///                 DependsOn = new[]
///                 {
///                     "srs-kustomization1",
///                 },
///                 Path = "./other/test/path",
///                 Prune = false,
///                 RetryIntervalInSeconds = 600,
///                 SyncIntervalInSeconds = 600,
///                 TimeoutInSeconds = 600,
///             } },
///         },
///         Namespace = "srs-namespace",
///         ResourceGroupName = "rg1",
///         Scope = AzureNative.KubernetesConfiguration.ScopeType.Cluster,
///         SourceKind = AzureNative.KubernetesConfiguration.SourceKindType.Bucket,
///         Suspend = false,
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
/// 	kubernetesconfiguration "github.com/pulumi/pulumi-azure-native-sdk/kubernetesconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetesconfiguration.NewFluxConfiguration(ctx, "fluxConfiguration", &kubernetesconfiguration.FluxConfigurationArgs{
/// 			Bucket: &kubernetesconfiguration.BucketDefinitionArgs{
/// 				AccessKey:             pulumi.String("fluxminiotest"),
/// 				BucketName:            pulumi.String("flux"),
/// 				SyncIntervalInSeconds: pulumi.Float64(1000),
/// 				TimeoutInSeconds:      pulumi.Float64(1000),
/// 				Url:                   pulumi.String("https://fluxminiotest.az.minio.io"),
/// 			},
/// 			ClusterName:           pulumi.String("clusterName1"),
/// 			ClusterResourceName:   pulumi.String("connectedClusters"),
/// 			ClusterRp:             pulumi.String("Microsoft.Kubernetes"),
/// 			FluxConfigurationName: pulumi.String("srs-fluxconfig"),
/// 			Kustomizations: kubernetesconfiguration.KustomizationDefinitionMap{
/// 				"srs-kustomization1": &kubernetesconfiguration.KustomizationDefinitionArgs{
/// 					DependsOn:             pulumi.StringArray{},
/// 					Path:                  pulumi.String("./test/path"),
/// 					SyncIntervalInSeconds: pulumi.Float64(600),
/// 					TimeoutInSeconds:      pulumi.Float64(600),
/// 				},
/// 				"srs-kustomization2": &kubernetesconfiguration.KustomizationDefinitionArgs{
/// 					DependsOn: pulumi.StringArray{
/// 						pulumi.String("srs-kustomization1"),
/// 					},
/// 					Path:                   pulumi.String("./other/test/path"),
/// 					Prune:                  pulumi.Bool(false),
/// 					RetryIntervalInSeconds: pulumi.Float64(600),
/// 					SyncIntervalInSeconds:  pulumi.Float64(600),
/// 					TimeoutInSeconds:       pulumi.Float64(600),
/// 				},
/// 			},
/// 			Namespace:         pulumi.String("srs-namespace"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Scope:             pulumi.String(kubernetesconfiguration.ScopeTypeCluster),
/// 			SourceKind:        pulumi.String(kubernetesconfiguration.SourceKindTypeBucket),
/// 			Suspend:           pulumi.Bool(false),
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
/// import com.pulumi.azurenative.kubernetesconfiguration.FluxConfiguration;
/// import com.pulumi.azurenative.kubernetesconfiguration.FluxConfigurationArgs;
/// import com.pulumi.azurenative.kubernetesconfiguration.inputs.BucketDefinitionArgs;
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
///         var fluxConfiguration = new FluxConfiguration("fluxConfiguration", FluxConfigurationArgs.builder()
///             .bucket(BucketDefinitionArgs.builder()
///                 .accessKey("fluxminiotest")
///                 .bucketName("flux")
///                 .syncIntervalInSeconds(1000.0)
///                 .timeoutInSeconds(1000.0)
///                 .url("https://fluxminiotest.az.minio.io")
///                 .build())
///             .clusterName("clusterName1")
///             .clusterResourceName("connectedClusters")
///             .clusterRp("Microsoft.Kubernetes")
///             .fluxConfigurationName("srs-fluxconfig")
///             .kustomizations(Map.ofEntries(
///                 Map.entry("srs-kustomization1", KustomizationDefinitionArgs.builder()
///                     .dependsOn()
///                     .path("./test/path")
///                     .syncIntervalInSeconds(600.0)
///                     .timeoutInSeconds(600.0)
///                     .build()),
///                 Map.entry("srs-kustomization2", KustomizationDefinitionArgs.builder()
///                     .dependsOn("srs-kustomization1")
///                     .path("./other/test/path")
///                     .prune(false)
///                     .retryIntervalInSeconds(600.0)
///                     .syncIntervalInSeconds(600.0)
///                     .timeoutInSeconds(600.0)
///                     .build())
///             ))
///             .namespace("srs-namespace")
///             .resourceGroupName("rg1")
///             .scope("cluster")
///             .sourceKind("Bucket")
///             .suspend(false)
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
/// const fluxConfiguration = new azure_native.kubernetesconfiguration.FluxConfiguration("fluxConfiguration", {
///     bucket: {
///         accessKey: "fluxminiotest",
///         bucketName: "flux",
///         syncIntervalInSeconds: 1000,
///         timeoutInSeconds: 1000,
///         url: "https://fluxminiotest.az.minio.io",
///     },
///     clusterName: "clusterName1",
///     clusterResourceName: "connectedClusters",
///     clusterRp: "Microsoft.Kubernetes",
///     fluxConfigurationName: "srs-fluxconfig",
///     kustomizations: {
///         "srs-kustomization1": {
///             dependsOn: [],
///             path: "./test/path",
///             syncIntervalInSeconds: 600,
///             timeoutInSeconds: 600,
///         },
///         "srs-kustomization2": {
///             dependsOn: ["srs-kustomization1"],
///             path: "./other/test/path",
///             prune: false,
///             retryIntervalInSeconds: 600,
///             syncIntervalInSeconds: 600,
///             timeoutInSeconds: 600,
///         },
///     },
///     namespace: "srs-namespace",
///     resourceGroupName: "rg1",
///     scope: azure_native.kubernetesconfiguration.ScopeType.Cluster,
///     sourceKind: azure_native.kubernetesconfiguration.SourceKindType.Bucket,
///     suspend: false,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// flux_configuration = azure_native.kubernetesconfiguration.FluxConfiguration("fluxConfiguration",
///     bucket={
///         "access_key": "fluxminiotest",
///         "bucket_name": "flux",
///         "sync_interval_in_seconds": 1000,
///         "timeout_in_seconds": 1000,
///         "url": "https://fluxminiotest.az.minio.io",
///     },
///     cluster_name="clusterName1",
///     cluster_resource_name="connectedClusters",
///     cluster_rp="Microsoft.Kubernetes",
///     flux_configuration_name="srs-fluxconfig",
///     kustomizations={
///         "srs-kustomization1": {
///             "depends_on": [],
///             "path": "./test/path",
///             "sync_interval_in_seconds": 600,
///             "timeout_in_seconds": 600,
///         },
///         "srs-kustomization2": {
///             "depends_on": ["srs-kustomization1"],
///             "path": "./other/test/path",
///             "prune": False,
///             "retry_interval_in_seconds": 600,
///             "sync_interval_in_seconds": 600,
///             "timeout_in_seconds": 600,
///         },
///     },
///     namespace="srs-namespace",
///     resource_group_name="rg1",
///     scope=azure_native.kubernetesconfiguration.ScopeType.CLUSTER,
///     source_kind=azure_native.kubernetesconfiguration.SourceKindType.BUCKET,
///     suspend=False)
///
/// ```
///
/// ```yaml
/// resources:
///   fluxConfiguration:
///     type: azure-native:kubernetesconfiguration:FluxConfiguration
///     properties:
///       bucket:
///         accessKey: fluxminiotest
///         bucketName: flux
///         syncIntervalInSeconds: 1000
///         timeoutInSeconds: 1000
///         url: https://fluxminiotest.az.minio.io
///       clusterName: clusterName1
///       clusterResourceName: connectedClusters
///       clusterRp: Microsoft.Kubernetes
///       fluxConfigurationName: srs-fluxconfig
///       kustomizations:
///         srs-kustomization1:
///           dependsOn: []
///           path: ./test/path
///           syncIntervalInSeconds: 600
///           timeoutInSeconds: 600
///         srs-kustomization2:
///           dependsOn:
///             - srs-kustomization1
///           path: ./other/test/path
///           prune: false
///           retryIntervalInSeconds: 600
///           syncIntervalInSeconds: 600
///           timeoutInSeconds: 600
///       namespace: srs-namespace
///       resourceGroupName: rg1
///       scope: cluster
///       sourceKind: Bucket
///       suspend: false
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
/// $ pulumi import azure-native:kubernetesconfiguration:FluxConfiguration srs-fluxconfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{clusterRp}/{clusterResourceName}/{clusterName}/providers/Microsoft.KubernetesConfiguration/fluxConfigurations/{fluxConfigurationName}
/// ```
class FluxConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Parameters to reconcile to the AzureBlob source kind type.
  late final pulumi.Output<AzureBlobDefinitionResponse?> azureBlob;

  /// Parameters to reconcile to the Bucket source kind type.
  late final pulumi.Output<BucketDefinitionResponse?> bucket;

  /// Combined status of the Flux Kubernetes resources created by the fluxConfiguration or created by the managed objects.
  late final pulumi.Output<String> complianceState;

  /// Key-value pairs of protected configuration settings for the configuration
  late final pulumi.Output<Map<String, String>?> configurationProtectedSettings;

  /// Error message returned to the user in the case of provisioning failure.
  late final pulumi.Output<String> errorMessage;

  /// Parameters to reconcile to the GitRepository source kind type.
  late final pulumi.Output<GitRepositoryDefinitionResponse?> gitRepository;

  /// Array of kustomizations used to reconcile the artifact pulled by the source type on the cluster.
  late final pulumi.Output<Map<String, KustomizationDefinitionResponse>?>
  kustomizations;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The namespace to which this configuration is installed to. Maximum of 253 lower case alphanumeric characters, hyphen and period only.
  late final pulumi.Output<String?> namespace;

  /// Status of the creation of the fluxConfiguration.
  late final pulumi.Output<String> provisioningState;

  /// Maximum duration to wait for flux configuration reconciliation. E.g PT1H, PT5M, P1D
  late final pulumi.Output<String?> reconciliationWaitDuration;

  /// Public Key associated with this fluxConfiguration (either generated within the cluster or provided by the user).
  late final pulumi.Output<String> repositoryPublicKey;

  /// Scope at which the operator will be installed.
  late final pulumi.Output<String?> scope;

  /// Source Kind to pull the configuration data from.
  late final pulumi.Output<String?> sourceKind;

  /// Branch and/or SHA of the source commit synced with the cluster.
  late final pulumi.Output<String> sourceSyncedCommitId;

  /// Datetime the fluxConfiguration synced its source on the cluster.
  late final pulumi.Output<String> sourceUpdatedAt;

  /// Datetime the fluxConfiguration synced its status on the cluster with Azure.
  late final pulumi.Output<String> statusUpdatedAt;

  /// Statuses of the Flux Kubernetes resources created by the fluxConfiguration or created by the managed objects provisioned by the fluxConfiguration.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;

  /// Whether this configuration should suspend its reconciliation of its kustomizations and sources.
  late final pulumi.Output<bool?> suspend;

  /// Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Whether flux configuration deployment should wait for cluster to reconcile the kustomizations.
  late final pulumi.Output<bool?> waitForReconciliation;

  /// Creates a new [FluxConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FluxConfiguration]. {@macro pulumi_kubernetesconfiguration_flux_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FluxConfiguration(
    String name, {
    FluxConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:kubernetesconfiguration:FluxConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureBlob = registerOutput<AzureBlobDefinitionResponse?>(
      'azureBlob',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureBlobDefinitionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bucket = registerOutput<BucketDefinitionResponse?>(
      'bucket',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketDefinitionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    complianceState = registerOutput<String>('complianceState');
    configurationProtectedSettings = registerOutput<Map<String, String>?>(
      'configurationProtectedSettings',
    );
    errorMessage = registerOutput<String>('errorMessage');
    gitRepository = registerOutput<GitRepositoryDefinitionResponse?>(
      'gitRepository',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GitRepositoryDefinitionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kustomizations =
        registerOutput<Map<String, KustomizationDefinitionResponse>?>(
          'kustomizations',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return pulumi
                .Input.decodeMapValues<KustomizationDefinitionResponse>(
              guardedValue,
              (value) => KustomizationDefinitionResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            );
          },
        );
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String?>('namespace');
    provisioningState = registerOutput<String>('provisioningState');
    reconciliationWaitDuration = registerOutput<String?>(
      'reconciliationWaitDuration',
    );
    repositoryPublicKey = registerOutput<String>('repositoryPublicKey');
    scope = registerOutput<String?>('scope');
    sourceKind = registerOutput<String?>('sourceKind');
    sourceSyncedCommitId = registerOutput<String>('sourceSyncedCommitId');
    sourceUpdatedAt = registerOutput<String>('sourceUpdatedAt');
    statusUpdatedAt = registerOutput<String>('statusUpdatedAt');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    suspend = registerOutput<bool?>('suspend');
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
    type = registerOutput<String>('type');
    waitForReconciliation = registerOutput<bool?>('waitForReconciliation');
  }
}
