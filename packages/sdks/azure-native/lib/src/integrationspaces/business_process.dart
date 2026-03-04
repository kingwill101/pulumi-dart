import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_process_args.dart';
import 'business_process_identifier_response.dart';
import 'business_process_mapping_item_response.dart';
import 'business_process_stage_response.dart';
import 'system_data_response.dart';

/// A business process under application.
///
/// Uses Azure REST API version 2023-11-14-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-14-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateBusinessProcess
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var businessProcess = new AzureNative.IntegrationSpaces.BusinessProcess("businessProcess", new()
///     {
///         ApplicationName = "Application1",
///         BusinessProcessMapping =
///         {
///             { "Completed", new AzureNative.IntegrationSpaces.Inputs.BusinessProcessMappingItemArgs
///             {
///                 LogicAppResourceId = "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///                 OperationName = "CompletedPO",
///                 OperationType = "Action",
///                 WorkflowName = "Fulfillment",
///             } },
///             { "Denied", new AzureNative.IntegrationSpaces.Inputs.BusinessProcessMappingItemArgs
///             {
///                 LogicAppResourceId = "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///                 OperationName = "DeniedPO",
///                 OperationType = "Action",
///                 WorkflowName = "Fulfillment",
///             } },
///             { "Processing", new AzureNative.IntegrationSpaces.Inputs.BusinessProcessMappingItemArgs
///             {
///                 LogicAppResourceId = "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///                 OperationName = "ApprovedPO",
///                 OperationType = "Action",
///                 WorkflowName = "PurchaseOrder",
///             } },
///             { "Received", new AzureNative.IntegrationSpaces.Inputs.BusinessProcessMappingItemArgs
///             {
///                 LogicAppResourceId = "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///                 OperationName = "manual",
///                 OperationType = "Trigger",
///                 WorkflowName = "PurchaseOrder",
///             } },
///             { "Shipped", new AzureNative.IntegrationSpaces.Inputs.BusinessProcessMappingItemArgs
///             {
///                 LogicAppResourceId = "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///                 OperationName = "ShippedPO",
///                 OperationType = "Action",
///                 WorkflowName = "Fulfillment",
///             } },
///         },
///         BusinessProcessName = "BusinessProcess1",
///         BusinessProcessStages =
///         {
///             { "Completed", new AzureNative.IntegrationSpaces.Inputs.BusinessProcessStageArgs
///             {
///                 Description = "Completed",
///                 StagesBefore = new[]
///                 {
///                     "Shipped",
///                 },
///             } },
///             { "Denied", new AzureNative.IntegrationSpaces.Inputs.BusinessProcessStageArgs
///             {
///                 Description = "Denied",
///                 StagesBefore = new[]
///                 {
///                     "Processing",
///                 },
///             } },
///             { "Processing", new AzureNative.IntegrationSpaces.Inputs.BusinessProcessStageArgs
///             {
///                 Description = "Processing",
///                 Properties =
///                 {
///                     { "ApprovalState", "String" },
///                     { "ApproverName", "String" },
///                     { "POAmount", "Integer" },
///                 },
///                 StagesBefore = new[]
///                 {
///                     "Received",
///                 },
///             } },
///             { "Received", new AzureNative.IntegrationSpaces.Inputs.BusinessProcessStageArgs
///             {
///                 Description = "received",
///                 Properties =
///                 {
///                     { "City", "String" },
///                     { "Product", "String" },
///                     { "Quantity", "Integer" },
///                     { "State", "String" },
///                 },
///             } },
///             { "Shipped", new AzureNative.IntegrationSpaces.Inputs.BusinessProcessStageArgs
///             {
///                 Description = "Shipped",
///                 Properties =
///                 {
///                     { "ShipPriority", "Integer" },
///                     { "TrackingID", "Integer" },
///                 },
///                 StagesBefore = new[]
///                 {
///                     "Denied",
///                 },
///             } },
///         },
///         Description = "First Business Process",
///         Identifier = new AzureNative.IntegrationSpaces.Inputs.BusinessProcessIdentifierArgs
///         {
///             PropertyName = "businessIdentifier-1",
///             PropertyType = "String",
///         },
///         ResourceGroupName = "testrg",
///         SpaceName = "Space1",
///         TableName = "table1",
///         TrackingDataStoreReferenceName = "trackingDataStoreReferenceName1",
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
/// 	integrationspaces "github.com/pulumi/pulumi-azure-native-sdk/integrationspaces/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := integrationspaces.NewBusinessProcess(ctx, "businessProcess", &integrationspaces.BusinessProcessArgs{
/// 			ApplicationName: pulumi.String("Application1"),
/// 			BusinessProcessMapping: integrationspaces.BusinessProcessMappingItemMap{
/// 				"Completed": &integrationspaces.BusinessProcessMappingItemArgs{
/// 					LogicAppResourceId: pulumi.String("subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1"),
/// 					OperationName:      pulumi.String("CompletedPO"),
/// 					OperationType:      pulumi.String("Action"),
/// 					WorkflowName:       pulumi.String("Fulfillment"),
/// 				},
/// 				"Denied": &integrationspaces.BusinessProcessMappingItemArgs{
/// 					LogicAppResourceId: pulumi.String("subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1"),
/// 					OperationName:      pulumi.String("DeniedPO"),
/// 					OperationType:      pulumi.String("Action"),
/// 					WorkflowName:       pulumi.String("Fulfillment"),
/// 				},
/// 				"Processing": &integrationspaces.BusinessProcessMappingItemArgs{
/// 					LogicAppResourceId: pulumi.String("subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1"),
/// 					OperationName:      pulumi.String("ApprovedPO"),
/// 					OperationType:      pulumi.String("Action"),
/// 					WorkflowName:       pulumi.String("PurchaseOrder"),
/// 				},
/// 				"Received": &integrationspaces.BusinessProcessMappingItemArgs{
/// 					LogicAppResourceId: pulumi.String("subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1"),
/// 					OperationName:      pulumi.String("manual"),
/// 					OperationType:      pulumi.String("Trigger"),
/// 					WorkflowName:       pulumi.String("PurchaseOrder"),
/// 				},
/// 				"Shipped": &integrationspaces.BusinessProcessMappingItemArgs{
/// 					LogicAppResourceId: pulumi.String("subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1"),
/// 					OperationName:      pulumi.String("ShippedPO"),
/// 					OperationType:      pulumi.String("Action"),
/// 					WorkflowName:       pulumi.String("Fulfillment"),
/// 				},
/// 			},
/// 			BusinessProcessName: pulumi.String("BusinessProcess1"),
/// 			BusinessProcessStages: integrationspaces.BusinessProcessStageMap{
/// 				"Completed": &integrationspaces.BusinessProcessStageArgs{
/// 					Description: pulumi.String("Completed"),
/// 					StagesBefore: pulumi.StringArray{
/// 						pulumi.String("Shipped"),
/// 					},
/// 				},
/// 				"Denied": &integrationspaces.BusinessProcessStageArgs{
/// 					Description: pulumi.String("Denied"),
/// 					StagesBefore: pulumi.StringArray{
/// 						pulumi.String("Processing"),
/// 					},
/// 				},
/// 				"Processing": &integrationspaces.BusinessProcessStageArgs{
/// 					Description: pulumi.String("Processing"),
/// 					Properties: pulumi.StringMap{
/// 						"ApprovalState": pulumi.String("String"),
/// 						"ApproverName":  pulumi.String("String"),
/// 						"POAmount":      pulumi.String("Integer"),
/// 					},
/// 					StagesBefore: pulumi.StringArray{
/// 						pulumi.String("Received"),
/// 					},
/// 				},
/// 				"Received": &integrationspaces.BusinessProcessStageArgs{
/// 					Description: pulumi.String("received"),
/// 					Properties: pulumi.StringMap{
/// 						"City":     pulumi.String("String"),
/// 						"Product":  pulumi.String("String"),
/// 						"Quantity": pulumi.String("Integer"),
/// 						"State":    pulumi.String("String"),
/// 					},
/// 				},
/// 				"Shipped": &integrationspaces.BusinessProcessStageArgs{
/// 					Description: pulumi.String("Shipped"),
/// 					Properties: pulumi.StringMap{
/// 						"ShipPriority": pulumi.String("Integer"),
/// 						"TrackingID":   pulumi.String("Integer"),
/// 					},
/// 					StagesBefore: pulumi.StringArray{
/// 						pulumi.String("Denied"),
/// 					},
/// 				},
/// 			},
/// 			Description: pulumi.String("First Business Process"),
/// 			Identifier: &integrationspaces.BusinessProcessIdentifierArgs{
/// 				PropertyName: pulumi.String("businessIdentifier-1"),
/// 				PropertyType: pulumi.String("String"),
/// 			},
/// 			ResourceGroupName:              pulumi.String("testrg"),
/// 			SpaceName:                      pulumi.String("Space1"),
/// 			TableName:                      pulumi.String("table1"),
/// 			TrackingDataStoreReferenceName: pulumi.String("trackingDataStoreReferenceName1"),
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
/// import com.pulumi.azurenative.integrationspaces.BusinessProcess;
/// import com.pulumi.azurenative.integrationspaces.BusinessProcessArgs;
/// import com.pulumi.azurenative.integrationspaces.inputs.BusinessProcessIdentifierArgs;
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
///         var businessProcess = new BusinessProcess("businessProcess", BusinessProcessArgs.builder()
///             .applicationName("Application1")
///             .businessProcessMapping(Map.ofEntries(
///                 Map.entry("Completed", BusinessProcessMappingItemArgs.builder()
///                     .logicAppResourceId("subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1")
///                     .operationName("CompletedPO")
///                     .operationType("Action")
///                     .workflowName("Fulfillment")
///                     .build()),
///                 Map.entry("Denied", BusinessProcessMappingItemArgs.builder()
///                     .logicAppResourceId("subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1")
///                     .operationName("DeniedPO")
///                     .operationType("Action")
///                     .workflowName("Fulfillment")
///                     .build()),
///                 Map.entry("Processing", BusinessProcessMappingItemArgs.builder()
///                     .logicAppResourceId("subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1")
///                     .operationName("ApprovedPO")
///                     .operationType("Action")
///                     .workflowName("PurchaseOrder")
///                     .build()),
///                 Map.entry("Received", BusinessProcessMappingItemArgs.builder()
///                     .logicAppResourceId("subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1")
///                     .operationName("manual")
///                     .operationType("Trigger")
///                     .workflowName("PurchaseOrder")
///                     .build()),
///                 Map.entry("Shipped", BusinessProcessMappingItemArgs.builder()
///                     .logicAppResourceId("subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1")
///                     .operationName("ShippedPO")
///                     .operationType("Action")
///                     .workflowName("Fulfillment")
///                     .build())
///             ))
///             .businessProcessName("BusinessProcess1")
///             .businessProcessStages(Map.ofEntries(
///                 Map.entry("Completed", BusinessProcessStageArgs.builder()
///                     .description("Completed")
///                     .stagesBefore("Shipped")
///                     .build()),
///                 Map.entry("Denied", BusinessProcessStageArgs.builder()
///                     .description("Denied")
///                     .stagesBefore("Processing")
///                     .build()),
///                 Map.entry("Processing", BusinessProcessStageArgs.builder()
///                     .description("Processing")
///                     .properties(Map.ofEntries(
///                         Map.entry("ApprovalState", "String"),
///                         Map.entry("ApproverName", "String"),
///                         Map.entry("POAmount", "Integer")
///                     ))
///                     .stagesBefore("Received")
///                     .build()),
///                 Map.entry("Received", BusinessProcessStageArgs.builder()
///                     .description("received")
///                     .properties(Map.ofEntries(
///                         Map.entry("City", "String"),
///                         Map.entry("Product", "String"),
///                         Map.entry("Quantity", "Integer"),
///                         Map.entry("State", "String")
///                     ))
///                     .build()),
///                 Map.entry("Shipped", BusinessProcessStageArgs.builder()
///                     .description("Shipped")
///                     .properties(Map.ofEntries(
///                         Map.entry("ShipPriority", "Integer"),
///                         Map.entry("TrackingID", "Integer")
///                     ))
///                     .stagesBefore("Denied")
///                     .build())
///             ))
///             .description("First Business Process")
///             .identifier(BusinessProcessIdentifierArgs.builder()
///                 .propertyName("businessIdentifier-1")
///                 .propertyType("String")
///                 .build())
///             .resourceGroupName("testrg")
///             .spaceName("Space1")
///             .tableName("table1")
///             .trackingDataStoreReferenceName("trackingDataStoreReferenceName1")
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
/// const businessProcess = new azure_native.integrationspaces.BusinessProcess("businessProcess", {
///     applicationName: "Application1",
///     businessProcessMapping: {
///         Completed: {
///             logicAppResourceId: "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///             operationName: "CompletedPO",
///             operationType: "Action",
///             workflowName: "Fulfillment",
///         },
///         Denied: {
///             logicAppResourceId: "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///             operationName: "DeniedPO",
///             operationType: "Action",
///             workflowName: "Fulfillment",
///         },
///         Processing: {
///             logicAppResourceId: "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///             operationName: "ApprovedPO",
///             operationType: "Action",
///             workflowName: "PurchaseOrder",
///         },
///         Received: {
///             logicAppResourceId: "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///             operationName: "manual",
///             operationType: "Trigger",
///             workflowName: "PurchaseOrder",
///         },
///         Shipped: {
///             logicAppResourceId: "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///             operationName: "ShippedPO",
///             operationType: "Action",
///             workflowName: "Fulfillment",
///         },
///     },
///     businessProcessName: "BusinessProcess1",
///     businessProcessStages: {
///         Completed: {
///             description: "Completed",
///             stagesBefore: ["Shipped"],
///         },
///         Denied: {
///             description: "Denied",
///             stagesBefore: ["Processing"],
///         },
///         Processing: {
///             description: "Processing",
///             properties: {
///                 ApprovalState: "String",
///                 ApproverName: "String",
///                 POAmount: "Integer",
///             },
///             stagesBefore: ["Received"],
///         },
///         Received: {
///             description: "received",
///             properties: {
///                 City: "String",
///                 Product: "String",
///                 Quantity: "Integer",
///                 State: "String",
///             },
///         },
///         Shipped: {
///             description: "Shipped",
///             properties: {
///                 ShipPriority: "Integer",
///                 TrackingID: "Integer",
///             },
///             stagesBefore: ["Denied"],
///         },
///     },
///     description: "First Business Process",
///     identifier: {
///         propertyName: "businessIdentifier-1",
///         propertyType: "String",
///     },
///     resourceGroupName: "testrg",
///     spaceName: "Space1",
///     tableName: "table1",
///     trackingDataStoreReferenceName: "trackingDataStoreReferenceName1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// business_process = azure_native.integrationspaces.BusinessProcess("businessProcess",
///     application_name="Application1",
///     business_process_mapping={
///         "Completed": {
///             "logic_app_resource_id": "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///             "operation_name": "CompletedPO",
///             "operation_type": "Action",
///             "workflow_name": "Fulfillment",
///         },
///         "Denied": {
///             "logic_app_resource_id": "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///             "operation_name": "DeniedPO",
///             "operation_type": "Action",
///             "workflow_name": "Fulfillment",
///         },
///         "Processing": {
///             "logic_app_resource_id": "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///             "operation_name": "ApprovedPO",
///             "operation_type": "Action",
///             "workflow_name": "PurchaseOrder",
///         },
///         "Received": {
///             "logic_app_resource_id": "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///             "operation_name": "manual",
///             "operation_type": "Trigger",
///             "workflow_name": "PurchaseOrder",
///         },
///         "Shipped": {
///             "logic_app_resource_id": "subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1",
///             "operation_name": "ShippedPO",
///             "operation_type": "Action",
///             "workflow_name": "Fulfillment",
///         },
///     },
///     business_process_name="BusinessProcess1",
///     business_process_stages={
///         "Completed": {
///             "description": "Completed",
///             "stages_before": ["Shipped"],
///         },
///         "Denied": {
///             "description": "Denied",
///             "stages_before": ["Processing"],
///         },
///         "Processing": {
///             "description": "Processing",
///             "properties": {
///                 "ApprovalState": "String",
///                 "ApproverName": "String",
///                 "POAmount": "Integer",
///             },
///             "stages_before": ["Received"],
///         },
///         "Received": {
///             "description": "received",
///             "properties": {
///                 "City": "String",
///                 "Product": "String",
///                 "Quantity": "Integer",
///                 "State": "String",
///             },
///         },
///         "Shipped": {
///             "description": "Shipped",
///             "properties": {
///                 "ShipPriority": "Integer",
///                 "TrackingID": "Integer",
///             },
///             "stages_before": ["Denied"],
///         },
///     },
///     description="First Business Process",
///     identifier={
///         "property_name": "businessIdentifier-1",
///         "property_type": "String",
///     },
///     resource_group_name="testrg",
///     space_name="Space1",
///     table_name="table1",
///     tracking_data_store_reference_name="trackingDataStoreReferenceName1")
///
/// ```
///
/// ```yaml
/// resources:
///   businessProcess:
///     type: azure-native:integrationspaces:BusinessProcess
///     properties:
///       applicationName: Application1
///       businessProcessMapping:
///         Completed:
///           logicAppResourceId: subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1
///           operationName: CompletedPO
///           operationType: Action
///           workflowName: Fulfillment
///         Denied:
///           logicAppResourceId: subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1
///           operationName: DeniedPO
///           operationType: Action
///           workflowName: Fulfillment
///         Processing:
///           logicAppResourceId: subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1
///           operationName: ApprovedPO
///           operationType: Action
///           workflowName: PurchaseOrder
///         Received:
///           logicAppResourceId: subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1
///           operationName: manual
///           operationType: Trigger
///           workflowName: PurchaseOrder
///         Shipped:
///           logicAppResourceId: subscriptions/sub1/resourcegroups/group1/providers/Microsoft.Web/sites/logicApp1
///           operationName: ShippedPO
///           operationType: Action
///           workflowName: Fulfillment
///       businessProcessName: BusinessProcess1
///       businessProcessStages:
///         Completed:
///           description: Completed
///           stagesBefore:
///             - Shipped
///         Denied:
///           description: Denied
///           stagesBefore:
///             - Processing
///         Processing:
///           description: Processing
///           properties:
///             ApprovalState: String
///             ApproverName: String
///             POAmount: Integer
///           stagesBefore:
///             - Received
///         Received:
///           description: received
///           properties:
///             City: String
///             Product: String
///             Quantity: Integer
///             State: String
///         Shipped:
///           description: Shipped
///           properties:
///             ShipPriority: Integer
///             TrackingID: Integer
///           stagesBefore:
///             - Denied
///       description: First Business Process
///       identifier:
///         propertyName: businessIdentifier-1
///         propertyType: String
///       resourceGroupName: testrg
///       spaceName: Space1
///       tableName: table1
///       trackingDataStoreReferenceName: trackingDataStoreReferenceName1
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
/// $ pulumi import azure-native:integrationspaces:BusinessProcess BusinessProcess1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IntegrationSpaces/spaces/{spaceName}/applications/{applicationName}/businessProcesses/{businessProcessName}
/// ```
class BusinessProcess extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The business process mapping.
  late final pulumi.Output<Map<String, BusinessProcessMappingItemResponse>?>
  businessProcessMapping;

  /// The business process stages.
  late final pulumi.Output<Map<String, BusinessProcessStageResponse>?>
  businessProcessStages;

  /// The description of the business process.
  late final pulumi.Output<String?> description;

  /// The business process identifier.
  late final pulumi.Output<BusinessProcessIdentifierResponse?> identifier;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The table name of the business process.
  late final pulumi.Output<String?> tableName;

  /// The tracking data store reference name.
  late final pulumi.Output<String?> trackingDataStoreReferenceName;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The version of the business process.
  late final pulumi.Output<String> version;

  /// Creates a new [BusinessProcess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BusinessProcess]. {@macro pulumi_integrationspaces_business_process_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BusinessProcess(
    String name, {
    BusinessProcessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:integrationspaces:BusinessProcess',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    businessProcessMapping =
        registerOutput<Map<String, BusinessProcessMappingItemResponse>?>(
          'businessProcessMapping',
        );
    businessProcessStages =
        registerOutput<Map<String, BusinessProcessStageResponse>?>(
          'businessProcessStages',
        );
    description = registerOutput<String?>('description');
    identifier = registerOutput<BusinessProcessIdentifierResponse?>(
      'identifier',
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tableName = registerOutput<String?>('tableName');
    trackingDataStoreReferenceName = registerOutput<String?>(
      'trackingDataStoreReferenceName',
    );
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
