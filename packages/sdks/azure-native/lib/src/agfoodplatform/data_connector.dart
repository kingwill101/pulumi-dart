import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_args.dart';
import 'data_connector_properties_response.dart';
import 'system_data_response.dart';

/// DataConnector Model.
///
/// Uses Azure REST API version 2023-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataConnectors_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataConnector = new AzureNative.AgFoodPlatform.DataConnector("dataConnector", new()
///     {
///         DataConnectorName = "WeatherIBM",
///         DataManagerForAgricultureResourceName = "examples-dataManagerForAgricultureResourceName",
///         Properties = new AzureNative.AgFoodPlatform.Inputs.DataConnectorPropertiesArgs
///         {
///             Credentials = new AzureNative.AgFoodPlatform.Inputs.ApiKeyAuthCredentialsArgs
///             {
///                 ApiKey = new AzureNative.AgFoodPlatform.Inputs.KeyVaultPropertiesArgs
///                 {
///                     KeyName = "abcApiKey",
///                     KeyVaultUri = "https://testKeyVault.vault.azure.net/",
///                     KeyVersion = "239c0475c7d44f20b0fc27d3fe90a41d",
///                 },
///                 Kind = "ApiKeyAuthCredentials",
///             },
///         },
///         ResourceGroupName = "examples-rg",
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
/// 	agfoodplatform "github.com/pulumi/pulumi-azure-native-sdk/agfoodplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agfoodplatform.NewDataConnector(ctx, "dataConnector", &agfoodplatform.DataConnectorArgs{
/// 			DataConnectorName:                     pulumi.String("WeatherIBM"),
/// 			DataManagerForAgricultureResourceName: pulumi.String("examples-dataManagerForAgricultureResourceName"),
/// 			Properties: &agfoodplatform.DataConnectorPropertiesArgs{
/// 				Credentials: agfoodplatform.ApiKeyAuthCredentials{
/// 					ApiKey: agfoodplatform.KeyVaultProperties{
/// 						KeyName:     "abcApiKey",
/// 						KeyVaultUri: "https://testKeyVault.vault.azure.net/",
/// 						KeyVersion:  "239c0475c7d44f20b0fc27d3fe90a41d",
/// 					},
/// 					Kind: "ApiKeyAuthCredentials",
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examples-rg"),
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
/// resource "azure-native_agfoodplatform_dataconnector" "dataConnector" {
///   data_connector_name                        = "WeatherIBM"
///   data_manager_for_agriculture_resource_name = "examples-dataManagerForAgricultureResourceName"
///   properties = {
///     credentials = {
///       "apiKey" = {
///         "keyName"     = "abcApiKey"
///         "keyVaultUri" = "https://testKeyVault.vault.azure.net/"
///         "keyVersion"  = "239c0475c7d44f20b0fc27d3fe90a41d"
///       }
///       "kind" = "ApiKeyAuthCredentials"
///     }
///   }
///   resource_group_name = "examples-rg"
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
/// import com.pulumi.azurenative.agfoodplatform.DataConnector;
/// import com.pulumi.azurenative.agfoodplatform.DataConnectorArgs;
/// import com.pulumi.azurenative.agfoodplatform.inputs.DataConnectorPropertiesArgs;
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
///         var dataConnector = new DataConnector("dataConnector", DataConnectorArgs.builder()
///             .dataConnectorName("WeatherIBM")
///             .dataManagerForAgricultureResourceName("examples-dataManagerForAgricultureResourceName")
///             .properties(DataConnectorPropertiesArgs.builder()
///                 .credentials(ApiKeyAuthCredentialsArgs.builder()
///                     .apiKey(KeyVaultPropertiesArgs.builder()
///                         .keyName("abcApiKey")
///                         .keyVaultUri("https://testKeyVault.vault.azure.net/")
///                         .keyVersion("239c0475c7d44f20b0fc27d3fe90a41d")
///                         .build())
///                     .kind("ApiKeyAuthCredentials")
///                     .build())
///                 .build())
///             .resourceGroupName("examples-rg")
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
/// const dataConnector = new azure_native.agfoodplatform.DataConnector("dataConnector", {
///     dataConnectorName: "WeatherIBM",
///     dataManagerForAgricultureResourceName: "examples-dataManagerForAgricultureResourceName",
///     properties: {
///         credentials: {
///             apiKey: {
///                 keyName: "abcApiKey",
///                 keyVaultUri: "https://testKeyVault.vault.azure.net/",
///                 keyVersion: "239c0475c7d44f20b0fc27d3fe90a41d",
///             },
///             kind: "ApiKeyAuthCredentials",
///         },
///     },
///     resourceGroupName: "examples-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_connector = azure_native.agfoodplatform.DataConnector("dataConnector",
///     data_connector_name="WeatherIBM",
///     data_manager_for_agriculture_resource_name="examples-dataManagerForAgricultureResourceName",
///     properties={
///         "credentials": {
///             "api_key": {
///                 "key_name": "abcApiKey",
///                 "key_vault_uri": "https://testKeyVault.vault.azure.net/",
///                 "key_version": "239c0475c7d44f20b0fc27d3fe90a41d",
///             },
///             "kind": "ApiKeyAuthCredentials",
///         },
///     },
///     resource_group_name="examples-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   dataConnector:
///     type: azure-native:agfoodplatform:DataConnector
///     properties:
///       dataConnectorName: WeatherIBM
///       dataManagerForAgricultureResourceName: examples-dataManagerForAgricultureResourceName
///       properties:
///         credentials:
///           apiKey:
///             keyName: abcApiKey
///             keyVaultUri: https://testKeyVault.vault.azure.net/
///             keyVersion: 239c0475c7d44f20b0fc27d3fe90a41d
///           kind: ApiKeyAuthCredentials
///       resourceGroupName: examples-rg
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
/// $ pulumi import azure-native:agfoodplatform:DataConnector SatelliteSentinelHub /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AgFoodPlatform/farmBeats/{dataManagerForAgricultureResourceName}/dataConnectors/{dataConnectorName}
/// ```
class DataConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The ETag value to implement optimistic concurrency.
  late final pulumi.Output<String> eTag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// DataConnector Properties.
  late final pulumi.Output<DataConnectorPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataConnector]. {@macro pulumi_agfoodplatform_data_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataConnector(
    String name, {
    DataConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:agfoodplatform:DataConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataConnectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataConnectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DataConnector] resource.
  DataConnector.reference(String urn)
    : super(
        'azure-native:agfoodplatform:DataConnector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataConnectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataConnectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
