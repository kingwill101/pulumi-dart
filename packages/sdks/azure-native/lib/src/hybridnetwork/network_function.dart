import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'network_function_args.dart';
import 'network_function_value_with_secrets_response.dart';
import 'system_data_response.dart';

/// Network function resource response.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2022-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create first party network function resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFunction = new AzureNative.HybridNetwork.NetworkFunction("networkFunction", new()
///     {
///         Location = "eastus",
///         NetworkFunctionName = "testNf",
///         Properties = new AzureNative.HybridNetwork.Inputs.NetworkFunctionValueWithoutSecretsArgs
///         {
///             AllowSoftwareUpdate = false,
///             ConfigurationType = "Open",
///             DeploymentValues = "{\"releaseName\":\"testReleaseName\",\"namespace\":\"testNamespace\"}",
///             NetworkFunctionDefinitionVersionResourceReference = new AzureNative.HybridNetwork.Inputs.SecretDeploymentResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///                 IdType = "Secret",
///             },
///             NfviId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///             NfviType = AzureNative.HybridNetwork.NFVIType.AzureArcKubernetes,
///             RoleOverrideValues = new[]
///             {
///                 "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///                 "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}",
///             },
///         },
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewNetworkFunction(ctx, "networkFunction", &hybridnetwork.NetworkFunctionArgs{
/// 			Location:            pulumi.String("eastus"),
/// 			NetworkFunctionName: pulumi.String("testNf"),
/// 			Properties: &hybridnetwork.NetworkFunctionValueWithoutSecretsArgs{
/// 				AllowSoftwareUpdate: pulumi.Bool(false),
/// 				ConfigurationType:   pulumi.String("Open"),
/// 				DeploymentValues:    pulumi.String("{\"releaseName\":\"testReleaseName\",\"namespace\":\"testNamespace\"}"),
/// 				NetworkFunctionDefinitionVersionResourceReference: hybridnetwork.SecretDeploymentResourceReference{
/// 					Id:     "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
/// 					IdType: "Secret",
/// 				},
/// 				NfviId:   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation"),
/// 				NfviType: pulumi.String(hybridnetwork.NFVITypeAzureArcKubernetes),
/// 				RoleOverrideValues: pulumi.StringArray{
/// 					pulumi.String("{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}"),
/// 					pulumi.String("{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunction;
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionArgs;
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
///         var networkFunction = new NetworkFunction("networkFunction", NetworkFunctionArgs.builder()
///             .location("eastus")
///             .networkFunctionName("testNf")
///             .properties(NetworkFunctionValueWithoutSecretsArgs.builder()
///                 .allowSoftwareUpdate(false)
///                 .configurationType("Open")
///                 .deploymentValues("{\"releaseName\":\"testReleaseName\",\"namespace\":\"testNamespace\"}")
///                 .networkFunctionDefinitionVersionResourceReference(SecretDeploymentResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1")
///                     .idType("Secret")
///                     .build())
///                 .nfviId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation")
///                 .nfviType("AzureArcKubernetes")
///                 .roleOverrideValues(
///                     "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///                     "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}")
///                 .build())
///             .resourceGroupName("rg")
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
/// const networkFunction = new azure_native.hybridnetwork.NetworkFunction("networkFunction", {
///     location: "eastus",
///     networkFunctionName: "testNf",
///     properties: {
///         allowSoftwareUpdate: false,
///         configurationType: "Open",
///         deploymentValues: "{\"releaseName\":\"testReleaseName\",\"namespace\":\"testNamespace\"}",
///         networkFunctionDefinitionVersionResourceReference: {
///             id: "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///             idType: "Secret",
///         },
///         nfviId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///         nfviType: azure_native.hybridnetwork.NFVIType.AzureArcKubernetes,
///         roleOverrideValues: [
///             "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///             "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}",
///         ],
///     },
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_function = azure_native.hybridnetwork.NetworkFunction("networkFunction",
///     location="eastus",
///     network_function_name="testNf",
///     properties={
///         "allow_software_update": False,
///         "configuration_type": "Open",
///         "deployment_values": "{\"releaseName\":\"testReleaseName\",\"namespace\":\"testNamespace\"}",
///         "network_function_definition_version_resource_reference": {
///             "id": "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///             "id_type": "Secret",
///         },
///         "nfvi_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///         "nfvi_type": azure_native.hybridnetwork.NFVIType.AZURE_ARC_KUBERNETES,
///         "role_override_values": [
///             "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///             "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}",
///         ],
///     },
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkFunction:
///     type: azure-native:hybridnetwork:NetworkFunction
///     properties:
///       location: eastus
///       networkFunctionName: testNf
///       properties:
///         allowSoftwareUpdate: false
///         configurationType: Open
///         deploymentValues: '{"releaseName":"testReleaseName","namespace":"testNamespace"}'
///         networkFunctionDefinitionVersionResourceReference:
///           id: /subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1
///           idType: Secret
///         nfviId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation
///         nfviType: AzureArcKubernetes
///         roleOverrideValues:
///           - '{"name":"testRoleOne","deployParametersMappingRuleProfile":{"helmMappingRuleProfile":{"helmPackageVersion":"2.1.3","values":"{\"roleOneParam\":\"roleOneOverrideValue\"}"}}}'
///           - '{"name":"testRoleTwo","deployParametersMappingRuleProfile":{"helmMappingRuleProfile":{"releaseName":"overrideReleaseName","releaseNamespace":"overrideNamespace","values":"{\"roleTwoParam\":\"roleTwoOverrideValue\"}"}}}'
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create network function resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFunction = new AzureNative.HybridNetwork.NetworkFunction("networkFunction", new()
///     {
///         Location = "eastus",
///         NetworkFunctionName = "testNf",
///         Properties = new AzureNative.HybridNetwork.Inputs.NetworkFunctionValueWithoutSecretsArgs
///         {
///             AllowSoftwareUpdate = false,
///             ConfigurationType = "Open",
///             DeploymentValues = "{\"releaseName\":\"testReleaseName\",\"namespace\":\"testNamespace\"}",
///             NetworkFunctionDefinitionVersionResourceReference = new AzureNative.HybridNetwork.Inputs.OpenDeploymentResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///                 IdType = "Open",
///             },
///             NfviId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///             NfviType = AzureNative.HybridNetwork.NFVIType.AzureArcKubernetes,
///             RoleOverrideValues = new[]
///             {
///                 "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///                 "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}",
///             },
///         },
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewNetworkFunction(ctx, "networkFunction", &hybridnetwork.NetworkFunctionArgs{
/// 			Location:            pulumi.String("eastus"),
/// 			NetworkFunctionName: pulumi.String("testNf"),
/// 			Properties: &hybridnetwork.NetworkFunctionValueWithoutSecretsArgs{
/// 				AllowSoftwareUpdate: pulumi.Bool(false),
/// 				ConfigurationType:   pulumi.String("Open"),
/// 				DeploymentValues:    pulumi.String("{\"releaseName\":\"testReleaseName\",\"namespace\":\"testNamespace\"}"),
/// 				NetworkFunctionDefinitionVersionResourceReference: hybridnetwork.OpenDeploymentResourceReference{
/// 					Id:     "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
/// 					IdType: "Open",
/// 				},
/// 				NfviId:   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation"),
/// 				NfviType: pulumi.String(hybridnetwork.NFVITypeAzureArcKubernetes),
/// 				RoleOverrideValues: pulumi.StringArray{
/// 					pulumi.String("{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}"),
/// 					pulumi.String("{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunction;
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionArgs;
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
///         var networkFunction = new NetworkFunction("networkFunction", NetworkFunctionArgs.builder()
///             .location("eastus")
///             .networkFunctionName("testNf")
///             .properties(NetworkFunctionValueWithoutSecretsArgs.builder()
///                 .allowSoftwareUpdate(false)
///                 .configurationType("Open")
///                 .deploymentValues("{\"releaseName\":\"testReleaseName\",\"namespace\":\"testNamespace\"}")
///                 .networkFunctionDefinitionVersionResourceReference(OpenDeploymentResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1")
///                     .idType("Open")
///                     .build())
///                 .nfviId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation")
///                 .nfviType("AzureArcKubernetes")
///                 .roleOverrideValues(
///                     "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///                     "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}")
///                 .build())
///             .resourceGroupName("rg")
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
/// const networkFunction = new azure_native.hybridnetwork.NetworkFunction("networkFunction", {
///     location: "eastus",
///     networkFunctionName: "testNf",
///     properties: {
///         allowSoftwareUpdate: false,
///         configurationType: "Open",
///         deploymentValues: "{\"releaseName\":\"testReleaseName\",\"namespace\":\"testNamespace\"}",
///         networkFunctionDefinitionVersionResourceReference: {
///             id: "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///             idType: "Open",
///         },
///         nfviId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///         nfviType: azure_native.hybridnetwork.NFVIType.AzureArcKubernetes,
///         roleOverrideValues: [
///             "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///             "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}",
///         ],
///     },
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_function = azure_native.hybridnetwork.NetworkFunction("networkFunction",
///     location="eastus",
///     network_function_name="testNf",
///     properties={
///         "allow_software_update": False,
///         "configuration_type": "Open",
///         "deployment_values": "{\"releaseName\":\"testReleaseName\",\"namespace\":\"testNamespace\"}",
///         "network_function_definition_version_resource_reference": {
///             "id": "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///             "id_type": "Open",
///         },
///         "nfvi_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///         "nfvi_type": azure_native.hybridnetwork.NFVIType.AZURE_ARC_KUBERNETES,
///         "role_override_values": [
///             "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///             "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}",
///         ],
///     },
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkFunction:
///     type: azure-native:hybridnetwork:NetworkFunction
///     properties:
///       location: eastus
///       networkFunctionName: testNf
///       properties:
///         allowSoftwareUpdate: false
///         configurationType: Open
///         deploymentValues: '{"releaseName":"testReleaseName","namespace":"testNamespace"}'
///         networkFunctionDefinitionVersionResourceReference:
///           id: /subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1
///           idType: Open
///         nfviId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation
///         nfviType: AzureArcKubernetes
///         roleOverrideValues:
///           - '{"name":"testRoleOne","deployParametersMappingRuleProfile":{"helmMappingRuleProfile":{"helmPackageVersion":"2.1.3","values":"{\"roleOneParam\":\"roleOneOverrideValue\"}"}}}'
///           - '{"name":"testRoleTwo","deployParametersMappingRuleProfile":{"helmMappingRuleProfile":{"releaseName":"overrideReleaseName","releaseNamespace":"overrideNamespace","values":"{\"roleTwoParam\":\"roleTwoOverrideValue\"}"}}}'
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create network function resource with secrets
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFunction = new AzureNative.HybridNetwork.NetworkFunction("networkFunction", new()
///     {
///         Location = "eastus",
///         NetworkFunctionName = "testNf",
///         Properties = new AzureNative.HybridNetwork.Inputs.NetworkFunctionValueWithSecretsArgs
///         {
///             AllowSoftwareUpdate = false,
///             ConfigurationType = "Secret",
///             NetworkFunctionDefinitionVersionResourceReference = new AzureNative.HybridNetwork.Inputs.OpenDeploymentResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///                 IdType = "Open",
///             },
///             NfviId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///             NfviType = AzureNative.HybridNetwork.NFVIType.AzureArcKubernetes,
///             RoleOverrideValues = new[]
///             {
///                 "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///                 "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}",
///             },
///             SecretDeploymentValues = "{\"adminPassword\":\"password1\",\"userPassword\":\"password2\"}",
///         },
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewNetworkFunction(ctx, "networkFunction", &hybridnetwork.NetworkFunctionArgs{
/// 			Location:            pulumi.String("eastus"),
/// 			NetworkFunctionName: pulumi.String("testNf"),
/// 			Properties: &hybridnetwork.NetworkFunctionValueWithSecretsArgs{
/// 				AllowSoftwareUpdate: pulumi.Bool(false),
/// 				ConfigurationType:   pulumi.String("Secret"),
/// 				NetworkFunctionDefinitionVersionResourceReference: hybridnetwork.OpenDeploymentResourceReference{
/// 					Id:     "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
/// 					IdType: "Open",
/// 				},
/// 				NfviId:   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation"),
/// 				NfviType: pulumi.String(hybridnetwork.NFVITypeAzureArcKubernetes),
/// 				RoleOverrideValues: pulumi.StringArray{
/// 					pulumi.String("{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}"),
/// 					pulumi.String("{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}"),
/// 				},
/// 				SecretDeploymentValues: pulumi.String("{\"adminPassword\":\"password1\",\"userPassword\":\"password2\"}"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunction;
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionArgs;
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
///         var networkFunction = new NetworkFunction("networkFunction", NetworkFunctionArgs.builder()
///             .location("eastus")
///             .networkFunctionName("testNf")
///             .properties(NetworkFunctionValueWithSecretsArgs.builder()
///                 .allowSoftwareUpdate(false)
///                 .configurationType("Secret")
///                 .networkFunctionDefinitionVersionResourceReference(OpenDeploymentResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1")
///                     .idType("Open")
///                     .build())
///                 .nfviId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation")
///                 .nfviType("AzureArcKubernetes")
///                 .roleOverrideValues(
///                     "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///                     "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}")
///                 .secretDeploymentValues("{\"adminPassword\":\"password1\",\"userPassword\":\"password2\"}")
///                 .build())
///             .resourceGroupName("rg")
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
/// const networkFunction = new azure_native.hybridnetwork.NetworkFunction("networkFunction", {
///     location: "eastus",
///     networkFunctionName: "testNf",
///     properties: {
///         allowSoftwareUpdate: false,
///         configurationType: "Secret",
///         networkFunctionDefinitionVersionResourceReference: {
///             id: "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///             idType: "Open",
///         },
///         nfviId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///         nfviType: azure_native.hybridnetwork.NFVIType.AzureArcKubernetes,
///         roleOverrideValues: [
///             "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///             "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}",
///         ],
///         secretDeploymentValues: "{\"adminPassword\":\"password1\",\"userPassword\":\"password2\"}",
///     },
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_function = azure_native.hybridnetwork.NetworkFunction("networkFunction",
///     location="eastus",
///     network_function_name="testNf",
///     properties={
///         "allow_software_update": False,
///         "configuration_type": "Secret",
///         "network_function_definition_version_resource_reference": {
///             "id": "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///             "id_type": "Open",
///         },
///         "nfvi_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///         "nfvi_type": azure_native.hybridnetwork.NFVIType.AZURE_ARC_KUBERNETES,
///         "role_override_values": [
///             "{\"name\":\"testRoleOne\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"helmPackageVersion\":\"2.1.3\",\"values\":\"{\\\"roleOneParam\\\":\\\"roleOneOverrideValue\\\"}\"}}}",
///             "{\"name\":\"testRoleTwo\",\"deployParametersMappingRuleProfile\":{\"helmMappingRuleProfile\":{\"releaseName\":\"overrideReleaseName\",\"releaseNamespace\":\"overrideNamespace\",\"values\":\"{\\\"roleTwoParam\\\":\\\"roleTwoOverrideValue\\\"}\"}}}",
///         ],
///         "secret_deployment_values": "{\"adminPassword\":\"password1\",\"userPassword\":\"password2\"}",
///     },
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkFunction:
///     type: azure-native:hybridnetwork:NetworkFunction
///     properties:
///       location: eastus
///       networkFunctionName: testNf
///       properties:
///         allowSoftwareUpdate: false
///         configurationType: Secret
///         networkFunctionDefinitionVersionResourceReference:
///           id: /subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1
///           idType: Open
///         nfviId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation
///         nfviType: AzureArcKubernetes
///         roleOverrideValues:
///           - '{"name":"testRoleOne","deployParametersMappingRuleProfile":{"helmMappingRuleProfile":{"helmPackageVersion":"2.1.3","values":"{\"roleOneParam\":\"roleOneOverrideValue\"}"}}}'
///           - '{"name":"testRoleTwo","deployParametersMappingRuleProfile":{"helmMappingRuleProfile":{"releaseName":"overrideReleaseName","releaseNamespace":"overrideNamespace","values":"{\"roleTwoParam\":\"roleTwoOverrideValue\"}"}}}'
///         secretDeploymentValues: '{"adminPassword":"password1","userPassword":"password2"}'
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create virtual network function resource on AzureCore
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFunction = new AzureNative.HybridNetwork.NetworkFunction("networkFunction", new()
///     {
///         Location = "eastus",
///         NetworkFunctionName = "testNf",
///         Properties = new AzureNative.HybridNetwork.Inputs.NetworkFunctionValueWithoutSecretsArgs
///         {
///             AllowSoftwareUpdate = false,
///             ConfigurationType = "Open",
///             DeploymentValues = "{\"virtualMachineName\":\"test-VM\",\"cpuCores\":4,\"memorySizeGB\":8,\"cloudServicesNetworkAttachment\":{\"attachedNetworkId\":\"test-csnet\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-cs-vlan\"},\"networkAttachments\":[{\"attachedNetworkId\":\"test-l3vlan\",\"defaultGateway\":\"True\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-vlan\"}],\"sshPublicKeys\":[{\"keyData\":\"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ==\"}],\"storageProfile\":{\"osDisk\":{\"createOption\":\"Ephemeral\",\"deleteOption\":\"Delete\",\"diskSizeGB\":10}},\"userData\":\"testUserData\",\"adminUsername\":\"testUser\",\"virtioInterface\":\"Transitional\",\"isolateEmulatorThread\":\"False\",\"bootMethod\":\"BIOS\",\"placementHints\":[]}",
///             NetworkFunctionDefinitionVersionResourceReference = new AzureNative.HybridNetwork.Inputs.OpenDeploymentResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///                 IdType = "Open",
///             },
///             NfviId = "/subscriptions/subid/resourceGroups/testResourceGroup",
///             NfviType = AzureNative.HybridNetwork.NFVIType.AzureCore,
///         },
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewNetworkFunction(ctx, "networkFunction", &hybridnetwork.NetworkFunctionArgs{
/// 			Location:            pulumi.String("eastus"),
/// 			NetworkFunctionName: pulumi.String("testNf"),
/// 			Properties: &hybridnetwork.NetworkFunctionValueWithoutSecretsArgs{
/// 				AllowSoftwareUpdate: pulumi.Bool(false),
/// 				ConfigurationType:   pulumi.String("Open"),
/// 				DeploymentValues:    pulumi.String("{\"virtualMachineName\":\"test-VM\",\"cpuCores\":4,\"memorySizeGB\":8,\"cloudServicesNetworkAttachment\":{\"attachedNetworkId\":\"test-csnet\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-cs-vlan\"},\"networkAttachments\":[{\"attachedNetworkId\":\"test-l3vlan\",\"defaultGateway\":\"True\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-vlan\"}],\"sshPublicKeys\":[{\"keyData\":\"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ==\"}],\"storageProfile\":{\"osDisk\":{\"createOption\":\"Ephemeral\",\"deleteOption\":\"Delete\",\"diskSizeGB\":10}},\"userData\":\"testUserData\",\"adminUsername\":\"testUser\",\"virtioInterface\":\"Transitional\",\"isolateEmulatorThread\":\"False\",\"bootMethod\":\"BIOS\",\"placementHints\":[]}"),
/// 				NetworkFunctionDefinitionVersionResourceReference: hybridnetwork.OpenDeploymentResourceReference{
/// 					Id:     "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
/// 					IdType: "Open",
/// 				},
/// 				NfviId:   pulumi.String("/subscriptions/subid/resourceGroups/testResourceGroup"),
/// 				NfviType: pulumi.String(hybridnetwork.NFVITypeAzureCore),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunction;
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionArgs;
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
///         var networkFunction = new NetworkFunction("networkFunction", NetworkFunctionArgs.builder()
///             .location("eastus")
///             .networkFunctionName("testNf")
///             .properties(NetworkFunctionValueWithoutSecretsArgs.builder()
///                 .allowSoftwareUpdate(false)
///                 .configurationType("Open")
///                 .deploymentValues("{\"virtualMachineName\":\"test-VM\",\"cpuCores\":4,\"memorySizeGB\":8,\"cloudServicesNetworkAttachment\":{\"attachedNetworkId\":\"test-csnet\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-cs-vlan\"},\"networkAttachments\":[{\"attachedNetworkId\":\"test-l3vlan\",\"defaultGateway\":\"True\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-vlan\"}],\"sshPublicKeys\":[{\"keyData\":\"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ==\"}],\"storageProfile\":{\"osDisk\":{\"createOption\":\"Ephemeral\",\"deleteOption\":\"Delete\",\"diskSizeGB\":10}},\"userData\":\"testUserData\",\"adminUsername\":\"testUser\",\"virtioInterface\":\"Transitional\",\"isolateEmulatorThread\":\"False\",\"bootMethod\":\"BIOS\",\"placementHints\":[]}")
///                 .networkFunctionDefinitionVersionResourceReference(OpenDeploymentResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1")
///                     .idType("Open")
///                     .build())
///                 .nfviId("/subscriptions/subid/resourceGroups/testResourceGroup")
///                 .nfviType("AzureCore")
///                 .build())
///             .resourceGroupName("rg")
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
/// const networkFunction = new azure_native.hybridnetwork.NetworkFunction("networkFunction", {
///     location: "eastus",
///     networkFunctionName: "testNf",
///     properties: {
///         allowSoftwareUpdate: false,
///         configurationType: "Open",
///         deploymentValues: "{\"virtualMachineName\":\"test-VM\",\"cpuCores\":4,\"memorySizeGB\":8,\"cloudServicesNetworkAttachment\":{\"attachedNetworkId\":\"test-csnet\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-cs-vlan\"},\"networkAttachments\":[{\"attachedNetworkId\":\"test-l3vlan\",\"defaultGateway\":\"True\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-vlan\"}],\"sshPublicKeys\":[{\"keyData\":\"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ==\"}],\"storageProfile\":{\"osDisk\":{\"createOption\":\"Ephemeral\",\"deleteOption\":\"Delete\",\"diskSizeGB\":10}},\"userData\":\"testUserData\",\"adminUsername\":\"testUser\",\"virtioInterface\":\"Transitional\",\"isolateEmulatorThread\":\"False\",\"bootMethod\":\"BIOS\",\"placementHints\":[]}",
///         networkFunctionDefinitionVersionResourceReference: {
///             id: "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///             idType: "Open",
///         },
///         nfviId: "/subscriptions/subid/resourceGroups/testResourceGroup",
///         nfviType: azure_native.hybridnetwork.NFVIType.AzureCore,
///     },
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_function = azure_native.hybridnetwork.NetworkFunction("networkFunction",
///     location="eastus",
///     network_function_name="testNf",
///     properties={
///         "allow_software_update": False,
///         "configuration_type": "Open",
///         "deployment_values": "{\"virtualMachineName\":\"test-VM\",\"cpuCores\":4,\"memorySizeGB\":8,\"cloudServicesNetworkAttachment\":{\"attachedNetworkId\":\"test-csnet\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-cs-vlan\"},\"networkAttachments\":[{\"attachedNetworkId\":\"test-l3vlan\",\"defaultGateway\":\"True\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-vlan\"}],\"sshPublicKeys\":[{\"keyData\":\"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ==\"}],\"storageProfile\":{\"osDisk\":{\"createOption\":\"Ephemeral\",\"deleteOption\":\"Delete\",\"diskSizeGB\":10}},\"userData\":\"testUserData\",\"adminUsername\":\"testUser\",\"virtioInterface\":\"Transitional\",\"isolateEmulatorThread\":\"False\",\"bootMethod\":\"BIOS\",\"placementHints\":[]}",
///         "network_function_definition_version_resource_reference": {
///             "id": "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///             "id_type": "Open",
///         },
///         "nfvi_id": "/subscriptions/subid/resourceGroups/testResourceGroup",
///         "nfvi_type": azure_native.hybridnetwork.NFVIType.AZURE_CORE,
///     },
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkFunction:
///     type: azure-native:hybridnetwork:NetworkFunction
///     properties:
///       location: eastus
///       networkFunctionName: testNf
///       properties:
///         allowSoftwareUpdate: false
///         configurationType: Open
///         deploymentValues: '{"virtualMachineName":"test-VM","cpuCores":4,"memorySizeGB":8,"cloudServicesNetworkAttachment":{"attachedNetworkId":"test-csnet","ipAllocationMethod":"Dynamic","networkAttachmentName":"test-cs-vlan"},"networkAttachments":[{"attachedNetworkId":"test-l3vlan","defaultGateway":"True","ipAllocationMethod":"Dynamic","networkAttachmentName":"test-vlan"}],"sshPublicKeys":[{"keyData":"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ=="}],"storageProfile":{"osDisk":{"createOption":"Ephemeral","deleteOption":"Delete","diskSizeGB":10}},"userData":"testUserData","adminUsername":"testUser","virtioInterface":"Transitional","isolateEmulatorThread":"False","bootMethod":"BIOS","placementHints":[]}'
///         networkFunctionDefinitionVersionResourceReference:
///           id: /subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1
///           idType: Open
///         nfviId: /subscriptions/subid/resourceGroups/testResourceGroup
///         nfviType: AzureCore
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create virtual network function resource on AzureOperatorNexus
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFunction = new AzureNative.HybridNetwork.NetworkFunction("networkFunction", new()
///     {
///         Location = "eastus",
///         NetworkFunctionName = "testNf",
///         Properties = new AzureNative.HybridNetwork.Inputs.NetworkFunctionValueWithoutSecretsArgs
///         {
///             AllowSoftwareUpdate = false,
///             ConfigurationType = "Open",
///             DeploymentValues = "{\"virtualMachineName\":\"test-VM\",\"extendedLocationName\":\"test-cluster\",\"cpuCores\":4,\"memorySizeGB\":8,\"cloudServicesNetworkAttachment\":{\"attachedNetworkId\":\"test-csnet\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-cs-vlan\"},\"networkAttachments\":[{\"attachedNetworkId\":\"test-l3vlan\",\"defaultGateway\":\"True\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-vlan\"}],\"sshPublicKeys\":[{\"keyData\":\"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ==\"}],\"storageProfile\":{\"osDisk\":{\"createOption\":\"Ephemeral\",\"deleteOption\":\"Delete\",\"diskSizeGB\":10}},\"userData\":\"testUserData\",\"adminUsername\":\"testUser\",\"virtioInterface\":\"Transitional\",\"isolateEmulatorThread\":\"False\",\"bootMethod\":\"BIOS\",\"placementHints\":[]}",
///             NetworkFunctionDefinitionVersionResourceReference = new AzureNative.HybridNetwork.Inputs.OpenDeploymentResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///                 IdType = "Open",
///             },
///             NfviId = "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///             NfviType = AzureNative.HybridNetwork.NFVIType.AzureOperatorNexus,
///         },
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewNetworkFunction(ctx, "networkFunction", &hybridnetwork.NetworkFunctionArgs{
/// 			Location:            pulumi.String("eastus"),
/// 			NetworkFunctionName: pulumi.String("testNf"),
/// 			Properties: &hybridnetwork.NetworkFunctionValueWithoutSecretsArgs{
/// 				AllowSoftwareUpdate: pulumi.Bool(false),
/// 				ConfigurationType:   pulumi.String("Open"),
/// 				DeploymentValues:    pulumi.String("{\"virtualMachineName\":\"test-VM\",\"extendedLocationName\":\"test-cluster\",\"cpuCores\":4,\"memorySizeGB\":8,\"cloudServicesNetworkAttachment\":{\"attachedNetworkId\":\"test-csnet\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-cs-vlan\"},\"networkAttachments\":[{\"attachedNetworkId\":\"test-l3vlan\",\"defaultGateway\":\"True\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-vlan\"}],\"sshPublicKeys\":[{\"keyData\":\"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ==\"}],\"storageProfile\":{\"osDisk\":{\"createOption\":\"Ephemeral\",\"deleteOption\":\"Delete\",\"diskSizeGB\":10}},\"userData\":\"testUserData\",\"adminUsername\":\"testUser\",\"virtioInterface\":\"Transitional\",\"isolateEmulatorThread\":\"False\",\"bootMethod\":\"BIOS\",\"placementHints\":[]}"),
/// 				NetworkFunctionDefinitionVersionResourceReference: hybridnetwork.OpenDeploymentResourceReference{
/// 					Id:     "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
/// 					IdType: "Open",
/// 				},
/// 				NfviId:   pulumi.String("/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation"),
/// 				NfviType: pulumi.String(hybridnetwork.NFVITypeAzureOperatorNexus),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunction;
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionArgs;
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
///         var networkFunction = new NetworkFunction("networkFunction", NetworkFunctionArgs.builder()
///             .location("eastus")
///             .networkFunctionName("testNf")
///             .properties(NetworkFunctionValueWithoutSecretsArgs.builder()
///                 .allowSoftwareUpdate(false)
///                 .configurationType("Open")
///                 .deploymentValues("{\"virtualMachineName\":\"test-VM\",\"extendedLocationName\":\"test-cluster\",\"cpuCores\":4,\"memorySizeGB\":8,\"cloudServicesNetworkAttachment\":{\"attachedNetworkId\":\"test-csnet\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-cs-vlan\"},\"networkAttachments\":[{\"attachedNetworkId\":\"test-l3vlan\",\"defaultGateway\":\"True\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-vlan\"}],\"sshPublicKeys\":[{\"keyData\":\"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ==\"}],\"storageProfile\":{\"osDisk\":{\"createOption\":\"Ephemeral\",\"deleteOption\":\"Delete\",\"diskSizeGB\":10}},\"userData\":\"testUserData\",\"adminUsername\":\"testUser\",\"virtioInterface\":\"Transitional\",\"isolateEmulatorThread\":\"False\",\"bootMethod\":\"BIOS\",\"placementHints\":[]}")
///                 .networkFunctionDefinitionVersionResourceReference(OpenDeploymentResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1")
///                     .idType("Open")
///                     .build())
///                 .nfviId("/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation")
///                 .nfviType("AzureOperatorNexus")
///                 .build())
///             .resourceGroupName("rg")
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
/// const networkFunction = new azure_native.hybridnetwork.NetworkFunction("networkFunction", {
///     location: "eastus",
///     networkFunctionName: "testNf",
///     properties: {
///         allowSoftwareUpdate: false,
///         configurationType: "Open",
///         deploymentValues: "{\"virtualMachineName\":\"test-VM\",\"extendedLocationName\":\"test-cluster\",\"cpuCores\":4,\"memorySizeGB\":8,\"cloudServicesNetworkAttachment\":{\"attachedNetworkId\":\"test-csnet\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-cs-vlan\"},\"networkAttachments\":[{\"attachedNetworkId\":\"test-l3vlan\",\"defaultGateway\":\"True\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-vlan\"}],\"sshPublicKeys\":[{\"keyData\":\"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ==\"}],\"storageProfile\":{\"osDisk\":{\"createOption\":\"Ephemeral\",\"deleteOption\":\"Delete\",\"diskSizeGB\":10}},\"userData\":\"testUserData\",\"adminUsername\":\"testUser\",\"virtioInterface\":\"Transitional\",\"isolateEmulatorThread\":\"False\",\"bootMethod\":\"BIOS\",\"placementHints\":[]}",
///         networkFunctionDefinitionVersionResourceReference: {
///             id: "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///             idType: "Open",
///         },
///         nfviId: "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///         nfviType: azure_native.hybridnetwork.NFVIType.AzureOperatorNexus,
///     },
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_function = azure_native.hybridnetwork.NetworkFunction("networkFunction",
///     location="eastus",
///     network_function_name="testNf",
///     properties={
///         "allow_software_update": False,
///         "configuration_type": "Open",
///         "deployment_values": "{\"virtualMachineName\":\"test-VM\",\"extendedLocationName\":\"test-cluster\",\"cpuCores\":4,\"memorySizeGB\":8,\"cloudServicesNetworkAttachment\":{\"attachedNetworkId\":\"test-csnet\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-cs-vlan\"},\"networkAttachments\":[{\"attachedNetworkId\":\"test-l3vlan\",\"defaultGateway\":\"True\",\"ipAllocationMethod\":\"Dynamic\",\"networkAttachmentName\":\"test-vlan\"}],\"sshPublicKeys\":[{\"keyData\":\"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ==\"}],\"storageProfile\":{\"osDisk\":{\"createOption\":\"Ephemeral\",\"deleteOption\":\"Delete\",\"diskSizeGB\":10}},\"userData\":\"testUserData\",\"adminUsername\":\"testUser\",\"virtioInterface\":\"Transitional\",\"isolateEmulatorThread\":\"False\",\"bootMethod\":\"BIOS\",\"placementHints\":[]}",
///         "network_function_definition_version_resource_reference": {
///             "id": "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1",
///             "id_type": "Open",
///         },
///         "nfvi_id": "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation",
///         "nfvi_type": azure_native.hybridnetwork.NFVIType.AZURE_OPERATOR_NEXUS,
///     },
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkFunction:
///     type: azure-native:hybridnetwork:NetworkFunction
///     properties:
///       location: eastus
///       networkFunctionName: testNf
///       properties:
///         allowSoftwareUpdate: false
///         configurationType: Open
///         deploymentValues: '{"virtualMachineName":"test-VM","extendedLocationName":"test-cluster","cpuCores":4,"memorySizeGB":8,"cloudServicesNetworkAttachment":{"attachedNetworkId":"test-csnet","ipAllocationMethod":"Dynamic","networkAttachmentName":"test-cs-vlan"},"networkAttachments":[{"attachedNetworkId":"test-l3vlan","defaultGateway":"True","ipAllocationMethod":"Dynamic","networkAttachmentName":"test-vlan"}],"sshPublicKeys":[{"keyData":"ssh-rsa CMIIIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0TqlveKKlc2MFvEmuXJiLGBsY1t4ML4uiRADGSZlnc+7Ugv3h+MCjkkwOKiOdsNo8k4KSBIG5GcQfKYOOd17AJvqCL6cGQbaLuqv0a64jeDm8oO8/xN/IM0oKw7rMr/2oAJOgIsfeXPkRxWWic9AVIS++H5Qi2r7bUFX+cqFsyUCAwEBBQ=="}],"storageProfile":{"osDisk":{"createOption":"Ephemeral","deleteOption":"Delete","diskSizeGB":10}},"userData":"testUserData","adminUsername":"testUser","virtioInterface":"Transitional","isolateEmulatorThread":"False","bootMethod":"BIOS","placementHints":[]}'
///         networkFunctionDefinitionVersionResourceReference:
///           id: /subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/testVendor/networkFunctionDefinitionGroups/testnetworkFunctionDefinitionGroupName/networkFunctionDefinitionVersions/1.0.1
///           idType: Open
///         nfviId: /subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation
///         nfviType: AzureOperatorNexus
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:hybridnetwork:NetworkFunction testNf /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/networkFunctions/{networkFunctionName}
/// ```
class NetworkFunction extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String?> etag;

  /// The managed identity of the network function.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Network function properties.
  late final pulumi.Output<NetworkFunctionValueWithSecretsResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFunction]. {@macro pulumi_hybridnetwork_network_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFunction(
    String name, {
    NetworkFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridnetwork:NetworkFunction',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NetworkFunctionValueWithSecretsResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
