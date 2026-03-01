import 'package:pulumi/pulumi.dart' as pulumi;
import 'medtech_service_args.dart';
import 'medtech_service_identity.dart';

/// Manages a Healthcare Med Tech Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "east us",
/// });
/// const exampleWorkspace = new azure.healthcare.Workspace("example", {
///     name: "examplewkspace",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleMedtechService = new azure.healthcare.MedtechService("example", {
///     name: "examplemed",
///     workspaceId: exampleWorkspace.id,
///     location: "east us",
///     identity: {
///         type: "SystemAssigned",
///     },
///     eventhubNamespaceName: "example-eventhub-namespace",
///     eventhubName: "example-eventhub",
///     eventhubConsumerGroupName: "$Default",
///     deviceMappingJson: JSON.stringify({
///         templateType: "CollectionContent",
///         template: [{
///             templateType: "JsonPathContent",
///             template: {
///                 typeName: "heartrate",
///                 typeMatchExpression: "$..[?(@heartrate)]",
///                 deviceIdExpression: "$.deviceid",
///                 timestampExpression: "$.measurementdatetime",
///                 values: [{
///                     required: "true",
///                     valueExpression: "$.heartrate",
///                     valueName: "hr",
///                 }],
///             },
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="east us")
/// example_workspace = azure.healthcare.Workspace("example",
///     name="examplewkspace",
///     location=example.location,
///     resource_group_name=example.name)
/// example_medtech_service = azure.healthcare.MedtechService("example",
///     name="examplemed",
///     workspace_id=example_workspace.id,
///     location="east us",
///     identity={
///         "type": "SystemAssigned",
///     },
///     eventhub_namespace_name="example-eventhub-namespace",
///     eventhub_name="example-eventhub",
///     eventhub_consumer_group_name="$Default",
///     device_mapping_json=json.dumps({
///         "templateType": "CollectionContent",
///         "template": [{
///             "templateType": "JsonPathContent",
///             "template": {
///                 "typeName": "heartrate",
///                 "typeMatchExpression": "$..[?(@heartrate)]",
///                 "deviceIdExpression": "$.deviceid",
///                 "timestampExpression": "$.measurementdatetime",
///                 "values": [{
///                     "required": "true",
///                     "valueExpression": "$.heartrate",
///                     "valueName": "hr",
///                 }],
///             },
///         }],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "east us",
///     });
///
///     var exampleWorkspace = new Azure.Healthcare.Workspace("example", new()
///     {
///         Name = "examplewkspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleMedtechService = new Azure.Healthcare.MedtechService("example", new()
///     {
///         Name = "examplemed",
///         WorkspaceId = exampleWorkspace.Id,
///         Location = "east us",
///         Identity = new Azure.Healthcare.Inputs.MedtechServiceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         EventhubNamespaceName = "example-eventhub-namespace",
///         EventhubName = "example-eventhub",
///         EventhubConsumerGroupName = "$Default",
///         DeviceMappingJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["templateType"] = "CollectionContent",
///             ["template"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["templateType"] = "JsonPathContent",
///                     ["template"] = new Dictionary<string, object?>
///                     {
///                         ["typeName"] = "heartrate",
///                         ["typeMatchExpression"] = "$..[?(@heartrate)]",
///                         ["deviceIdExpression"] = "$.deviceid",
///                         ["timestampExpression"] = "$.measurementdatetime",
///                         ["values"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["required"] = "true",
///                                 ["valueExpression"] = "$.heartrate",
///                                 ["valueName"] = "hr",
///                             },
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("east us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := healthcare.NewWorkspace(ctx, "example", &healthcare.WorkspaceArgs{
/// 			Name:              pulumi.String("examplewkspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"templateType": "CollectionContent",
/// 			"template": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"templateType": "JsonPathContent",
/// 					"template": map[string]interface{}{
/// 						"typeName":            "heartrate",
/// 						"typeMatchExpression": "$..[?(@heartrate)]",
/// 						"deviceIdExpression":  "$.deviceid",
/// 						"timestampExpression": "$.measurementdatetime",
/// 						"values": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"required":        "true",
/// 								"valueExpression": "$.heartrate",
/// 								"valueName":       "hr",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = healthcare.NewMedtechService(ctx, "example", &healthcare.MedtechServiceArgs{
/// 			Name:        pulumi.String("examplemed"),
/// 			WorkspaceId: exampleWorkspace.ID(),
/// 			Location:    pulumi.String("east us"),
/// 			Identity: &healthcare.MedtechServiceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			EventhubNamespaceName:     pulumi.String("example-eventhub-namespace"),
/// 			EventhubName:              pulumi.String("example-eventhub"),
/// 			EventhubConsumerGroupName: pulumi.String("$Default"),
/// 			DeviceMappingJson:         pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.healthcare.Workspace;
/// import com.pulumi.azure.healthcare.WorkspaceArgs;
/// import com.pulumi.azure.healthcare.MedtechService;
/// import com.pulumi.azure.healthcare.MedtechServiceArgs;
/// import com.pulumi.azure.healthcare.inputs.MedtechServiceIdentityArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("east us")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("examplewkspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleMedtechService = new MedtechService("exampleMedtechService", MedtechServiceArgs.builder()
///             .name("examplemed")
///             .workspaceId(exampleWorkspace.id())
///             .location("east us")
///             .identity(MedtechServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .eventhubNamespaceName("example-eventhub-namespace")
///             .eventhubName("example-eventhub")
///             .eventhubConsumerGroupName("$Default")
///             .deviceMappingJson(serializeJson(
///                 jsonObject(
///                     jsonProperty("templateType", "CollectionContent"),
///                     jsonProperty("template", jsonArray(jsonObject(
///                         jsonProperty("templateType", "JsonPathContent"),
///                         jsonProperty("template", jsonObject(
///                             jsonProperty("typeName", "heartrate"),
///                             jsonProperty("typeMatchExpression", "$..[?(@heartrate)]"),
///                             jsonProperty("deviceIdExpression", "$.deviceid"),
///                             jsonProperty("timestampExpression", "$.measurementdatetime"),
///                             jsonProperty("values", jsonArray(jsonObject(
///                                 jsonProperty("required", "true"),
///                                 jsonProperty("valueExpression", "$.heartrate"),
///                                 jsonProperty("valueName", "hr")
///                             )))
///                         ))
///                     )))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-rg
///       location: east us
///   exampleWorkspace:
///     type: azure:healthcare:Workspace
///     name: example
///     properties:
///       name: examplewkspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleMedtechService:
///     type: azure:healthcare:MedtechService
///     name: example
///     properties:
///       name: examplemed
///       workspaceId: ${exampleWorkspace.id}
///       location: east us
///       identity:
///         type: SystemAssigned
///       eventhubNamespaceName: example-eventhub-namespace
///       eventhubName: example-eventhub
///       eventhubConsumerGroupName: $Default
///       deviceMappingJson:
///         fn::toJSON:
///           templateType: CollectionContent
///           template:
///             - templateType: JsonPathContent
///               template:
///                 typeName: heartrate
///                 typeMatchExpression: $..[?(@heartrate)]
///                 deviceIdExpression: $.deviceid
///                 timestampExpression: $.measurementdatetime
///                 values:
///                   - required: 'true'
///                     valueExpression: $.heartrate
///                     valueName: hr
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HealthcareApis` - 2022-12-01
///
/// ## Import
///
/// Healthcare Med Tech Service can be imported using the resource`id`, e.g.
///
/// ```sh
/// $ pulumi import azure:healthcare/medtechService:MedtechService example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.HealthcareApis/workspaces/workspace1/iotConnectors/iotconnector1
/// ```
class MedtechService extends pulumi.CustomResource {
  /// Specifies the Device Mappings of the Med Tech Service.
  late final pulumi.Output<String> deviceMappingJson;
  /// Specifies the Consumer Group of the Event Hub to connect to.
  late final pulumi.Output<String> eventhubConsumerGroupName;
  /// Specifies the name of the Event Hub to connect to.
  late final pulumi.Output<String> eventhubName;
  /// Specifies the namespace name of the Event Hub to connect to.
  late final pulumi.Output<String> eventhubNamespaceName;
  /// An `identity` block as defined below.
  late final pulumi.Output<MedtechServiceIdentity?> identity;
  /// Specifies the Azure Region where the Healthcare Med Tech Service should be created. Changing this forces a new Healthcare Med Tech Service to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Healthcare Med Tech Service. Changing this forces a new Healthcare Med Tech Service to be created.
  late final pulumi.Output<String> name;
  /// A mapping of tags to assign to the Healthcare Med Tech Service.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the id of the Healthcare Workspace where the Healthcare Med Tech Service should exist. Changing this forces a new Healthcare Med Tech Service to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [MedtechService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MedtechService]. {@macro pulumi_healthcare_medtech_service_medtech_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MedtechService(
    String name, {
    MedtechServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/medtechService:MedtechService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deviceMappingJson = registerOutput<String>('deviceMappingJson');
    this.eventhubConsumerGroupName = registerOutput<String>('eventhubConsumerGroupName');
    this.eventhubName = registerOutput<String>('eventhubName');
    this.eventhubNamespaceName = registerOutput<String>('eventhubNamespaceName');
    this.identity = registerOutput<MedtechServiceIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
