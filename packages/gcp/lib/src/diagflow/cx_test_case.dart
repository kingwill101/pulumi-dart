import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_args.dart';
import 'cx_test_case_last_test_result.dart';
import 'cx_test_case_test_case_conversation_turn.dart';
import 'cx_test_case_test_config.dart';

/// You can use the built-in test feature to uncover bugs and prevent regressions. A test execution verifies that agent responses have not changed for end-user inputs defined in the test case.
///
///
/// To get more information about TestCase, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.testCases)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Test Case Full
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
///     avatarUri: "https://storage.cloud.google.com/dialogflow-test-host-image/cloud-logo.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const intent = new gcp.diagflow.CxIntent("intent", {
///     parent: agent.id,
///     displayName: "MyIntent",
///     priority: 1,
///     trainingPhrases: [{
///         parts: [{
///             text: "training phrase",
///         }],
///         repeatCount: 1,
///     }],
/// });
/// const page = new gcp.diagflow.CxPage("page", {
///     parent: agent.startFlow,
///     displayName: "MyPage",
///     transitionRoutes: [{
///         intent: intent.id,
///         triggerFulfillment: {
///             messages: [{
///                 text: {
///                     texts: ["Training phrase response"],
///                 },
///             }],
///         },
///     }],
///     eventHandlers: [{
///         event: "some-event",
///         triggerFulfillment: {
///             messages: [{
///                 text: {
///                     texts: ["Handling some event"],
///                 },
///             }],
///         },
///     }],
/// });
/// const basicTestCase = new gcp.diagflow.CxTestCase("basic_test_case", {
///     parent: agent.id,
///     displayName: "MyTestCase",
///     tags: ["#tag1"],
///     notes: "demonstrates a simple training phrase response",
///     testConfig: {
///         trackingParameters: ["some_param"],
///         page: page.id,
///     },
///     testCaseConversationTurns: [
///         {
///             userInput: {
///                 input: {
///                     languageCode: "en",
///                     text: {
///                         text: "training phrase",
///                     },
///                 },
///                 injectedParameters: JSON.stringify({
///                     some_param: "1",
///                 }),
///                 isWebhookEnabled: true,
///                 enableSentimentAnalysis: true,
///             },
///             virtualAgentOutput: {
///                 sessionParameters: JSON.stringify({
///                     some_param: "1",
///                 }),
///                 triggeredIntent: {
///                     name: intent.id,
///                 },
///                 currentPage: {
///                     name: page.id,
///                 },
///                 textResponses: [{
///                     texts: ["Training phrase response"],
///                 }],
///             },
///         },
///         {
///             userInput: {
///                 input: {
///                     event: {
///                         event: "some-event",
///                     },
///                 },
///             },
///             virtualAgentOutput: {
///                 currentPage: {
///                     name: page.id,
///                 },
///                 textResponses: [{
///                     texts: ["Handling some event"],
///                 }],
///             },
///         },
///         {
///             userInput: {
///                 input: {
///                     dtmf: {
///                         digits: "12",
///                         finishDigit: "3",
///                     },
///                 },
///             },
///             virtualAgentOutput: {
///                 textResponses: [{
///                     texts: ["I didn't get that. Can you say it again?"],
///                 }],
///             },
///         },
///     ],
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
///     avatar_uri="https://storage.cloud.google.com/dialogflow-test-host-image/cloud-logo.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// intent = gcp.diagflow.CxIntent("intent",
///     parent=agent.id,
///     display_name="MyIntent",
///     priority=1,
///     training_phrases=[{
///         "parts": [{
///             "text": "training phrase",
///         }],
///         "repeat_count": 1,
///     }])
/// page = gcp.diagflow.CxPage("page",
///     parent=agent.start_flow,
///     display_name="MyPage",
///     transition_routes=[{
///         "intent": intent.id,
///         "trigger_fulfillment": {
///             "messages": [{
///                 "text": {
///                     "texts": ["Training phrase response"],
///                 },
///             }],
///         },
///     }],
///     event_handlers=[{
///         "event": "some-event",
///         "trigger_fulfillment": {
///             "messages": [{
///                 "text": {
///                     "texts": ["Handling some event"],
///                 },
///             }],
///         },
///     }])
/// basic_test_case = gcp.diagflow.CxTestCase("basic_test_case",
///     parent=agent.id,
///     display_name="MyTestCase",
///     tags=["#tag1"],
///     notes="demonstrates a simple training phrase response",
///     test_config={
///         "tracking_parameters": ["some_param"],
///         "page": page.id,
///     },
///     test_case_conversation_turns=[
///         {
///             "user_input": {
///                 "input": {
///                     "language_code": "en",
///                     "text": {
///                         "text": "training phrase",
///                     },
///                 },
///                 "injected_parameters": json.dumps({
///                     "some_param": "1",
///                 }),
///                 "is_webhook_enabled": True,
///                 "enable_sentiment_analysis": True,
///             },
///             "virtual_agent_output": {
///                 "session_parameters": json.dumps({
///                     "some_param": "1",
///                 }),
///                 "triggered_intent": {
///                     "name": intent.id,
///                 },
///                 "current_page": {
///                     "name": page.id,
///                 },
///                 "text_responses": [{
///                     "texts": ["Training phrase response"],
///                 }],
///             },
///         },
///         {
///             "user_input": {
///                 "input": {
///                     "event": {
///                         "event": "some-event",
///                     },
///                 },
///             },
///             "virtual_agent_output": {
///                 "current_page": {
///                     "name": page.id,
///                 },
///                 "text_responses": [{
///                     "texts": ["Handling some event"],
///                 }],
///             },
///         },
///         {
///             "user_input": {
///                 "input": {
///                     "dtmf": {
///                         "digits": "12",
///                         "finish_digit": "3",
///                     },
///                 },
///             },
///             "virtual_agent_output": {
///                 "text_responses": [{
///                     "texts": ["I didn't get that. Can you say it again?"],
///                 }],
///             },
///         },
///     ])
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
///         AvatarUri = "https://storage.cloud.google.com/dialogflow-test-host-image/cloud-logo.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var intent = new Gcp.Diagflow.CxIntent("intent", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyIntent",
///         Priority = 1,
///         TrainingPhrases = new[]
///         {
///             new Gcp.Diagflow.Inputs.CxIntentTrainingPhraseArgs
///             {
///                 Parts = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxIntentTrainingPhrasePartArgs
///                     {
///                         Text = "training phrase",
///                     },
///                 },
///                 RepeatCount = 1,
///             },
///         },
///     });
///
///     var page = new Gcp.Diagflow.CxPage("page", new()
///     {
///         Parent = agent.StartFlow,
///         DisplayName = "MyPage",
///         TransitionRoutes = new[]
///         {
///             new Gcp.Diagflow.Inputs.CxPageTransitionRouteArgs
///             {
///                 Intent = intent.Id,
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentArgs
///                 {
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             Text = new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "Training phrase response",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         EventHandlers = new[]
///         {
///             new Gcp.Diagflow.Inputs.CxPageEventHandlerArgs
///             {
///                 Event = "some-event",
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentArgs
///                 {
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Text = new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "Handling some event",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var basicTestCase = new Gcp.Diagflow.CxTestCase("basic_test_case", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyTestCase",
///         Tags = new[]
///         {
///             "#tag1",
///         },
///         Notes = "demonstrates a simple training phrase response",
///         TestConfig = new Gcp.Diagflow.Inputs.CxTestCaseTestConfigArgs
///         {
///             TrackingParameters = new[]
///             {
///                 "some_param",
///             },
///             Page = page.Id,
///         },
///         TestCaseConversationTurns = new[]
///         {
///             new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnArgs
///             {
///                 UserInput = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnUserInputArgs
///                 {
///                     Input = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnUserInputInputArgs
///                     {
///                         LanguageCode = "en",
///                         Text = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnUserInputInputTextArgs
///                         {
///                             Text = "training phrase",
///                         },
///                     },
///                     InjectedParameters = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["some_param"] = "1",
///                     }),
///                     IsWebhookEnabled = true,
///                     EnableSentimentAnalysis = true,
///                 },
///                 VirtualAgentOutput = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputArgs
///                 {
///                     SessionParameters = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["some_param"] = "1",
///                     }),
///                     TriggeredIntent = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntentArgs
///                     {
///                         Name = intent.Id,
///                     },
///                     CurrentPage = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPageArgs
///                     {
///                         Name = page.Id,
///                     },
///                     TextResponses = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArgs
///                         {
///                             Texts = new[]
///                             {
///                                 "Training phrase response",
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnArgs
///             {
///                 UserInput = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnUserInputArgs
///                 {
///                     Input = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnUserInputInputArgs
///                     {
///                         Event = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnUserInputInputEventArgs
///                         {
///                             Event = "some-event",
///                         },
///                     },
///                 },
///                 VirtualAgentOutput = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputArgs
///                 {
///                     CurrentPage = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPageArgs
///                     {
///                         Name = page.Id,
///                     },
///                     TextResponses = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArgs
///                         {
///                             Texts = new[]
///                             {
///                                 "Handling some event",
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnArgs
///             {
///                 UserInput = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnUserInputArgs
///                 {
///                     Input = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnUserInputInputArgs
///                     {
///                         Dtmf = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnUserInputInputDtmfArgs
///                         {
///                             Digits = "12",
///                             FinishDigit = "3",
///                         },
///                     },
///                 },
///                 VirtualAgentOutput = new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputArgs
///                 {
///                     TextResponses = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArgs
///                         {
///                             Texts = new[]
///                             {
///                                 "I didn't get that. Can you say it again?",
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
/// 	"encoding/json"
///
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
/// 			AvatarUri:                pulumi.String("https://storage.cloud.google.com/dialogflow-test-host-image/cloud-logo.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		intent, err := diagflow.NewCxIntent(ctx, "intent", &diagflow.CxIntentArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("MyIntent"),
/// 			Priority:    pulumi.Int(1),
/// 			TrainingPhrases: diagflow.CxIntentTrainingPhraseArray{
/// 				&diagflow.CxIntentTrainingPhraseArgs{
/// 					Parts: diagflow.CxIntentTrainingPhrasePartArray{
/// 						&diagflow.CxIntentTrainingPhrasePartArgs{
/// 							Text: pulumi.String("training phrase"),
/// 						},
/// 					},
/// 					RepeatCount: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		page, err := diagflow.NewCxPage(ctx, "page", &diagflow.CxPageArgs{
/// 			Parent:      agent.StartFlow,
/// 			DisplayName: pulumi.String("MyPage"),
/// 			TransitionRoutes: diagflow.CxPageTransitionRouteArray{
/// 				&diagflow.CxPageTransitionRouteArgs{
/// 					Intent: intent.ID(),
/// 					TriggerFulfillment: &diagflow.CxPageTransitionRouteTriggerFulfillmentArgs{
/// 						Messages: diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArray{
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArgs{
/// 								Text: &diagflow.CxPageTransitionRouteTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("Training phrase response"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			EventHandlers: diagflow.CxPageEventHandlerArray{
/// 				&diagflow.CxPageEventHandlerArgs{
/// 					Event: pulumi.String("some-event"),
/// 					TriggerFulfillment: &diagflow.CxPageEventHandlerTriggerFulfillmentArgs{
/// 						Messages: diagflow.CxPageEventHandlerTriggerFulfillmentMessageArray{
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentMessageArgs{
/// 								Text: &diagflow.CxPageEventHandlerTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("Handling some event"),
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
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"some_param": "1",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"some_param": "1",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = diagflow.NewCxTestCase(ctx, "basic_test_case", &diagflow.CxTestCaseArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("MyTestCase"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("#tag1"),
/// 			},
/// 			Notes: pulumi.String("demonstrates a simple training phrase response"),
/// 			TestConfig: &diagflow.CxTestCaseTestConfigArgs{
/// 				TrackingParameters: pulumi.StringArray{
/// 					pulumi.String("some_param"),
/// 				},
/// 				Page: page.ID(),
/// 			},
/// 			TestCaseConversationTurns: diagflow.CxTestCaseTestCaseConversationTurnArray{
/// 				&diagflow.CxTestCaseTestCaseConversationTurnArgs{
/// 					UserInput: &diagflow.CxTestCaseTestCaseConversationTurnUserInputArgs{
/// 						Input: &diagflow.CxTestCaseTestCaseConversationTurnUserInputInputTypeArgs{
/// 							LanguageCode: pulumi.String("en"),
/// 							Text: &diagflow.CxTestCaseTestCaseConversationTurnUserInputInputTextArgs{
/// 								Text: pulumi.String("training phrase"),
/// 							},
/// 						},
/// 						InjectedParameters:      pulumi.String(json0),
/// 						IsWebhookEnabled:        pulumi.Bool(true),
/// 						EnableSentimentAnalysis: pulumi.Bool(true),
/// 					},
/// 					VirtualAgentOutput: diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputArgs{
/// 						SessionParameters: pulumi.String(json1),
/// 						TriggeredIntent: &diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntentArgs{
/// 							Name: intent.ID(),
/// 						},
/// 						CurrentPage: &diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPageArgs{
/// 							Name: page.ID(),
/// 						},
/// 						TextResponses: diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArray{
/// 							&diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArgs{
/// 								Texts: pulumi.StringArray{
/// 									pulumi.String("Training phrase response"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&diagflow.CxTestCaseTestCaseConversationTurnArgs{
/// 					UserInput: &diagflow.CxTestCaseTestCaseConversationTurnUserInputArgs{
/// 						Input: &diagflow.CxTestCaseTestCaseConversationTurnUserInputInputTypeArgs{
/// 							Event: &diagflow.CxTestCaseTestCaseConversationTurnUserInputInputEventArgs{
/// 								Event: pulumi.String("some-event"),
/// 							},
/// 						},
/// 					},
/// 					VirtualAgentOutput: diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputArgs{
/// 						CurrentPage: &diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPageArgs{
/// 							Name: page.ID(),
/// 						},
/// 						TextResponses: diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArray{
/// 							&diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArgs{
/// 								Texts: pulumi.StringArray{
/// 									pulumi.String("Handling some event"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&diagflow.CxTestCaseTestCaseConversationTurnArgs{
/// 					UserInput: &diagflow.CxTestCaseTestCaseConversationTurnUserInputArgs{
/// 						Input: &diagflow.CxTestCaseTestCaseConversationTurnUserInputInputTypeArgs{
/// 							Dtmf: &diagflow.CxTestCaseTestCaseConversationTurnUserInputInputDtmfArgs{
/// 								Digits:      pulumi.String("12"),
/// 								FinishDigit: pulumi.String("3"),
/// 							},
/// 						},
/// 					},
/// 					VirtualAgentOutput: diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputArgs{
/// 						TextResponses: diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArray{
/// 							&diagflow.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArgs{
/// 								Texts: pulumi.StringArray{
/// 									pulumi.String("I didn't get that. Can you say it again?"),
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
/// import com.pulumi.gcp.diagflow.CxIntent;
/// import com.pulumi.gcp.diagflow.CxIntentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxIntentTrainingPhraseArgs;
/// import com.pulumi.gcp.diagflow.CxPage;
/// import com.pulumi.gcp.diagflow.CxPageArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageTransitionRouteArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageTransitionRouteTriggerFulfillmentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageEventHandlerArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageEventHandlerTriggerFulfillmentArgs;
/// import com.pulumi.gcp.diagflow.CxTestCase;
/// import com.pulumi.gcp.diagflow.CxTestCaseArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxTestCaseTestConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxTestCaseTestCaseConversationTurnArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxTestCaseTestCaseConversationTurnUserInputArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxTestCaseTestCaseConversationTurnUserInputInputArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxTestCaseTestCaseConversationTurnUserInputInputTextArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPageArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxTestCaseTestCaseConversationTurnUserInputInputEventArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxTestCaseTestCaseConversationTurnUserInputInputDtmfArgs;
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
///             .avatarUri("https://storage.cloud.google.com/dialogflow-test-host-image/cloud-logo.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var intent = new CxIntent("intent", CxIntentArgs.builder()
///             .parent(agent.id())
///             .displayName("MyIntent")
///             .priority(1)
///             .trainingPhrases(CxIntentTrainingPhraseArgs.builder()
///                 .parts(CxIntentTrainingPhrasePartArgs.builder()
///                     .text("training phrase")
///                     .build())
///                 .repeatCount(1)
///                 .build())
///             .build());
///
///         var page = new CxPage("page", CxPageArgs.builder()
///             .parent(agent.startFlow())
///             .displayName("MyPage")
///             .transitionRoutes(CxPageTransitionRouteArgs.builder()
///                 .intent(intent.id())
///                 .triggerFulfillment(CxPageTransitionRouteTriggerFulfillmentArgs.builder()
///                     .messages(CxPageTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                         .text(CxPageTransitionRouteTriggerFulfillmentMessageTextArgs.builder()
///                             .texts("Training phrase response")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .eventHandlers(CxPageEventHandlerArgs.builder()
///                 .event("some-event")
///                 .triggerFulfillment(CxPageEventHandlerTriggerFulfillmentArgs.builder()
///                     .messages(CxPageEventHandlerTriggerFulfillmentMessageArgs.builder()
///                         .text(CxPageEventHandlerTriggerFulfillmentMessageTextArgs.builder()
///                             .texts("Handling some event")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var basicTestCase = new CxTestCase("basicTestCase", CxTestCaseArgs.builder()
///             .parent(agent.id())
///             .displayName("MyTestCase")
///             .tags("#tag1")
///             .notes("demonstrates a simple training phrase response")
///             .testConfig(CxTestCaseTestConfigArgs.builder()
///                 .trackingParameters("some_param")
///                 .page(page.id())
///                 .build())
///             .testCaseConversationTurns(
///                 CxTestCaseTestCaseConversationTurnArgs.builder()
///                     .userInput(CxTestCaseTestCaseConversationTurnUserInputArgs.builder()
///                         .input(CxTestCaseTestCaseConversationTurnUserInputInputArgs.builder()
///                             .languageCode("en")
///                             .text(CxTestCaseTestCaseConversationTurnUserInputInputTextArgs.builder()
///                                 .text("training phrase")
///                                 .build())
///                             .build())
///                         .injectedParameters(serializeJson(
///                             jsonObject(
///                                 jsonProperty("some_param", "1")
///                             )))
///                         .isWebhookEnabled(true)
///                         .enableSentimentAnalysis(true)
///                         .build())
///                     .virtualAgentOutput(CxTestCaseTestCaseConversationTurnVirtualAgentOutputArgs.builder()
///                         .sessionParameters(serializeJson(
///                             jsonObject(
///                                 jsonProperty("some_param", "1")
///                             )))
///                         .triggeredIntent(CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntentArgs.builder()
///                             .name(intent.id())
///                             .build())
///                         .currentPage(CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPageArgs.builder()
///                             .name(page.id())
///                             .build())
///                         .textResponses(CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArgs.builder()
///                             .texts("Training phrase response")
///                             .build())
///                         .build())
///                     .build(),
///                 CxTestCaseTestCaseConversationTurnArgs.builder()
///                     .userInput(CxTestCaseTestCaseConversationTurnUserInputArgs.builder()
///                         .input(CxTestCaseTestCaseConversationTurnUserInputInputArgs.builder()
///                             .event(CxTestCaseTestCaseConversationTurnUserInputInputEventArgs.builder()
///                                 .event("some-event")
///                                 .build())
///                             .build())
///                         .build())
///                     .virtualAgentOutput(CxTestCaseTestCaseConversationTurnVirtualAgentOutputArgs.builder()
///                         .currentPage(CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPageArgs.builder()
///                             .name(page.id())
///                             .build())
///                         .textResponses(CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArgs.builder()
///                             .texts("Handling some event")
///                             .build())
///                         .build())
///                     .build(),
///                 CxTestCaseTestCaseConversationTurnArgs.builder()
///                     .userInput(CxTestCaseTestCaseConversationTurnUserInputArgs.builder()
///                         .input(CxTestCaseTestCaseConversationTurnUserInputInputArgs.builder()
///                             .dtmf(CxTestCaseTestCaseConversationTurnUserInputInputDtmfArgs.builder()
///                                 .digits("12")
///                                 .finishDigit("3")
///                                 .build())
///                             .build())
///                         .build())
///                     .virtualAgentOutput(CxTestCaseTestCaseConversationTurnVirtualAgentOutputArgs.builder()
///                         .textResponses(CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponseArgs.builder()
///                             .texts("I didn't get that. Can you say it again?")
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
///       avatarUri: https://storage.cloud.google.com/dialogflow-test-host-image/cloud-logo.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   page:
///     type: gcp:diagflow:CxPage
///     properties:
///       parent: ${agent.startFlow}
///       displayName: MyPage
///       transitionRoutes:
///         - intent: ${intent.id}
///           triggerFulfillment:
///             messages:
///               - text:
///                   texts:
///                     - Training phrase response
///       eventHandlers:
///         - event: some-event
///           triggerFulfillment:
///             messages:
///               - text:
///                   texts:
///                     - Handling some event
///   intent:
///     type: gcp:diagflow:CxIntent
///     properties:
///       parent: ${agent.id}
///       displayName: MyIntent
///       priority: 1
///       trainingPhrases:
///         - parts:
///             - text: training phrase
///           repeatCount: 1
///   basicTestCase:
///     type: gcp:diagflow:CxTestCase
///     name: basic_test_case
///     properties:
///       parent: ${agent.id}
///       displayName: MyTestCase
///       tags:
///         - '#tag1'
///       notes: demonstrates a simple training phrase response
///       testConfig:
///         trackingParameters:
///           - some_param
///         page: ${page.id}
///       testCaseConversationTurns:
///         - userInput:
///             input:
///               languageCode: en
///               text:
///                 text: training phrase
///             injectedParameters:
///               fn::toJSON:
///                 some_param: '1'
///             isWebhookEnabled: true
///             enableSentimentAnalysis: true
///           virtualAgentOutput:
///             sessionParameters:
///               fn::toJSON:
///                 some_param: '1'
///             triggeredIntent:
///               name: ${intent.id}
///             currentPage:
///               name: ${page.id}
///             textResponses:
///               - texts:
///                   - Training phrase response
///         - userInput:
///             input:
///               event:
///                 event: some-event
///           virtualAgentOutput:
///             currentPage:
///               name: ${page.id}
///             textResponses:
///               - texts:
///                   - Handling some event
///         - userInput:
///             input:
///               dtmf:
///                 digits: '12'
///                 finishDigit: '3'
///           virtualAgentOutput:
///             textResponses:
///               - texts:
///                   - I didn't get that. Can you say it again?
/// ```
///
///
/// ## Import
///
/// TestCase can be imported using any of these accepted formats:
///
/// * `{{parent}}/testCases/{{name}}`
///
/// When using the `pulumi import` command, TestCase can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxTestCase:CxTestCase default {{parent}}/testCases/{{name}}
/// ```
class CxTestCase extends pulumi.CustomResource {
  /// When the test was created. A timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTime;

  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  late final pulumi.Output<String> displayName;

  /// The latest test result.
  /// Structure is documented below.
  late final pulumi.Output<List<CxTestCaseLastTestResult>> lastTestResults;

  /// The unique identifier of the page.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  late final pulumi.Output<String> name;

  /// Additional freeform notes about the test case. Limit of 400 characters.
  late final pulumi.Output<String?> notes;

  /// The agent to create the test case for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.
  /// Each tag should start with "#" and has a limit of 30 characters
  late final pulumi.Output<List<String>?> tags;

  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  /// Structure is documented below.
  late final pulumi.Output<List<CxTestCaseTestCaseConversationTurn>?>
  testCaseConversationTurns;

  /// Config for the test case.
  /// Structure is documented below.
  late final pulumi.Output<CxTestCaseTestConfig?> testConfig;

  /// Creates a new [CxTestCase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxTestCase]. {@macro pulumi_diagflow_cx_test_case_cx_test_case_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxTestCase(
    String name, {
    CxTestCaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:diagflow/cxTestCase:CxTestCase',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.creationTime = registerOutput<String>('creationTime');
    this.displayName = registerOutput<String>('displayName');
    this.lastTestResults = registerOutput<List<CxTestCaseLastTestResult>>(
      'lastTestResults',
    );
    this.name = registerOutput<String>('name');
    this.notes = registerOutput<String?>('notes');
    this.parent = registerOutput<String?>('parent');
    this.tags = registerOutput<List<String>?>('tags');
    this.testCaseConversationTurns =
        registerOutput<List<CxTestCaseTestCaseConversationTurn>?>(
          'testCaseConversationTurns',
        );
    this.testConfig = registerOutput<CxTestCaseTestConfig?>('testConfig');
  }
}
