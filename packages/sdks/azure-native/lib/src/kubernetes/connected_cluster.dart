import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_profile_response.dart';
import 'arc_agent_profile_response.dart';
import 'connected_cluster_args.dart';
import 'connected_cluster_identity_response.dart';
import 'system_data_response.dart';

/// Represents a connected cluster.
///
/// Uses Azure REST API version 2024-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-01-preview.
///
/// Other available API versions: 2021-04-01-preview, 2021-10-01, 2022-05-01-preview, 2022-10-01-preview, 2023-11-01-preview, 2024-01-01, 2024-06-01-preview, 2024-07-01-preview, 2024-07-15-preview, 2024-12-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetes [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateClusterExample
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectedCluster = new AzureNative.Kubernetes.ConnectedCluster("connectedCluster", new()
///     {
///         AgentPublicKeyCertificate = "MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO",
///         AzureHybridBenefit = AzureNative.Kubernetes.AzureHybridBenefit.NotApplicable,
///         ClusterName = "testCluster",
///         Distribution = "AKS",
///         DistributionVersion = "1.0",
///         Identity = new AzureNative.Kubernetes.Inputs.ConnectedClusterIdentityArgs
///         {
///             Type = AzureNative.Kubernetes.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "East US",
///         ResourceGroupName = "k8sc-rg",
///         Tags = null,
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
/// 	kubernetes "github.com/pulumi/pulumi-azure-native-sdk/kubernetes/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetes.NewConnectedCluster(ctx, "connectedCluster", &kubernetes.ConnectedClusterArgs{
/// 			AgentPublicKeyCertificate: pulumi.String("MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO"),
/// 			AzureHybridBenefit:        pulumi.String(kubernetes.AzureHybridBenefitNotApplicable),
/// 			ClusterName:               pulumi.String("testCluster"),
/// 			Distribution:              pulumi.String("AKS"),
/// 			DistributionVersion:       pulumi.String("1.0"),
/// 			Identity: &kubernetes.ConnectedClusterIdentityArgs{
/// 				Type: kubernetes.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("k8sc-rg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.kubernetes.ConnectedCluster;
/// import com.pulumi.azurenative.kubernetes.ConnectedClusterArgs;
/// import com.pulumi.azurenative.kubernetes.inputs.ConnectedClusterIdentityArgs;
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
///         var connectedCluster = new ConnectedCluster("connectedCluster", ConnectedClusterArgs.builder()
///             .agentPublicKeyCertificate("MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO")
///             .azureHybridBenefit("NotApplicable")
///             .clusterName("testCluster")
///             .distribution("AKS")
///             .distributionVersion("1.0")
///             .identity(ConnectedClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("East US")
///             .resourceGroupName("k8sc-rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const connectedCluster = new azure_native.kubernetes.ConnectedCluster("connectedCluster", {
///     agentPublicKeyCertificate: "MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO",
///     azureHybridBenefit: azure_native.kubernetes.AzureHybridBenefit.NotApplicable,
///     clusterName: "testCluster",
///     distribution: "AKS",
///     distributionVersion: "1.0",
///     identity: {
///         type: azure_native.kubernetes.ResourceIdentityType.SystemAssigned,
///     },
///     location: "East US",
///     resourceGroupName: "k8sc-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connected_cluster = azure_native.kubernetes.ConnectedCluster("connectedCluster",
///     agent_public_key_certificate="MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO",
///     azure_hybrid_benefit=azure_native.kubernetes.AzureHybridBenefit.NOT_APPLICABLE,
///     cluster_name="testCluster",
///     distribution="AKS",
///     distribution_version="1.0",
///     identity={
///         "type": azure_native.kubernetes.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="East US",
///     resource_group_name="k8sc-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   connectedCluster:
///     type: azure-native:kubernetes:ConnectedCluster
///     properties:
///       agentPublicKeyCertificate: MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO
///       azureHybridBenefit: NotApplicable
///       clusterName: testCluster
///       distribution: AKS
///       distributionVersion: '1.0'
///       identity:
///         type: SystemAssigned
///       location: East US
///       resourceGroupName: k8sc-rg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateClusterPrivateLinkExample
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectedCluster = new AzureNative.Kubernetes.ConnectedCluster("connectedCluster", new()
///     {
///         AgentPublicKeyCertificate = "MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO",
///         AzureHybridBenefit = AzureNative.Kubernetes.AzureHybridBenefit.NotApplicable,
///         ClusterName = "testCluster",
///         Distribution = "AKS",
///         DistributionVersion = "1.0",
///         Identity = new AzureNative.Kubernetes.Inputs.ConnectedClusterIdentityArgs
///         {
///             Type = AzureNative.Kubernetes.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "East US",
///         PrivateLinkScopeResourceId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///         PrivateLinkState = AzureNative.Kubernetes.PrivateLinkState.Enabled,
///         ResourceGroupName = "k8sc-rg",
///         Tags = null,
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
/// 	kubernetes "github.com/pulumi/pulumi-azure-native-sdk/kubernetes/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetes.NewConnectedCluster(ctx, "connectedCluster", &kubernetes.ConnectedClusterArgs{
/// 			AgentPublicKeyCertificate: pulumi.String("MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO"),
/// 			AzureHybridBenefit:        pulumi.String(kubernetes.AzureHybridBenefitNotApplicable),
/// 			ClusterName:               pulumi.String("testCluster"),
/// 			Distribution:              pulumi.String("AKS"),
/// 			DistributionVersion:       pulumi.String("1.0"),
/// 			Identity: &kubernetes.ConnectedClusterIdentityArgs{
/// 				Type: kubernetes.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Location:                   pulumi.String("East US"),
/// 			PrivateLinkScopeResourceId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName"),
/// 			PrivateLinkState:           pulumi.String(kubernetes.PrivateLinkStateEnabled),
/// 			ResourceGroupName:          pulumi.String("k8sc-rg"),
/// 			Tags:                       pulumi.StringMap{},
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
/// import com.pulumi.azurenative.kubernetes.ConnectedCluster;
/// import com.pulumi.azurenative.kubernetes.ConnectedClusterArgs;
/// import com.pulumi.azurenative.kubernetes.inputs.ConnectedClusterIdentityArgs;
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
///         var connectedCluster = new ConnectedCluster("connectedCluster", ConnectedClusterArgs.builder()
///             .agentPublicKeyCertificate("MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO")
///             .azureHybridBenefit("NotApplicable")
///             .clusterName("testCluster")
///             .distribution("AKS")
///             .distributionVersion("1.0")
///             .identity(ConnectedClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("East US")
///             .privateLinkScopeResourceId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName")
///             .privateLinkState("Enabled")
///             .resourceGroupName("k8sc-rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const connectedCluster = new azure_native.kubernetes.ConnectedCluster("connectedCluster", {
///     agentPublicKeyCertificate: "MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO",
///     azureHybridBenefit: azure_native.kubernetes.AzureHybridBenefit.NotApplicable,
///     clusterName: "testCluster",
///     distribution: "AKS",
///     distributionVersion: "1.0",
///     identity: {
///         type: azure_native.kubernetes.ResourceIdentityType.SystemAssigned,
///     },
///     location: "East US",
///     privateLinkScopeResourceId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///     privateLinkState: azure_native.kubernetes.PrivateLinkState.Enabled,
///     resourceGroupName: "k8sc-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connected_cluster = azure_native.kubernetes.ConnectedCluster("connectedCluster",
///     agent_public_key_certificate="MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO",
///     azure_hybrid_benefit=azure_native.kubernetes.AzureHybridBenefit.NOT_APPLICABLE,
///     cluster_name="testCluster",
///     distribution="AKS",
///     distribution_version="1.0",
///     identity={
///         "type": azure_native.kubernetes.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="East US",
///     private_link_scope_resource_id="/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName",
///     private_link_state=azure_native.kubernetes.PrivateLinkState.ENABLED,
///     resource_group_name="k8sc-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   connectedCluster:
///     type: azure-native:kubernetes:ConnectedCluster
///     properties:
///       agentPublicKeyCertificate: MIICYzCCAcygAwIBAgIBADANBgkqhkiG9w0BAQUFADAuMQswCQYDVQQGEwJVUzEMMAoGA1UEChMDSUJNMREwDwYDVQQLEwhMb2NhbCBDQTAeFw05OTEyMjIwNTAwMDBaFw0wMDEyMjMwNDU5NTlaMC4xCzAJBgNVBAYTAlVTMQwwCgYDVQQKEwNJQk0xETAPBgNVBAsTCExvY2FsIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD2bZEo7xGaX2/0GHkrNFZvlxBou9v1Jmt/PDiTMPve8r9FeJAQ0QdvFST/0JPQYD20rH0bimdDLgNdNynmyRoS2S/IInfpmf69iyc2G0TPyRvmHIiOZbdCd+YBHQi1adkj17NDcWj6S14tVurFX73zx0sNoMS79q3tuXKrDsxeuwIDAQABo4GQMIGNMEsGCVUdDwGG+EIBDQQ+EzxHZW5lcmF0ZWQgYnkgdGhlIFNlY3VyZVdheSBTZWN1cml0eSBTZXJ2ZXIgZm9yIE9TLzM5MCAoUkFDRikwDgYDVR0PAQH/BAQDAgAGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFJ3+ocRyCTJw067dLSwr/nalx6YMMA0GCSqGSIb3DQEBBQUAA4GBAMaQzt+zaj1GU77yzlr8iiMBXgdQrwsZZWJo5exnAucJAEYQZmOfyLiM D6oYq+ZnfvM0n8G/Y79q8nhwvuxpYOnRSAXFp6xSkrIOeZtJMY1h00LKp/JX3Ng1svZ2agE126JHsQ0bhzN5TKsYfbwfTwfjdWAGy6Vf1nYi/rO+ryMO
///       azureHybridBenefit: NotApplicable
///       clusterName: testCluster
///       distribution: AKS
///       distributionVersion: '1.0'
///       identity:
///         type: SystemAssigned
///       location: East US
///       privateLinkScopeResourceId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.HybridCompute/privateLinkScopes/privateLinkScopeName
///       privateLinkState: Enabled
///       resourceGroupName: k8sc-rg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateCluster_KindExample
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectedCluster = new AzureNative.Kubernetes.ConnectedCluster("connectedCluster", new()
///     {
///         AadProfile = new AzureNative.Kubernetes.Inputs.AadProfileArgs
///         {
///             AdminGroupObjectIDs = new[]
///             {
///                 "56f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///             EnableAzureRBAC = true,
///             TenantID = "82f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///         AgentPublicKeyCertificate = "",
///         ArcAgentProfile = new AzureNative.Kubernetes.Inputs.ArcAgentProfileArgs
///         {
///             AgentAutoUpgrade = AzureNative.Kubernetes.AutoUpgradeOptions.Enabled,
///             DesiredAgentVersion = "0.1.0",
///             SystemComponents = new[]
///             {
///                 new AzureNative.Kubernetes.Inputs.SystemComponentArgs
///                 {
///                     MajorVersion = 0,
///                     Type = "Strato",
///                     UserSpecifiedVersion = "0.1.1",
///                 },
///             },
///         },
///         AzureHybridBenefit = AzureNative.Kubernetes.AzureHybridBenefit.NotApplicable,
///         ClusterName = "testCluster",
///         Distribution = "AKS",
///         DistributionVersion = "1.0",
///         Identity = new AzureNative.Kubernetes.Inputs.ConnectedClusterIdentityArgs
///         {
///             Type = AzureNative.Kubernetes.ResourceIdentityType.SystemAssigned,
///         },
///         Kind = AzureNative.Kubernetes.ConnectedClusterKind.ProvisionedCluster,
///         Location = "East US",
///         ResourceGroupName = "k8sc-rg",
///         Tags = null,
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
/// 	kubernetes "github.com/pulumi/pulumi-azure-native-sdk/kubernetes/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetes.NewConnectedCluster(ctx, "connectedCluster", &kubernetes.ConnectedClusterArgs{
/// 			AadProfile: &kubernetes.AadProfileArgs{
/// 				AdminGroupObjectIDs: pulumi.StringArray{
/// 					pulumi.String("56f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 				},
/// 				EnableAzureRBAC: pulumi.Bool(true),
/// 				TenantID:        pulumi.String("82f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 			},
/// 			AgentPublicKeyCertificate: pulumi.String(""),
/// 			ArcAgentProfile: &kubernetes.ArcAgentProfileArgs{
/// 				AgentAutoUpgrade:    pulumi.String(kubernetes.AutoUpgradeOptionsEnabled),
/// 				DesiredAgentVersion: pulumi.String("0.1.0"),
/// 				SystemComponents: kubernetes.SystemComponentArray{
/// 					&kubernetes.SystemComponentArgs{
/// 						MajorVersion:         pulumi.Int(0),
/// 						Type:                 pulumi.String("Strato"),
/// 						UserSpecifiedVersion: pulumi.String("0.1.1"),
/// 					},
/// 				},
/// 			},
/// 			AzureHybridBenefit:  pulumi.String(kubernetes.AzureHybridBenefitNotApplicable),
/// 			ClusterName:         pulumi.String("testCluster"),
/// 			Distribution:        pulumi.String("AKS"),
/// 			DistributionVersion: pulumi.String("1.0"),
/// 			Identity: &kubernetes.ConnectedClusterIdentityArgs{
/// 				Type: kubernetes.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Kind:              pulumi.String(kubernetes.ConnectedClusterKindProvisionedCluster),
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("k8sc-rg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.kubernetes.ConnectedCluster;
/// import com.pulumi.azurenative.kubernetes.ConnectedClusterArgs;
/// import com.pulumi.azurenative.kubernetes.inputs.AadProfileArgs;
/// import com.pulumi.azurenative.kubernetes.inputs.ArcAgentProfileArgs;
/// import com.pulumi.azurenative.kubernetes.inputs.ConnectedClusterIdentityArgs;
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
///         var connectedCluster = new ConnectedCluster("connectedCluster", ConnectedClusterArgs.builder()
///             .aadProfile(AadProfileArgs.builder()
///                 .adminGroupObjectIDs("56f988bf-86f1-41af-91ab-2d7cd011db47")
///                 .enableAzureRBAC(true)
///                 .tenantID("82f988bf-86f1-41af-91ab-2d7cd011db47")
///                 .build())
///             .agentPublicKeyCertificate("")
///             .arcAgentProfile(ArcAgentProfileArgs.builder()
///                 .agentAutoUpgrade("Enabled")
///                 .desiredAgentVersion("0.1.0")
///                 .systemComponents(SystemComponentArgs.builder()
///                     .majorVersion(0)
///                     .type("Strato")
///                     .userSpecifiedVersion("0.1.1")
///                     .build())
///                 .build())
///             .azureHybridBenefit("NotApplicable")
///             .clusterName("testCluster")
///             .distribution("AKS")
///             .distributionVersion("1.0")
///             .identity(ConnectedClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .kind("ProvisionedCluster")
///             .location("East US")
///             .resourceGroupName("k8sc-rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const connectedCluster = new azure_native.kubernetes.ConnectedCluster("connectedCluster", {
///     aadProfile: {
///         adminGroupObjectIDs: ["56f988bf-86f1-41af-91ab-2d7cd011db47"],
///         enableAzureRBAC: true,
///         tenantID: "82f988bf-86f1-41af-91ab-2d7cd011db47",
///     },
///     agentPublicKeyCertificate: "",
///     arcAgentProfile: {
///         agentAutoUpgrade: azure_native.kubernetes.AutoUpgradeOptions.Enabled,
///         desiredAgentVersion: "0.1.0",
///         systemComponents: [{
///             majorVersion: 0,
///             type: "Strato",
///             userSpecifiedVersion: "0.1.1",
///         }],
///     },
///     azureHybridBenefit: azure_native.kubernetes.AzureHybridBenefit.NotApplicable,
///     clusterName: "testCluster",
///     distribution: "AKS",
///     distributionVersion: "1.0",
///     identity: {
///         type: azure_native.kubernetes.ResourceIdentityType.SystemAssigned,
///     },
///     kind: azure_native.kubernetes.ConnectedClusterKind.ProvisionedCluster,
///     location: "East US",
///     resourceGroupName: "k8sc-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connected_cluster = azure_native.kubernetes.ConnectedCluster("connectedCluster",
///     aad_profile={
///         "admin_group_object_ids": ["56f988bf-86f1-41af-91ab-2d7cd011db47"],
///         "enable_azure_rbac": True,
///         "tenant_id": "82f988bf-86f1-41af-91ab-2d7cd011db47",
///     },
///     agent_public_key_certificate="",
///     arc_agent_profile={
///         "agent_auto_upgrade": azure_native.kubernetes.AutoUpgradeOptions.ENABLED,
///         "desired_agent_version": "0.1.0",
///         "system_components": [{
///             "major_version": 0,
///             "type": "Strato",
///             "user_specified_version": "0.1.1",
///         }],
///     },
///     azure_hybrid_benefit=azure_native.kubernetes.AzureHybridBenefit.NOT_APPLICABLE,
///     cluster_name="testCluster",
///     distribution="AKS",
///     distribution_version="1.0",
///     identity={
///         "type": azure_native.kubernetes.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind=azure_native.kubernetes.ConnectedClusterKind.PROVISIONED_CLUSTER,
///     location="East US",
///     resource_group_name="k8sc-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   connectedCluster:
///     type: azure-native:kubernetes:ConnectedCluster
///     properties:
///       aadProfile:
///         adminGroupObjectIDs:
///           - 56f988bf-86f1-41af-91ab-2d7cd011db47
///         enableAzureRBAC: true
///         tenantID: 82f988bf-86f1-41af-91ab-2d7cd011db47
///       agentPublicKeyCertificate: ""
///       arcAgentProfile:
///         agentAutoUpgrade: Enabled
///         desiredAgentVersion: 0.1.0
///         systemComponents:
///           - majorVersion: 0
///             type: Strato
///             userSpecifiedVersion: 0.1.1
///       azureHybridBenefit: NotApplicable
///       clusterName: testCluster
///       distribution: AKS
///       distributionVersion: '1.0'
///       identity:
///         type: SystemAssigned
///       kind: ProvisionedCluster
///       location: East US
///       resourceGroupName: k8sc-rg
///       tags: {}
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
/// $ pulumi import azure-native:kubernetes:ConnectedCluster connectedCluster1 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Kubernetes/connectedClusters/{clusterName}
/// ```
class ConnectedCluster extends pulumi.CustomResource {
  /// AAD profile for the connected cluster.
  late final pulumi.Output<AadProfileResponse?> aadProfile;

  /// Base64 encoded public certificate used by the agent to do the initial handshake to the backend services in Azure.
  late final pulumi.Output<String> agentPublicKeyCertificate;

  /// Version of the agent running on the connected cluster resource
  late final pulumi.Output<String> agentVersion;

  /// Arc agentry configuration for the provisioned cluster.
  late final pulumi.Output<ArcAgentProfileResponse?> arcAgentProfile;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Indicates whether Azure Hybrid Benefit is opted in
  late final pulumi.Output<String?> azureHybridBenefit;

  /// Represents the connectivity status of the connected cluster.
  late final pulumi.Output<String> connectivityStatus;

  /// The Kubernetes distribution running on this connected cluster.
  late final pulumi.Output<String?> distribution;

  /// The Kubernetes distribution version on this connected cluster.
  late final pulumi.Output<String?> distributionVersion;

  /// The identity of the connected cluster.
  late final pulumi.Output<ConnectedClusterIdentityResponse> identity;

  /// The infrastructure on which the Kubernetes cluster represented by this connected cluster is running on.
  late final pulumi.Output<String?> infrastructure;

  /// The kind of connected cluster.
  late final pulumi.Output<String?> kind;

  /// The Kubernetes version of the connected cluster resource
  late final pulumi.Output<String> kubernetesVersion;

  /// Time representing the last instance when heart beat was received from the cluster
  late final pulumi.Output<String> lastConnectivityTime;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Expiration time of the managed identity certificate
  late final pulumi.Output<String> managedIdentityCertificateExpirationTime;

  /// More properties related to the Connected Cluster
  late final pulumi.Output<Map<String, String>> miscellaneousProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Connected cluster offering
  late final pulumi.Output<String> offering;

  /// The resource id of the private link scope this connected cluster is assigned to, if any.
  late final pulumi.Output<String?> privateLinkScopeResourceId;

  /// Property which describes the state of private link on a connected cluster resource.
  late final pulumi.Output<String?> privateLinkState;

  /// Provisioning state of the connected cluster resource.
  late final pulumi.Output<String?> provisioningState;

  /// Metadata pertaining to creation and last modification of the resource
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Number of CPU cores present in the connected cluster resource
  late final pulumi.Output<int> totalCoreCount;

  /// Number of nodes present in the connected cluster resource
  late final pulumi.Output<int> totalNodeCount;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectedCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectedCluster]. {@macro pulumi_kubernetes_connected_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectedCluster(
    String name, {
    ConnectedClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:kubernetes:ConnectedCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aadProfile = registerOutput<AadProfileResponse?>('aadProfile');
    agentPublicKeyCertificate = registerOutput<String>(
      'agentPublicKeyCertificate',
    );
    agentVersion = registerOutput<String>('agentVersion');
    arcAgentProfile = registerOutput<ArcAgentProfileResponse?>(
      'arcAgentProfile',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureHybridBenefit = registerOutput<String?>('azureHybridBenefit');
    connectivityStatus = registerOutput<String>('connectivityStatus');
    distribution = registerOutput<String?>('distribution');
    distributionVersion = registerOutput<String?>('distributionVersion');
    identity = registerOutput<ConnectedClusterIdentityResponse>('identity');
    infrastructure = registerOutput<String?>('infrastructure');
    kind = registerOutput<String?>('kind');
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    lastConnectivityTime = registerOutput<String>('lastConnectivityTime');
    location = registerOutput<String>('location');
    managedIdentityCertificateExpirationTime = registerOutput<String>(
      'managedIdentityCertificateExpirationTime',
    );
    miscellaneousProperties = registerOutput<Map<String, String>>(
      'miscellaneousProperties',
    );
    this.name = registerOutput<String>('name');
    offering = registerOutput<String>('offering');
    privateLinkScopeResourceId = registerOutput<String?>(
      'privateLinkScopeResourceId',
    );
    privateLinkState = registerOutput<String?>('privateLinkState');
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    totalCoreCount = registerOutput<int>('totalCoreCount');
    totalNodeCount = registerOutput<int>('totalNodeCount');
    type = registerOutput<String>('type');
  }
}
