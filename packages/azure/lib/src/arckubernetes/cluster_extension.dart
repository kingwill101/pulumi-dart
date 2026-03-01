import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_extension_args.dart';
import 'cluster_extension_identity.dart';

/// Manages an Arc Kubernetes Cluster Extension.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.arckubernetes.Cluster("example", {
///     name: "example-akcc",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     agentPublicKeyCertificate: std.filebase64({
///         input: "testdata/public.cer",
///     }).then(invoke => invoke.result),
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         ENV: "Test",
///     },
/// });
/// const exampleClusterExtension = new azure.arckubernetes.ClusterExtension("example", {
///     name: "example-ext",
///     clusterId: exampleCluster.id,
///     extensionType: "microsoft.flux",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_cluster = azure.arckubernetes.Cluster("example",
///     name="example-akcc",
///     resource_group_name=example.name,
///     location="West Europe",
///     agent_public_key_certificate=std.filebase64(input="testdata/public.cer").result,
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "ENV": "Test",
///     })
/// example_cluster_extension = azure.arckubernetes.ClusterExtension("example",
///     name="example-ext",
///     cluster_id=example_cluster.id,
///     extension_type="microsoft.flux")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleCluster = new Azure.ArcKubernetes.Cluster("example", new()
///     {
///         Name = "example-akcc",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         AgentPublicKeyCertificate = Std.Filebase64.Invoke(new()
///         {
///             Input = "testdata/public.cer",
///         }).Apply(invoke => invoke.Result),
///         Identity = new Azure.ArcKubernetes.Inputs.ClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "ENV", "Test" },
///         },
///     });
///
///     var exampleClusterExtension = new Azure.ArcKubernetes.ClusterExtension("example", new()
///     {
///         Name = "example-ext",
///         ClusterId = exampleCluster.Id,
///         ExtensionType = "microsoft.flux",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/arckubernetes"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "testdata/public.cer",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := arckubernetes.NewCluster(ctx, "example", &arckubernetes.ClusterArgs{
/// 			Name:                      pulumi.String("example-akcc"),
/// 			ResourceGroupName:         example.Name,
/// 			Location:                  pulumi.String("West Europe"),
/// 			AgentPublicKeyCertificate: pulumi.String(invokeFilebase64.Result),
/// 			Identity: &arckubernetes.ClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"ENV": pulumi.String("Test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arckubernetes.NewClusterExtension(ctx, "example", &arckubernetes.ClusterExtensionArgs{
/// 			Name:          pulumi.String("example-ext"),
/// 			ClusterId:     exampleCluster.ID(),
/// 			ExtensionType: pulumi.String("microsoft.flux"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.arckubernetes.Cluster;
/// import com.pulumi.azure.arckubernetes.ClusterArgs;
/// import com.pulumi.azure.arckubernetes.inputs.ClusterIdentityArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.azure.arckubernetes.ClusterExtension;
/// import com.pulumi.azure.arckubernetes.ClusterExtensionArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example-akcc")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .agentPublicKeyCertificate(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("testdata/public.cer")
///                 .build()).result())
///             .identity(ClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("ENV", "Test"))
///             .build());
///
///         var exampleClusterExtension = new ClusterExtension("exampleClusterExtension", ClusterExtensionArgs.builder()
///             .name("example-ext")
///             .clusterId(exampleCluster.id())
///             .extensionType("microsoft.flux")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleCluster:
///     type: azure:arckubernetes:Cluster
///     name: example
///     properties:
///       name: example-akcc
///       resourceGroupName: ${example.name}
///       location: West Europe
///       agentPublicKeyCertificate:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: testdata/public.cer
///           return: result
///       identity:
///         type: SystemAssigned
///       tags:
///         ENV: Test
///   exampleClusterExtension:
///     type: azure:arckubernetes:ClusterExtension
///     name: example
///     properties:
///       name: example-ext
///       clusterId: ${exampleCluster.id}
///       extensionType: microsoft.flux
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.KubernetesConfiguration` - 2024-11-01
///
/// ## Import
///
/// Arc Kubernetes Cluster Extension can be imported using the `resource id` for different `cluster_resource_name`, e.g.
///
/// ```sh
/// $ pulumi import azure:arckubernetes/clusterExtension:ClusterExtension example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Kubernetes/connectedClusters/cluster1/providers/Microsoft.KubernetesConfiguration/extensions/extension1
/// ```
class ClusterExtension extends pulumi.CustomResource {
  /// Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> clusterId;
  /// Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  late final pulumi.Output<Map<String, String>?> configurationProtectedSettings;
  /// Configuration settings, as name-value pairs for configuring this extension.
  late final pulumi.Output<Map<String, String>?> configurationSettings;
  /// The current version of the extension.
  late final pulumi.Output<String> currentVersion;
  /// Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for Arc-enabled Kubernetes clusters](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/extensions-release). Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> extensionType;
  /// An `identity` block as defined below. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  late final pulumi.Output<ClusterExtensionIdentity> identity;
  /// Specifies the name which should be used for this Arc Kubernetes Cluster Extension. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> name;
  /// Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> releaseNamespace;
  /// The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> releaseTrain;
  /// Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> targetNamespace;
  /// User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String?> version;

  /// Creates a new [ClusterExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterExtension]. {@macro pulumi_arckubernetes_cluster_extension_cluster_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterExtension(
    String name, {
    ClusterExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arckubernetes/clusterExtension:ClusterExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.configurationProtectedSettings = registerOutput<Map<String, String>?>('configurationProtectedSettings');
    this.configurationSettings = registerOutput<Map<String, String>?>('configurationSettings');
    this.currentVersion = registerOutput<String>('currentVersion');
    this.extensionType = registerOutput<String>('extensionType');
    this.identity = registerOutput<ClusterExtensionIdentity>('identity');
    this.name = registerOutput<String>('name');
    this.releaseNamespace = registerOutput<String>('releaseNamespace');
    this.releaseTrain = registerOutput<String>('releaseTrain');
    this.targetNamespace = registerOutput<String>('targetNamespace');
    this.version = registerOutput<String?>('version');
  }
}
