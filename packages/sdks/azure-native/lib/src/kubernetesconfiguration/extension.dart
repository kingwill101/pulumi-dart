import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'extension_args.dart';
import 'extension_response_aks_assigned_identity.dart';
import 'identity_response.dart';
import 'plan_response.dart';
import 'scope_response.dart';
import 'system_data_response.dart';

/// The Extension object.
///
/// Uses Azure REST API version 2023-05-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2022-04-02-preview, 2022-07-01, 2022-11-01, 2024-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetesconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Extension
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extension = new AzureNative.KubernetesConfiguration.Extension("extension", new()
///     {
///         AutoUpgradeMinorVersion = true,
///         ClusterName = "clusterName1",
///         ClusterResourceName = "connectedClusters",
///         ClusterRp = "Microsoft.Kubernetes",
///         ConfigurationProtectedSettings =
///         {
///             { "omsagent.secret.key", "secretKeyValue01" },
///         },
///         ConfigurationSettings =
///         {
///             { "omsagent.env.clusterName", "clusterName1" },
///             { "omsagent.secret.wsid", "fakeTokenPlaceholder" },
///         },
///         ExtensionName = "ClusterMonitor",
///         ExtensionType = "azuremonitor-containers",
///         ReleaseTrain = "Preview",
///         ResourceGroupName = "rg1",
///         Scope = new AzureNative.KubernetesConfiguration.Inputs.ScopeArgs
///         {
///             Cluster = new AzureNative.KubernetesConfiguration.Inputs.ScopeClusterArgs
///             {
///                 ReleaseNamespace = "kube-system",
///             },
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
/// 	kubernetesconfiguration "github.com/pulumi/pulumi-azure-native-sdk/kubernetesconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetesconfiguration.NewExtension(ctx, "extension", &kubernetesconfiguration.ExtensionArgs{
/// 			AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 			ClusterName:             pulumi.String("clusterName1"),
/// 			ClusterResourceName:     pulumi.String("connectedClusters"),
/// 			ClusterRp:               pulumi.String("Microsoft.Kubernetes"),
/// 			ConfigurationProtectedSettings: pulumi.StringMap{
/// 				"omsagent.secret.key": pulumi.String("secretKeyValue01"),
/// 			},
/// 			ConfigurationSettings: pulumi.StringMap{
/// 				"omsagent.env.clusterName": pulumi.String("clusterName1"),
/// 				"omsagent.secret.wsid":     pulumi.String("fakeTokenPlaceholder"),
/// 			},
/// 			ExtensionName:     pulumi.String("ClusterMonitor"),
/// 			ExtensionType:     pulumi.String("azuremonitor-containers"),
/// 			ReleaseTrain:      pulumi.String("Preview"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Scope: &kubernetesconfiguration.ScopeArgs{
/// 				Cluster: &kubernetesconfiguration.ScopeClusterArgs{
/// 					ReleaseNamespace: pulumi.String("kube-system"),
/// 				},
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
/// import com.pulumi.azurenative.kubernetesconfiguration.Extension;
/// import com.pulumi.azurenative.kubernetesconfiguration.ExtensionArgs;
/// import com.pulumi.azurenative.kubernetesconfiguration.inputs.ScopeArgs;
/// import com.pulumi.azurenative.kubernetesconfiguration.inputs.ScopeClusterArgs;
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
///         var extension = new Extension("extension", ExtensionArgs.builder()
///             .autoUpgradeMinorVersion(true)
///             .clusterName("clusterName1")
///             .clusterResourceName("connectedClusters")
///             .clusterRp("Microsoft.Kubernetes")
///             .configurationProtectedSettings(Map.of("omsagent.secret.key", "secretKeyValue01"))
///             .configurationSettings(Map.ofEntries(
///                 Map.entry("omsagent.env.clusterName", "clusterName1"),
///                 Map.entry("omsagent.secret.wsid", "fakeTokenPlaceholder")
///             ))
///             .extensionName("ClusterMonitor")
///             .extensionType("azuremonitor-containers")
///             .releaseTrain("Preview")
///             .resourceGroupName("rg1")
///             .scope(ScopeArgs.builder()
///                 .cluster(ScopeClusterArgs.builder()
///                     .releaseNamespace("kube-system")
///                     .build())
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
/// const extension = new azure_native.kubernetesconfiguration.Extension("extension", {
///     autoUpgradeMinorVersion: true,
///     clusterName: "clusterName1",
///     clusterResourceName: "connectedClusters",
///     clusterRp: "Microsoft.Kubernetes",
///     configurationProtectedSettings: {
///         "omsagent.secret.key": "secretKeyValue01",
///     },
///     configurationSettings: {
///         "omsagent.env.clusterName": "clusterName1",
///         "omsagent.secret.wsid": "fakeTokenPlaceholder",
///     },
///     extensionName: "ClusterMonitor",
///     extensionType: "azuremonitor-containers",
///     releaseTrain: "Preview",
///     resourceGroupName: "rg1",
///     scope: {
///         cluster: {
///             releaseNamespace: "kube-system",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// extension = azure_native.kubernetesconfiguration.Extension("extension",
///     auto_upgrade_minor_version=True,
///     cluster_name="clusterName1",
///     cluster_resource_name="connectedClusters",
///     cluster_rp="Microsoft.Kubernetes",
///     configuration_protected_settings={
///         "omsagent.secret.key": "secretKeyValue01",
///     },
///     configuration_settings={
///         "omsagent.env.clusterName": "clusterName1",
///         "omsagent.secret.wsid": "fakeTokenPlaceholder",
///     },
///     extension_name="ClusterMonitor",
///     extension_type="azuremonitor-containers",
///     release_train="Preview",
///     resource_group_name="rg1",
///     scope={
///         "cluster": {
///             "release_namespace": "kube-system",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   extension:
///     type: azure-native:kubernetesconfiguration:Extension
///     properties:
///       autoUpgradeMinorVersion: true
///       clusterName: clusterName1
///       clusterResourceName: connectedClusters
///       clusterRp: Microsoft.Kubernetes
///       configurationProtectedSettings:
///         omsagent.secret.key: secretKeyValue01
///       configurationSettings:
///         omsagent.env.clusterName: clusterName1
///         omsagent.secret.wsid: fakeTokenPlaceholder
///       extensionName: ClusterMonitor
///       extensionType: azuremonitor-containers
///       releaseTrain: Preview
///       resourceGroupName: rg1
///       scope:
///         cluster:
///           releaseNamespace: kube-system
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Extension with Plan
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extension = new AzureNative.KubernetesConfiguration.Extension("extension", new()
///     {
///         AutoUpgradeMinorVersion = true,
///         ClusterName = "clusterName1",
///         ClusterResourceName = "connectedClusters",
///         ClusterRp = "Microsoft.Kubernetes",
///         ExtensionName = "azureVote",
///         ExtensionType = "azure-vote",
///         Plan = new AzureNative.KubernetesConfiguration.Inputs.PlanArgs
///         {
///             Name = "azure-vote-standard",
///             Product = "azure-vote-standard-offer-id",
///             Publisher = "Microsoft",
///         },
///         ReleaseTrain = "Preview",
///         ResourceGroupName = "rg1",
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
/// 		_, err := kubernetesconfiguration.NewExtension(ctx, "extension", &kubernetesconfiguration.ExtensionArgs{
/// 			AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 			ClusterName:             pulumi.String("clusterName1"),
/// 			ClusterResourceName:     pulumi.String("connectedClusters"),
/// 			ClusterRp:               pulumi.String("Microsoft.Kubernetes"),
/// 			ExtensionName:           pulumi.String("azureVote"),
/// 			ExtensionType:           pulumi.String("azure-vote"),
/// 			Plan: &kubernetesconfiguration.PlanArgs{
/// 				Name:      pulumi.String("azure-vote-standard"),
/// 				Product:   pulumi.String("azure-vote-standard-offer-id"),
/// 				Publisher: pulumi.String("Microsoft"),
/// 			},
/// 			ReleaseTrain:      pulumi.String("Preview"),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.kubernetesconfiguration.Extension;
/// import com.pulumi.azurenative.kubernetesconfiguration.ExtensionArgs;
/// import com.pulumi.azurenative.kubernetesconfiguration.inputs.PlanArgs;
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
///         var extension = new Extension("extension", ExtensionArgs.builder()
///             .autoUpgradeMinorVersion(true)
///             .clusterName("clusterName1")
///             .clusterResourceName("connectedClusters")
///             .clusterRp("Microsoft.Kubernetes")
///             .extensionName("azureVote")
///             .extensionType("azure-vote")
///             .plan(PlanArgs.builder()
///                 .name("azure-vote-standard")
///                 .product("azure-vote-standard-offer-id")
///                 .publisher("Microsoft")
///                 .build())
///             .releaseTrain("Preview")
///             .resourceGroupName("rg1")
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
/// const extension = new azure_native.kubernetesconfiguration.Extension("extension", {
///     autoUpgradeMinorVersion: true,
///     clusterName: "clusterName1",
///     clusterResourceName: "connectedClusters",
///     clusterRp: "Microsoft.Kubernetes",
///     extensionName: "azureVote",
///     extensionType: "azure-vote",
///     plan: {
///         name: "azure-vote-standard",
///         product: "azure-vote-standard-offer-id",
///         publisher: "Microsoft",
///     },
///     releaseTrain: "Preview",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// extension = azure_native.kubernetesconfiguration.Extension("extension",
///     auto_upgrade_minor_version=True,
///     cluster_name="clusterName1",
///     cluster_resource_name="connectedClusters",
///     cluster_rp="Microsoft.Kubernetes",
///     extension_name="azureVote",
///     extension_type="azure-vote",
///     plan={
///         "name": "azure-vote-standard",
///         "product": "azure-vote-standard-offer-id",
///         "publisher": "Microsoft",
///     },
///     release_train="Preview",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   extension:
///     type: azure-native:kubernetesconfiguration:Extension
///     properties:
///       autoUpgradeMinorVersion: true
///       clusterName: clusterName1
///       clusterResourceName: connectedClusters
///       clusterRp: Microsoft.Kubernetes
///       extensionName: azureVote
///       extensionType: azure-vote
///       plan:
///         name: azure-vote-standard
///         product: azure-vote-standard-offer-id
///         publisher: Microsoft
///       releaseTrain: Preview
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:kubernetesconfiguration:Extension azureVote /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{clusterRp}/{clusterResourceName}/{clusterName}/providers/Microsoft.KubernetesConfiguration/extensions/{extensionName}
/// ```
class Extension extends pulumi.CustomResource {
  /// Identity of the Extension resource in an AKS cluster
  late final pulumi.Output<ExtensionResponseAksAssignedIdentity?>
  aksAssignedIdentity;

  /// Flag to note if this extension participates in auto upgrade of minor version, or not.
  late final pulumi.Output<bool?> autoUpgradeMinorVersion;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  late final pulumi.Output<Map<String, String>?> configurationProtectedSettings;

  /// Configuration settings, as name-value pairs for configuring this extension.
  late final pulumi.Output<Map<String, String>?> configurationSettings;

  /// Currently installed version of the extension.
  late final pulumi.Output<String> currentVersion;

  /// Custom Location settings properties.
  late final pulumi.Output<Map<String, String>> customLocationSettings;

  /// Error information from the Agent - e.g. errors during installation.
  late final pulumi.Output<ErrorDetailResponse> errorInfo;

  /// Type of the Extension, of which this resource is an instance of.  It must be one of the Extension Types registered with Microsoft.KubernetesConfiguration by the Extension publisher.
  late final pulumi.Output<String?> extensionType;

  /// Identity of the Extension resource
  late final pulumi.Output<IdentityResponse?> identity;

  /// Flag to note if this extension is a system extension
  late final pulumi.Output<bool> isSystemExtension;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Uri of the Helm package
  late final pulumi.Output<String> packageUri;

  /// The plan information.
  late final pulumi.Output<PlanResponse?> plan;

  /// Status of installation of this extension.
  late final pulumi.Output<String> provisioningState;

  /// ReleaseTrain this extension participates in for auto-upgrade (e.g. Stable, Preview, etc.) - only if autoUpgradeMinorVersion is 'true'.
  late final pulumi.Output<String?> releaseTrain;

  /// Scope at which the extension is installed.
  late final pulumi.Output<ScopeResponse?> scope;

  /// Status from this extension.
  late final pulumi.Output<List<Map<String, dynamic>>?> statuses;

  /// Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// User-specified version of the extension for this extension to 'pin'. To use 'version', autoUpgradeMinorVersion must be 'false'.
  late final pulumi.Output<String?> version;

  /// Creates a new [Extension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Extension]. {@macro pulumi_kubernetesconfiguration_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Extension(
    String name, {
    ExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:kubernetesconfiguration:Extension',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aksAssignedIdentity = registerOutput<ExtensionResponseAksAssignedIdentity?>(
      'aksAssignedIdentity',
    );
    autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationProtectedSettings = registerOutput<Map<String, String>?>(
      'configurationProtectedSettings',
    );
    configurationSettings = registerOutput<Map<String, String>?>(
      'configurationSettings',
    );
    currentVersion = registerOutput<String>('currentVersion');
    customLocationSettings = registerOutput<Map<String, String>>(
      'customLocationSettings',
    );
    errorInfo = registerOutput<ErrorDetailResponse>('errorInfo');
    extensionType = registerOutput<String?>('extensionType');
    identity = registerOutput<IdentityResponse?>('identity');
    isSystemExtension = registerOutput<bool>('isSystemExtension');
    this.name = registerOutput<String>('name');
    packageUri = registerOutput<String>('packageUri');
    plan = registerOutput<PlanResponse?>('plan');
    provisioningState = registerOutput<String>('provisioningState');
    releaseTrain = registerOutput<String?>('releaseTrain');
    scope = registerOutput<ScopeResponse?>('scope');
    statuses = registerOutput<List<Map<String, dynamic>>?>('statuses');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
