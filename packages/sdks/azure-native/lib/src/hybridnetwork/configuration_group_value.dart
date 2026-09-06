import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_group_value_args.dart';
import 'system_data_response.dart';

/// Hybrid configuration group value resource.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update configuration group value
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationGroupValue = new AzureNative.HybridNetwork.ConfigurationGroupValue("configurationGroupValue", new()
///     {
///         ConfigurationGroupValueName = "testConfigurationGroupValue",
///         Location = "eastus",
///         Properties = new AzureNative.HybridNetwork.Inputs.ConfigurationValueWithoutSecretsArgs
///         {
///             ConfigurationGroupSchemaResourceReference = new AzureNative.HybridNetwork.Inputs.OpenDeploymentResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
///                 IdType = "Open",
///             },
///             ConfigurationType = "Open",
///             ConfigurationValue = "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}",
///         },
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewConfigurationGroupValue(ctx, "configurationGroupValue", &hybridnetwork.ConfigurationGroupValueArgs{
/// 			ConfigurationGroupValueName: pulumi.String("testConfigurationGroupValue"),
/// 			Location:                    pulumi.String("eastus"),
/// 			Properties: &hybridnetwork.ConfigurationValueWithoutSecretsArgs{
/// 				ConfigurationGroupSchemaResourceReference: hybridnetwork.OpenDeploymentResourceReference{
/// 					Id:     "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
/// 					IdType: "Open",
/// 				},
/// 				ConfigurationType:  pulumi.String("Open"),
/// 				ConfigurationValue: pulumi.String("{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_hybridnetwork_configurationgroupvalue" "configurationGroupValue" {
///   configuration_group_value_name = "testConfigurationGroupValue"
///   location                       = "eastus"
///   properties = {
///     "configurationGroupSchemaResourceReference" = {
///       "id"     = "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName"
///       "idType" = "Open"
///     }
///     "configurationType"  = "Open"
///     "configurationValue" = "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}"
///   }
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.hybridnetwork.ConfigurationGroupValue;
/// import com.pulumi.azurenative.hybridnetwork.ConfigurationGroupValueArgs;
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
///         var configurationGroupValue = new ConfigurationGroupValue("configurationGroupValue", ConfigurationGroupValueArgs.builder()
///             .configurationGroupValueName("testConfigurationGroupValue")
///             .location("eastus")
///             .properties(ConfigurationValueWithoutSecretsArgs.builder()
///                 .configurationGroupSchemaResourceReference(OpenDeploymentResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName")
///                     .idType("Open")
///                     .build())
///                 .configurationType("Open")
///                 .configurationValue("{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}")
///                 .build())
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
/// const configurationGroupValue = new azure_native.hybridnetwork.ConfigurationGroupValue("configurationGroupValue", {
///     configurationGroupValueName: "testConfigurationGroupValue",
///     location: "eastus",
///     properties: {
///         configurationGroupSchemaResourceReference: {
///             id: "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
///             idType: "Open",
///         },
///         configurationType: "Open",
///         configurationValue: "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_group_value = azure_native.hybridnetwork.ConfigurationGroupValue("configurationGroupValue",
///     configuration_group_value_name="testConfigurationGroupValue",
///     location="eastus",
///     properties={
///         "configuration_group_schema_resource_reference": {
///             "id": "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
///             "id_type": "Open",
///         },
///         "configuration_type": "Open",
///         "configuration_value": "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationGroupValue:
///     type: azure-native:hybridnetwork:ConfigurationGroupValue
///     properties:
///       configurationGroupValueName: testConfigurationGroupValue
///       location: eastus
///       properties:
///         configurationGroupSchemaResourceReference:
///           id: /subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName
///           idType: Open
///         configurationType: Open
///         configurationValue: '{"interconnect-groups":{"stripe-one":{"name":"Stripe one","international-interconnects":["france","germany"],"domestic-interconnects":["birmingham","edinburgh"]},"stripe-two":{"name":"Stripe two","international-interconnects":["germany","italy"],"domestic-interconnects":["edinburgh","london"]}},"interconnect-group-assignments":{"ssc-one":{"ssc":"SSC 1","interconnects":"stripe-one"},"ssc-two":{"ssc":"SSC 2","interconnects":"stripe-two"}}}'
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update configuration group value with secrets
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationGroupValue = new AzureNative.HybridNetwork.ConfigurationGroupValue("configurationGroupValue", new()
///     {
///         ConfigurationGroupValueName = "testConfigurationGroupValue",
///         Location = "eastus",
///         Properties = new AzureNative.HybridNetwork.Inputs.ConfigurationValueWithSecretsArgs
///         {
///             ConfigurationGroupSchemaResourceReference = new AzureNative.HybridNetwork.Inputs.OpenDeploymentResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
///                 IdType = "Open",
///             },
///             ConfigurationType = "Secret",
///             SecretConfigurationValue = "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}",
///         },
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewConfigurationGroupValue(ctx, "configurationGroupValue", &hybridnetwork.ConfigurationGroupValueArgs{
/// 			ConfigurationGroupValueName: pulumi.String("testConfigurationGroupValue"),
/// 			Location:                    pulumi.String("eastus"),
/// 			Properties: &hybridnetwork.ConfigurationValueWithSecretsArgs{
/// 				ConfigurationGroupSchemaResourceReference: hybridnetwork.OpenDeploymentResourceReference{
/// 					Id:     "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
/// 					IdType: "Open",
/// 				},
/// 				ConfigurationType:        pulumi.String("Secret"),
/// 				SecretConfigurationValue: pulumi.String("{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_hybridnetwork_configurationgroupvalue" "configurationGroupValue" {
///   configuration_group_value_name = "testConfigurationGroupValue"
///   location                       = "eastus"
///   properties = {
///     "configurationGroupSchemaResourceReference" = {
///       "id"     = "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName"
///       "idType" = "Open"
///     }
///     "configurationType"        = "Secret"
///     "secretConfigurationValue" = "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}"
///   }
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.hybridnetwork.ConfigurationGroupValue;
/// import com.pulumi.azurenative.hybridnetwork.ConfigurationGroupValueArgs;
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
///         var configurationGroupValue = new ConfigurationGroupValue("configurationGroupValue", ConfigurationGroupValueArgs.builder()
///             .configurationGroupValueName("testConfigurationGroupValue")
///             .location("eastus")
///             .properties(ConfigurationValueWithSecretsArgs.builder()
///                 .configurationGroupSchemaResourceReference(OpenDeploymentResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName")
///                     .idType("Open")
///                     .build())
///                 .configurationType("Secret")
///                 .secretConfigurationValue("{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}")
///                 .build())
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
/// const configurationGroupValue = new azure_native.hybridnetwork.ConfigurationGroupValue("configurationGroupValue", {
///     configurationGroupValueName: "testConfigurationGroupValue",
///     location: "eastus",
///     properties: {
///         configurationGroupSchemaResourceReference: {
///             id: "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
///             idType: "Open",
///         },
///         configurationType: "Secret",
///         secretConfigurationValue: "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_group_value = azure_native.hybridnetwork.ConfigurationGroupValue("configurationGroupValue",
///     configuration_group_value_name="testConfigurationGroupValue",
///     location="eastus",
///     properties={
///         "configuration_group_schema_resource_reference": {
///             "id": "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
///             "id_type": "Open",
///         },
///         "configuration_type": "Secret",
///         "secret_configuration_value": "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationGroupValue:
///     type: azure-native:hybridnetwork:ConfigurationGroupValue
///     properties:
///       configurationGroupValueName: testConfigurationGroupValue
///       location: eastus
///       properties:
///         configurationGroupSchemaResourceReference:
///           id: /subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName
///           idType: Open
///         configurationType: Secret
///         secretConfigurationValue: '{"interconnect-groups":{"stripe-one":{"name":"Stripe one","international-interconnects":["france","germany"],"domestic-interconnects":["birmingham","edinburgh"]},"stripe-two":{"name":"Stripe two","international-interconnects":["germany","italy"],"domestic-interconnects":["edinburgh","london"]}},"interconnect-group-assignments":{"ssc-one":{"ssc":"SSC 1","interconnects":"stripe-one"},"ssc-two":{"ssc":"SSC 2","interconnects":"stripe-two"}}}'
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update first party configuration group value
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationGroupValue = new AzureNative.HybridNetwork.ConfigurationGroupValue("configurationGroupValue", new()
///     {
///         ConfigurationGroupValueName = "testConfigurationGroupValue",
///         Location = "eastus",
///         Properties = new AzureNative.HybridNetwork.Inputs.ConfigurationValueWithoutSecretsArgs
///         {
///             ConfigurationGroupSchemaResourceReference = new AzureNative.HybridNetwork.Inputs.SecretDeploymentResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
///                 IdType = "Secret",
///             },
///             ConfigurationType = "Open",
///             ConfigurationValue = "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}",
///         },
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewConfigurationGroupValue(ctx, "configurationGroupValue", &hybridnetwork.ConfigurationGroupValueArgs{
/// 			ConfigurationGroupValueName: pulumi.String("testConfigurationGroupValue"),
/// 			Location:                    pulumi.String("eastus"),
/// 			Properties: &hybridnetwork.ConfigurationValueWithoutSecretsArgs{
/// 				ConfigurationGroupSchemaResourceReference: hybridnetwork.SecretDeploymentResourceReference{
/// 					Id:     "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
/// 					IdType: "Secret",
/// 				},
/// 				ConfigurationType:  pulumi.String("Open"),
/// 				ConfigurationValue: pulumi.String("{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_hybridnetwork_configurationgroupvalue" "configurationGroupValue" {
///   configuration_group_value_name = "testConfigurationGroupValue"
///   location                       = "eastus"
///   properties = {
///     "configurationGroupSchemaResourceReference" = {
///       "id"     = "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName"
///       "idType" = "Secret"
///     }
///     "configurationType"  = "Open"
///     "configurationValue" = "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}"
///   }
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.hybridnetwork.ConfigurationGroupValue;
/// import com.pulumi.azurenative.hybridnetwork.ConfigurationGroupValueArgs;
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
///         var configurationGroupValue = new ConfigurationGroupValue("configurationGroupValue", ConfigurationGroupValueArgs.builder()
///             .configurationGroupValueName("testConfigurationGroupValue")
///             .location("eastus")
///             .properties(ConfigurationValueWithoutSecretsArgs.builder()
///                 .configurationGroupSchemaResourceReference(SecretDeploymentResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName")
///                     .idType("Secret")
///                     .build())
///                 .configurationType("Open")
///                 .configurationValue("{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}")
///                 .build())
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
/// const configurationGroupValue = new azure_native.hybridnetwork.ConfigurationGroupValue("configurationGroupValue", {
///     configurationGroupValueName: "testConfigurationGroupValue",
///     location: "eastus",
///     properties: {
///         configurationGroupSchemaResourceReference: {
///             id: "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
///             idType: "Secret",
///         },
///         configurationType: "Open",
///         configurationValue: "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_group_value = azure_native.hybridnetwork.ConfigurationGroupValue("configurationGroupValue",
///     configuration_group_value_name="testConfigurationGroupValue",
///     location="eastus",
///     properties={
///         "configuration_group_schema_resource_reference": {
///             "id": "/subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName",
///             "id_type": "Secret",
///         },
///         "configuration_type": "Open",
///         "configuration_value": "{\"interconnect-groups\":{\"stripe-one\":{\"name\":\"Stripe one\",\"international-interconnects\":[\"france\",\"germany\"],\"domestic-interconnects\":[\"birmingham\",\"edinburgh\"]},\"stripe-two\":{\"name\":\"Stripe two\",\"international-interconnects\":[\"germany\",\"italy\"],\"domestic-interconnects\":[\"edinburgh\",\"london\"]}},\"interconnect-group-assignments\":{\"ssc-one\":{\"ssc\":\"SSC 1\",\"interconnects\":\"stripe-one\"},\"ssc-two\":{\"ssc\":\"SSC 2\",\"interconnects\":\"stripe-two\"}}}",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationGroupValue:
///     type: azure-native:hybridnetwork:ConfigurationGroupValue
///     properties:
///       configurationGroupValueName: testConfigurationGroupValue
///       location: eastus
///       properties:
///         configurationGroupSchemaResourceReference:
///           id: /subscriptions/subid/resourcegroups/testRG/providers/microsoft.hybridnetwork/publishers/testPublisher/configurationGroupSchemas/testConfigurationGroupSchemaName
///           idType: Secret
///         configurationType: Open
///         configurationValue: '{"interconnect-groups":{"stripe-one":{"name":"Stripe one","international-interconnects":["france","germany"],"domestic-interconnects":["birmingham","edinburgh"]},"stripe-two":{"name":"Stripe two","international-interconnects":["germany","italy"],"domestic-interconnects":["edinburgh","london"]}},"interconnect-group-assignments":{"ssc-one":{"ssc":"SSC 1","interconnects":"stripe-one"},"ssc-two":{"ssc":"SSC 2","interconnects":"stripe-two"}}}'
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
/// $ pulumi import azure-native:hybridnetwork:ConfigurationGroupValue testConfigurationGroupValue /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/configurationGroupValues/{configurationGroupValueName}
/// ```
class ConfigurationGroupValue extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Hybrid configuration group value properties.
  late final pulumi.Output<dynamic> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigurationGroupValue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationGroupValue]. {@macro pulumi_hybridnetwork_configuration_group_value_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationGroupValue(
    String name, {
    ConfigurationGroupValueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridnetwork:ConfigurationGroupValue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ConfigurationGroupValue] resource.
  ConfigurationGroupValue.reference(String urn)
    : super(
        'azure-native:hybridnetwork:ConfigurationGroupValue',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
