import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_access_control_configuration_response.dart';
import 'flow_endpoints_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'resource_reference_response.dart';
import 'sku_response.dart';
import 'workflow_args.dart';
import 'workflow_parameter_response.dart';

/// The workflow type.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// Other available API versions: 2015-02-01-preview, 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a workflow
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workflow = new AzureNative.Logic.Workflow("workflow", new()
///     {
///         Definition = new Dictionary<string, object?>
///         {
///             ["$schema"] = "https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#",
///             ["actions"] = new Dictionary<string, object?>
///             {
///                 ["Find_pet_by_ID"] = new Dictionary<string, object?>
///                 {
///                     ["inputs"] = new Dictionary<string, object?>
///                     {
///                         ["host"] = new Dictionary<string, object?>
///                         {
///                             ["connection"] = new Dictionary<string, object?>
///                             {
///                                 ["name"] = "@parameters('$connections')['test-custom-connector']['connectionId']",
///                             },
///                         },
///                         ["method"] = "get",
///                         ["path"] = "/pet/@{encodeURIComponent('1')}",
///                     },
///                     ["runAfter"] = new Dictionary<string, object?>
///                     {
///                     },
///                     ["type"] = "ApiConnection",
///                 },
///             },
///             ["contentVersion"] = "1.0.0.0",
///             ["outputs"] = new Dictionary<string, object?>
///             {
///             },
///             ["parameters"] = new Dictionary<string, object?>
///             {
///                 ["$connections"] = new Dictionary<string, object?>
///                 {
///                     ["defaultValue"] = new Dictionary<string, object?>
///                     {
///                     },
///                     ["type"] = "Object",
///                 },
///             },
///             ["triggers"] = new Dictionary<string, object?>
///             {
///                 ["manual"] = new Dictionary<string, object?>
///                 {
///                     ["inputs"] = new Dictionary<string, object?>
///                     {
///                         ["schema"] = new Dictionary<string, object?>
///                         {
///                         },
///                     },
///                     ["kind"] = "Http",
///                     ["type"] = "Request",
///                 },
///             },
///         },
///         IntegrationAccount = new AzureNative.Logic.Inputs.ResourceReferenceArgs
///         {
///             Id = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Logic/integrationAccounts/test-integration-account",
///         },
///         Location = "brazilsouth",
///         Parameters =
///         {
///             { "$connections", new AzureNative.Logic.Inputs.WorkflowParameterArgs
///             {
///                 Value = new Dictionary<string, object?>
///                 {
///                     ["test-custom-connector"] = new Dictionary<string, object?>
///                     {
///                         ["connectionId"] = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Web/connections/test-custom-connector",
///                         ["connectionName"] = "test-custom-connector",
///                         ["id"] = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/brazilsouth/managedApis/test-custom-connector",
///                     },
///                 },
///             } },
///         },
///         ResourceGroupName = "test-resource-group",
///         Tags = null,
///         WorkflowName = "test-workflow",
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
/// 		_, err := logic.NewWorkflow(ctx, "workflow", &logic.WorkflowArgs{
/// 			Definition: pulumi.Any(map[string]interface{}{
/// 				"$schema": "https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#",
/// 				"actions": map[string]interface{}{
/// 					"Find_pet_by_ID": map[string]interface{}{
/// 						"inputs": map[string]interface{}{
/// 							"host": map[string]interface{}{
/// 								"connection": map[string]interface{}{
/// 									"name": "@parameters('$connections')['test-custom-connector']['connectionId']",
/// 								},
/// 							},
/// 							"method": "get",
/// 							"path":   "/pet/@{encodeURIComponent('1')}",
/// 						},
/// 						"runAfter": map[string]interface{}{},
/// 						"type":     "ApiConnection",
/// 					},
/// 				},
/// 				"contentVersion": "1.0.0.0",
/// 				"outputs":        map[string]interface{}{},
/// 				"parameters": map[string]interface{}{
/// 					"$connections": map[string]interface{}{
/// 						"defaultValue": map[string]interface{}{},
/// 						"type":         "Object",
/// 					},
/// 				},
/// 				"triggers": map[string]interface{}{
/// 					"manual": map[string]interface{}{
/// 						"inputs": map[string]interface{}{
/// 							"schema": map[string]interface{}{},
/// 						},
/// 						"kind": "Http",
/// 						"type": "Request",
/// 					},
/// 				},
/// 			}),
/// 			IntegrationAccount: &logic.ResourceReferenceArgs{
/// 				Id: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Logic/integrationAccounts/test-integration-account"),
/// 			},
/// 			Location: pulumi.String("brazilsouth"),
/// 			Parameters: logic.WorkflowParameterMap{
/// 				"$connections": &logic.WorkflowParameterArgs{
/// 					Value: pulumi.Any(map[string]interface{}{
/// 						"test-custom-connector": map[string]interface{}{
/// 							"connectionId":   "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Web/connections/test-custom-connector",
/// 							"connectionName": "test-custom-connector",
/// 							"id":             "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/brazilsouth/managedApis/test-custom-connector",
/// 						},
/// 					}),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-resource-group"),
/// 			Tags:              pulumi.StringMap{},
/// 			WorkflowName:      pulumi.String("test-workflow"),
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
/// import com.pulumi.azurenative.logic.Workflow;
/// import com.pulumi.azurenative.logic.WorkflowArgs;
/// import com.pulumi.azurenative.logic.inputs.ResourceReferenceArgs;
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
///         var workflow = new Workflow("workflow", WorkflowArgs.builder()
///             .definition(Map.ofEntries(
///                 Map.entry("$schema", "https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#"),
///                 Map.entry("actions", Map.of("Find_pet_by_ID", Map.ofEntries(
///                     Map.entry("inputs", Map.ofEntries(
///                         Map.entry("host", Map.of("connection", Map.of("name", "@parameters('$connections')['test-custom-connector']['connectionId']"))),
///                         Map.entry("method", "get"),
///                         Map.entry("path", "/pet/@{encodeURIComponent('1')}")
///                     )),
///                     Map.entry("runAfter", Map.ofEntries(
///                     )),
///                     Map.entry("type", "ApiConnection")
///                 ))),
///                 Map.entry("contentVersion", "1.0.0.0"),
///                 Map.entry("outputs", Map.ofEntries(
///                 )),
///                 Map.entry("parameters", Map.of("$connections", Map.ofEntries(
///                     Map.entry("defaultValue", Map.ofEntries(
///                     )),
///                     Map.entry("type", "Object")
///                 ))),
///                 Map.entry("triggers", Map.of("manual", Map.ofEntries(
///                     Map.entry("inputs", Map.of("schema", Map.ofEntries(
///                     ))),
///                     Map.entry("kind", "Http"),
///                     Map.entry("type", "Request")
///                 )))
///             ))
///             .integrationAccount(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Logic/integrationAccounts/test-integration-account")
///                 .build())
///             .location("brazilsouth")
///             .parameters(Map.of("$connections", WorkflowParameterArgs.builder()
///                 .value(Map.of("test-custom-connector", Map.ofEntries(
///                     Map.entry("connectionId", "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Web/connections/test-custom-connector"),
///                     Map.entry("connectionName", "test-custom-connector"),
///                     Map.entry("id", "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/brazilsouth/managedApis/test-custom-connector")
///                 )))
///                 .build()))
///             .resourceGroupName("test-resource-group")
///             .tags(Map.ofEntries(
///             ))
///             .workflowName("test-workflow")
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
/// const workflow = new azure_native.logic.Workflow("workflow", {
///     definition: {
///         $schema: "https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#",
///         actions: {
///             Find_pet_by_ID: {
///                 inputs: {
///                     host: {
///                         connection: {
///                             name: "@parameters('$connections')['test-custom-connector']['connectionId']",
///                         },
///                     },
///                     method: "get",
///                     path: "/pet/@{encodeURIComponent('1')}",
///                 },
///                 runAfter: {},
///                 type: "ApiConnection",
///             },
///         },
///         contentVersion: "1.0.0.0",
///         outputs: {},
///         parameters: {
///             $connections: {
///                 defaultValue: {},
///                 type: "Object",
///             },
///         },
///         triggers: {
///             manual: {
///                 inputs: {
///                     schema: {},
///                 },
///                 kind: "Http",
///                 type: "Request",
///             },
///         },
///     },
///     integrationAccount: {
///         id: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Logic/integrationAccounts/test-integration-account",
///     },
///     location: "brazilsouth",
///     parameters: {
///         $connections: {
///             value: {
///                 "test-custom-connector": {
///                     connectionId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Web/connections/test-custom-connector",
///                     connectionName: "test-custom-connector",
///                     id: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/brazilsouth/managedApis/test-custom-connector",
///                 },
///             },
///         },
///     },
///     resourceGroupName: "test-resource-group",
///     tags: {},
///     workflowName: "test-workflow",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workflow = azure_native.logic.Workflow("workflow",
///     definition={
///         "$schema": "https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#",
///         "actions": {
///             "Find_pet_by_ID": {
///                 "inputs": {
///                     "host": {
///                         "connection": {
///                             "name": "@parameters('$connections')['test-custom-connector']['connectionId']",
///                         },
///                     },
///                     "method": "get",
///                     "path": "/pet/@{encodeURIComponent('1')}",
///                 },
///                 "runAfter": {},
///                 "type": "ApiConnection",
///             },
///         },
///         "contentVersion": "1.0.0.0",
///         "outputs": {},
///         "parameters": {
///             "$connections": {
///                 "defaultValue": {},
///                 "type": "Object",
///             },
///         },
///         "triggers": {
///             "manual": {
///                 "inputs": {
///                     "schema": {},
///                 },
///                 "kind": "Http",
///                 "type": "Request",
///             },
///         },
///     },
///     integration_account={
///         "id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Logic/integrationAccounts/test-integration-account",
///     },
///     location="brazilsouth",
///     parameters={
///         "$connections": {
///             "value": {
///                 "test-custom-connector": {
///                     "connectionId": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Web/connections/test-custom-connector",
///                     "connectionName": "test-custom-connector",
///                     "id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/brazilsouth/managedApis/test-custom-connector",
///                 },
///             },
///         },
///     },
///     resource_group_name="test-resource-group",
///     tags={},
///     workflow_name="test-workflow")
///
/// ```
///
/// ```yaml
/// resources:
///   workflow:
///     type: azure-native:logic:Workflow
///     properties:
///       definition:
///         $schema: https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#
///         actions:
///           Find_pet_by_ID:
///             inputs:
///               host:
///                 connection:
///                   name: '@parameters(''$connections'')[''test-custom-connector''][''connectionId'']'
///               method: get
///               path: /pet/@{encodeURIComponent('1')}
///             runAfter: {}
///             type: ApiConnection
///         contentVersion: 1.0.0.0
///         outputs: {}
///         parameters:
///           $connections:
///             defaultValue: {}
///             type: Object
///         triggers:
///           manual:
///             inputs:
///               schema: {}
///             kind: Http
///             type: Request
///       integrationAccount:
///         id: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Logic/integrationAccounts/test-integration-account
///       location: brazilsouth
///       parameters:
///         $connections:
///           value:
///             test-custom-connector:
///               connectionId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-resource-group/providers/Microsoft.Web/connections/test-custom-connector
///               connectionName: test-custom-connector
///               id: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/brazilsouth/managedApis/test-custom-connector
///       resourceGroupName: test-resource-group
///       tags: {}
///       workflowName: test-workflow
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
/// $ pulumi import azure-native:logic:Workflow myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}
/// ```
class Workflow extends pulumi.CustomResource {
  /// The access control configuration.
  late final pulumi.Output<FlowAccessControlConfigurationResponse?>
  accessControl;

  /// Gets the access endpoint.
  late final pulumi.Output<String> accessEndpoint;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets the changed time.
  late final pulumi.Output<String> changedTime;

  /// Gets the created time.
  late final pulumi.Output<String> createdTime;

  /// The definition.
  late final pulumi.Output<dynamic> definition;

  /// The endpoints configuration.
  late final pulumi.Output<FlowEndpointsConfigurationResponse?>
  endpointsConfiguration;

  /// Managed service identity properties.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The integration account.
  late final pulumi.Output<ResourceReferenceResponse?> integrationAccount;

  /// The integration service environment.
  late final pulumi.Output<ResourceReferenceResponse?>
  integrationServiceEnvironment;

  /// The resource location.
  late final pulumi.Output<String?> location;

  /// Gets the resource name.
  late final pulumi.Output<String> name;

  /// The parameters.
  late final pulumi.Output<Map<String, WorkflowParameterResponse>?> parameters;

  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// The sku.
  late final pulumi.Output<SkuResponse> sku;

  /// The state.
  late final pulumi.Output<String?> state;

  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Gets the version.
  late final pulumi.Output<String> version;

  /// Creates a new [Workflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workflow]. {@macro pulumi_logic_workflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:logic:Workflow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessControl = registerOutput<FlowAccessControlConfigurationResponse?>(
      'accessControl',
    );
    accessEndpoint = registerOutput<String>('accessEndpoint');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changedTime = registerOutput<String>('changedTime');
    createdTime = registerOutput<String>('createdTime');
    definition = registerOutput<dynamic>('definition');
    endpointsConfiguration =
        registerOutput<FlowEndpointsConfigurationResponse?>(
          'endpointsConfiguration',
        );
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    integrationAccount = registerOutput<ResourceReferenceResponse?>(
      'integrationAccount',
    );
    integrationServiceEnvironment = registerOutput<ResourceReferenceResponse?>(
      'integrationServiceEnvironment',
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, WorkflowParameterResponse>?>(
      'parameters',
    );
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse>('sku');
    state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
