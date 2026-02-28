import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_playbook_args.dart';
import 'cx_playbook_instruction.dart';
import 'cx_playbook_llm_model_settings.dart';

/// Playbook is the basic building block to instruct the LLM how to execute a certain task.
///
///
/// To get more information about Playbook, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.playbooks)
/// * How-to Guides
/// * [Official CX Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Playbook Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent-basic",
///     location: "global",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
///     description: "Example description.",
/// });
/// const my_playbook = new gcp.diagflow.CxPlaybook("my-playbook", {
///     parent: agent.id,
///     displayName: "Example Display Name",
///     goal: "Example Goal",
///     playbookType: "ROUTINE",
///     instruction: {
///         steps: [
///             {
///                 text: "step 1",
///                 steps: JSON.stringify([
///                     {
///                         text: "step 1 1",
///                     },
///                     {
///                         text: "step 1 2",
///                         steps: [
///                             {
///                                 text: "step 1 2 1",
///                             },
///                             {
///                                 text: "step 1 2 2",
///                             },
///                         ],
///                     },
///                     {
///                         text: "step 1 3",
///                     },
///                 ]),
///             },
///             {
///                 text: "step 2",
///             },
///             {
///                 text: "step 3",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent-basic",
///     location="global",
///     default_language_code="en",
///     time_zone="America/New_York",
///     description="Example description.")
/// my_playbook = gcp.diagflow.CxPlaybook("my-playbook",
///     parent=agent.id,
///     display_name="Example Display Name",
///     goal="Example Goal",
///     playbook_type="ROUTINE",
///     instruction={
///         "steps": [
///             {
///                 "text": "step 1",
///                 "steps": json.dumps([
///                     {
///                         "text": "step 1 1",
///                     },
///                     {
///                         "text": "step 1 2",
///                         "steps": [
///                             {
///                                 "text": "step 1 2 1",
///                             },
///                             {
///                                 "text": "step 1 2 2",
///                             },
///                         ],
///                     },
///                     {
///                         "text": "step 1 3",
///                     },
///                 ]),
///             },
///             {
///                 "text": "step 2",
///             },
///             {
///                 "text": "step 3",
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent-basic",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///     });
///
///     var my_playbook = new Gcp.Diagflow.CxPlaybook("my-playbook", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "Example Display Name",
///         Goal = "Example Goal",
///         PlaybookType = "ROUTINE",
///         Instruction = new Gcp.Diagflow.Inputs.CxPlaybookInstructionArgs
///         {
///             Steps = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxPlaybookInstructionStepArgs
///                 {
///                     Text = "step 1",
///                     Steps = JsonSerializer.Serialize(new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["text"] = "step 1 1",
///                         },
///                         new Dictionary<string, object?>
///                         {
///                             ["text"] = "step 1 2",
///                             ["steps"] = new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["text"] = "step 1 2 1",
///                                 },
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["text"] = "step 1 2 2",
///                                 },
///                             },
///                         },
///                         new Dictionary<string, object?>
///                         {
///                             ["text"] = "step 1 3",
///                         },
///                     }),
///                 },
///                 new Gcp.Diagflow.Inputs.CxPlaybookInstructionStepArgs
///                 {
///                     Text = "step 2",
///                 },
///                 new Gcp.Diagflow.Inputs.CxPlaybookInstructionStepArgs
///                 {
///                     Text = "step 3",
///                 },
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent-basic"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 			Description:         pulumi.String("Example description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal([]map[string]interface{}{
/// 			map[string]interface{}{
/// 				"text": "step 1 1",
/// 			},
/// 			map[string]interface{}{
/// 				"text": "step 1 2",
/// 				"steps": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"text": "step 1 2 1",
/// 					},
/// 					map[string]interface{}{
/// 						"text": "step 1 2 2",
/// 					},
/// 				},
/// 			},
/// 			map[string]interface{}{
/// 				"text": "step 1 3",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = diagflow.NewCxPlaybook(ctx, "my-playbook", &diagflow.CxPlaybookArgs{
/// 			Parent:       agent.ID(),
/// 			DisplayName:  pulumi.String("Example Display Name"),
/// 			Goal:         pulumi.String("Example Goal"),
/// 			PlaybookType: pulumi.String("ROUTINE"),
/// 			Instruction: &diagflow.CxPlaybookInstructionArgs{
/// 				Steps: diagflow.CxPlaybookInstructionStepArray{
/// 					&diagflow.CxPlaybookInstructionStepArgs{
/// 						Text:  pulumi.String("step 1"),
/// 						Steps: pulumi.String(json0),
/// 					},
/// 					&diagflow.CxPlaybookInstructionStepArgs{
/// 						Text: pulumi.String("step 2"),
/// 					},
/// 					&diagflow.CxPlaybookInstructionStepArgs{
/// 						Text: pulumi.String("step 3"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.CxPlaybook;
/// import com.pulumi.gcp.diagflow.CxPlaybookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPlaybookInstructionArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent-basic")
///             .location("global")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .build());
///
///         var my_playbook = new CxPlaybook("my-playbook", CxPlaybookArgs.builder()
///             .parent(agent.id())
///             .displayName("Example Display Name")
///             .goal("Example Goal")
///             .playbookType("ROUTINE")
///             .instruction(CxPlaybookInstructionArgs.builder()
///                 .steps(
///                     CxPlaybookInstructionStepArgs.builder()
///                         .text("step 1")
///                         .steps(serializeJson(
///                             jsonArray(
///                                 jsonObject(
///                                     jsonProperty("text", "step 1 1")
///                                 ),
///                                 jsonObject(
///                                     jsonProperty("text", "step 1 2"),
///                                     jsonProperty("steps", jsonArray(
///                                         jsonObject(
///                                             jsonProperty("text", "step 1 2 1")
///                                         ),
///                                         jsonObject(
///                                             jsonProperty("text", "step 1 2 2")
///                                         )
///                                     ))
///                                 ),
///                                 jsonObject(
///                                     jsonProperty("text", "step 1 3")
///                                 )
///                             )))
///                         .build(),
///                     CxPlaybookInstructionStepArgs.builder()
///                         .text("step 2")
///                         .build(),
///                     CxPlaybookInstructionStepArgs.builder()
///                         .text("step 3")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent-basic
///       location: global
///       defaultLanguageCode: en
///       timeZone: America/New_York
///       description: Example description.
///   my-playbook:
///     type: gcp:diagflow:CxPlaybook
///     properties:
///       parent: ${agent.id}
///       displayName: Example Display Name
///       goal: Example Goal
///       playbookType: ROUTINE
///       instruction:
///         steps:
///           - text: step 1
///             steps:
///               fn::toJSON:
///                 - text: step 1 1
///                 - text: step 1 2
///                   steps:
///                     - text: step 1 2 1
///                     - text: step 1 2 2
///                 - text: step 1 3
///           - text: step 2
///           - text: step 3
/// ```
///
/// ### Dialogflowcx Playbook Fulfillment
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent",
///     location: "global",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
///     description: "Example description.",
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "dialogflowcx-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const myWebhook = new gcp.diagflow.CxWebhook("my_webhook", {
///     parent: agent.id,
///     displayName: "MyWebhook",
///     genericWebService: {
///         uri: "https://example.com",
///     },
/// });
/// const myTool = new gcp.diagflow.CxTool("my_tool", {
///     parent: agent.id,
///     displayName: "Example Tool",
///     description: "Example Description",
/// });
/// const myGenerator = new gcp.diagflow.CxGenerator("my_generator", {
///     parent: agent.id,
///     displayName: "TF Prompt generator",
///     llmModelSettings: {
///         model: "gemini-2.0-flash-001",
///         promptText: "Return me some great results",
///     },
///     promptText: {
///         text: "Send me great results in french",
///     },
///     modelParameter: {
///         temperature: 0.55,
///     },
/// });
/// const my_playbook = new gcp.diagflow.CxPlaybook("my-playbook", {
///     parent: agent.id,
///     displayName: "Playbook Example with Fulfillment",
///     goal: "Example Goal",
///     instruction: {
///         guidelines: "Example Guidelines",
///         steps: [
///             {
///                 text: "step 1",
///                 steps: JSON.stringify([
///                     {
///                         text: "step 1 1",
///                     },
///                     {
///                         text: "step 1 2",
///                         steps: [
///                             {
///                                 text: "step 1 2 1",
///                             },
///                             {
///                                 text: "step 1 2 2",
///                             },
///                         ],
///                     },
///                     {
///                         text: "step 1 3",
///                     },
///                 ]),
///             },
///             {
///                 text: "step 2",
///             },
///             {
///                 text: "step 3",
///             },
///         ],
///     },
///     llmModelSettings: {
///         model: "gemini-2.0-flash-001",
///         promptText: "Return me some great results",
///     },
///     referencedTools: [myTool.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="global",
///     default_language_code="en",
///     time_zone="America/New_York",
///     description="Example description.")
/// bucket = gcp.storage.Bucket("bucket",
///     name="dialogflowcx-bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// my_webhook = gcp.diagflow.CxWebhook("my_webhook",
///     parent=agent.id,
///     display_name="MyWebhook",
///     generic_web_service={
///         "uri": "https://example.com",
///     })
/// my_tool = gcp.diagflow.CxTool("my_tool",
///     parent=agent.id,
///     display_name="Example Tool",
///     description="Example Description")
/// my_generator = gcp.diagflow.CxGenerator("my_generator",
///     parent=agent.id,
///     display_name="TF Prompt generator",
///     llm_model_settings={
///         "model": "gemini-2.0-flash-001",
///         "prompt_text": "Return me some great results",
///     },
///     prompt_text={
///         "text": "Send me great results in french",
///     },
///     model_parameter={
///         "temperature": 0.55,
///     })
/// my_playbook = gcp.diagflow.CxPlaybook("my-playbook",
///     parent=agent.id,
///     display_name="Playbook Example with Fulfillment",
///     goal="Example Goal",
///     instruction={
///         "guidelines": "Example Guidelines",
///         "steps": [
///             {
///                 "text": "step 1",
///                 "steps": json.dumps([
///                     {
///                         "text": "step 1 1",
///                     },
///                     {
///                         "text": "step 1 2",
///                         "steps": [
///                             {
///                                 "text": "step 1 2 1",
///                             },
///                             {
///                                 "text": "step 1 2 2",
///                             },
///                         ],
///                     },
///                     {
///                         "text": "step 1 3",
///                     },
///                 ]),
///             },
///             {
///                 "text": "step 2",
///             },
///             {
///                 "text": "step 3",
///             },
///         ],
///     },
///     llm_model_settings={
///         "model": "gemini-2.0-flash-001",
///         "prompt_text": "Return me some great results",
///     },
///     referenced_tools=[my_tool.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "dialogflowcx-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var myWebhook = new Gcp.Diagflow.CxWebhook("my_webhook", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyWebhook",
///         GenericWebService = new Gcp.Diagflow.Inputs.CxWebhookGenericWebServiceArgs
///         {
///             Uri = "https://example.com",
///         },
///     });
///
///     var myTool = new Gcp.Diagflow.CxTool("my_tool", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "Example Tool",
///         Description = "Example Description",
///     });
///
///     var myGenerator = new Gcp.Diagflow.CxGenerator("my_generator", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "TF Prompt generator",
///         LlmModelSettings = new Gcp.Diagflow.Inputs.CxGeneratorLlmModelSettingsArgs
///         {
///             Model = "gemini-2.0-flash-001",
///             PromptText = "Return me some great results",
///         },
///         PromptText = new Gcp.Diagflow.Inputs.CxGeneratorPromptTextArgs
///         {
///             Text = "Send me great results in french",
///         },
///         ModelParameter = new Gcp.Diagflow.Inputs.CxGeneratorModelParameterArgs
///         {
///             Temperature = 0.55,
///         },
///     });
///
///     var my_playbook = new Gcp.Diagflow.CxPlaybook("my-playbook", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "Playbook Example with Fulfillment",
///         Goal = "Example Goal",
///         Instruction = new Gcp.Diagflow.Inputs.CxPlaybookInstructionArgs
///         {
///             Guidelines = "Example Guidelines",
///             Steps = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxPlaybookInstructionStepArgs
///                 {
///                     Text = "step 1",
///                     Steps = JsonSerializer.Serialize(new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["text"] = "step 1 1",
///                         },
///                         new Dictionary<string, object?>
///                         {
///                             ["text"] = "step 1 2",
///                             ["steps"] = new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["text"] = "step 1 2 1",
///                                 },
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["text"] = "step 1 2 2",
///                                 },
///                             },
///                         },
///                         new Dictionary<string, object?>
///                         {
///                             ["text"] = "step 1 3",
///                         },
///                     }),
///                 },
///                 new Gcp.Diagflow.Inputs.CxPlaybookInstructionStepArgs
///                 {
///                     Text = "step 2",
///                 },
///                 new Gcp.Diagflow.Inputs.CxPlaybookInstructionStepArgs
///                 {
///                     Text = "step 3",
///                 },
///             },
///         },
///         LlmModelSettings = new Gcp.Diagflow.Inputs.CxPlaybookLlmModelSettingsArgs
///         {
///             Model = "gemini-2.0-flash-001",
///             PromptText = "Return me some great results",
///         },
///         ReferencedTools = new[]
///         {
///             myTool.Id,
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 			Description:         pulumi.String("Example description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("dialogflowcx-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxWebhook(ctx, "my_webhook", &diagflow.CxWebhookArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("MyWebhook"),
/// 			GenericWebService: &diagflow.CxWebhookGenericWebServiceArgs{
/// 				Uri: pulumi.String("https://example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myTool, err := diagflow.NewCxTool(ctx, "my_tool", &diagflow.CxToolArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("Example Tool"),
/// 			Description: pulumi.String("Example Description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxGenerator(ctx, "my_generator", &diagflow.CxGeneratorArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("TF Prompt generator"),
/// 			LlmModelSettings: &diagflow.CxGeneratorLlmModelSettingsArgs{
/// 				Model:      pulumi.String("gemini-2.0-flash-001"),
/// 				PromptText: pulumi.String("Return me some great results"),
/// 			},
/// 			PromptText: &diagflow.CxGeneratorPromptTextArgs{
/// 				Text: pulumi.String("Send me great results in french"),
/// 			},
/// 			ModelParameter: &diagflow.CxGeneratorModelParameterArgs{
/// 				Temperature: pulumi.Float64(0.55),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal([]map[string]interface{}{
/// 			map[string]interface{}{
/// 				"text": "step 1 1",
/// 			},
/// 			map[string]interface{}{
/// 				"text": "step 1 2",
/// 				"steps": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"text": "step 1 2 1",
/// 					},
/// 					map[string]interface{}{
/// 						"text": "step 1 2 2",
/// 					},
/// 				},
/// 			},
/// 			map[string]interface{}{
/// 				"text": "step 1 3",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = diagflow.NewCxPlaybook(ctx, "my-playbook", &diagflow.CxPlaybookArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("Playbook Example with Fulfillment"),
/// 			Goal:        pulumi.String("Example Goal"),
/// 			Instruction: &diagflow.CxPlaybookInstructionArgs{
/// 				Guidelines: pulumi.String("Example Guidelines"),
/// 				Steps: diagflow.CxPlaybookInstructionStepArray{
/// 					&diagflow.CxPlaybookInstructionStepArgs{
/// 						Text:  pulumi.String("step 1"),
/// 						Steps: pulumi.String(json0),
/// 					},
/// 					&diagflow.CxPlaybookInstructionStepArgs{
/// 						Text: pulumi.String("step 2"),
/// 					},
/// 					&diagflow.CxPlaybookInstructionStepArgs{
/// 						Text: pulumi.String("step 3"),
/// 					},
/// 				},
/// 			},
/// 			LlmModelSettings: &diagflow.CxPlaybookLlmModelSettingsArgs{
/// 				Model:      pulumi.String("gemini-2.0-flash-001"),
/// 				PromptText: pulumi.String("Return me some great results"),
/// 			},
/// 			ReferencedTools: pulumi.StringArray{
/// 				myTool.ID(),
/// 			},
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.diagflow.CxWebhook;
/// import com.pulumi.gcp.diagflow.CxWebhookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookGenericWebServiceArgs;
/// import com.pulumi.gcp.diagflow.CxTool;
/// import com.pulumi.gcp.diagflow.CxToolArgs;
/// import com.pulumi.gcp.diagflow.CxGenerator;
/// import com.pulumi.gcp.diagflow.CxGeneratorArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGeneratorLlmModelSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGeneratorPromptTextArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGeneratorModelParameterArgs;
/// import com.pulumi.gcp.diagflow.CxPlaybook;
/// import com.pulumi.gcp.diagflow.CxPlaybookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPlaybookInstructionArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPlaybookLlmModelSettingsArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("global")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("dialogflowcx-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var myWebhook = new CxWebhook("myWebhook", CxWebhookArgs.builder()
///             .parent(agent.id())
///             .displayName("MyWebhook")
///             .genericWebService(CxWebhookGenericWebServiceArgs.builder()
///                 .uri("https://example.com")
///                 .build())
///             .build());
///
///         var myTool = new CxTool("myTool", CxToolArgs.builder()
///             .parent(agent.id())
///             .displayName("Example Tool")
///             .description("Example Description")
///             .build());
///
///         var myGenerator = new CxGenerator("myGenerator", CxGeneratorArgs.builder()
///             .parent(agent.id())
///             .displayName("TF Prompt generator")
///             .llmModelSettings(CxGeneratorLlmModelSettingsArgs.builder()
///                 .model("gemini-2.0-flash-001")
///                 .promptText("Return me some great results")
///                 .build())
///             .promptText(CxGeneratorPromptTextArgs.builder()
///                 .text("Send me great results in french")
///                 .build())
///             .modelParameter(CxGeneratorModelParameterArgs.builder()
///                 .temperature(0.55)
///                 .build())
///             .build());
///
///         var my_playbook = new CxPlaybook("my-playbook", CxPlaybookArgs.builder()
///             .parent(agent.id())
///             .displayName("Playbook Example with Fulfillment")
///             .goal("Example Goal")
///             .instruction(CxPlaybookInstructionArgs.builder()
///                 .guidelines("Example Guidelines")
///                 .steps(
///                     CxPlaybookInstructionStepArgs.builder()
///                         .text("step 1")
///                         .steps(serializeJson(
///                             jsonArray(
///                                 jsonObject(
///                                     jsonProperty("text", "step 1 1")
///                                 ),
///                                 jsonObject(
///                                     jsonProperty("text", "step 1 2"),
///                                     jsonProperty("steps", jsonArray(
///                                         jsonObject(
///                                             jsonProperty("text", "step 1 2 1")
///                                         ),
///                                         jsonObject(
///                                             jsonProperty("text", "step 1 2 2")
///                                         )
///                                     ))
///                                 ),
///                                 jsonObject(
///                                     jsonProperty("text", "step 1 3")
///                                 )
///                             )))
///                         .build(),
///                     CxPlaybookInstructionStepArgs.builder()
///                         .text("step 2")
///                         .build(),
///                     CxPlaybookInstructionStepArgs.builder()
///                         .text("step 3")
///                         .build())
///                 .build())
///             .llmModelSettings(CxPlaybookLlmModelSettingsArgs.builder()
///                 .model("gemini-2.0-flash-001")
///                 .promptText("Return me some great results")
///                 .build())
///             .referencedTools(myTool.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent
///       location: global
///       defaultLanguageCode: en
///       timeZone: America/New_York
///       description: Example description.
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: dialogflowcx-bucket
///       location: US
///       uniformBucketLevelAccess: true
///   myWebhook:
///     type: gcp:diagflow:CxWebhook
///     name: my_webhook
///     properties:
///       parent: ${agent.id}
///       displayName: MyWebhook
///       genericWebService:
///         uri: https://example.com
///   myTool:
///     type: gcp:diagflow:CxTool
///     name: my_tool
///     properties:
///       parent: ${agent.id}
///       displayName: Example Tool
///       description: Example Description
///   myGenerator:
///     type: gcp:diagflow:CxGenerator
///     name: my_generator
///     properties:
///       parent: ${agent.id}
///       displayName: TF Prompt generator
///       llmModelSettings:
///         model: gemini-2.0-flash-001
///         promptText: Return me some great results
///       promptText:
///         text: Send me great results in french
///       modelParameter:
///         temperature: 0.55
///   my-playbook:
///     type: gcp:diagflow:CxPlaybook
///     properties:
///       parent: ${agent.id}
///       displayName: Playbook Example with Fulfillment
///       goal: Example Goal
///       instruction:
///         guidelines: Example Guidelines
///         steps:
///           - text: step 1
///             steps:
///               fn::toJSON:
///                 - text: step 1 1
///                 - text: step 1 2
///                   steps:
///                     - text: step 1 2 1
///                     - text: step 1 2 2
///                 - text: step 1 3
///           - text: step 2
///           - text: step 3
///       llmModelSettings:
///         model: gemini-2.0-flash-001
///         promptText: Return me some great results
///       referencedTools:
///         - ${myTool.id}
/// ```
///
///
/// ## Import
///
/// Playbook can be imported using any of these accepted formats:
///
/// * `{{parent}}/playbooks/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Playbook can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxPlaybook:CxPlaybook default {{parent}}/playbooks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxPlaybook:CxPlaybook default {{parent}}/{{name}}
/// ```
class CxPlaybook extends pulumi.CustomResource {
  /// The timestamp of initial playbook creation.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> createTime;

  /// The human-readable name of the playbook, unique within an agent.
  late final pulumi.Output<String> displayName;

  /// High level description of the goal the playbook intend to accomplish. A goal should be concise since it's visible to other playbooks that may reference this playbook.
  late final pulumi.Output<String> goal;

  /// Instruction to accomplish target goal.
  /// Structure is documented below.
  late final pulumi.Output<CxPlaybookInstruction?> instruction;

  /// Llm model settings for the playbook.
  /// Structure is documented below.
  late final pulumi.Output<CxPlaybookLlmModelSettings?> llmModelSettings;

  /// The unique identifier of the Playbook.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/playbooks/<Playbook ID>.
  late final pulumi.Output<String> name;

  /// The agent to create a Playbook for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  /// Type of the playbook.
  /// Possible values are: `PLAYBOOK_TYPE_UNSPECIFIED`, `TASK`, `ROUTINE`.
  late final pulumi.Output<String?> playbookType;

  /// The resource name of flows referenced by the current playbook in the instructions.
  late final pulumi.Output<List<String>> referencedFlows;

  /// The resource name of other playbooks referenced by the current playbook in the instructions.
  late final pulumi.Output<List<String>> referencedPlaybooks;

  /// The resource name of tools referenced by the current playbook in the instructions. If not provided explicitly, they are will be implied using the tool being referenced in goal and steps.
  late final pulumi.Output<List<String>?> referencedTools;

  /// Estimated number of tokes current playbook takes when sent to the LLM.
  late final pulumi.Output<String> tokenCount;

  /// Last time the playbook version was updated.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CxPlaybook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxPlaybook]. {@macro pulumi_diagflow_cx_playbook_cx_playbook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxPlaybook(
    String name, {
    CxPlaybookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxPlaybook:CxPlaybook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.goal = registerOutput<String>('goal');
    this.instruction = registerOutput<CxPlaybookInstruction?>('instruction');
    this.llmModelSettings =
        registerOutput<CxPlaybookLlmModelSettings?>('llmModelSettings');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.playbookType = registerOutput<String?>('playbookType');
    this.referencedFlows = registerOutput<List<String>>('referencedFlows');
    this.referencedPlaybooks =
        registerOutput<List<String>>('referencedPlaybooks');
    this.referencedTools = registerOutput<List<String>?>('referencedTools');
    this.tokenCount = registerOutput<String>('tokenCount');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
