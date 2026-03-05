import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_service_environment_args.dart';
import 'integration_service_environment_properties_response.dart';
import 'integration_service_environment_sku_response.dart';
import 'managed_service_identity_response.dart';

/// The integration service environment.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an integration service environment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationServiceEnvironment = new AzureNative.Logic.IntegrationServiceEnvironment("integrationServiceEnvironment", new()
///     {
///         IntegrationServiceEnvironmentName = "testIntegrationServiceEnvironment",
///         Location = "brazilsouth",
///         Properties = new AzureNative.Logic.Inputs.IntegrationServiceEnvironmentPropertiesArgs
///         {
///             EncryptionConfiguration = new AzureNative.Logic.Inputs.IntegrationServiceEnvironmenEncryptionConfigurationArgs
///             {
///                 EncryptionKeyReference = new AzureNative.Logic.Inputs.IntegrationServiceEnvironmenEncryptionKeyReferenceArgs
///                 {
///                     KeyName = "testKeyName",
///                     KeyVault = new AzureNative.Logic.Inputs.ResourceReferenceArgs
///                     {
///                         Id = "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.KeyVault/vaults/testKeyVault",
///                     },
///                     KeyVersion = "13b261d30b984753869902d7f47f4d55",
///                 },
///             },
///             NetworkConfiguration = new AzureNative.Logic.Inputs.NetworkConfigurationArgs
///             {
///                 AccessEndpoint = new AzureNative.Logic.Inputs.IntegrationServiceEnvironmentAccessEndpointArgs
///                 {
///                     Type = AzureNative.Logic.IntegrationServiceEnvironmentAccessEndpointType.Internal,
///                 },
///                 Subnets = new[]
///                 {
///                     new AzureNative.Logic.Inputs.ResourceReferenceArgs
///                     {
///                         Id = "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s1",
///                     },
///                     new AzureNative.Logic.Inputs.ResourceReferenceArgs
///                     {
///                         Id = "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s2",
///                     },
///                     new AzureNative.Logic.Inputs.ResourceReferenceArgs
///                     {
///                         Id = "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s3",
///                     },
///                     new AzureNative.Logic.Inputs.ResourceReferenceArgs
///                     {
///                         Id = "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s4",
///                     },
///                 },
///             },
///         },
///         ResourceGroup = "testResourceGroup",
///         Sku = new AzureNative.Logic.Inputs.IntegrationServiceEnvironmentSkuArgs
///         {
///             Capacity = 2,
///             Name = AzureNative.Logic.IntegrationServiceEnvironmentSkuName.Premium,
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
/// 	logic "github.com/pulumi/pulumi-azure-native-sdk/logic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logic.NewIntegrationServiceEnvironment(ctx, "integrationServiceEnvironment", &logic.IntegrationServiceEnvironmentArgs{
/// 			IntegrationServiceEnvironmentName: pulumi.String("testIntegrationServiceEnvironment"),
/// 			Location:                          pulumi.String("brazilsouth"),
/// 			Properties: &logic.IntegrationServiceEnvironmentPropertiesArgs{
/// 				EncryptionConfiguration: &logic.IntegrationServiceEnvironmenEncryptionConfigurationArgs{
/// 					EncryptionKeyReference: &logic.IntegrationServiceEnvironmenEncryptionKeyReferenceArgs{
/// 						KeyName: pulumi.String("testKeyName"),
/// 						KeyVault: &logic.ResourceReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.KeyVault/vaults/testKeyVault"),
/// 						},
/// 						KeyVersion: pulumi.String("13b261d30b984753869902d7f47f4d55"),
/// 					},
/// 				},
/// 				NetworkConfiguration: &logic.NetworkConfigurationArgs{
/// 					AccessEndpoint: &logic.IntegrationServiceEnvironmentAccessEndpointArgs{
/// 						Type: pulumi.String(logic.IntegrationServiceEnvironmentAccessEndpointTypeInternal),
/// 					},
/// 					Subnets: logic.ResourceReferenceArray{
/// 						&logic.ResourceReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s1"),
/// 						},
/// 						&logic.ResourceReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s2"),
/// 						},
/// 						&logic.ResourceReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s3"),
/// 						},
/// 						&logic.ResourceReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s4"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroup: pulumi.String("testResourceGroup"),
/// 			Sku: &logic.IntegrationServiceEnvironmentSkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String(logic.IntegrationServiceEnvironmentSkuNamePremium),
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
/// import com.pulumi.azurenative.logic.IntegrationServiceEnvironment;
/// import com.pulumi.azurenative.logic.IntegrationServiceEnvironmentArgs;
/// import com.pulumi.azurenative.logic.inputs.IntegrationServiceEnvironmentPropertiesArgs;
/// import com.pulumi.azurenative.logic.inputs.IntegrationServiceEnvironmenEncryptionConfigurationArgs;
/// import com.pulumi.azurenative.logic.inputs.IntegrationServiceEnvironmenEncryptionKeyReferenceArgs;
/// import com.pulumi.azurenative.logic.inputs.ResourceReferenceArgs;
/// import com.pulumi.azurenative.logic.inputs.NetworkConfigurationArgs;
/// import com.pulumi.azurenative.logic.inputs.IntegrationServiceEnvironmentAccessEndpointArgs;
/// import com.pulumi.azurenative.logic.inputs.IntegrationServiceEnvironmentSkuArgs;
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
///         var integrationServiceEnvironment = new IntegrationServiceEnvironment("integrationServiceEnvironment", IntegrationServiceEnvironmentArgs.builder()
///             .integrationServiceEnvironmentName("testIntegrationServiceEnvironment")
///             .location("brazilsouth")
///             .properties(IntegrationServiceEnvironmentPropertiesArgs.builder()
///                 .encryptionConfiguration(IntegrationServiceEnvironmenEncryptionConfigurationArgs.builder()
///                     .encryptionKeyReference(IntegrationServiceEnvironmenEncryptionKeyReferenceArgs.builder()
///                         .keyName("testKeyName")
///                         .keyVault(ResourceReferenceArgs.builder()
///                             .id("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.KeyVault/vaults/testKeyVault")
///                             .build())
///                         .keyVersion("13b261d30b984753869902d7f47f4d55")
///                         .build())
///                     .build())
///                 .networkConfiguration(NetworkConfigurationArgs.builder()
///                     .accessEndpoint(IntegrationServiceEnvironmentAccessEndpointArgs.builder()
///                         .type("Internal")
///                         .build())
///                     .subnets(
///                         ResourceReferenceArgs.builder()
///                             .id("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s1")
///                             .build(),
///                         ResourceReferenceArgs.builder()
///                             .id("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s2")
///                             .build(),
///                         ResourceReferenceArgs.builder()
///                             .id("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s3")
///                             .build(),
///                         ResourceReferenceArgs.builder()
///                             .id("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s4")
///                             .build())
///                     .build())
///                 .build())
///             .resourceGroup("testResourceGroup")
///             .sku(IntegrationServiceEnvironmentSkuArgs.builder()
///                 .capacity(2)
///                 .name("Premium")
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
/// const integrationServiceEnvironment = new azure_native.logic.IntegrationServiceEnvironment("integrationServiceEnvironment", {
///     integrationServiceEnvironmentName: "testIntegrationServiceEnvironment",
///     location: "brazilsouth",
///     properties: {
///         encryptionConfiguration: {
///             encryptionKeyReference: {
///                 keyName: "testKeyName",
///                 keyVault: {
///                     id: "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.KeyVault/vaults/testKeyVault",
///                 },
///                 keyVersion: "13b261d30b984753869902d7f47f4d55",
///             },
///         },
///         networkConfiguration: {
///             accessEndpoint: {
///                 type: azure_native.logic.IntegrationServiceEnvironmentAccessEndpointType.Internal,
///             },
///             subnets: [
///                 {
///                     id: "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s1",
///                 },
///                 {
///                     id: "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s2",
///                 },
///                 {
///                     id: "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s3",
///                 },
///                 {
///                     id: "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s4",
///                 },
///             ],
///         },
///     },
///     resourceGroup: "testResourceGroup",
///     sku: {
///         capacity: 2,
///         name: azure_native.logic.IntegrationServiceEnvironmentSkuName.Premium,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_service_environment = azure_native.logic.IntegrationServiceEnvironment("integrationServiceEnvironment",
///     integration_service_environment_name="testIntegrationServiceEnvironment",
///     location="brazilsouth",
///     properties={
///         "encryption_configuration": {
///             "encryption_key_reference": {
///                 "key_name": "testKeyName",
///                 "key_vault": {
///                     "id": "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.KeyVault/vaults/testKeyVault",
///                 },
///                 "key_version": "13b261d30b984753869902d7f47f4d55",
///             },
///         },
///         "network_configuration": {
///             "access_endpoint": {
///                 "type": azure_native.logic.IntegrationServiceEnvironmentAccessEndpointType.INTERNAL,
///             },
///             "subnets": [
///                 {
///                     "id": "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s1",
///                 },
///                 {
///                     "id": "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s2",
///                 },
///                 {
///                     "id": "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s3",
///                 },
///                 {
///                     "id": "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s4",
///                 },
///             ],
///         },
///     },
///     resource_group="testResourceGroup",
///     sku={
///         "capacity": 2,
///         "name": azure_native.logic.IntegrationServiceEnvironmentSkuName.PREMIUM,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   integrationServiceEnvironment:
///     type: azure-native:logic:IntegrationServiceEnvironment
///     properties:
///       integrationServiceEnvironmentName: testIntegrationServiceEnvironment
///       location: brazilsouth
///       properties:
///         encryptionConfiguration:
///           encryptionKeyReference:
///             keyName: testKeyName
///             keyVault:
///               id: /subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.KeyVault/vaults/testKeyVault
///             keyVersion: 13b261d30b984753869902d7f47f4d55
///         networkConfiguration:
///           accessEndpoint:
///             type: Internal
///           subnets:
///             - id: /subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s1
///             - id: /subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s2
///             - id: /subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s3
///             - id: /subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/resourceGroups/testResourceGroup/providers/Microsoft.Network/virtualNetworks/testVNET/subnets/s4
///       resourceGroup: testResourceGroup
///       sku:
///         capacity: 2
///         name: Premium
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
/// $ pulumi import azure-native:logic:IntegrationServiceEnvironment testIntegrationServiceEnvironment /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Logic/integrationServiceEnvironments/{integrationServiceEnvironmentName}
/// ```
class IntegrationServiceEnvironment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Managed service identity properties.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// Gets the resource name.
  late final pulumi.Output<String> name;
  /// The integration service environment properties.
  late final pulumi.Output<IntegrationServiceEnvironmentPropertiesResponse> properties;
  /// The sku.
  late final pulumi.Output<IntegrationServiceEnvironmentSkuResponse?> sku;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationServiceEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationServiceEnvironment]. {@macro pulumi_logic_integration_service_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationServiceEnvironment(
    String name, {
    IntegrationServiceEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:logic:IntegrationServiceEnvironment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IntegrationServiceEnvironmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationServiceEnvironmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<IntegrationServiceEnvironmentSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationServiceEnvironmentSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
