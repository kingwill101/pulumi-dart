import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_flow_advanced_settings.dart';
import 'cx_flow_args.dart';
import 'cx_flow_event_handler.dart';
import 'cx_flow_knowledge_connector_settings.dart';
import 'cx_flow_nlu_settings.dart';
import 'cx_flow_transition_route.dart';

/// Flows represents the conversation flows when you build your chatbot agent.
///
///
/// To get more information about Flow, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Flow Basic
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
///     supportedLanguageCodes: [
///         "fr",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const basicFlow = new gcp.diagflow.CxFlow("basic_flow", {
///     parent: agent.id,
///     displayName: "MyFlow",
///     description: "Test Flow",
///     nluSettings: {
///         classificationThreshold: 0.3,
///         modelType: "MODEL_TYPE_STANDARD",
///     },
///     eventHandlers: [
///         {
///             event: "custom-event",
///             triggerFulfillment: {
///                 returnPartialResponses: false,
///                 messages: [{
///                     text: {
///                         texts: ["I didn't get that. Can you say it again?"],
///                     },
///                 }],
///             },
///         },
///         {
///             event: "sys.no-match-default",
///             triggerFulfillment: {
///                 returnPartialResponses: false,
///                 messages: [{
///                     text: {
///                         texts: ["Sorry, could you say that again?"],
///                     },
///                 }],
///             },
///         },
///         {
///             event: "sys.no-input-default",
///             triggerFulfillment: {
///                 returnPartialResponses: false,
///                 messages: [{
///                     text: {
///                         texts: ["One more time?"],
///                     },
///                 }],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="global",
///     default_language_code="en",
///     supported_language_codes=[
///         "fr",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// basic_flow = gcp.diagflow.CxFlow("basic_flow",
///     parent=agent.id,
///     display_name="MyFlow",
///     description="Test Flow",
///     nlu_settings={
///         "classification_threshold": 0.3,
///         "model_type": "MODEL_TYPE_STANDARD",
///     },
///     event_handlers=[
///         {
///             "event": "custom-event",
///             "trigger_fulfillment": {
///                 "return_partial_responses": False,
///                 "messages": [{
///                     "text": {
///                         "texts": ["I didn't get that. Can you say it again?"],
///                     },
///                 }],
///             },
///         },
///         {
///             "event": "sys.no-match-default",
///             "trigger_fulfillment": {
///                 "return_partial_responses": False,
///                 "messages": [{
///                     "text": {
///                         "texts": ["Sorry, could you say that again?"],
///                     },
///                 }],
///             },
///         },
///         {
///             "event": "sys.no-input-default",
///             "trigger_fulfillment": {
///                 "return_partial_responses": False,
///                 "messages": [{
///                     "text": {
///                         "texts": ["One more time?"],
///                     },
///                 }],
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
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
///         SupportedLanguageCodes = new[]
///         {
///             "fr",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var basicFlow = new Gcp.Diagflow.CxFlow("basic_flow", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyFlow",
///         Description = "Test Flow",
///         NluSettings = new Gcp.Diagflow.Inputs.CxFlowNluSettingsArgs
///         {
///             ClassificationThreshold = 0.3,
///             ModelType = "MODEL_TYPE_STANDARD",
///         },
///         EventHandlers = new[]
///         {
///             new Gcp.Diagflow.Inputs.CxFlowEventHandlerArgs
///             {
///                 Event = "custom-event",
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentArgs
///                 {
///                     ReturnPartialResponses = false,
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Text = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "I didn't get that. Can you say it again?",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.Diagflow.Inputs.CxFlowEventHandlerArgs
///             {
///                 Event = "sys.no-match-default",
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentArgs
///                 {
///                     ReturnPartialResponses = false,
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Text = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "Sorry, could you say that again?",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.Diagflow.Inputs.CxFlowEventHandlerArgs
///             {
///                 Event = "sys.no-input-default",
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentArgs
///                 {
///                     ReturnPartialResponses = false,
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Text = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "One more time?",
///                                 },
///                             },
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("fr"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxFlow(ctx, "basic_flow", &diagflow.CxFlowArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("MyFlow"),
/// 			Description: pulumi.String("Test Flow"),
/// 			NluSettings: &diagflow.CxFlowNluSettingsArgs{
/// 				ClassificationThreshold: pulumi.Float64(0.3),
/// 				ModelType:               pulumi.String("MODEL_TYPE_STANDARD"),
/// 			},
/// 			EventHandlers: diagflow.CxFlowEventHandlerArray{
/// 				&diagflow.CxFlowEventHandlerArgs{
/// 					Event: pulumi.String("custom-event"),
/// 					TriggerFulfillment: &diagflow.CxFlowEventHandlerTriggerFulfillmentArgs{
/// 						ReturnPartialResponses: pulumi.Bool(false),
/// 						Messages: diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArray{
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								Text: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("I didn't get that. Can you say it again?"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&diagflow.CxFlowEventHandlerArgs{
/// 					Event: pulumi.String("sys.no-match-default"),
/// 					TriggerFulfillment: &diagflow.CxFlowEventHandlerTriggerFulfillmentArgs{
/// 						ReturnPartialResponses: pulumi.Bool(false),
/// 						Messages: diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArray{
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								Text: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("Sorry, could you say that again?"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&diagflow.CxFlowEventHandlerArgs{
/// 					Event: pulumi.String("sys.no-input-default"),
/// 					TriggerFulfillment: &diagflow.CxFlowEventHandlerTriggerFulfillmentArgs{
/// 						ReturnPartialResponses: pulumi.Bool(false),
/// 						Messages: diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArray{
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								Text: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("One more time?"),
/// 									},
/// 								},
/// 							},
/// 						},
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
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxFlow;
/// import com.pulumi.gcp.diagflow.CxFlowArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowNluSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowEventHandlerArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowEventHandlerTriggerFulfillmentArgs;
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
///             .supportedLanguageCodes(
///                 "fr",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var basicFlow = new CxFlow("basicFlow", CxFlowArgs.builder()
///             .parent(agent.id())
///             .displayName("MyFlow")
///             .description("Test Flow")
///             .nluSettings(CxFlowNluSettingsArgs.builder()
///                 .classificationThreshold(0.3)
///                 .modelType("MODEL_TYPE_STANDARD")
///                 .build())
///             .eventHandlers(
///                 CxFlowEventHandlerArgs.builder()
///                     .event("custom-event")
///                     .triggerFulfillment(CxFlowEventHandlerTriggerFulfillmentArgs.builder()
///                         .returnPartialResponses(false)
///                         .messages(CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .text(CxFlowEventHandlerTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("I didn't get that. Can you say it again?")
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CxFlowEventHandlerArgs.builder()
///                     .event("sys.no-match-default")
///                     .triggerFulfillment(CxFlowEventHandlerTriggerFulfillmentArgs.builder()
///                         .returnPartialResponses(false)
///                         .messages(CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .text(CxFlowEventHandlerTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("Sorry, could you say that again?")
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CxFlowEventHandlerArgs.builder()
///                     .event("sys.no-input-default")
///                     .triggerFulfillment(CxFlowEventHandlerTriggerFulfillmentArgs.builder()
///                         .returnPartialResponses(false)
///                         .messages(CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .text(CxFlowEventHandlerTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("One more time?")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
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
///       supportedLanguageCodes:
///         - fr
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   basicFlow:
///     type: gcp:diagflow:CxFlow
///     name: basic_flow
///     properties:
///       parent: ${agent.id}
///       displayName: MyFlow
///       description: Test Flow
///       nluSettings:
///         classificationThreshold: 0.3
///         modelType: MODEL_TYPE_STANDARD
///       eventHandlers:
///         - event: custom-event
///           triggerFulfillment:
///             returnPartialResponses: false
///             messages:
///               - text:
///                   texts:
///                     - I didn't get that. Can you say it again?
///         - event: sys.no-match-default
///           triggerFulfillment:
///             returnPartialResponses: false
///             messages:
///               - text:
///                   texts:
///                     - Sorry, could you say that again?
///         - event: sys.no-input-default
///           triggerFulfillment:
///             returnPartialResponses: false
///             messages:
///               - text:
///                   texts:
///                     - One more time?
/// ```
///
/// ### Dialogflowcx Flow Full
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
///     supportedLanguageCodes: [
///         "fr",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "dialogflowcx-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const myDatastore = new gcp.discoveryengine.DataStore("my_datastore", {
///     location: "global",
///     dataStoreId: "datastore-flow-full",
///     displayName: "datastore-flow-full",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_CHAT"],
/// });
/// const myWebhook = new gcp.diagflow.CxWebhook("my_webhook", {
///     parent: agent.id,
///     displayName: "MyWebhook",
///     genericWebService: {
///         uri: "https://example.com",
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// const basicFlow = new gcp.diagflow.CxFlow("basic_flow", {
///     parent: agent.id,
///     displayName: "MyFlow",
///     description: "Test Flow",
///     nluSettings: {
///         classificationThreshold: 0.3,
///         modelType: "MODEL_TYPE_STANDARD",
///     },
///     eventHandlers: [
///         {
///             event: "custom-event",
///             triggerFulfillment: {
///                 returnPartialResponses: false,
///                 messages: [{
///                     text: {
///                         texts: ["I didn't get that. Can you say it again?"],
///                     },
///                 }],
///             },
///         },
///         {
///             event: "sys.no-match-default",
///             triggerFulfillment: {
///                 returnPartialResponses: false,
///                 messages: [{
///                     text: {
///                         texts: ["Sorry, could you say that again?"],
///                     },
///                 }],
///             },
///         },
///         {
///             event: "sys.no-input-default",
///             triggerFulfillment: {
///                 returnPartialResponses: false,
///                 messages: [{
///                     text: {
///                         texts: ["One more time?"],
///                     },
///                 }],
///             },
///         },
///         {
///             event: "another-event",
///             triggerFulfillment: {
///                 returnPartialResponses: true,
///                 messages: [
///                     {
///                         channel: "some-channel",
///                         text: {
///                             texts: ["Some text"],
///                         },
///                     },
///                     {
///                         payload: "          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///                     },
///                     {
///                         conversationSuccess: {
///                             metadata: "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                         },
///                     },
///                     {
///                         outputAudioText: {
///                             text: "some output text",
///                         },
///                     },
///                     {
///                         outputAudioText: {
///                             ssml: "            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                         },
///                     },
///                     {
///                         liveAgentHandoff: {
///                             metadata: "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                         },
///                     },
///                     {
///                         playAudio: {
///                             audioUri: "http://example.com/some-audio-file.mp3",
///                         },
///                     },
///                     {
///                         telephonyTransferCall: {
///                             phoneNumber: "1-234-567-8901",
///                         },
///                     },
///                 ],
///                 setParameterActions: [
///                     {
///                         parameter: "some-param",
///                         value: "123.45",
///                     },
///                     {
///                         parameter: "another-param",
///                         value: JSON.stringify("abc"),
///                     },
///                     {
///                         parameter: "other-param",
///                         value: JSON.stringify(["foo"]),
///                     },
///                 ],
///                 conditionalCases: [{
///                     cases: JSON.stringify([
///                         {
///                             condition: "$sys.func.RAND() < 0.5",
///                             caseContent: [
///                                 {
///                                     message: {
///                                         text: {
///                                             text: ["First case"],
///                                         },
///                                     },
///                                 },
///                                 {
///                                     additionalCases: {
///                                         cases: [{
///                                             condition: "$sys.func.RAND() < 0.2",
///                                             caseContent: [{
///                                                 message: {
///                                                     text: {
///                                                         text: ["Nested case"],
///                                                     },
///                                                 },
///                                             }],
///                                         }],
///                                     },
///                                 },
///                             ],
///                         },
///                         {
///                             caseContent: [{
///                                 message: {
///                                     text: {
///                                         text: ["Final case"],
///                                     },
///                                 },
///                             }],
///                         },
///                     ]),
///                 }],
///                 enableGenerativeFallback: true,
///             },
///         },
///     ],
///     transitionRoutes: [{
///         condition: "true",
///         triggerFulfillment: {
///             returnPartialResponses: true,
///             messages: [
///                 {
///                     channel: "some-channel",
///                     text: {
///                         texts: ["Some text"],
///                     },
///                 },
///                 {
///                     payload: "          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///                 },
///                 {
///                     conversationSuccess: {
///                         metadata: "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                     },
///                 },
///                 {
///                     outputAudioText: {
///                         text: "some output text",
///                     },
///                 },
///                 {
///                     outputAudioText: {
///                         ssml: "            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                     },
///                 },
///                 {
///                     liveAgentHandoff: {
///                         metadata: "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                     },
///                 },
///                 {
///                     playAudio: {
///                         audioUri: "http://example.com/some-audio-file.mp3",
///                     },
///                 },
///                 {
///                     telephonyTransferCall: {
///                         phoneNumber: "1-234-567-8901",
///                     },
///                 },
///             ],
///             setParameterActions: [
///                 {
///                     parameter: "some-param",
///                     value: "123.45",
///                 },
///                 {
///                     parameter: "another-param",
///                     value: JSON.stringify("abc"),
///                 },
///                 {
///                     parameter: "other-param",
///                     value: JSON.stringify(["foo"]),
///                 },
///             ],
///             conditionalCases: [{
///                 cases: JSON.stringify([
///                     {
///                         condition: "$sys.func.RAND() < 0.5",
///                         caseContent: [
///                             {
///                                 message: {
///                                     text: {
///                                         text: ["First case"],
///                                     },
///                                 },
///                             },
///                             {
///                                 additionalCases: {
///                                     cases: [{
///                                         condition: "$sys.func.RAND() < 0.2",
///                                         caseContent: [{
///                                             message: {
///                                                 text: {
///                                                     text: ["Nested case"],
///                                                 },
///                                             },
///                                         }],
///                                     }],
///                                 },
///                             },
///                         ],
///                     },
///                     {
///                         caseContent: [{
///                             message: {
///                                 text: {
///                                     text: ["Final case"],
///                                 },
///                             },
///                         }],
///                     },
///                 ]),
///             }],
///         },
///         targetFlow: agent.startFlow,
///     }],
///     advancedSettings: {
///         audioExportGcsDestination: {
///             uri: pulumi.interpolate`${bucket.url}/prefix-`,
///         },
///         speechSettings: {
///             endpointerSensitivity: 30,
///             noSpeechTimeout: "3.500s",
///             useTimeoutBasedEndpointing: true,
///             models: {
///                 name: "wrench",
///                 mass: "1.3kg",
///                 count: "3",
///             },
///         },
///         dtmfSettings: {
///             enabled: true,
///             maxDigits: 1,
///             finishDigit: "#",
///         },
///         loggingSettings: {
///             enableStackdriverLogging: true,
///             enableInteractionLogging: true,
///             enableConsentBasedRedaction: true,
///         },
///     },
///     knowledgeConnectorSettings: {
///         enabled: true,
///         triggerFulfillment: {
///             messages: [
///                 {
///                     channel: "some-channel",
///                     text: {
///                         texts: ["information completed, navigating to page 2"],
///                     },
///                 },
///                 {
///                     payload: "          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///                 },
///                 {
///                     conversationSuccess: {
///                         metadata: "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                     },
///                 },
///                 {
///                     outputAudioText: {
///                         text: "some output text",
///                     },
///                 },
///                 {
///                     outputAudioText: {
///                         ssml: "            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                     },
///                 },
///                 {
///                     liveAgentHandoff: {
///                         metadata: "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                     },
///                 },
///                 {
///                     playAudio: {
///                         audioUri: "http://example.com/some-audio-file.mp3",
///                     },
///                 },
///                 {
///                     telephonyTransferCall: {
///                         phoneNumber: "1-234-567-8902",
///                     },
///                 },
///             ],
///             webhook: myWebhook.id,
///             returnPartialResponses: true,
///             tag: "some-tag",
///             setParameterActions: [{
///                 parameter: "some-param",
///                 value: "123.45",
///             }],
///             conditionalCases: [{
///                 cases: JSON.stringify([
///                     {
///                         condition: "$sys.func.RAND() < 0.5",
///                         caseContent: [{
///                             message: {
///                                 text: {
///                                     text: ["First case"],
///                                 },
///                             },
///                         }],
///                     },
///                     {
///                         caseContent: [{
///                             message: {
///                                 text: {
///                                     text: ["Final case"],
///                                 },
///                             },
///                         }],
///                     },
///                 ]),
///             }],
///             advancedSettings: {
///                 speechSettings: {
///                     endpointerSensitivity: 30,
///                     noSpeechTimeout: "3.500s",
///                     useTimeoutBasedEndpointing: true,
///                     models: {
///                         name: "wrench",
///                         mass: "1.3kg",
///                         count: "3",
///                     },
///                 },
///                 dtmfSettings: {
///                     enabled: true,
///                     maxDigits: 1,
///                     finishDigit: "#",
///                     interdigitTimeoutDuration: "3.500s",
///                     endpointingTimeoutDuration: "3.500s",
///                 },
///                 loggingSettings: {
///                     enableStackdriverLogging: true,
///                     enableInteractionLogging: true,
///                     enableConsentBasedRedaction: true,
///                 },
///             },
///             enableGenerativeFallback: true,
///         },
///         dataStoreConnections: [{
///             dataStoreType: "UNSTRUCTURED",
///             dataStore: pulumi.all([project, agent.location, myDatastore.dataStoreId]).apply(([project, location, dataStoreId]) => `projects/${project.number}/locations/${location}/collections/default_collection/dataStores/${dataStoreId}`),
///             documentProcessingMode: "DOCUMENTS",
///         }],
///         targetFlow: agent.startFlow,
///     },
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
///     supported_language_codes=[
///         "fr",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// bucket = gcp.storage.Bucket("bucket",
///     name="dialogflowcx-bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// my_datastore = gcp.discoveryengine.DataStore("my_datastore",
///     location="global",
///     data_store_id="datastore-flow-full",
///     display_name="datastore-flow-full",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_CHAT"])
/// my_webhook = gcp.diagflow.CxWebhook("my_webhook",
///     parent=agent.id,
///     display_name="MyWebhook",
///     generic_web_service={
///         "uri": "https://example.com",
///     })
/// project = gcp.organizations.get_project()
/// basic_flow = gcp.diagflow.CxFlow("basic_flow",
///     parent=agent.id,
///     display_name="MyFlow",
///     description="Test Flow",
///     nlu_settings={
///         "classification_threshold": 0.3,
///         "model_type": "MODEL_TYPE_STANDARD",
///     },
///     event_handlers=[
///         {
///             "event": "custom-event",
///             "trigger_fulfillment": {
///                 "return_partial_responses": False,
///                 "messages": [{
///                     "text": {
///                         "texts": ["I didn't get that. Can you say it again?"],
///                     },
///                 }],
///             },
///         },
///         {
///             "event": "sys.no-match-default",
///             "trigger_fulfillment": {
///                 "return_partial_responses": False,
///                 "messages": [{
///                     "text": {
///                         "texts": ["Sorry, could you say that again?"],
///                     },
///                 }],
///             },
///         },
///         {
///             "event": "sys.no-input-default",
///             "trigger_fulfillment": {
///                 "return_partial_responses": False,
///                 "messages": [{
///                     "text": {
///                         "texts": ["One more time?"],
///                     },
///                 }],
///             },
///         },
///         {
///             "event": "another-event",
///             "trigger_fulfillment": {
///                 "return_partial_responses": True,
///                 "messages": [
///                     {
///                         "channel": "some-channel",
///                         "text": {
///                             "texts": ["Some text"],
///                         },
///                     },
///                     {
///                         "payload": "          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///                     },
///                     {
///                         "conversation_success": {
///                             "metadata": "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                         },
///                     },
///                     {
///                         "output_audio_text": {
///                             "text": "some output text",
///                         },
///                     },
///                     {
///                         "output_audio_text": {
///                             "ssml": "            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                         },
///                     },
///                     {
///                         "live_agent_handoff": {
///                             "metadata": "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                         },
///                     },
///                     {
///                         "play_audio": {
///                             "audio_uri": "http://example.com/some-audio-file.mp3",
///                         },
///                     },
///                     {
///                         "telephony_transfer_call": {
///                             "phone_number": "1-234-567-8901",
///                         },
///                     },
///                 ],
///                 "set_parameter_actions": [
///                     {
///                         "parameter": "some-param",
///                         "value": "123.45",
///                     },
///                     {
///                         "parameter": "another-param",
///                         "value": json.dumps("abc"),
///                     },
///                     {
///                         "parameter": "other-param",
///                         "value": json.dumps(["foo"]),
///                     },
///                 ],
///                 "conditional_cases": [{
///                     "cases": json.dumps([
///                         {
///                             "condition": "$sys.func.RAND() < 0.5",
///                             "caseContent": [
///                                 {
///                                     "message": {
///                                         "text": {
///                                             "text": ["First case"],
///                                         },
///                                     },
///                                 },
///                                 {
///                                     "additionalCases": {
///                                         "cases": [{
///                                             "condition": "$sys.func.RAND() < 0.2",
///                                             "caseContent": [{
///                                                 "message": {
///                                                     "text": {
///                                                         "text": ["Nested case"],
///                                                     },
///                                                 },
///                                             }],
///                                         }],
///                                     },
///                                 },
///                             ],
///                         },
///                         {
///                             "caseContent": [{
///                                 "message": {
///                                     "text": {
///                                         "text": ["Final case"],
///                                     },
///                                 },
///                             }],
///                         },
///                     ]),
///                 }],
///                 "enable_generative_fallback": True,
///             },
///         },
///     ],
///     transition_routes=[{
///         "condition": "true",
///         "trigger_fulfillment": {
///             "return_partial_responses": True,
///             "messages": [
///                 {
///                     "channel": "some-channel",
///                     "text": {
///                         "texts": ["Some text"],
///                     },
///                 },
///                 {
///                     "payload": "          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///                 },
///                 {
///                     "conversation_success": {
///                         "metadata": "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                     },
///                 },
///                 {
///                     "output_audio_text": {
///                         "text": "some output text",
///                     },
///                 },
///                 {
///                     "output_audio_text": {
///                         "ssml": "            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                     },
///                 },
///                 {
///                     "live_agent_handoff": {
///                         "metadata": "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                     },
///                 },
///                 {
///                     "play_audio": {
///                         "audio_uri": "http://example.com/some-audio-file.mp3",
///                     },
///                 },
///                 {
///                     "telephony_transfer_call": {
///                         "phone_number": "1-234-567-8901",
///                     },
///                 },
///             ],
///             "set_parameter_actions": [
///                 {
///                     "parameter": "some-param",
///                     "value": "123.45",
///                 },
///                 {
///                     "parameter": "another-param",
///                     "value": json.dumps("abc"),
///                 },
///                 {
///                     "parameter": "other-param",
///                     "value": json.dumps(["foo"]),
///                 },
///             ],
///             "conditional_cases": [{
///                 "cases": json.dumps([
///                     {
///                         "condition": "$sys.func.RAND() < 0.5",
///                         "caseContent": [
///                             {
///                                 "message": {
///                                     "text": {
///                                         "text": ["First case"],
///                                     },
///                                 },
///                             },
///                             {
///                                 "additionalCases": {
///                                     "cases": [{
///                                         "condition": "$sys.func.RAND() < 0.2",
///                                         "caseContent": [{
///                                             "message": {
///                                                 "text": {
///                                                     "text": ["Nested case"],
///                                                 },
///                                             },
///                                         }],
///                                     }],
///                                 },
///                             },
///                         ],
///                     },
///                     {
///                         "caseContent": [{
///                             "message": {
///                                 "text": {
///                                     "text": ["Final case"],
///                                 },
///                             },
///                         }],
///                     },
///                 ]),
///             }],
///         },
///         "target_flow": agent.start_flow,
///     }],
///     advanced_settings={
///         "audio_export_gcs_destination": {
///             "uri": bucket.url.apply(lambda url: f"{url}/prefix-"),
///         },
///         "speech_settings": {
///             "endpointer_sensitivity": 30,
///             "no_speech_timeout": "3.500s",
///             "use_timeout_based_endpointing": True,
///             "models": {
///                 "name": "wrench",
///                 "mass": "1.3kg",
///                 "count": "3",
///             },
///         },
///         "dtmf_settings": {
///             "enabled": True,
///             "max_digits": 1,
///             "finish_digit": "#",
///         },
///         "logging_settings": {
///             "enable_stackdriver_logging": True,
///             "enable_interaction_logging": True,
///             "enable_consent_based_redaction": True,
///         },
///     },
///     knowledge_connector_settings={
///         "enabled": True,
///         "trigger_fulfillment": {
///             "messages": [
///                 {
///                     "channel": "some-channel",
///                     "text": {
///                         "texts": ["information completed, navigating to page 2"],
///                     },
///                 },
///                 {
///                     "payload": "          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///                 },
///                 {
///                     "conversation_success": {
///                         "metadata": "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                     },
///                 },
///                 {
///                     "output_audio_text": {
///                         "text": "some output text",
///                     },
///                 },
///                 {
///                     "output_audio_text": {
///                         "ssml": "            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                     },
///                 },
///                 {
///                     "live_agent_handoff": {
///                         "metadata": "            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                     },
///                 },
///                 {
///                     "play_audio": {
///                         "audio_uri": "http://example.com/some-audio-file.mp3",
///                     },
///                 },
///                 {
///                     "telephony_transfer_call": {
///                         "phone_number": "1-234-567-8902",
///                     },
///                 },
///             ],
///             "webhook": my_webhook.id,
///             "return_partial_responses": True,
///             "tag": "some-tag",
///             "set_parameter_actions": [{
///                 "parameter": "some-param",
///                 "value": "123.45",
///             }],
///             "conditional_cases": [{
///                 "cases": json.dumps([
///                     {
///                         "condition": "$sys.func.RAND() < 0.5",
///                         "caseContent": [{
///                             "message": {
///                                 "text": {
///                                     "text": ["First case"],
///                                 },
///                             },
///                         }],
///                     },
///                     {
///                         "caseContent": [{
///                             "message": {
///                                 "text": {
///                                     "text": ["Final case"],
///                                 },
///                             },
///                         }],
///                     },
///                 ]),
///             }],
///             "advanced_settings": {
///                 "speech_settings": {
///                     "endpointer_sensitivity": 30,
///                     "no_speech_timeout": "3.500s",
///                     "use_timeout_based_endpointing": True,
///                     "models": {
///                         "name": "wrench",
///                         "mass": "1.3kg",
///                         "count": "3",
///                     },
///                 },
///                 "dtmf_settings": {
///                     "enabled": True,
///                     "max_digits": 1,
///                     "finish_digit": "#",
///                     "interdigit_timeout_duration": "3.500s",
///                     "endpointing_timeout_duration": "3.500s",
///                 },
///                 "logging_settings": {
///                     "enable_stackdriver_logging": True,
///                     "enable_interaction_logging": True,
///                     "enable_consent_based_redaction": True,
///                 },
///             },
///             "enable_generative_fallback": True,
///         },
///         "data_store_connections": [{
///             "data_store_type": "UNSTRUCTURED",
///             "data_store": pulumi.Output.all(
///                 location=agent.location,
///                 data_store_id=my_datastore.data_store_id
/// ).apply(lambda resolved_outputs: f"projects/{project.number}/locations/{resolved_outputs['location']}/collections/default_collection/dataStores/{resolved_outputs['data_store_id']}")
/// ,
///             "document_processing_mode": "DOCUMENTS",
///         }],
///         "target_flow": agent.start_flow,
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
///         DisplayName = "dialogflowcx-agent",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "fr",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "dialogflowcx-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var myDatastore = new Gcp.DiscoveryEngine.DataStore("my_datastore", new()
///     {
///         Location = "global",
///         DataStoreId = "datastore-flow-full",
///         DisplayName = "datastore-flow-full",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_CHAT",
///         },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var basicFlow = new Gcp.Diagflow.CxFlow("basic_flow", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyFlow",
///         Description = "Test Flow",
///         NluSettings = new Gcp.Diagflow.Inputs.CxFlowNluSettingsArgs
///         {
///             ClassificationThreshold = 0.3,
///             ModelType = "MODEL_TYPE_STANDARD",
///         },
///         EventHandlers = new[]
///         {
///             new Gcp.Diagflow.Inputs.CxFlowEventHandlerArgs
///             {
///                 Event = "custom-event",
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentArgs
///                 {
///                     ReturnPartialResponses = false,
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Text = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "I didn't get that. Can you say it again?",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.Diagflow.Inputs.CxFlowEventHandlerArgs
///             {
///                 Event = "sys.no-match-default",
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentArgs
///                 {
///                     ReturnPartialResponses = false,
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Text = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "Sorry, could you say that again?",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.Diagflow.Inputs.CxFlowEventHandlerArgs
///             {
///                 Event = "sys.no-input-default",
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentArgs
///                 {
///                     ReturnPartialResponses = false,
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Text = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "One more time?",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.Diagflow.Inputs.CxFlowEventHandlerArgs
///             {
///                 Event = "another-event",
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentArgs
///                 {
///                     ReturnPartialResponses = true,
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Channel = "some-channel",
///                             Text = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "Some text",
///                                 },
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Payload = @"          {\""some-key\"": \""some-value\"", \""other-key\"": [\""other-value\""]}
/// ",
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             ConversationSuccess = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageConversationSuccessArgs
///                             {
///                                 Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             OutputAudioText = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs
///                             {
///                                 Text = "some output text",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             OutputAudioText = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs
///                             {
///                                 Ssml = @"            <speak>Some example <say-as interpret-as=\""characters\"">SSML XML</say-as></speak>
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             LiveAgentHandoff = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageLiveAgentHandoffArgs
///                             {
///                                 Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             PlayAudio = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessagePlayAudioArgs
///                             {
///                                 AudioUri = "http://example.com/some-audio-file.mp3",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             TelephonyTransferCall = new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCallArgs
///                             {
///                                 PhoneNumber = "1-234-567-8901",
///                             },
///                         },
///                     },
///                     SetParameterActions = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentSetParameterActionArgs
///                         {
///                             Parameter = "some-param",
///                             Value = "123.45",
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentSetParameterActionArgs
///                         {
///                             Parameter = "another-param",
///                             Value = JsonSerializer.Serialize("abc"),
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentSetParameterActionArgs
///                         {
///                             Parameter = "other-param",
///                             Value = JsonSerializer.Serialize(new[]
///                             {
///                                 "foo",
///                             }),
///                         },
///                     },
///                     ConditionalCases = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowEventHandlerTriggerFulfillmentConditionalCaseArgs
///                         {
///                             Cases = JsonSerializer.Serialize(new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["condition"] = "$sys.func.RAND() < 0.5",
///                                     ["caseContent"] = new[]
///                                     {
///                                         new Dictionary<string, object?>
///                                         {
///                                             ["message"] = new Dictionary<string, object?>
///                                             {
///                                                 ["text"] = new Dictionary<string, object?>
///                                                 {
///                                                     ["text"] = new[]
///                                                     {
///                                                         "First case",
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                         new Dictionary<string, object?>
///                                         {
///                                             ["additionalCases"] = new Dictionary<string, object?>
///                                             {
///                                                 ["cases"] = new[]
///                                                 {
///                                                     new Dictionary<string, object?>
///                                                     {
///                                                         ["condition"] = "$sys.func.RAND() < 0.2",
///                                                         ["caseContent"] = new[]
///                                                         {
///                                                             new Dictionary<string, object?>
///                                                             {
///                                                                 ["message"] = new Dictionary<string, object?>
///                                                                 {
///                                                                     ["text"] = new Dictionary<string, object?>
///                                                                     {
///                                                                         ["text"] = new[]
///                                                                         {
///                                                                             "Nested case",
///                                                                         },
///                                                                     },
///                                                                 },
///                                                             },
///                                                         },
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["caseContent"] = new[]
///                                     {
///                                         new Dictionary<string, object?>
///                                         {
///                                             ["message"] = new Dictionary<string, object?>
///                                             {
///                                                 ["text"] = new Dictionary<string, object?>
///                                                 {
///                                                     ["text"] = new[]
///                                                     {
///                                                         "Final case",
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                             }),
///                         },
///                     },
///                     EnableGenerativeFallback = true,
///                 },
///             },
///         },
///         TransitionRoutes = new[]
///         {
///             new Gcp.Diagflow.Inputs.CxFlowTransitionRouteArgs
///             {
///                 Condition = "true",
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentArgs
///                 {
///                     ReturnPartialResponses = true,
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             Channel = "some-channel",
///                             Text = new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "Some text",
///                                 },
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             Payload = @"          {\""some-key\"": \""some-value\"", \""other-key\"": [\""other-value\""]}
/// ",
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             ConversationSuccess = new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageConversationSuccessArgs
///                             {
///                                 Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             OutputAudioText = new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs
///                             {
///                                 Text = "some output text",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             OutputAudioText = new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs
///                             {
///                                 Ssml = @"            <speak>Some example <say-as interpret-as=\""characters\"">SSML XML</say-as></speak>
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             LiveAgentHandoff = new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoffArgs
///                             {
///                                 Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             PlayAudio = new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessagePlayAudioArgs
///                             {
///                                 AudioUri = "http://example.com/some-audio-file.mp3",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             TelephonyTransferCall = new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentMessageTelephonyTransferCallArgs
///                             {
///                                 PhoneNumber = "1-234-567-8901",
///                             },
///                         },
///                     },
///                     SetParameterActions = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentSetParameterActionArgs
///                         {
///                             Parameter = "some-param",
///                             Value = "123.45",
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentSetParameterActionArgs
///                         {
///                             Parameter = "another-param",
///                             Value = JsonSerializer.Serialize("abc"),
///                         },
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentSetParameterActionArgs
///                         {
///                             Parameter = "other-param",
///                             Value = JsonSerializer.Serialize(new[]
///                             {
///                                 "foo",
///                             }),
///                         },
///                     },
///                     ConditionalCases = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxFlowTransitionRouteTriggerFulfillmentConditionalCaseArgs
///                         {
///                             Cases = JsonSerializer.Serialize(new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["condition"] = "$sys.func.RAND() < 0.5",
///                                     ["caseContent"] = new[]
///                                     {
///                                         new Dictionary<string, object?>
///                                         {
///                                             ["message"] = new Dictionary<string, object?>
///                                             {
///                                                 ["text"] = new Dictionary<string, object?>
///                                                 {
///                                                     ["text"] = new[]
///                                                     {
///                                                         "First case",
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                         new Dictionary<string, object?>
///                                         {
///                                             ["additionalCases"] = new Dictionary<string, object?>
///                                             {
///                                                 ["cases"] = new[]
///                                                 {
///                                                     new Dictionary<string, object?>
///                                                     {
///                                                         ["condition"] = "$sys.func.RAND() < 0.2",
///                                                         ["caseContent"] = new[]
///                                                         {
///                                                             new Dictionary<string, object?>
///                                                             {
///                                                                 ["message"] = new Dictionary<string, object?>
///                                                                 {
///                                                                     ["text"] = new Dictionary<string, object?>
///                                                                     {
///                                                                         ["text"] = new[]
///                                                                         {
///                                                                             "Nested case",
///                                                                         },
///                                                                     },
///                                                                 },
///                                                             },
///                                                         },
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["caseContent"] = new[]
///                                     {
///                                         new Dictionary<string, object?>
///                                         {
///                                             ["message"] = new Dictionary<string, object?>
///                                             {
///                                                 ["text"] = new Dictionary<string, object?>
///                                                 {
///                                                     ["text"] = new[]
///                                                     {
///                                                         "Final case",
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                             }),
///                         },
///                     },
///                 },
///                 TargetFlow = agent.StartFlow,
///             },
///         },
///         AdvancedSettings = new Gcp.Diagflow.Inputs.CxFlowAdvancedSettingsArgs
///         {
///             AudioExportGcsDestination = new Gcp.Diagflow.Inputs.CxFlowAdvancedSettingsAudioExportGcsDestinationArgs
///             {
///                 Uri = bucket.Url.Apply(url => $"{url}/prefix-"),
///             },
///             SpeechSettings = new Gcp.Diagflow.Inputs.CxFlowAdvancedSettingsSpeechSettingsArgs
///             {
///                 EndpointerSensitivity = 30,
///                 NoSpeechTimeout = "3.500s",
///                 UseTimeoutBasedEndpointing = true,
///                 Models =
///                 {
///                     { "name", "wrench" },
///                     { "mass", "1.3kg" },
///                     { "count", "3" },
///                 },
///             },
///             DtmfSettings = new Gcp.Diagflow.Inputs.CxFlowAdvancedSettingsDtmfSettingsArgs
///             {
///                 Enabled = true,
///                 MaxDigits = 1,
///                 FinishDigit = "#",
///             },
///             LoggingSettings = new Gcp.Diagflow.Inputs.CxFlowAdvancedSettingsLoggingSettingsArgs
///             {
///                 EnableStackdriverLogging = true,
///                 EnableInteractionLogging = true,
///                 EnableConsentBasedRedaction = true,
///             },
///         },
///         KnowledgeConnectorSettings = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsArgs
///         {
///             Enabled = true,
///             TriggerFulfillment = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentArgs
///             {
///                 Messages = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         Channel = "some-channel",
///                         Text = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTextArgs
///                         {
///                             Texts = new[]
///                             {
///                                 "information completed, navigating to page 2",
///                             },
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         Payload = @"          {\""some-key\"": \""some-value\"", \""other-key\"": [\""other-value\""]}
/// ",
///                     },
///                     new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         ConversationSuccess = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccessArgs
///                         {
///                             Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         OutputAudioText = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs
///                         {
///                             Text = "some output text",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         OutputAudioText = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs
///                         {
///                             Ssml = @"            <speak>Some example <say-as interpret-as=\""characters\"">SSML XML</say-as></speak>
/// ",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         LiveAgentHandoff = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoffArgs
///                         {
///                             Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         PlayAudio = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagePlayAudioArgs
///                         {
///                             AudioUri = "http://example.com/some-audio-file.mp3",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         TelephonyTransferCall = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCallArgs
///                         {
///                             PhoneNumber = "1-234-567-8902",
///                         },
///                     },
///                 },
///                 Webhook = myWebhook.Id,
///                 ReturnPartialResponses = true,
///                 Tag = "some-tag",
///                 SetParameterActions = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActionArgs
///                     {
///                         Parameter = "some-param",
///                         Value = "123.45",
///                     },
///                 },
///                 ConditionalCases = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCaseArgs
///                     {
///                         Cases = JsonSerializer.Serialize(new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["condition"] = "$sys.func.RAND() < 0.5",
///                                 ["caseContent"] = new[]
///                                 {
///                                     new Dictionary<string, object?>
///                                     {
///                                         ["message"] = new Dictionary<string, object?>
///                                         {
///                                             ["text"] = new Dictionary<string, object?>
///                                             {
///                                                 ["text"] = new[]
///                                                 {
///                                                     "First case",
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                             new Dictionary<string, object?>
///                             {
///                                 ["caseContent"] = new[]
///                                 {
///                                     new Dictionary<string, object?>
///                                     {
///                                         ["message"] = new Dictionary<string, object?>
///                                         {
///                                             ["text"] = new Dictionary<string, object?>
///                                             {
///                                                 ["text"] = new[]
///                                                 {
///                                                     "Final case",
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         }),
///                     },
///                 },
///                 AdvancedSettings = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsArgs
///                 {
///                     SpeechSettings = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettingsArgs
///                     {
///                         EndpointerSensitivity = 30,
///                         NoSpeechTimeout = "3.500s",
///                         UseTimeoutBasedEndpointing = true,
///                         Models =
///                         {
///                             { "name", "wrench" },
///                             { "mass", "1.3kg" },
///                             { "count", "3" },
///                         },
///                     },
///                     DtmfSettings = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettingsArgs
///                     {
///                         Enabled = true,
///                         MaxDigits = 1,
///                         FinishDigit = "#",
///                         InterdigitTimeoutDuration = "3.500s",
///                         EndpointingTimeoutDuration = "3.500s",
///                     },
///                     LoggingSettings = new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettingsArgs
///                     {
///                         EnableStackdriverLogging = true,
///                         EnableInteractionLogging = true,
///                         EnableConsentBasedRedaction = true,
///                     },
///                 },
///                 EnableGenerativeFallback = true,
///             },
///             DataStoreConnections = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxFlowKnowledgeConnectorSettingsDataStoreConnectionArgs
///                 {
///                     DataStoreType = "UNSTRUCTURED",
///                     DataStore = Output.Tuple(project, agent.Location, myDatastore.DataStoreId).Apply(values =>
///                     {
///                         var project = values.Item1;
///                         var location = values.Item2;
///                         var dataStoreId = values.Item3;
///                         return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/{location}/collections/default_collection/dataStores/{dataStoreId}";
///                     }),
///                     DocumentProcessingMode = "DOCUMENTS",
///                 },
///             },
///             TargetFlow = agent.StartFlow,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
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
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("fr"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("dialogflowcx-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myDatastore, err := discoveryengine.NewDataStore(ctx, "my_datastore", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("datastore-flow-full"),
/// 			DisplayName:      pulumi.String("datastore-flow-full"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_CHAT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myWebhook, err := diagflow.NewCxWebhook(ctx, "my_webhook", &diagflow.CxWebhookArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("MyWebhook"),
/// 			GenericWebService: &diagflow.CxWebhookGenericWebServiceArgs{
/// 				Uri: pulumi.String("https://example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal("abc")
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal([]string{
/// 			"foo",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		tmpJSON2, err := json.Marshal([]interface{}{
/// 			map[string]interface{}{
/// 				"condition": "$sys.func.RAND() < 0.5",
/// 				"caseContent": []interface{}{
/// 					map[string]interface{}{
/// 						"message": map[string]interface{}{
/// 							"text": map[string]interface{}{
/// 								"text": []string{
/// 									"First case",
/// 								},
/// 							},
/// 						},
/// 					},
/// 					map[string]interface{}{
/// 						"additionalCases": map[string]interface{}{
/// 							"cases": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"condition": "$sys.func.RAND() < 0.2",
/// 									"caseContent": []map[string]interface{}{
/// 										map[string]interface{}{
/// 											"message": map[string]interface{}{
/// 												"text": map[string]interface{}{
/// 													"text": []string{
/// 														"Nested case",
/// 													},
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			map[string]interface{}{
/// 				"caseContent": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"message": map[string]interface{}{
/// 							"text": map[string]interface{}{
/// 								"text": []string{
/// 									"Final case",
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json2 := string(tmpJSON2)
/// 		tmpJSON3, err := json.Marshal("abc")
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json3 := string(tmpJSON3)
/// 		tmpJSON4, err := json.Marshal([]string{
/// 			"foo",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json4 := string(tmpJSON4)
/// 		tmpJSON5, err := json.Marshal([]interface{}{
/// 			map[string]interface{}{
/// 				"condition": "$sys.func.RAND() < 0.5",
/// 				"caseContent": []interface{}{
/// 					map[string]interface{}{
/// 						"message": map[string]interface{}{
/// 							"text": map[string]interface{}{
/// 								"text": []string{
/// 									"First case",
/// 								},
/// 							},
/// 						},
/// 					},
/// 					map[string]interface{}{
/// 						"additionalCases": map[string]interface{}{
/// 							"cases": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"condition": "$sys.func.RAND() < 0.2",
/// 									"caseContent": []map[string]interface{}{
/// 										map[string]interface{}{
/// 											"message": map[string]interface{}{
/// 												"text": map[string]interface{}{
/// 													"text": []string{
/// 														"Nested case",
/// 													},
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			map[string]interface{}{
/// 				"caseContent": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"message": map[string]interface{}{
/// 							"text": map[string]interface{}{
/// 								"text": []string{
/// 									"Final case",
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json5 := string(tmpJSON5)
/// 		tmpJSON6, err := json.Marshal([]interface{}{
/// 			map[string]interface{}{
/// 				"condition": "$sys.func.RAND() < 0.5",
/// 				"caseContent": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"message": map[string]interface{}{
/// 							"text": map[string]interface{}{
/// 								"text": []string{
/// 									"First case",
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			map[string]interface{}{
/// 				"caseContent": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"message": map[string]interface{}{
/// 							"text": map[string]interface{}{
/// 								"text": []string{
/// 									"Final case",
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json6 := string(tmpJSON6)
/// 		_, err = diagflow.NewCxFlow(ctx, "basic_flow", &diagflow.CxFlowArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("MyFlow"),
/// 			Description: pulumi.String("Test Flow"),
/// 			NluSettings: &diagflow.CxFlowNluSettingsArgs{
/// 				ClassificationThreshold: pulumi.Float64(0.3),
/// 				ModelType:               pulumi.String("MODEL_TYPE_STANDARD"),
/// 			},
/// 			EventHandlers: diagflow.CxFlowEventHandlerArray{
/// 				&diagflow.CxFlowEventHandlerArgs{
/// 					Event: pulumi.String("custom-event"),
/// 					TriggerFulfillment: &diagflow.CxFlowEventHandlerTriggerFulfillmentArgs{
/// 						ReturnPartialResponses: pulumi.Bool(false),
/// 						Messages: diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArray{
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								Text: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("I didn't get that. Can you say it again?"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&diagflow.CxFlowEventHandlerArgs{
/// 					Event: pulumi.String("sys.no-match-default"),
/// 					TriggerFulfillment: &diagflow.CxFlowEventHandlerTriggerFulfillmentArgs{
/// 						ReturnPartialResponses: pulumi.Bool(false),
/// 						Messages: diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArray{
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								Text: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("Sorry, could you say that again?"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&diagflow.CxFlowEventHandlerArgs{
/// 					Event: pulumi.String("sys.no-input-default"),
/// 					TriggerFulfillment: &diagflow.CxFlowEventHandlerTriggerFulfillmentArgs{
/// 						ReturnPartialResponses: pulumi.Bool(false),
/// 						Messages: diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArray{
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								Text: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("One more time?"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&diagflow.CxFlowEventHandlerArgs{
/// 					Event: pulumi.String("another-event"),
/// 					TriggerFulfillment: &diagflow.CxFlowEventHandlerTriggerFulfillmentArgs{
/// 						ReturnPartialResponses: pulumi.Bool(true),
/// 						Messages: diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArray{
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								Channel: pulumi.String("some-channel"),
/// 								Text: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("Some text"),
/// 									},
/// 								},
/// 							},
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								Payload: pulumi.String("          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n"),
/// 							},
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								ConversationSuccess: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageConversationSuccessArgs{
/// 									Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 								},
/// 							},
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								OutputAudioText: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs{
/// 									Text: pulumi.String("some output text"),
/// 								},
/// 							},
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								OutputAudioText: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs{
/// 									Ssml: pulumi.String("            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n"),
/// 								},
/// 							},
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								LiveAgentHandoff: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageLiveAgentHandoffArgs{
/// 									Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 								},
/// 							},
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								PlayAudio: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessagePlayAudioArgs{
/// 									AudioUri: pulumi.String("http://example.com/some-audio-file.mp3"),
/// 								},
/// 							},
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentMessageArgs{
/// 								TelephonyTransferCall: &diagflow.CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCallArgs{
/// 									PhoneNumber: pulumi.String("1-234-567-8901"),
/// 								},
/// 							},
/// 						},
/// 						SetParameterActions: diagflow.CxFlowEventHandlerTriggerFulfillmentSetParameterActionArray{
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("some-param"),
/// 								Value:     pulumi.String("123.45"),
/// 							},
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("another-param"),
/// 								Value:     pulumi.String(json0),
/// 							},
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("other-param"),
/// 								Value:     pulumi.String(json1),
/// 							},
/// 						},
/// 						ConditionalCases: diagflow.CxFlowEventHandlerTriggerFulfillmentConditionalCaseArray{
/// 							&diagflow.CxFlowEventHandlerTriggerFulfillmentConditionalCaseArgs{
/// 								Cases: pulumi.String(json2),
/// 							},
/// 						},
/// 						EnableGenerativeFallback: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			TransitionRoutes: diagflow.CxFlowTransitionRouteArray{
/// 				&diagflow.CxFlowTransitionRouteArgs{
/// 					Condition: pulumi.String("true"),
/// 					TriggerFulfillment: &diagflow.CxFlowTransitionRouteTriggerFulfillmentArgs{
/// 						ReturnPartialResponses: pulumi.Bool(true),
/// 						Messages: diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageArray{
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageArgs{
/// 								Channel: pulumi.String("some-channel"),
/// 								Text: &diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("Some text"),
/// 									},
/// 								},
/// 							},
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageArgs{
/// 								Payload: pulumi.String("          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n"),
/// 							},
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageArgs{
/// 								ConversationSuccess: &diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageConversationSuccessArgs{
/// 									Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 								},
/// 							},
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageArgs{
/// 								OutputAudioText: &diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs{
/// 									Text: pulumi.String("some output text"),
/// 								},
/// 							},
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageArgs{
/// 								OutputAudioText: &diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs{
/// 									Ssml: pulumi.String("            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n"),
/// 								},
/// 							},
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageArgs{
/// 								LiveAgentHandoff: &diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoffArgs{
/// 									Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 								},
/// 							},
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageArgs{
/// 								PlayAudio: &diagflow.CxFlowTransitionRouteTriggerFulfillmentMessagePlayAudioArgs{
/// 									AudioUri: pulumi.String("http://example.com/some-audio-file.mp3"),
/// 								},
/// 							},
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageArgs{
/// 								TelephonyTransferCall: &diagflow.CxFlowTransitionRouteTriggerFulfillmentMessageTelephonyTransferCallArgs{
/// 									PhoneNumber: pulumi.String("1-234-567-8901"),
/// 								},
/// 							},
/// 						},
/// 						SetParameterActions: diagflow.CxFlowTransitionRouteTriggerFulfillmentSetParameterActionArray{
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("some-param"),
/// 								Value:     pulumi.String("123.45"),
/// 							},
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("another-param"),
/// 								Value:     pulumi.String(json3),
/// 							},
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("other-param"),
/// 								Value:     pulumi.String(json4),
/// 							},
/// 						},
/// 						ConditionalCases: diagflow.CxFlowTransitionRouteTriggerFulfillmentConditionalCaseArray{
/// 							&diagflow.CxFlowTransitionRouteTriggerFulfillmentConditionalCaseArgs{
/// 								Cases: pulumi.String(json5),
/// 							},
/// 						},
/// 					},
/// 					TargetFlow: agent.StartFlow,
/// 				},
/// 			},
/// 			AdvancedSettings: &diagflow.CxFlowAdvancedSettingsArgs{
/// 				AudioExportGcsDestination: &diagflow.CxFlowAdvancedSettingsAudioExportGcsDestinationArgs{
/// 					Uri: bucket.Url.ApplyT(func(url string) (string, error) {
/// 						return fmt.Sprintf("%v/prefix-", url), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				SpeechSettings: &diagflow.CxFlowAdvancedSettingsSpeechSettingsArgs{
/// 					EndpointerSensitivity:      pulumi.Int(30),
/// 					NoSpeechTimeout:            pulumi.String("3.500s"),
/// 					UseTimeoutBasedEndpointing: pulumi.Bool(true),
/// 					Models: pulumi.StringMap{
/// 						"name":  pulumi.String("wrench"),
/// 						"mass":  pulumi.String("1.3kg"),
/// 						"count": pulumi.String("3"),
/// 					},
/// 				},
/// 				DtmfSettings: &diagflow.CxFlowAdvancedSettingsDtmfSettingsArgs{
/// 					Enabled:     pulumi.Bool(true),
/// 					MaxDigits:   pulumi.Int(1),
/// 					FinishDigit: pulumi.String("#"),
/// 				},
/// 				LoggingSettings: &diagflow.CxFlowAdvancedSettingsLoggingSettingsArgs{
/// 					EnableStackdriverLogging:    pulumi.Bool(true),
/// 					EnableInteractionLogging:    pulumi.Bool(true),
/// 					EnableConsentBasedRedaction: pulumi.Bool(true),
/// 				},
/// 			},
/// 			KnowledgeConnectorSettings: &diagflow.CxFlowKnowledgeConnectorSettingsArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				TriggerFulfillment: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentArgs{
/// 					Messages: diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArray{
/// 						&diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							Channel: pulumi.String("some-channel"),
/// 							Text: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTextArgs{
/// 								Texts: pulumi.StringArray{
/// 									pulumi.String("information completed, navigating to page 2"),
/// 								},
/// 							},
/// 						},
/// 						&diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							Payload: pulumi.String("          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n"),
/// 						},
/// 						&diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							ConversationSuccess: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccessArgs{
/// 								Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 							},
/// 						},
/// 						&diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							OutputAudioText: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs{
/// 								Text: pulumi.String("some output text"),
/// 							},
/// 						},
/// 						&diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							OutputAudioText: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs{
/// 								Ssml: pulumi.String("            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n"),
/// 							},
/// 						},
/// 						&diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							LiveAgentHandoff: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoffArgs{
/// 								Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 							},
/// 						},
/// 						&diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							PlayAudio: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagePlayAudioArgs{
/// 								AudioUri: pulumi.String("http://example.com/some-audio-file.mp3"),
/// 							},
/// 						},
/// 						&diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							TelephonyTransferCall: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCallArgs{
/// 								PhoneNumber: pulumi.String("1-234-567-8902"),
/// 							},
/// 						},
/// 					},
/// 					Webhook:                myWebhook.ID(),
/// 					ReturnPartialResponses: pulumi.Bool(true),
/// 					Tag:                    pulumi.String("some-tag"),
/// 					SetParameterActions: diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActionArray{
/// 						&diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActionArgs{
/// 							Parameter: pulumi.String("some-param"),
/// 							Value:     pulumi.String("123.45"),
/// 						},
/// 					},
/// 					ConditionalCases: diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCaseArray{
/// 						&diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCaseArgs{
/// 							Cases: pulumi.String(json6),
/// 						},
/// 					},
/// 					AdvancedSettings: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsArgs{
/// 						SpeechSettings: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettingsArgs{
/// 							EndpointerSensitivity:      pulumi.Int(30),
/// 							NoSpeechTimeout:            pulumi.String("3.500s"),
/// 							UseTimeoutBasedEndpointing: pulumi.Bool(true),
/// 							Models: pulumi.StringMap{
/// 								"name":  pulumi.String("wrench"),
/// 								"mass":  pulumi.String("1.3kg"),
/// 								"count": pulumi.String("3"),
/// 							},
/// 						},
/// 						DtmfSettings: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettingsArgs{
/// 							Enabled:                    pulumi.Bool(true),
/// 							MaxDigits:                  pulumi.Int(1),
/// 							FinishDigit:                pulumi.String("#"),
/// 							InterdigitTimeoutDuration:  pulumi.String("3.500s"),
/// 							EndpointingTimeoutDuration: pulumi.String("3.500s"),
/// 						},
/// 						LoggingSettings: &diagflow.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettingsArgs{
/// 							EnableStackdriverLogging:    pulumi.Bool(true),
/// 							EnableInteractionLogging:    pulumi.Bool(true),
/// 							EnableConsentBasedRedaction: pulumi.Bool(true),
/// 						},
/// 					},
/// 					EnableGenerativeFallback: pulumi.Bool(true),
/// 				},
/// 				DataStoreConnections: diagflow.CxFlowKnowledgeConnectorSettingsDataStoreConnectionArray{
/// 					&diagflow.CxFlowKnowledgeConnectorSettingsDataStoreConnectionArgs{
/// 						DataStoreType: pulumi.String("UNSTRUCTURED"),
/// 						DataStore: pulumi.All(agent.Location, myDatastore.DataStoreId).ApplyT(func(_args []interface{}) (string, error) {
/// 							location := _args[0].(string)
/// 							dataStoreId := _args[1].(string)
/// 							return fmt.Sprintf("projects/%v/locations/%v/collections/default_collection/dataStores/%v", project.Number, location, dataStoreId), nil
/// 						}).(pulumi.StringOutput),
/// 						DocumentProcessingMode: pulumi.String("DOCUMENTS"),
/// 					},
/// 				},
/// 				TargetFlow: agent.StartFlow,
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
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.diagflow.CxWebhook;
/// import com.pulumi.gcp.diagflow.CxWebhookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookGenericWebServiceArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.diagflow.CxFlow;
/// import com.pulumi.gcp.diagflow.CxFlowArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowNluSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowEventHandlerArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowEventHandlerTriggerFulfillmentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowTransitionRouteArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowTransitionRouteTriggerFulfillmentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowAdvancedSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowAdvancedSettingsAudioExportGcsDestinationArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowAdvancedSettingsSpeechSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowAdvancedSettingsDtmfSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowAdvancedSettingsLoggingSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowKnowledgeConnectorSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettingsArgs;
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
///             .supportedLanguageCodes(
///                 "fr",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("dialogflowcx-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var myDatastore = new DataStore("myDatastore", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("datastore-flow-full")
///             .displayName("datastore-flow-full")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_CHAT")
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var basicFlow = new CxFlow("basicFlow", CxFlowArgs.builder()
///             .parent(agent.id())
///             .displayName("MyFlow")
///             .description("Test Flow")
///             .nluSettings(CxFlowNluSettingsArgs.builder()
///                 .classificationThreshold(0.3)
///                 .modelType("MODEL_TYPE_STANDARD")
///                 .build())
///             .eventHandlers(
///                 CxFlowEventHandlerArgs.builder()
///                     .event("custom-event")
///                     .triggerFulfillment(CxFlowEventHandlerTriggerFulfillmentArgs.builder()
///                         .returnPartialResponses(false)
///                         .messages(CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .text(CxFlowEventHandlerTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("I didn't get that. Can you say it again?")
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CxFlowEventHandlerArgs.builder()
///                     .event("sys.no-match-default")
///                     .triggerFulfillment(CxFlowEventHandlerTriggerFulfillmentArgs.builder()
///                         .returnPartialResponses(false)
///                         .messages(CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .text(CxFlowEventHandlerTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("Sorry, could you say that again?")
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CxFlowEventHandlerArgs.builder()
///                     .event("sys.no-input-default")
///                     .triggerFulfillment(CxFlowEventHandlerTriggerFulfillmentArgs.builder()
///                         .returnPartialResponses(false)
///                         .messages(CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .text(CxFlowEventHandlerTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("One more time?")
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CxFlowEventHandlerArgs.builder()
///                     .event("another-event")
///                     .triggerFulfillment(CxFlowEventHandlerTriggerFulfillmentArgs.builder()
///                         .returnPartialResponses(true)
///                         .messages(
///                             CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                 .channel("some-channel")
///                                 .text(CxFlowEventHandlerTriggerFulfillmentMessageTextArgs.builder()
///                                     .texts("Some text")
///                                     .build())
///                                 .build(),
///                             CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                 .payload("""
///           {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                                 """)
///                                 .build(),
///                             CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                 .conversationSuccess(CxFlowEventHandlerTriggerFulfillmentMessageConversationSuccessArgs.builder()
///                                     .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                     """)
///                                     .build())
///                                 .build(),
///                             CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                 .outputAudioText(CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                     .text("some output text")
///                                     .build())
///                                 .build(),
///                             CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                 .outputAudioText(CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                     .ssml("""
///             <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                                     """)
///                                     .build())
///                                 .build(),
///                             CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                 .liveAgentHandoff(CxFlowEventHandlerTriggerFulfillmentMessageLiveAgentHandoffArgs.builder()
///                                     .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                     """)
///                                     .build())
///                                 .build(),
///                             CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                 .playAudio(CxFlowEventHandlerTriggerFulfillmentMessagePlayAudioArgs.builder()
///                                     .audioUri("http://example.com/some-audio-file.mp3")
///                                     .build())
///                                 .build(),
///                             CxFlowEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                 .telephonyTransferCall(CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCallArgs.builder()
///                                     .phoneNumber("1-234-567-8901")
///                                     .build())
///                                 .build())
///                         .setParameterActions(
///                             CxFlowEventHandlerTriggerFulfillmentSetParameterActionArgs.builder()
///                                 .parameter("some-param")
///                                 .value("123.45")
///                                 .build(),
///                             CxFlowEventHandlerTriggerFulfillmentSetParameterActionArgs.builder()
///                                 .parameter("another-param")
///                                 .value(serializeJson(
///                                     "abc"))
///                                 .build(),
///                             CxFlowEventHandlerTriggerFulfillmentSetParameterActionArgs.builder()
///                                 .parameter("other-param")
///                                 .value(serializeJson(
///                                     jsonArray("foo")))
///                                 .build())
///                         .conditionalCases(CxFlowEventHandlerTriggerFulfillmentConditionalCaseArgs.builder()
///                             .cases(serializeJson(
///                                 jsonArray(
///                                     jsonObject(
///                                         jsonProperty("condition", "$sys.func.RAND() < 0.5"),
///                                         jsonProperty("caseContent", jsonArray(
///                                             jsonObject(
///                                                 jsonProperty("message", jsonObject(
///                                                     jsonProperty("text", jsonObject(
///                                                         jsonProperty("text", jsonArray("First case"))
///                                                     ))
///                                                 ))
///                                             ),
///                                             jsonObject(
///                                                 jsonProperty("additionalCases", jsonObject(
///                                                     jsonProperty("cases", jsonArray(jsonObject(
///                                                         jsonProperty("condition", "$sys.func.RAND() < 0.2"),
///                                                         jsonProperty("caseContent", jsonArray(jsonObject(
///                                                             jsonProperty("message", jsonObject(
///                                                                 jsonProperty("text", jsonObject(
///                                                                     jsonProperty("text", jsonArray("Nested case"))
///                                                                 ))
///                                                             ))
///                                                         )))
///                                                     )))
///                                                 ))
///                                             )
///                                         ))
///                                     ),
///                                     jsonObject(
///                                         jsonProperty("caseContent", jsonArray(jsonObject(
///                                             jsonProperty("message", jsonObject(
///                                                 jsonProperty("text", jsonObject(
///                                                     jsonProperty("text", jsonArray("Final case"))
///                                                 ))
///                                             ))
///                                         )))
///                                     )
///                                 )))
///                             .build())
///                         .enableGenerativeFallback(true)
///                         .build())
///                     .build())
///             .transitionRoutes(CxFlowTransitionRouteArgs.builder()
///                 .condition("true")
///                 .triggerFulfillment(CxFlowTransitionRouteTriggerFulfillmentArgs.builder()
///                     .returnPartialResponses(true)
///                     .messages(
///                         CxFlowTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .channel("some-channel")
///                             .text(CxFlowTransitionRouteTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("Some text")
///                                 .build())
///                             .build(),
///                         CxFlowTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .payload("""
///           {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                             """)
///                             .build(),
///                         CxFlowTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .conversationSuccess(CxFlowTransitionRouteTriggerFulfillmentMessageConversationSuccessArgs.builder()
///                                 .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                 """)
///                                 .build())
///                             .build(),
///                         CxFlowTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .outputAudioText(CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                 .text("some output text")
///                                 .build())
///                             .build(),
///                         CxFlowTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .outputAudioText(CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                 .ssml("""
///             <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                                 """)
///                                 .build())
///                             .build(),
///                         CxFlowTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .liveAgentHandoff(CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoffArgs.builder()
///                                 .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                 """)
///                                 .build())
///                             .build(),
///                         CxFlowTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .playAudio(CxFlowTransitionRouteTriggerFulfillmentMessagePlayAudioArgs.builder()
///                                 .audioUri("http://example.com/some-audio-file.mp3")
///                                 .build())
///                             .build(),
///                         CxFlowTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .telephonyTransferCall(CxFlowTransitionRouteTriggerFulfillmentMessageTelephonyTransferCallArgs.builder()
///                                 .phoneNumber("1-234-567-8901")
///                                 .build())
///                             .build())
///                     .setParameterActions(
///                         CxFlowTransitionRouteTriggerFulfillmentSetParameterActionArgs.builder()
///                             .parameter("some-param")
///                             .value("123.45")
///                             .build(),
///                         CxFlowTransitionRouteTriggerFulfillmentSetParameterActionArgs.builder()
///                             .parameter("another-param")
///                             .value(serializeJson(
///                                 "abc"))
///                             .build(),
///                         CxFlowTransitionRouteTriggerFulfillmentSetParameterActionArgs.builder()
///                             .parameter("other-param")
///                             .value(serializeJson(
///                                 jsonArray("foo")))
///                             .build())
///                     .conditionalCases(CxFlowTransitionRouteTriggerFulfillmentConditionalCaseArgs.builder()
///                         .cases(serializeJson(
///                             jsonArray(
///                                 jsonObject(
///                                     jsonProperty("condition", "$sys.func.RAND() < 0.5"),
///                                     jsonProperty("caseContent", jsonArray(
///                                         jsonObject(
///                                             jsonProperty("message", jsonObject(
///                                                 jsonProperty("text", jsonObject(
///                                                     jsonProperty("text", jsonArray("First case"))
///                                                 ))
///                                             ))
///                                         ),
///                                         jsonObject(
///                                             jsonProperty("additionalCases", jsonObject(
///                                                 jsonProperty("cases", jsonArray(jsonObject(
///                                                     jsonProperty("condition", "$sys.func.RAND() < 0.2"),
///                                                     jsonProperty("caseContent", jsonArray(jsonObject(
///                                                         jsonProperty("message", jsonObject(
///                                                             jsonProperty("text", jsonObject(
///                                                                 jsonProperty("text", jsonArray("Nested case"))
///                                                             ))
///                                                         ))
///                                                     )))
///                                                 )))
///                                             ))
///                                         )
///                                     ))
///                                 ),
///                                 jsonObject(
///                                     jsonProperty("caseContent", jsonArray(jsonObject(
///                                         jsonProperty("message", jsonObject(
///                                             jsonProperty("text", jsonObject(
///                                                 jsonProperty("text", jsonArray("Final case"))
///                                             ))
///                                         ))
///                                     )))
///                                 )
///                             )))
///                         .build())
///                     .build())
///                 .targetFlow(agent.startFlow())
///                 .build())
///             .advancedSettings(CxFlowAdvancedSettingsArgs.builder()
///                 .audioExportGcsDestination(CxFlowAdvancedSettingsAudioExportGcsDestinationArgs.builder()
///                     .uri(bucket.url().applyValue(_url -> String.format("%s/prefix-", _url)))
///                     .build())
///                 .speechSettings(CxFlowAdvancedSettingsSpeechSettingsArgs.builder()
///                     .endpointerSensitivity(30)
///                     .noSpeechTimeout("3.500s")
///                     .useTimeoutBasedEndpointing(true)
///                     .models(Map.ofEntries(
///                         Map.entry("name", "wrench"),
///                         Map.entry("mass", "1.3kg"),
///                         Map.entry("count", "3")
///                     ))
///                     .build())
///                 .dtmfSettings(CxFlowAdvancedSettingsDtmfSettingsArgs.builder()
///                     .enabled(true)
///                     .maxDigits(1)
///                     .finishDigit("#")
///                     .build())
///                 .loggingSettings(CxFlowAdvancedSettingsLoggingSettingsArgs.builder()
///                     .enableStackdriverLogging(true)
///                     .enableInteractionLogging(true)
///                     .enableConsentBasedRedaction(true)
///                     .build())
///                 .build())
///             .knowledgeConnectorSettings(CxFlowKnowledgeConnectorSettingsArgs.builder()
///                 .enabled(true)
///                 .triggerFulfillment(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentArgs.builder()
///                     .messages(
///                         CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .channel("some-channel")
///                             .text(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("information completed, navigating to page 2")
///                                 .build())
///                             .build(),
///                         CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .payload("""
///           {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                             """)
///                             .build(),
///                         CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .conversationSuccess(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccessArgs.builder()
///                                 .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                 """)
///                                 .build())
///                             .build(),
///                         CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .outputAudioText(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                 .text("some output text")
///                                 .build())
///                             .build(),
///                         CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .outputAudioText(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                 .ssml("""
///             <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                                 """)
///                                 .build())
///                             .build(),
///                         CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .liveAgentHandoff(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoffArgs.builder()
///                                 .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                 """)
///                                 .build())
///                             .build(),
///                         CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .playAudio(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagePlayAudioArgs.builder()
///                                 .audioUri("http://example.com/some-audio-file.mp3")
///                                 .build())
///                             .build(),
///                         CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .telephonyTransferCall(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCallArgs.builder()
///                                 .phoneNumber("1-234-567-8902")
///                                 .build())
///                             .build())
///                     .webhook(myWebhook.id())
///                     .returnPartialResponses(true)
///                     .tag("some-tag")
///                     .setParameterActions(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActionArgs.builder()
///                         .parameter("some-param")
///                         .value("123.45")
///                         .build())
///                     .conditionalCases(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCaseArgs.builder()
///                         .cases(serializeJson(
///                             jsonArray(
///                                 jsonObject(
///                                     jsonProperty("condition", "$sys.func.RAND() < 0.5"),
///                                     jsonProperty("caseContent", jsonArray(jsonObject(
///                                         jsonProperty("message", jsonObject(
///                                             jsonProperty("text", jsonObject(
///                                                 jsonProperty("text", jsonArray("First case"))
///                                             ))
///                                         ))
///                                     )))
///                                 ),
///                                 jsonObject(
///                                     jsonProperty("caseContent", jsonArray(jsonObject(
///                                         jsonProperty("message", jsonObject(
///                                             jsonProperty("text", jsonObject(
///                                                 jsonProperty("text", jsonArray("Final case"))
///                                             ))
///                                         ))
///                                     )))
///                                 )
///                             )))
///                         .build())
///                     .advancedSettings(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsArgs.builder()
///                         .speechSettings(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettingsArgs.builder()
///                             .endpointerSensitivity(30)
///                             .noSpeechTimeout("3.500s")
///                             .useTimeoutBasedEndpointing(true)
///                             .models(Map.ofEntries(
///                                 Map.entry("name", "wrench"),
///                                 Map.entry("mass", "1.3kg"),
///                                 Map.entry("count", "3")
///                             ))
///                             .build())
///                         .dtmfSettings(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettingsArgs.builder()
///                             .enabled(true)
///                             .maxDigits(1)
///                             .finishDigit("#")
///                             .interdigitTimeoutDuration("3.500s")
///                             .endpointingTimeoutDuration("3.500s")
///                             .build())
///                         .loggingSettings(CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettingsArgs.builder()
///                             .enableStackdriverLogging(true)
///                             .enableInteractionLogging(true)
///                             .enableConsentBasedRedaction(true)
///                             .build())
///                         .build())
///                     .enableGenerativeFallback(true)
///                     .build())
///                 .dataStoreConnections(CxFlowKnowledgeConnectorSettingsDataStoreConnectionArgs.builder()
///                     .dataStoreType("UNSTRUCTURED")
///                     .dataStore(Output.tuple(agent.location(), myDatastore.dataStoreId()).applyValue(values -> {
///                         var location = values.t1;
///                         var dataStoreId = values.t2;
///                         return String.format("projects/%s/locations/%s/collections/default_collection/dataStores/%s", project.number(),location,dataStoreId);
///                     }))
///                     .documentProcessingMode("DOCUMENTS")
///                     .build())
///                 .targetFlow(agent.startFlow())
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
///       displayName: dialogflowcx-agent
///       location: global
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - fr
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: dialogflowcx-bucket
///       location: US
///       uniformBucketLevelAccess: true
///   basicFlow:
///     type: gcp:diagflow:CxFlow
///     name: basic_flow
///     properties:
///       parent: ${agent.id}
///       displayName: MyFlow
///       description: Test Flow
///       nluSettings:
///         classificationThreshold: 0.3
///         modelType: MODEL_TYPE_STANDARD
///       eventHandlers:
///         - event: custom-event
///           triggerFulfillment:
///             returnPartialResponses: false
///             messages:
///               - text:
///                   texts:
///                     - I didn't get that. Can you say it again?
///         - event: sys.no-match-default
///           triggerFulfillment:
///             returnPartialResponses: false
///             messages:
///               - text:
///                   texts:
///                     - Sorry, could you say that again?
///         - event: sys.no-input-default
///           triggerFulfillment:
///             returnPartialResponses: false
///             messages:
///               - text:
///                   texts:
///                     - One more time?
///         - event: another-event
///           triggerFulfillment:
///             returnPartialResponses: true
///             messages:
///               - channel: some-channel
///                 text:
///                   texts:
///                     - Some text
///               - payload: |2
///                             {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///               - conversationSuccess:
///                   metadata: |2
///                                 {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///               - outputAudioText:
///                   text: some output text
///               - outputAudioText:
///                   ssml: |2
///                                 <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///               - liveAgentHandoff:
///                   metadata: |2
///                                 {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///               - playAudio:
///                   audioUri: http://example.com/some-audio-file.mp3
///               - telephonyTransferCall:
///                   phoneNumber: 1-234-567-8901
///             setParameterActions:
///               - parameter: some-param
///                 value: '123.45'
///               - parameter: another-param
///                 value:
///                   fn::toJSON: abc
///               - parameter: other-param
///                 value:
///                   fn::toJSON:
///                     - foo
///             conditionalCases:
///               - cases:
///                   fn::toJSON:
///                     - condition: $sys.func.RAND() < 0.5
///                       caseContent:
///                         - message:
///                             text:
///                               text:
///                                 - First case
///                         - additionalCases:
///                             cases:
///                               - condition: $sys.func.RAND() < 0.2
///                                 caseContent:
///                                   - message:
///                                       text:
///                                         text:
///                                           - Nested case
///                     - caseContent:
///                         - message:
///                             text:
///                               text:
///                                 - Final case
///             enableGenerativeFallback: true
///       transitionRoutes:
///         - condition: 'true'
///           triggerFulfillment:
///             returnPartialResponses: true
///             messages:
///               - channel: some-channel
///                 text:
///                   texts:
///                     - Some text
///               - payload: |2
///                             {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///               - conversationSuccess:
///                   metadata: |2
///                                 {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///               - outputAudioText:
///                   text: some output text
///               - outputAudioText:
///                   ssml: |2
///                                 <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///               - liveAgentHandoff:
///                   metadata: |2
///                                 {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///               - playAudio:
///                   audioUri: http://example.com/some-audio-file.mp3
///               - telephonyTransferCall:
///                   phoneNumber: 1-234-567-8901
///             setParameterActions:
///               - parameter: some-param
///                 value: '123.45'
///               - parameter: another-param
///                 value:
///                   fn::toJSON: abc
///               - parameter: other-param
///                 value:
///                   fn::toJSON:
///                     - foo
///             conditionalCases:
///               - cases:
///                   fn::toJSON:
///                     - condition: $sys.func.RAND() < 0.5
///                       caseContent:
///                         - message:
///                             text:
///                               text:
///                                 - First case
///                         - additionalCases:
///                             cases:
///                               - condition: $sys.func.RAND() < 0.2
///                                 caseContent:
///                                   - message:
///                                       text:
///                                         text:
///                                           - Nested case
///                     - caseContent:
///                         - message:
///                             text:
///                               text:
///                                 - Final case
///           targetFlow: ${agent.startFlow}
///       advancedSettings:
///         audioExportGcsDestination:
///           uri: ${bucket.url}/prefix-
///         speechSettings:
///           endpointerSensitivity: 30
///           noSpeechTimeout: 3.500s
///           useTimeoutBasedEndpointing: true
///           models:
///             name: wrench
///             mass: 1.3kg
///             count: '3'
///         dtmfSettings:
///           enabled: true
///           maxDigits: 1
///           finishDigit: '#'
///         loggingSettings:
///           enableStackdriverLogging: true
///           enableInteractionLogging: true
///           enableConsentBasedRedaction: true
///       knowledgeConnectorSettings:
///         enabled: true
///         triggerFulfillment:
///           messages:
///             - channel: some-channel
///               text:
///                 texts:
///                   - information completed, navigating to page 2
///             - payload: |2
///                           {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///             - conversationSuccess:
///                 metadata: |2
///                               {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///             - outputAudioText:
///                 text: some output text
///             - outputAudioText:
///                 ssml: |2
///                               <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///             - liveAgentHandoff:
///                 metadata: |2
///                               {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///             - playAudio:
///                 audioUri: http://example.com/some-audio-file.mp3
///             - telephonyTransferCall:
///                 phoneNumber: 1-234-567-8902
///           webhook: ${myWebhook.id}
///           returnPartialResponses: true
///           tag: some-tag
///           setParameterActions:
///             - parameter: some-param
///               value: '123.45'
///           conditionalCases:
///             - cases:
///                 fn::toJSON:
///                   - condition: $sys.func.RAND() < 0.5
///                     caseContent:
///                       - message:
///                           text:
///                             text:
///                               - First case
///                   - caseContent:
///                       - message:
///                           text:
///                             text:
///                               - Final case
///           advancedSettings:
///             speechSettings:
///               endpointerSensitivity: 30
///               noSpeechTimeout: 3.500s
///               useTimeoutBasedEndpointing: true
///               models:
///                 name: wrench
///                 mass: 1.3kg
///                 count: '3'
///             dtmfSettings:
///               enabled: true
///               maxDigits: 1
///               finishDigit: '#'
///               interdigitTimeoutDuration: 3.500s
///               endpointingTimeoutDuration: 3.500s
///             loggingSettings:
///               enableStackdriverLogging: true
///               enableInteractionLogging: true
///               enableConsentBasedRedaction: true
///           enableGenerativeFallback: true
///         dataStoreConnections:
///           - dataStoreType: UNSTRUCTURED
///             dataStore: projects/${project.number}/locations/${agent.location}/collections/default_collection/dataStores/${myDatastore.dataStoreId}
///             documentProcessingMode: DOCUMENTS
///         targetFlow: ${agent.startFlow}
///   myDatastore:
///     type: gcp:discoveryengine:DataStore
///     name: my_datastore
///     properties:
///       location: global
///       dataStoreId: datastore-flow-full
///       displayName: datastore-flow-full
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_CHAT
///   myWebhook:
///     type: gcp:diagflow:CxWebhook
///     name: my_webhook
///     properties:
///       parent: ${agent.id}
///       displayName: MyWebhook
///       genericWebService:
///         uri: https://example.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Flow can be imported using any of these accepted formats:
///
/// * `{{parent}}/flows/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Flow can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxFlow:CxFlow default {{parent}}/flows/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxFlow:CxFlow default {{parent}}/{{name}}
/// ```
class CxFlow extends pulumi.CustomResource {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  late final pulumi.Output<CxFlowAdvancedSettings?> advancedSettings;

  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String?> description;

  /// The human-readable name of the flow.
  late final pulumi.Output<String> displayName;

  /// A flow's event handlers serve two purposes:
  /// They are responsible for handling events (e.g. no match, webhook errors) in the flow.
  /// They are inherited by every page's [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.
  /// Unlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  /// Structure is documented below.
  late final pulumi.Output<List<CxFlowEventHandler>> eventHandlers;

  /// Marks this as the [Default Start Flow](https://cloud.google.com/dialogflow/cx/docs/concept/flow#start) for an agent. When you create an agent, the Default Start Flow is created automatically.
  /// The Default Start Flow cannot be deleted; deleting the `gcp.diagflow.CxFlow` resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple `gcp.diagflow.CxFlow` resources linked to the same agent with `is_default_start_flow = true` because they will compete to control a single Default Start Flow resource in GCP.
  late final pulumi.Output<bool?> isDefaultStartFlow;

  /// Knowledge connector configuration.
  /// Structure is documented below.
  late final pulumi.Output<CxFlowKnowledgeConnectorSettings?>
  knowledgeConnectorSettings;

  /// The language of the following fields in flow:
  /// Flow.event_handlers.trigger_fulfillment.messages
  /// Flow.event_handlers.trigger_fulfillment.conditional_cases
  /// Flow.transition_routes.trigger_fulfillment.messages
  /// Flow.transition_routes.trigger_fulfillment.conditional_cases
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;

  /// The unique identifier of the flow.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  late final pulumi.Output<String> name;

  /// NLU related settings of the flow.
  /// Structure is documented below.
  late final pulumi.Output<CxFlowNluSettings?> nluSettings;

  /// The agent to create a flow for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  /// A flow's transition route group serve two purposes:
  /// They are responsible for matching the user's first utterances in the flow.
  /// They are inherited by every page's [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.
  /// Format:projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/transitionRouteGroups/<TransitionRouteGroup ID>.
  late final pulumi.Output<List<String>?> transitionRouteGroups;

  /// A flow's transition routes serve two purposes:
  /// They are responsible for matching the user's first utterances in the flow.
  /// They are inherited by every page's [transition routes][Page.transition_routes] and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.
  /// TransitionRoutes are evalauted in the following order:
  /// TransitionRoutes with intent specified.
  /// TransitionRoutes with only condition specified.
  /// TransitionRoutes with intent specified are inherited by pages in the flow.
  /// Structure is documented below.
  late final pulumi.Output<List<CxFlowTransitionRoute>?> transitionRoutes;

  /// Creates a new [CxFlow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxFlow]. {@macro pulumi_diagflow_cx_flow_cx_flow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxFlow(String name, {CxFlowArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:diagflow/cxFlow:CxFlow',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.advancedSettings = registerOutput<CxFlowAdvancedSettings?>(
      'advancedSettings',
    );
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.eventHandlers = registerOutput<List<CxFlowEventHandler>>(
      'eventHandlers',
    );
    this.isDefaultStartFlow = registerOutput<bool?>('isDefaultStartFlow');
    this.knowledgeConnectorSettings =
        registerOutput<CxFlowKnowledgeConnectorSettings?>(
          'knowledgeConnectorSettings',
        );
    this.languageCode = registerOutput<String?>('languageCode');
    this.name = registerOutput<String>('name');
    this.nluSettings = registerOutput<CxFlowNluSettings?>('nluSettings');
    this.parent = registerOutput<String?>('parent');
    this.transitionRouteGroups = registerOutput<List<String>?>(
      'transitionRouteGroups',
    );
    this.transitionRoutes = registerOutput<List<CxFlowTransitionRoute>?>(
      'transitionRoutes',
    );
  }
}
