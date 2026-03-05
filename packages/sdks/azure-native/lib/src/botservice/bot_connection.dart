import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_connection_args.dart';
import 'connection_setting_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Bot channel resource definition
///
/// Uses Azure REST API version 2023-09-15-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-15.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Connection Setting
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var botConnection = new AzureNative.BotService.BotConnection("botConnection", new()
///     {
///         ConnectionName = "sampleConnection",
///         Location = "West US",
///         Properties = new AzureNative.BotService.Inputs.ConnectionSettingPropertiesArgs
///         {
///             ClientId = "sampleclientid",
///             ClientSecret = "samplesecret",
///             Parameters = new[]
///             {
///                 new AzureNative.BotService.Inputs.ConnectionSettingParameterArgs
///                 {
///                     Key = "key1",
///                     Value = "value1",
///                 },
///                 new AzureNative.BotService.Inputs.ConnectionSettingParameterArgs
///                 {
///                     Key = "key2",
///                     Value = "value2",
///                 },
///             },
///             Scopes = "samplescope",
///             ServiceProviderId = "serviceproviderid",
///         },
///         ResourceGroupName = "OneResourceGroupName",
///         ResourceName = "samplebotname",
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
/// 	botservice "github.com/pulumi/pulumi-azure-native-sdk/botservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := botservice.NewBotConnection(ctx, "botConnection", &botservice.BotConnectionArgs{
/// 			ConnectionName: pulumi.String("sampleConnection"),
/// 			Location:       pulumi.String("West US"),
/// 			Properties: &botservice.ConnectionSettingPropertiesArgs{
/// 				ClientId:     pulumi.String("sampleclientid"),
/// 				ClientSecret: pulumi.String("samplesecret"),
/// 				Parameters: botservice.ConnectionSettingParameterArray{
/// 					&botservice.ConnectionSettingParameterArgs{
/// 						Key:   pulumi.String("key1"),
/// 						Value: pulumi.String("value1"),
/// 					},
/// 					&botservice.ConnectionSettingParameterArgs{
/// 						Key:   pulumi.String("key2"),
/// 						Value: pulumi.String("value2"),
/// 					},
/// 				},
/// 				Scopes:            pulumi.String("samplescope"),
/// 				ServiceProviderId: pulumi.String("serviceproviderid"),
/// 			},
/// 			ResourceGroupName: pulumi.String("OneResourceGroupName"),
/// 			ResourceName:      pulumi.String("samplebotname"),
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
/// import com.pulumi.azurenative.botservice.BotConnection;
/// import com.pulumi.azurenative.botservice.BotConnectionArgs;
/// import com.pulumi.azurenative.botservice.inputs.ConnectionSettingPropertiesArgs;
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
///         var botConnection = new BotConnection("botConnection", BotConnectionArgs.builder()
///             .connectionName("sampleConnection")
///             .location("West US")
///             .properties(ConnectionSettingPropertiesArgs.builder()
///                 .clientId("sampleclientid")
///                 .clientSecret("samplesecret")
///                 .parameters(
///                     ConnectionSettingParameterArgs.builder()
///                         .key("key1")
///                         .value("value1")
///                         .build(),
///                     ConnectionSettingParameterArgs.builder()
///                         .key("key2")
///                         .value("value2")
///                         .build())
///                 .scopes("samplescope")
///                 .serviceProviderId("serviceproviderid")
///                 .build())
///             .resourceGroupName("OneResourceGroupName")
///             .resourceName("samplebotname")
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
/// const botConnection = new azure_native.botservice.BotConnection("botConnection", {
///     connectionName: "sampleConnection",
///     location: "West US",
///     properties: {
///         clientId: "sampleclientid",
///         clientSecret: "samplesecret",
///         parameters: [
///             {
///                 key: "key1",
///                 value: "value1",
///             },
///             {
///                 key: "key2",
///                 value: "value2",
///             },
///         ],
///         scopes: "samplescope",
///         serviceProviderId: "serviceproviderid",
///     },
///     resourceGroupName: "OneResourceGroupName",
///     resourceName: "samplebotname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bot_connection = azure_native.botservice.BotConnection("botConnection",
///     connection_name="sampleConnection",
///     location="West US",
///     properties={
///         "client_id": "sampleclientid",
///         "client_secret": "samplesecret",
///         "parameters": [
///             {
///                 "key": "key1",
///                 "value": "value1",
///             },
///             {
///                 "key": "key2",
///                 "value": "value2",
///             },
///         ],
///         "scopes": "samplescope",
///         "service_provider_id": "serviceproviderid",
///     },
///     resource_group_name="OneResourceGroupName",
///     resource_name_="samplebotname")
///
/// ```
///
/// ```yaml
/// resources:
///   botConnection:
///     type: azure-native:botservice:BotConnection
///     properties:
///       connectionName: sampleConnection
///       location: West US
///       properties:
///         clientId: sampleclientid
///         clientSecret: samplesecret
///         parameters:
///           - key: key1
///             value: value1
///           - key: key2
///             value: value2
///         scopes: samplescope
///         serviceProviderId: serviceproviderid
///       resourceGroupName: OneResourceGroupName
///       resourceName: samplebotname
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
/// $ pulumi import azure-native:botservice:BotConnection sampleConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BotService/botServices/{resourceName}/connections/{connectionName}
/// ```
class BotConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Entity Tag.
  late final pulumi.Output<String?> etag;

  /// Required. Gets or sets the Kind of the resource.
  late final pulumi.Output<String?> kind;

  /// Specifies the location of the resource.
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The set of properties specific to bot channel resource
  late final pulumi.Output<ConnectionSettingPropertiesResponse> properties;

  /// Gets or sets the SKU of the resource.
  late final pulumi.Output<SkuResponse?> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Contains resource tags defined as key/value pairs.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Entity zones
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [BotConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BotConnection]. {@macro pulumi_botservice_bot_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BotConnection(
    String name, {
    BotConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:botservice:BotConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConnectionSettingPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionSettingPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sku = registerOutput<SkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    zones = registerOutput<List<String>>('zones');
  }
}
