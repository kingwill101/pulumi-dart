import 'package:pulumi/pulumi.dart' as pulumi;
import 'compliance_status_response.dart';
import 'helm_operator_properties_response.dart';
import 'source_control_configuration_args.dart';
import 'system_data_response.dart';

/// The SourceControl Configuration object returned in Get & Put response.
///
/// Uses Azure REST API version 2023-05-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2022-07-01, 2022-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetesconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Source Control Configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sourceControlConfiguration = new AzureNative.KubernetesConfiguration.SourceControlConfiguration("sourceControlConfiguration", new()
///     {
///         ClusterName = "clusterName1",
///         ClusterResourceName = "connectedClusters",
///         ClusterRp = "Microsoft.Kubernetes",
///         ConfigurationProtectedSettings =
///         {
///             { "protectedSetting1Key", "protectedSetting1Value" },
///         },
///         EnableHelmOperator = true,
///         HelmOperatorProperties = new AzureNative.KubernetesConfiguration.Inputs.HelmOperatorPropertiesArgs
///         {
///             ChartValues = "--set git.ssh.secretName=flux-git-deploy --set tillerNamespace=kube-system",
///             ChartVersion = "0.3.0",
///         },
///         OperatorInstanceName = "SRSGitHubFluxOp-01",
///         OperatorNamespace = "SRS_Namespace",
///         OperatorParams = "--git-email=xyzgituser@users.srs.github.com",
///         OperatorScope = AzureNative.KubernetesConfiguration.OperatorScopeType.@Namespace,
///         OperatorType = AzureNative.KubernetesConfiguration.OperatorType.Flux,
///         RepositoryUrl = "git@github.com:k8sdeveloper425/flux-get-started",
///         ResourceGroupName = "rg1",
///         SourceControlConfigurationName = "SRS_GitHubConfig",
///         SshKnownHostsContents = "c3NoLmRldi5henVyZS5jb20gc3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCQVFDN0hyMW9UV3FOcU9sekdKT2ZHSjROYWtWeUl6ZjFyWFlkNGQ3d282akJsa0x2Q0E0b2RCbEwwbURVeVowL1FVZlRUcWV1K3RtMjJnT3N2K1ZyVlRNazZ2d1JVNzVnWS95OXV0NU1iM2JSNUJWNThkS1h5cTlBOVVlQjVDYWtlaG41WmdtNngxbUtvVnlmK0ZGbjI2aVlxWEpSZ3pJWlpjWjVWNmhyRTBRZzM5a1ptNGF6NDhvMEFVYmY2U3A0U0xkdm51TWEyc1ZOd0hCYm9TN0VKa201N1hRUFZVMy9RcHlOTEhiV0Rkend0cmxTK2V6MzBTM0FkWWhMS0VPeEFHOHdlT255cnRMSkFVZW45bVRrb2w4b0lJMWVkZjdtV1diV1ZmMG5CbWx5MjErblpjbUNUSVNRQnRkY3lQYUVubzdmRlFNREQyNi9zMGxmS29iNEt3OEg=",
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
/// 		_, err := kubernetesconfiguration.NewSourceControlConfiguration(ctx, "sourceControlConfiguration", &kubernetesconfiguration.SourceControlConfigurationArgs{
/// 			ClusterName:         pulumi.String("clusterName1"),
/// 			ClusterResourceName: pulumi.String("connectedClusters"),
/// 			ClusterRp:           pulumi.String("Microsoft.Kubernetes"),
/// 			ConfigurationProtectedSettings: pulumi.StringMap{
/// 				"protectedSetting1Key": pulumi.String("protectedSetting1Value"),
/// 			},
/// 			EnableHelmOperator: pulumi.Bool(true),
/// 			HelmOperatorProperties: &kubernetesconfiguration.HelmOperatorPropertiesArgs{
/// 				ChartValues:  pulumi.String("--set git.ssh.secretName=flux-git-deploy --set tillerNamespace=kube-system"),
/// 				ChartVersion: pulumi.String("0.3.0"),
/// 			},
/// 			OperatorInstanceName:           pulumi.String("SRSGitHubFluxOp-01"),
/// 			OperatorNamespace:              pulumi.String("SRS_Namespace"),
/// 			OperatorParams:                 pulumi.String("--git-email=xyzgituser@users.srs.github.com"),
/// 			OperatorScope:                  pulumi.String(kubernetesconfiguration.OperatorScopeTypeNamespace),
/// 			OperatorType:                   pulumi.String(kubernetesconfiguration.OperatorTypeFlux),
/// 			RepositoryUrl:                  pulumi.String("git@github.com:k8sdeveloper425/flux-get-started"),
/// 			ResourceGroupName:              pulumi.String("rg1"),
/// 			SourceControlConfigurationName: pulumi.String("SRS_GitHubConfig"),
/// 			SshKnownHostsContents:          pulumi.String("c3NoLmRldi5henVyZS5jb20gc3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCQVFDN0hyMW9UV3FOcU9sekdKT2ZHSjROYWtWeUl6ZjFyWFlkNGQ3d282akJsa0x2Q0E0b2RCbEwwbURVeVowL1FVZlRUcWV1K3RtMjJnT3N2K1ZyVlRNazZ2d1JVNzVnWS95OXV0NU1iM2JSNUJWNThkS1h5cTlBOVVlQjVDYWtlaG41WmdtNngxbUtvVnlmK0ZGbjI2aVlxWEpSZ3pJWlpjWjVWNmhyRTBRZzM5a1ptNGF6NDhvMEFVYmY2U3A0U0xkdm51TWEyc1ZOd0hCYm9TN0VKa201N1hRUFZVMy9RcHlOTEhiV0Rkend0cmxTK2V6MzBTM0FkWWhMS0VPeEFHOHdlT255cnRMSkFVZW45bVRrb2w4b0lJMWVkZjdtV1diV1ZmMG5CbWx5MjErblpjbUNUSVNRQnRkY3lQYUVubzdmRlFNREQyNi9zMGxmS29iNEt3OEg="),
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
/// import com.pulumi.azurenative.kubernetesconfiguration.SourceControlConfiguration;
/// import com.pulumi.azurenative.kubernetesconfiguration.SourceControlConfigurationArgs;
/// import com.pulumi.azurenative.kubernetesconfiguration.inputs.HelmOperatorPropertiesArgs;
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
///         var sourceControlConfiguration = new SourceControlConfiguration("sourceControlConfiguration", SourceControlConfigurationArgs.builder()
///             .clusterName("clusterName1")
///             .clusterResourceName("connectedClusters")
///             .clusterRp("Microsoft.Kubernetes")
///             .configurationProtectedSettings(Map.of("protectedSetting1Key", "protectedSetting1Value"))
///             .enableHelmOperator(true)
///             .helmOperatorProperties(HelmOperatorPropertiesArgs.builder()
///                 .chartValues("--set git.ssh.secretName=flux-git-deploy --set tillerNamespace=kube-system")
///                 .chartVersion("0.3.0")
///                 .build())
///             .operatorInstanceName("SRSGitHubFluxOp-01")
///             .operatorNamespace("SRS_Namespace")
///             .operatorParams("--git-email=xyzgituser@users.srs.github.com")
///             .operatorScope("namespace")
///             .operatorType("Flux")
///             .repositoryUrl("git@github.com:k8sdeveloper425/flux-get-started")
///             .resourceGroupName("rg1")
///             .sourceControlConfigurationName("SRS_GitHubConfig")
///             .sshKnownHostsContents("c3NoLmRldi5henVyZS5jb20gc3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCQVFDN0hyMW9UV3FOcU9sekdKT2ZHSjROYWtWeUl6ZjFyWFlkNGQ3d282akJsa0x2Q0E0b2RCbEwwbURVeVowL1FVZlRUcWV1K3RtMjJnT3N2K1ZyVlRNazZ2d1JVNzVnWS95OXV0NU1iM2JSNUJWNThkS1h5cTlBOVVlQjVDYWtlaG41WmdtNngxbUtvVnlmK0ZGbjI2aVlxWEpSZ3pJWlpjWjVWNmhyRTBRZzM5a1ptNGF6NDhvMEFVYmY2U3A0U0xkdm51TWEyc1ZOd0hCYm9TN0VKa201N1hRUFZVMy9RcHlOTEhiV0Rkend0cmxTK2V6MzBTM0FkWWhMS0VPeEFHOHdlT255cnRMSkFVZW45bVRrb2w4b0lJMWVkZjdtV1diV1ZmMG5CbWx5MjErblpjbUNUSVNRQnRkY3lQYUVubzdmRlFNREQyNi9zMGxmS29iNEt3OEg=")
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
/// const sourceControlConfiguration = new azure_native.kubernetesconfiguration.SourceControlConfiguration("sourceControlConfiguration", {
///     clusterName: "clusterName1",
///     clusterResourceName: "connectedClusters",
///     clusterRp: "Microsoft.Kubernetes",
///     configurationProtectedSettings: {
///         protectedSetting1Key: "protectedSetting1Value",
///     },
///     enableHelmOperator: true,
///     helmOperatorProperties: {
///         chartValues: "--set git.ssh.secretName=flux-git-deploy --set tillerNamespace=kube-system",
///         chartVersion: "0.3.0",
///     },
///     operatorInstanceName: "SRSGitHubFluxOp-01",
///     operatorNamespace: "SRS_Namespace",
///     operatorParams: "--git-email=xyzgituser@users.srs.github.com",
///     operatorScope: azure_native.kubernetesconfiguration.OperatorScopeType.Namespace,
///     operatorType: azure_native.kubernetesconfiguration.OperatorType.Flux,
///     repositoryUrl: "git@github.com:k8sdeveloper425/flux-get-started",
///     resourceGroupName: "rg1",
///     sourceControlConfigurationName: "SRS_GitHubConfig",
///     sshKnownHostsContents: "c3NoLmRldi5henVyZS5jb20gc3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCQVFDN0hyMW9UV3FOcU9sekdKT2ZHSjROYWtWeUl6ZjFyWFlkNGQ3d282akJsa0x2Q0E0b2RCbEwwbURVeVowL1FVZlRUcWV1K3RtMjJnT3N2K1ZyVlRNazZ2d1JVNzVnWS95OXV0NU1iM2JSNUJWNThkS1h5cTlBOVVlQjVDYWtlaG41WmdtNngxbUtvVnlmK0ZGbjI2aVlxWEpSZ3pJWlpjWjVWNmhyRTBRZzM5a1ptNGF6NDhvMEFVYmY2U3A0U0xkdm51TWEyc1ZOd0hCYm9TN0VKa201N1hRUFZVMy9RcHlOTEhiV0Rkend0cmxTK2V6MzBTM0FkWWhMS0VPeEFHOHdlT255cnRMSkFVZW45bVRrb2w4b0lJMWVkZjdtV1diV1ZmMG5CbWx5MjErblpjbUNUSVNRQnRkY3lQYUVubzdmRlFNREQyNi9zMGxmS29iNEt3OEg=",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// source_control_configuration = azure_native.kubernetesconfiguration.SourceControlConfiguration("sourceControlConfiguration",
///     cluster_name="clusterName1",
///     cluster_resource_name="connectedClusters",
///     cluster_rp="Microsoft.Kubernetes",
///     configuration_protected_settings={
///         "protectedSetting1Key": "protectedSetting1Value",
///     },
///     enable_helm_operator=True,
///     helm_operator_properties={
///         "chart_values": "--set git.ssh.secretName=flux-git-deploy --set tillerNamespace=kube-system",
///         "chart_version": "0.3.0",
///     },
///     operator_instance_name="SRSGitHubFluxOp-01",
///     operator_namespace="SRS_Namespace",
///     operator_params="--git-email=xyzgituser@users.srs.github.com",
///     operator_scope=azure_native.kubernetesconfiguration.OperatorScopeType.NAMESPACE,
///     operator_type=azure_native.kubernetesconfiguration.OperatorType.FLUX,
///     repository_url="git@github.com:k8sdeveloper425/flux-get-started",
///     resource_group_name="rg1",
///     source_control_configuration_name="SRS_GitHubConfig",
///     ssh_known_hosts_contents="c3NoLmRldi5henVyZS5jb20gc3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCQVFDN0hyMW9UV3FOcU9sekdKT2ZHSjROYWtWeUl6ZjFyWFlkNGQ3d282akJsa0x2Q0E0b2RCbEwwbURVeVowL1FVZlRUcWV1K3RtMjJnT3N2K1ZyVlRNazZ2d1JVNzVnWS95OXV0NU1iM2JSNUJWNThkS1h5cTlBOVVlQjVDYWtlaG41WmdtNngxbUtvVnlmK0ZGbjI2aVlxWEpSZ3pJWlpjWjVWNmhyRTBRZzM5a1ptNGF6NDhvMEFVYmY2U3A0U0xkdm51TWEyc1ZOd0hCYm9TN0VKa201N1hRUFZVMy9RcHlOTEhiV0Rkend0cmxTK2V6MzBTM0FkWWhMS0VPeEFHOHdlT255cnRMSkFVZW45bVRrb2w4b0lJMWVkZjdtV1diV1ZmMG5CbWx5MjErblpjbUNUSVNRQnRkY3lQYUVubzdmRlFNREQyNi9zMGxmS29iNEt3OEg=")
///
/// ```
///
/// ```yaml
/// resources:
///   sourceControlConfiguration:
///     type: azure-native:kubernetesconfiguration:SourceControlConfiguration
///     properties:
///       clusterName: clusterName1
///       clusterResourceName: connectedClusters
///       clusterRp: Microsoft.Kubernetes
///       configurationProtectedSettings:
///         protectedSetting1Key: protectedSetting1Value
///       enableHelmOperator: true
///       helmOperatorProperties:
///         chartValues: --set git.ssh.secretName=flux-git-deploy --set tillerNamespace=kube-system
///         chartVersion: 0.3.0
///       operatorInstanceName: SRSGitHubFluxOp-01
///       operatorNamespace: SRS_Namespace
///       operatorParams: --git-email=xyzgituser@users.srs.github.com
///       operatorScope: namespace
///       operatorType: Flux
///       repositoryUrl: git@github.com:k8sdeveloper425/flux-get-started
///       resourceGroupName: rg1
///       sourceControlConfigurationName: SRS_GitHubConfig
///       sshKnownHostsContents: c3NoLmRldi5henVyZS5jb20gc3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCQVFDN0hyMW9UV3FOcU9sekdKT2ZHSjROYWtWeUl6ZjFyWFlkNGQ3d282akJsa0x2Q0E0b2RCbEwwbURVeVowL1FVZlRUcWV1K3RtMjJnT3N2K1ZyVlRNazZ2d1JVNzVnWS95OXV0NU1iM2JSNUJWNThkS1h5cTlBOVVlQjVDYWtlaG41WmdtNngxbUtvVnlmK0ZGbjI2aVlxWEpSZ3pJWlpjWjVWNmhyRTBRZzM5a1ptNGF6NDhvMEFVYmY2U3A0U0xkdm51TWEyc1ZOd0hCYm9TN0VKa201N1hRUFZVMy9RcHlOTEhiV0Rkend0cmxTK2V6MzBTM0FkWWhMS0VPeEFHOHdlT255cnRMSkFVZW45bVRrb2w4b0lJMWVkZjdtV1diV1ZmMG5CbWx5MjErblpjbUNUSVNRQnRkY3lQYUVubzdmRlFNREQyNi9zMGxmS29iNEt3OEg=
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
/// $ pulumi import azure-native:kubernetesconfiguration:SourceControlConfiguration SRS_GitHubConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{clusterRp}/{clusterResourceName}/{clusterName}/providers/Microsoft.KubernetesConfiguration/sourceControlConfigurations/{sourceControlConfigurationName}
/// ```
class SourceControlConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Compliance Status of the Configuration
  late final pulumi.Output<ComplianceStatusResponse> complianceStatus;

  /// Name-value pairs of protected configuration settings for the configuration
  late final pulumi.Output<Map<String, String>?> configurationProtectedSettings;

  /// Option to enable Helm Operator for this git configuration.
  late final pulumi.Output<bool?> enableHelmOperator;

  /// Properties for Helm operator.
  late final pulumi.Output<HelmOperatorPropertiesResponse?>
  helmOperatorProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Instance name of the operator - identifying the specific configuration.
  late final pulumi.Output<String?> operatorInstanceName;

  /// The namespace to which this operator is installed to. Maximum of 253 lower case alphanumeric characters, hyphen and period only.
  late final pulumi.Output<String?> operatorNamespace;

  /// Any Parameters for the Operator instance in string format.
  late final pulumi.Output<String?> operatorParams;

  /// Scope at which the operator will be installed.
  late final pulumi.Output<String?> operatorScope;

  /// Type of the operator
  late final pulumi.Output<String?> operatorType;

  /// The provisioning state of the resource provider.
  late final pulumi.Output<String> provisioningState;

  /// Public Key associated with this SourceControl configuration (either generated within the cluster or provided by the user).
  late final pulumi.Output<String> repositoryPublicKey;

  /// Url of the SourceControl Repository.
  late final pulumi.Output<String?> repositoryUrl;

  /// Base64-encoded known_hosts contents containing public SSH keys required to access private Git instances
  late final pulumi.Output<String?> sshKnownHostsContents;

  /// Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SourceControlConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceControlConfiguration]. {@macro pulumi_kubernetesconfiguration_source_control_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceControlConfiguration(
    String name, {
    SourceControlConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:kubernetesconfiguration:SourceControlConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    complianceStatus = registerOutput<ComplianceStatusResponse>(
      'complianceStatus',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComplianceStatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    configurationProtectedSettings = registerOutput<Map<String, String>?>(
      'configurationProtectedSettings',
    );
    enableHelmOperator = registerOutput<bool?>('enableHelmOperator');
    helmOperatorProperties = registerOutput<HelmOperatorPropertiesResponse?>(
      'helmOperatorProperties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HelmOperatorPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    operatorInstanceName = registerOutput<String?>('operatorInstanceName');
    operatorNamespace = registerOutput<String?>('operatorNamespace');
    operatorParams = registerOutput<String?>('operatorParams');
    operatorScope = registerOutput<String?>('operatorScope');
    operatorType = registerOutput<String?>('operatorType');
    provisioningState = registerOutput<String>('provisioningState');
    repositoryPublicKey = registerOutput<String>('repositoryPublicKey');
    repositoryUrl = registerOutput<String?>('repositoryUrl');
    sshKnownHostsContents = registerOutput<String?>('sshKnownHostsContents');
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
  }
}
