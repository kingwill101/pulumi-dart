import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';

/// The connector resource format.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Connectors_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new AzureNative.CustomerInsights.Connector("connector", new()
///     {
///         ConnectorName = "testConnector",
///         ConnectorProperties =
///         {
///             { "connectionKeyVaultUrl", new Dictionary<string, object?>
///             {
///                 ["organizationId"] = "XXX",
///                 ["organizationUrl"] = "https://XXX.crmlivetie.com/",
///             } },
///         },
///         ConnectorType = AzureNative.CustomerInsights.ConnectorTypes.AzureBlob,
///         Description = "Test connector",
///         DisplayName = "testConnector",
///         HubName = "sdkTestHub",
///         ResourceGroupName = "TestHubRG",
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
/// 	customerinsights "github.com/pulumi/pulumi-azure-native-sdk/customerinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customerinsights.NewConnector(ctx, "connector", &customerinsights.ConnectorArgs{
/// 			ConnectorName: pulumi.String("testConnector"),
/// 			ConnectorProperties: pulumi.Map{
/// 				"connectionKeyVaultUrl": pulumi.Any(map[string]interface{}{
/// 					"organizationId":  "XXX",
/// 					"organizationUrl": "https://XXX.crmlivetie.com/",
/// 				}),
/// 			},
/// 			ConnectorType:     pulumi.String(customerinsights.ConnectorTypesAzureBlob),
/// 			Description:       pulumi.String("Test connector"),
/// 			DisplayName:       pulumi.String("testConnector"),
/// 			HubName:           pulumi.String("sdkTestHub"),
/// 			ResourceGroupName: pulumi.String("TestHubRG"),
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
/// import com.pulumi.azurenative.customerinsights.Connector;
/// import com.pulumi.azurenative.customerinsights.ConnectorArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .connectorName("testConnector")
///             .connectorProperties(Map.of("connectionKeyVaultUrl", Map.ofEntries(
///                 Map.entry("organizationId", "XXX"),
///                 Map.entry("organizationUrl", "https://XXX.crmlivetie.com/")
///             )))
///             .connectorType("AzureBlob")
///             .description("Test connector")
///             .displayName("testConnector")
///             .hubName("sdkTestHub")
///             .resourceGroupName("TestHubRG")
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
/// const connector = new azure_native.customerinsights.Connector("connector", {
///     connectorName: "testConnector",
///     connectorProperties: {
///         connectionKeyVaultUrl: {
///             organizationId: "XXX",
///             organizationUrl: "https://XXX.crmlivetie.com/",
///         },
///     },
///     connectorType: azure_native.customerinsights.ConnectorTypes.AzureBlob,
///     description: "Test connector",
///     displayName: "testConnector",
///     hubName: "sdkTestHub",
///     resourceGroupName: "TestHubRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector = azure_native.customerinsights.Connector("connector",
///     connector_name="testConnector",
///     connector_properties={
///         "connectionKeyVaultUrl": {
///             "organizationId": "XXX",
///             "organizationUrl": "https://XXX.crmlivetie.com/",
///         },
///     },
///     connector_type=azure_native.customerinsights.ConnectorTypes.AZURE_BLOB,
///     description="Test connector",
///     display_name="testConnector",
///     hub_name="sdkTestHub",
///     resource_group_name="TestHubRG")
///
/// ```
///
/// ```yaml
/// resources:
///   connector:
///     type: azure-native:customerinsights:Connector
///     properties:
///       connectorName: testConnector
///       connectorProperties:
///         connectionKeyVaultUrl:
///           organizationId: XXX
///           organizationUrl: https://XXX.crmlivetie.com/
///       connectorType: AzureBlob
///       description: Test connector
///       displayName: testConnector
///       hubName: sdkTestHub
///       resourceGroupName: TestHubRG
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
/// $ pulumi import azure-native:customerinsights:Connector sdkTestHub/testConnector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/connectors/{connectorName}
/// ```
class Connector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// ID of the connector.
  late final pulumi.Output<int> connectorId;
  /// Name of the connector.
  late final pulumi.Output<String?> connectorName;
  /// The connector properties.
  late final pulumi.Output<Map<String, dynamic>> connectorProperties;
  /// Type of connector.
  late final pulumi.Output<String> connectorType;
  /// The created time.
  late final pulumi.Output<String> created;
  /// Description of the connector.
  late final pulumi.Output<String?> description;
  /// Display name of the connector.
  late final pulumi.Output<String?> displayName;
  /// If this is an internal connector.
  late final pulumi.Output<bool?> isInternal;
  /// The last modified time.
  late final pulumi.Output<String> lastModified;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// State of connector.
  late final pulumi.Output<String> state;
  /// The hub name.
  late final pulumi.Output<String> tenantId;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_customerinsights_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customerinsights:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectorId = registerOutput<int>('connectorId');
    connectorName = registerOutput<String?>('connectorName');
    connectorProperties = registerOutput<Map<String, dynamic>>('connectorProperties');
    connectorType = registerOutput<String>('connectorType');
    created = registerOutput<String>('created');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    isInternal = registerOutput<bool?>('isInternal');
    lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
