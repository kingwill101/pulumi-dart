import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_advanced_settings.dart';
import 'cx_page_args.dart';
import 'cx_page_entry_fulfillment.dart';
import 'cx_page_event_handler.dart';
import 'cx_page_form.dart';
import 'cx_page_knowledge_connector_settings.dart';
import 'cx_page_transition_route.dart';

/// A Dialogflow CX conversation (session) can be described and visualized as a state machine. The states of a CX session are represented by pages.
///
///
/// To get more information about Page, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Page Full
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
/// const myPage2 = new gcp.diagflow.CxPage("my_page2", {
///     parent: agent.startFlow,
///     displayName: "MyPage2",
/// });
/// const myWebhook = new gcp.diagflow.CxWebhook("my_webhook", {
///     parent: agent.id,
///     displayName: "MyWebhook",
///     genericWebService: {
///         uri: "https://example.com",
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// const basicPage = new gcp.diagflow.CxPage("basic_page", {
///     parent: agent.startFlow,
///     displayName: "MyPage",
///     entryFulfillment: {
///         messages: [
///             {
///                 channel: "some-channel",
///                 text: {
///                     texts: ["Welcome to page"],
///                 },
///             },
///             {
///                 payload: "        {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///             },
///             {
///                 conversationSuccess: {
///                     metadata: "          {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                 },
///             },
///             {
///                 outputAudioText: {
///                     text: "some output text",
///                 },
///             },
///             {
///                 outputAudioText: {
///                     ssml: "          <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                 },
///             },
///             {
///                 liveAgentHandoff: {
///                     metadata: "          {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                 },
///             },
///             {
///                 playAudio: {
///                     audioUri: "http://example.com/some-audio-file.mp3",
///                 },
///             },
///             {
///                 telephonyTransferCall: {
///                     phoneNumber: "1-234-567-8901",
///                 },
///             },
///         ],
///         setParameterActions: [
///             {
///                 parameter: "some-param",
///                 value: "123.45",
///             },
///             {
///                 parameter: "another-param",
///                 value: JSON.stringify("abc"),
///             },
///             {
///                 parameter: "other-param",
///                 value: JSON.stringify(["foo"]),
///             },
///         ],
///         conditionalCases: [{
///             cases: JSON.stringify([
///                 {
///                     condition: "$sys.func.RAND() < 0.5",
///                     caseContent: [
///                         {
///                             message: {
///                                 text: {
///                                     text: ["First case"],
///                                 },
///                             },
///                         },
///                         {
///                             additionalCases: {
///                                 cases: [{
///                                     condition: "$sys.func.RAND() < 0.2",
///                                     caseContent: [{
///                                         message: {
///                                             text: {
///                                                 text: ["Nested case"],
///                                             },
///                                         },
///                                     }],
///                                 }],
///                             },
///                         },
///                     ],
///                 },
///                 {
///                     caseContent: [{
///                         message: {
///                             text: {
///                                 text: ["Final case"],
///                             },
///                         },
///                     }],
///                 },
///             ]),
///         }],
///     },
///     eventHandlers: [{
///         event: "some-event",
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
///     }],
///     form: {
///         parameters: [{
///             displayName: "param1",
///             entityType: "projects/-/locations/-/agents/-/entityTypes/sys.date",
///             defaultValue: JSON.stringify("2000-01-01"),
///             fillBehavior: {
///                 initialPromptFulfillment: {
///                     messages: [
///                         {
///                             channel: "some-channel",
///                             text: {
///                                 texts: ["Please provide param1"],
///                             },
///                         },
///                         {
///                             payload: "              {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///                         },
///                         {
///                             conversationSuccess: {
///                                 metadata: "                {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                             },
///                         },
///                         {
///                             outputAudioText: {
///                                 text: "some output text",
///                             },
///                         },
///                         {
///                             outputAudioText: {
///                                 ssml: "                <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                             },
///                         },
///                         {
///                             liveAgentHandoff: {
///                                 metadata: "                {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                             },
///                         },
///                         {
///                             playAudio: {
///                                 audioUri: "http://example.com/some-audio-file.mp3",
///                             },
///                         },
///                         {
///                             telephonyTransferCall: {
///                                 phoneNumber: "1-234-567-8901",
///                             },
///                         },
///                     ],
///                     setParameterActions: [
///                         {
///                             parameter: "some-param",
///                             value: "123.45",
///                         },
///                         {
///                             parameter: "another-param",
///                             value: JSON.stringify("abc"),
///                         },
///                         {
///                             parameter: "other-param",
///                             value: JSON.stringify(["foo"]),
///                         },
///                     ],
///                     conditionalCases: [{
///                         cases: JSON.stringify([
///                             {
///                                 condition: "$sys.func.RAND() < 0.5",
///                                 caseContent: [
///                                     {
///                                         message: {
///                                             text: {
///                                                 text: ["First case"],
///                                             },
///                                         },
///                                     },
///                                     {
///                                         additionalCases: {
///                                             cases: [{
///                                                 condition: "$sys.func.RAND() < 0.2",
///                                                 caseContent: [{
///                                                     message: {
///                                                         text: {
///                                                             text: ["Nested case"],
///                                                         },
///                                                     },
///                                                 }],
///                                             }],
///                                         },
///                                     },
///                                 ],
///                             },
///                             {
///                                 caseContent: [{
///                                     message: {
///                                         text: {
///                                             text: ["Final case"],
///                                         },
///                                     },
///                                 }],
///                             },
///                         ]),
///                     }],
///                 },
///                 repromptEventHandlers: [
///                     {
///                         event: "sys.no-match-1",
///                         triggerFulfillment: {
///                             returnPartialResponses: true,
///                             webhook: myWebhook.id,
///                             tag: "some-tag",
///                             messages: [
///                                 {
///                                     channel: "some-channel",
///                                     text: {
///                                         texts: ["Please provide param1"],
///                                     },
///                                 },
///                                 {
///                                     payload: "                {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///                                 },
///                                 {
///                                     conversationSuccess: {
///                                         metadata: "                  {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                                     },
///                                 },
///                                 {
///                                     outputAudioText: {
///                                         text: "some output text",
///                                     },
///                                 },
///                                 {
///                                     outputAudioText: {
///                                         ssml: "                  <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                                     },
///                                 },
///                                 {
///                                     liveAgentHandoff: {
///                                         metadata: "                  {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                                     },
///                                 },
///                                 {
///                                     playAudio: {
///                                         audioUri: "http://example.com/some-audio-file.mp3",
///                                     },
///                                 },
///                                 {
///                                     telephonyTransferCall: {
///                                         phoneNumber: "1-234-567-8901",
///                                     },
///                                 },
///                             ],
///                             setParameterActions: [
///                                 {
///                                     parameter: "some-param",
///                                     value: "123.45",
///                                 },
///                                 {
///                                     parameter: "another-param",
///                                     value: JSON.stringify("abc"),
///                                 },
///                                 {
///                                     parameter: "other-param",
///                                     value: JSON.stringify(["foo"]),
///                                 },
///                             ],
///                             conditionalCases: [{
///                                 cases: JSON.stringify([
///                                     {
///                                         condition: "$sys.func.RAND() < 0.5",
///                                         caseContent: [
///                                             {
///                                                 message: {
///                                                     text: {
///                                                         text: ["First case"],
///                                                     },
///                                                 },
///                                             },
///                                             {
///                                                 additionalCases: {
///                                                     cases: [{
///                                                         condition: "$sys.func.RAND() < 0.2",
///                                                         caseContent: [{
///                                                             message: {
///                                                                 text: {
///                                                                     text: ["Nested case"],
///                                                                 },
///                                                             },
///                                                         }],
///                                                     }],
///                                                 },
///                                             },
///                                         ],
///                                     },
///                                     {
///                                         caseContent: [{
///                                             message: {
///                                                 text: {
///                                                     text: ["Final case"],
///                                                 },
///                                             },
///                                         }],
///                                     },
///                                 ]),
///                             }],
///                         },
///                     },
///                     {
///                         event: "sys.no-match-2",
///                         targetFlow: agent.startFlow,
///                     },
///                     {
///                         event: "sys.no-match-3",
///                         targetPage: myPage2.id,
///                     },
///                 ],
///             },
///             required: true,
///             redact: true,
///             advancedSettings: {
///                 dtmfSettings: {
///                     enabled: true,
///                     maxDigits: 1,
///                     finishDigit: "#",
///                 },
///             },
///         }],
///     },
///     transitionRoutes: [{
///         condition: "$page.params.status = 'FINAL'",
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
///         targetPage: myPage2.id,
///     }],
///     advancedSettings: {
///         dtmfSettings: {
///             enabled: true,
///             maxDigits: 1,
///             finishDigit: "#",
///         },
///     },
///     knowledgeConnectorSettings: {
///         enabled: true,
///         triggerFulfillment: {
///             messages: [
///                 {
///                     channel: "some-channel",
///                     knowledgeInfoCard: {},
///                 },
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
///             dataStoreType: "PUBLIC_WEB",
///             dataStore: pulumi.all([project, agent.location]).apply(([project, location]) => `projects/${project.number}/locations/${location}/collections/default_collection/dataStores/datastore-page-full`),
///             documentProcessingMode: "CHUNKS",
///         }],
///         targetPage: myPage2.id,
///     },
/// });
/// const myDatastore = new gcp.discoveryengine.DataStore("my_datastore", {
///     location: "global",
///     dataStoreId: "datastore-page-full",
///     displayName: "datastore-page-full",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
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
/// my_page2 = gcp.diagflow.CxPage("my_page2",
///     parent=agent.start_flow,
///     display_name="MyPage2")
/// my_webhook = gcp.diagflow.CxWebhook("my_webhook",
///     parent=agent.id,
///     display_name="MyWebhook",
///     generic_web_service={
///         "uri": "https://example.com",
///     })
/// project = gcp.organizations.get_project()
/// basic_page = gcp.diagflow.CxPage("basic_page",
///     parent=agent.start_flow,
///     display_name="MyPage",
///     entry_fulfillment={
///         "messages": [
///             {
///                 "channel": "some-channel",
///                 "text": {
///                     "texts": ["Welcome to page"],
///                 },
///             },
///             {
///                 "payload": "        {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///             },
///             {
///                 "conversation_success": {
///                     "metadata": "          {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                 },
///             },
///             {
///                 "output_audio_text": {
///                     "text": "some output text",
///                 },
///             },
///             {
///                 "output_audio_text": {
///                     "ssml": "          <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                 },
///             },
///             {
///                 "live_agent_handoff": {
///                     "metadata": "          {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                 },
///             },
///             {
///                 "play_audio": {
///                     "audio_uri": "http://example.com/some-audio-file.mp3",
///                 },
///             },
///             {
///                 "telephony_transfer_call": {
///                     "phone_number": "1-234-567-8901",
///                 },
///             },
///         ],
///         "set_parameter_actions": [
///             {
///                 "parameter": "some-param",
///                 "value": "123.45",
///             },
///             {
///                 "parameter": "another-param",
///                 "value": json.dumps("abc"),
///             },
///             {
///                 "parameter": "other-param",
///                 "value": json.dumps(["foo"]),
///             },
///         ],
///         "conditional_cases": [{
///             "cases": json.dumps([
///                 {
///                     "condition": "$sys.func.RAND() < 0.5",
///                     "caseContent": [
///                         {
///                             "message": {
///                                 "text": {
///                                     "text": ["First case"],
///                                 },
///                             },
///                         },
///                         {
///                             "additionalCases": {
///                                 "cases": [{
///                                     "condition": "$sys.func.RAND() < 0.2",
///                                     "caseContent": [{
///                                         "message": {
///                                             "text": {
///                                                 "text": ["Nested case"],
///                                             },
///                                         },
///                                     }],
///                                 }],
///                             },
///                         },
///                     ],
///                 },
///                 {
///                     "caseContent": [{
///                         "message": {
///                             "text": {
///                                 "text": ["Final case"],
///                             },
///                         },
///                     }],
///                 },
///             ]),
///         }],
///     },
///     event_handlers=[{
///         "event": "some-event",
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
///     }],
///     form={
///         "parameters": [{
///             "display_name": "param1",
///             "entity_type": "projects/-/locations/-/agents/-/entityTypes/sys.date",
///             "default_value": json.dumps("2000-01-01"),
///             "fill_behavior": {
///                 "initial_prompt_fulfillment": {
///                     "messages": [
///                         {
///                             "channel": "some-channel",
///                             "text": {
///                                 "texts": ["Please provide param1"],
///                             },
///                         },
///                         {
///                             "payload": "              {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///                         },
///                         {
///                             "conversation_success": {
///                                 "metadata": "                {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                             },
///                         },
///                         {
///                             "output_audio_text": {
///                                 "text": "some output text",
///                             },
///                         },
///                         {
///                             "output_audio_text": {
///                                 "ssml": "                <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                             },
///                         },
///                         {
///                             "live_agent_handoff": {
///                                 "metadata": "                {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                             },
///                         },
///                         {
///                             "play_audio": {
///                                 "audio_uri": "http://example.com/some-audio-file.mp3",
///                             },
///                         },
///                         {
///                             "telephony_transfer_call": {
///                                 "phone_number": "1-234-567-8901",
///                             },
///                         },
///                     ],
///                     "set_parameter_actions": [
///                         {
///                             "parameter": "some-param",
///                             "value": "123.45",
///                         },
///                         {
///                             "parameter": "another-param",
///                             "value": json.dumps("abc"),
///                         },
///                         {
///                             "parameter": "other-param",
///                             "value": json.dumps(["foo"]),
///                         },
///                     ],
///                     "conditional_cases": [{
///                         "cases": json.dumps([
///                             {
///                                 "condition": "$sys.func.RAND() < 0.5",
///                                 "caseContent": [
///                                     {
///                                         "message": {
///                                             "text": {
///                                                 "text": ["First case"],
///                                             },
///                                         },
///                                     },
///                                     {
///                                         "additionalCases": {
///                                             "cases": [{
///                                                 "condition": "$sys.func.RAND() < 0.2",
///                                                 "caseContent": [{
///                                                     "message": {
///                                                         "text": {
///                                                             "text": ["Nested case"],
///                                                         },
///                                                     },
///                                                 }],
///                                             }],
///                                         },
///                                     },
///                                 ],
///                             },
///                             {
///                                 "caseContent": [{
///                                     "message": {
///                                         "text": {
///                                             "text": ["Final case"],
///                                         },
///                                     },
///                                 }],
///                             },
///                         ]),
///                     }],
///                 },
///                 "reprompt_event_handlers": [
///                     {
///                         "event": "sys.no-match-1",
///                         "trigger_fulfillment": {
///                             "return_partial_responses": True,
///                             "webhook": my_webhook.id,
///                             "tag": "some-tag",
///                             "messages": [
///                                 {
///                                     "channel": "some-channel",
///                                     "text": {
///                                         "texts": ["Please provide param1"],
///                                     },
///                                 },
///                                 {
///                                     "payload": "                {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n",
///                                 },
///                                 {
///                                     "conversation_success": {
///                                         "metadata": "                  {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                                     },
///                                 },
///                                 {
///                                     "output_audio_text": {
///                                         "text": "some output text",
///                                     },
///                                 },
///                                 {
///                                     "output_audio_text": {
///                                         "ssml": "                  <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n",
///                                     },
///                                 },
///                                 {
///                                     "live_agent_handoff": {
///                                         "metadata": "                  {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n",
///                                     },
///                                 },
///                                 {
///                                     "play_audio": {
///                                         "audio_uri": "http://example.com/some-audio-file.mp3",
///                                     },
///                                 },
///                                 {
///                                     "telephony_transfer_call": {
///                                         "phone_number": "1-234-567-8901",
///                                     },
///                                 },
///                             ],
///                             "set_parameter_actions": [
///                                 {
///                                     "parameter": "some-param",
///                                     "value": "123.45",
///                                 },
///                                 {
///                                     "parameter": "another-param",
///                                     "value": json.dumps("abc"),
///                                 },
///                                 {
///                                     "parameter": "other-param",
///                                     "value": json.dumps(["foo"]),
///                                 },
///                             ],
///                             "conditional_cases": [{
///                                 "cases": json.dumps([
///                                     {
///                                         "condition": "$sys.func.RAND() < 0.5",
///                                         "caseContent": [
///                                             {
///                                                 "message": {
///                                                     "text": {
///                                                         "text": ["First case"],
///                                                     },
///                                                 },
///                                             },
///                                             {
///                                                 "additionalCases": {
///                                                     "cases": [{
///                                                         "condition": "$sys.func.RAND() < 0.2",
///                                                         "caseContent": [{
///                                                             "message": {
///                                                                 "text": {
///                                                                     "text": ["Nested case"],
///                                                                 },
///                                                             },
///                                                         }],
///                                                     }],
///                                                 },
///                                             },
///                                         ],
///                                     },
///                                     {
///                                         "caseContent": [{
///                                             "message": {
///                                                 "text": {
///                                                     "text": ["Final case"],
///                                                 },
///                                             },
///                                         }],
///                                     },
///                                 ]),
///                             }],
///                         },
///                     },
///                     {
///                         "event": "sys.no-match-2",
///                         "target_flow": agent.start_flow,
///                     },
///                     {
///                         "event": "sys.no-match-3",
///                         "target_page": my_page2.id,
///                     },
///                 ],
///             },
///             "required": True,
///             "redact": True,
///             "advanced_settings": {
///                 "dtmf_settings": {
///                     "enabled": True,
///                     "max_digits": 1,
///                     "finish_digit": "#",
///                 },
///             },
///         }],
///     },
///     transition_routes=[{
///         "condition": "$page.params.status = 'FINAL'",
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
///         "target_page": my_page2.id,
///     }],
///     advanced_settings={
///         "dtmf_settings": {
///             "enabled": True,
///             "max_digits": 1,
///             "finish_digit": "#",
///         },
///     },
///     knowledge_connector_settings={
///         "enabled": True,
///         "trigger_fulfillment": {
///             "messages": [
///                 {
///                     "channel": "some-channel",
///                     "knowledge_info_card": {},
///                 },
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
///             "data_store_type": "PUBLIC_WEB",
///             "data_store": agent.location.apply(lambda location: f"projects/{project.number}/locations/{location}/collections/default_collection/dataStores/datastore-page-full"),
///             "document_processing_mode": "CHUNKS",
///         }],
///         "target_page": my_page2.id,
///     })
/// my_datastore = gcp.discoveryengine.DataStore("my_datastore",
///     location="global",
///     data_store_id="datastore-page-full",
///     display_name="datastore-page-full",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT")
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
///     var myPage2 = new Gcp.Diagflow.CxPage("my_page2", new()
///     {
///         Parent = agent.StartFlow,
///         DisplayName = "MyPage2",
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
///     var basicPage = new Gcp.Diagflow.CxPage("basic_page", new()
///     {
///         Parent = agent.StartFlow,
///         DisplayName = "MyPage",
///         EntryFulfillment = new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentArgs
///         {
///             Messages = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageArgs
///                 {
///                     Channel = "some-channel",
///                     Text = new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageTextArgs
///                     {
///                         Texts = new[]
///                         {
///                             "Welcome to page",
///                         },
///                     },
///                 },
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageArgs
///                 {
///                     Payload = @"        {\""some-key\"": \""some-value\"", \""other-key\"": [\""other-value\""]}
/// ",
///                 },
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageArgs
///                 {
///                     ConversationSuccess = new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageConversationSuccessArgs
///                     {
///                         Metadata = @"          {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                     },
///                 },
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageArgs
///                 {
///                     OutputAudioText = new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageOutputAudioTextArgs
///                     {
///                         Text = "some output text",
///                     },
///                 },
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageArgs
///                 {
///                     OutputAudioText = new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageOutputAudioTextArgs
///                     {
///                         Ssml = @"          <speak>Some example <say-as interpret-as=\""characters\"">SSML XML</say-as></speak>
/// ",
///                     },
///                 },
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageArgs
///                 {
///                     LiveAgentHandoff = new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageLiveAgentHandoffArgs
///                     {
///                         Metadata = @"          {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                     },
///                 },
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageArgs
///                 {
///                     PlayAudio = new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessagePlayAudioArgs
///                     {
///                         AudioUri = "http://example.com/some-audio-file.mp3",
///                     },
///                 },
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageArgs
///                 {
///                     TelephonyTransferCall = new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentMessageTelephonyTransferCallArgs
///                     {
///                         PhoneNumber = "1-234-567-8901",
///                     },
///                 },
///             },
///             SetParameterActions = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentSetParameterActionArgs
///                 {
///                     Parameter = "some-param",
///                     Value = "123.45",
///                 },
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentSetParameterActionArgs
///                 {
///                     Parameter = "another-param",
///                     Value = JsonSerializer.Serialize("abc"),
///                 },
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentSetParameterActionArgs
///                 {
///                     Parameter = "other-param",
///                     Value = JsonSerializer.Serialize(new[]
///                     {
///                         "foo",
///                     }),
///                 },
///             },
///             ConditionalCases = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxPageEntryFulfillmentConditionalCaseArgs
///                 {
///                     Cases = JsonSerializer.Serialize(new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["condition"] = "$sys.func.RAND() < 0.5",
///                             ["caseContent"] = new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["message"] = new Dictionary<string, object?>
///                                     {
///                                         ["text"] = new Dictionary<string, object?>
///                                         {
///                                             ["text"] = new[]
///                                             {
///                                                 "First case",
///                                             },
///                                         },
///                                     },
///                                 },
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["additionalCases"] = new Dictionary<string, object?>
///                                     {
///                                         ["cases"] = new[]
///                                         {
///                                             new Dictionary<string, object?>
///                                             {
///                                                 ["condition"] = "$sys.func.RAND() < 0.2",
///                                                 ["caseContent"] = new[]
///                                                 {
///                                                     new Dictionary<string, object?>
///                                                     {
///                                                         ["message"] = new Dictionary<string, object?>
///                                                         {
///                                                             ["text"] = new Dictionary<string, object?>
///                                                             {
///                                                                 ["text"] = new[]
///                                                                 {
///                                                                     "Nested case",
///                                                                 },
///                                                             },
///                                                         },
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Dictionary<string, object?>
///                         {
///                             ["caseContent"] = new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["message"] = new Dictionary<string, object?>
///                                     {
///                                         ["text"] = new Dictionary<string, object?>
///                                         {
///                                             ["text"] = new[]
///                                             {
///                                                 "Final case",
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     }),
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
///                     ReturnPartialResponses = true,
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Channel = "some-channel",
///                             Text = new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "Some text",
///                                 },
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             Payload = @"          {\""some-key\"": \""some-value\"", \""other-key\"": [\""other-value\""]}
/// ",
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             ConversationSuccess = new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageConversationSuccessArgs
///                             {
///                                 Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             OutputAudioText = new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs
///                             {
///                                 Text = "some output text",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             OutputAudioText = new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs
///                             {
///                                 Ssml = @"            <speak>Some example <say-as interpret-as=\""characters\"">SSML XML</say-as></speak>
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             LiveAgentHandoff = new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageLiveAgentHandoffArgs
///                             {
///                                 Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             PlayAudio = new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessagePlayAudioArgs
///                             {
///                                 AudioUri = "http://example.com/some-audio-file.mp3",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageArgs
///                         {
///                             TelephonyTransferCall = new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentMessageTelephonyTransferCallArgs
///                             {
///                                 PhoneNumber = "1-234-567-8901",
///                             },
///                         },
///                     },
///                     SetParameterActions = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentSetParameterActionArgs
///                         {
///                             Parameter = "some-param",
///                             Value = "123.45",
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentSetParameterActionArgs
///                         {
///                             Parameter = "another-param",
///                             Value = JsonSerializer.Serialize("abc"),
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentSetParameterActionArgs
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
///                         new Gcp.Diagflow.Inputs.CxPageEventHandlerTriggerFulfillmentConditionalCaseArgs
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
///             },
///         },
///         Form = new Gcp.Diagflow.Inputs.CxPageFormArgs
///         {
///             Parameters = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxPageFormParameterArgs
///                 {
///                     DisplayName = "param1",
///                     EntityType = "projects/-/locations/-/agents/-/entityTypes/sys.date",
///                     DefaultValue = JsonSerializer.Serialize("2000-01-01"),
///                     FillBehavior = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorArgs
///                     {
///                         InitialPromptFulfillment = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentArgs
///                         {
///                             Messages = new[]
///                             {
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs
///                                 {
///                                     Channel = "some-channel",
///                                     Text = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTextArgs
///                                     {
///                                         Texts = new[]
///                                         {
///                                             "Please provide param1",
///                                         },
///                                     },
///                                 },
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs
///                                 {
///                                     Payload = @"              {\""some-key\"": \""some-value\"", \""other-key\"": [\""other-value\""]}
/// ",
///                                 },
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs
///                                 {
///                                     ConversationSuccess = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageConversationSuccessArgs
///                                     {
///                                         Metadata = @"                {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                                     },
///                                 },
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs
///                                 {
///                                     OutputAudioText = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageOutputAudioTextArgs
///                                     {
///                                         Text = "some output text",
///                                     },
///                                 },
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs
///                                 {
///                                     OutputAudioText = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageOutputAudioTextArgs
///                                     {
///                                         Ssml = @"                <speak>Some example <say-as interpret-as=\""characters\"">SSML XML</say-as></speak>
/// ",
///                                     },
///                                 },
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs
///                                 {
///                                     LiveAgentHandoff = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoffArgs
///                                     {
///                                         Metadata = @"                {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                                     },
///                                 },
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs
///                                 {
///                                     PlayAudio = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessagePlayAudioArgs
///                                     {
///                                         AudioUri = "http://example.com/some-audio-file.mp3",
///                                     },
///                                 },
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs
///                                 {
///                                     TelephonyTransferCall = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTelephonyTransferCallArgs
///                                     {
///                                         PhoneNumber = "1-234-567-8901",
///                                     },
///                                 },
///                             },
///                             SetParameterActions = new[]
///                             {
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterActionArgs
///                                 {
///                                     Parameter = "some-param",
///                                     Value = "123.45",
///                                 },
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterActionArgs
///                                 {
///                                     Parameter = "another-param",
///                                     Value = JsonSerializer.Serialize("abc"),
///                                 },
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterActionArgs
///                                 {
///                                     Parameter = "other-param",
///                                     Value = JsonSerializer.Serialize(new[]
///                                     {
///                                         "foo",
///                                     }),
///                                 },
///                             },
///                             ConditionalCases = new[]
///                             {
///                                 new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCaseArgs
///                                 {
///                                     Cases = JsonSerializer.Serialize(new[]
///                                     {
///                                         new Dictionary<string, object?>
///                                         {
///                                             ["condition"] = "$sys.func.RAND() < 0.5",
///                                             ["caseContent"] = new[]
///                                             {
///                                                 new Dictionary<string, object?>
///                                                 {
///                                                     ["message"] = new Dictionary<string, object?>
///                                                     {
///                                                         ["text"] = new Dictionary<string, object?>
///                                                         {
///                                                             ["text"] = new[]
///                                                             {
///                                                                 "First case",
///                                                             },
///                                                         },
///                                                     },
///                                                 },
///                                                 new Dictionary<string, object?>
///                                                 {
///                                                     ["additionalCases"] = new Dictionary<string, object?>
///                                                     {
///                                                         ["cases"] = new[]
///                                                         {
///                                                             new Dictionary<string, object?>
///                                                             {
///                                                                 ["condition"] = "$sys.func.RAND() < 0.2",
///                                                                 ["caseContent"] = new[]
///                                                                 {
///                                                                     new Dictionary<string, object?>
///                                                                     {
///                                                                         ["message"] = new Dictionary<string, object?>
///                                                                         {
///                                                                             ["text"] = new Dictionary<string, object?>
///                                                                             {
///                                                                                 ["text"] = new[]
///                                                                                 {
///                                                                                     "Nested case",
///                                                                                 },
///                                                                             },
///                                                                         },
///                                                                     },
///                                                                 },
///                                                             },
///                                                         },
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                         new Dictionary<string, object?>
///                                         {
///                                             ["caseContent"] = new[]
///                                             {
///                                                 new Dictionary<string, object?>
///                                                 {
///                                                     ["message"] = new Dictionary<string, object?>
///                                                     {
///                                                         ["text"] = new Dictionary<string, object?>
///                                                         {
///                                                             ["text"] = new[]
///                                                             {
///                                                                 "Final case",
///                                                             },
///                                                         },
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                     }),
///                                 },
///                             },
///                         },
///                         RepromptEventHandlers = new[]
///                         {
///                             new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerArgs
///                             {
///                                 Event = "sys.no-match-1",
///                                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentArgs
///                                 {
///                                     ReturnPartialResponses = true,
///                                     Webhook = myWebhook.Id,
///                                     Tag = "some-tag",
///                                     Messages = new[]
///                                     {
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs
///                                         {
///                                             Channel = "some-channel",
///                                             Text = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTextArgs
///                                             {
///                                                 Texts = new[]
///                                                 {
///                                                     "Please provide param1",
///                                                 },
///                                             },
///                                         },
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs
///                                         {
///                                             Payload = @"                {\""some-key\"": \""some-value\"", \""other-key\"": [\""other-value\""]}
/// ",
///                                         },
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs
///                                         {
///                                             ConversationSuccess = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageConversationSuccessArgs
///                                             {
///                                                 Metadata = @"                  {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                                             },
///                                         },
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs
///                                         {
///                                             OutputAudioText = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs
///                                             {
///                                                 Text = "some output text",
///                                             },
///                                         },
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs
///                                         {
///                                             OutputAudioText = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs
///                                             {
///                                                 Ssml = @"                  <speak>Some example <say-as interpret-as=\""characters\"">SSML XML</say-as></speak>
/// ",
///                                             },
///                                         },
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs
///                                         {
///                                             LiveAgentHandoff = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageLiveAgentHandoffArgs
///                                             {
///                                                 Metadata = @"                  {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                                             },
///                                         },
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs
///                                         {
///                                             PlayAudio = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessagePlayAudioArgs
///                                             {
///                                                 AudioUri = "http://example.com/some-audio-file.mp3",
///                                             },
///                                         },
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs
///                                         {
///                                             TelephonyTransferCall = new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTelephonyTransferCallArgs
///                                             {
///                                                 PhoneNumber = "1-234-567-8901",
///                                             },
///                                         },
///                                     },
///                                     SetParameterActions = new[]
///                                     {
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterActionArgs
///                                         {
///                                             Parameter = "some-param",
///                                             Value = "123.45",
///                                         },
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterActionArgs
///                                         {
///                                             Parameter = "another-param",
///                                             Value = JsonSerializer.Serialize("abc"),
///                                         },
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterActionArgs
///                                         {
///                                             Parameter = "other-param",
///                                             Value = JsonSerializer.Serialize(new[]
///                                             {
///                                                 "foo",
///                                             }),
///                                         },
///                                     },
///                                     ConditionalCases = new[]
///                                     {
///                                         new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentConditionalCaseArgs
///                                         {
///                                             Cases = JsonSerializer.Serialize(new[]
///                                             {
///                                                 new Dictionary<string, object?>
///                                                 {
///                                                     ["condition"] = "$sys.func.RAND() < 0.5",
///                                                     ["caseContent"] = new[]
///                                                     {
///                                                         new Dictionary<string, object?>
///                                                         {
///                                                             ["message"] = new Dictionary<string, object?>
///                                                             {
///                                                                 ["text"] = new Dictionary<string, object?>
///                                                                 {
///                                                                     ["text"] = new[]
///                                                                     {
///                                                                         "First case",
///                                                                     },
///                                                                 },
///                                                             },
///                                                         },
///                                                         new Dictionary<string, object?>
///                                                         {
///                                                             ["additionalCases"] = new Dictionary<string, object?>
///                                                             {
///                                                                 ["cases"] = new[]
///                                                                 {
///                                                                     new Dictionary<string, object?>
///                                                                     {
///                                                                         ["condition"] = "$sys.func.RAND() < 0.2",
///                                                                         ["caseContent"] = new[]
///                                                                         {
///                                                                             new Dictionary<string, object?>
///                                                                             {
///                                                                                 ["message"] = new Dictionary<string, object?>
///                                                                                 {
///                                                                                     ["text"] = new Dictionary<string, object?>
///                                                                                     {
///                                                                                         ["text"] = new[]
///                                                                                         {
///                                                                                             "Nested case",
///                                                                                         },
///                                                                                     },
///                                                                                 },
///                                                                             },
///                                                                         },
///                                                                     },
///                                                                 },
///                                                             },
///                                                         },
///                                                     },
///                                                 },
///                                                 new Dictionary<string, object?>
///                                                 {
///                                                     ["caseContent"] = new[]
///                                                     {
///                                                         new Dictionary<string, object?>
///                                                         {
///                                                             ["message"] = new Dictionary<string, object?>
///                                                             {
///                                                                 ["text"] = new Dictionary<string, object?>
///                                                                 {
///                                                                     ["text"] = new[]
///                                                                     {
///                                                                         "Final case",
///                                                                     },
///                                                                 },
///                                                             },
///                                                         },
///                                                     },
///                                                 },
///                                             }),
///                                         },
///                                     },
///                                 },
///                             },
///                             new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerArgs
///                             {
///                                 Event = "sys.no-match-2",
///                                 TargetFlow = agent.StartFlow,
///                             },
///                             new Gcp.Diagflow.Inputs.CxPageFormParameterFillBehaviorRepromptEventHandlerArgs
///                             {
///                                 Event = "sys.no-match-3",
///                                 TargetPage = myPage2.Id,
///                             },
///                         },
///                     },
///                     Required = true,
///                     Redact = true,
///                     AdvancedSettings = new Gcp.Diagflow.Inputs.CxPageFormParameterAdvancedSettingsArgs
///                     {
///                         DtmfSettings = new Gcp.Diagflow.Inputs.CxPageFormParameterAdvancedSettingsDtmfSettingsArgs
///                         {
///                             Enabled = true,
///                             MaxDigits = 1,
///                             FinishDigit = "#",
///                         },
///                     },
///                 },
///             },
///         },
///         TransitionRoutes = new[]
///         {
///             new Gcp.Diagflow.Inputs.CxPageTransitionRouteArgs
///             {
///                 Condition = "$page.params.status = 'FINAL'",
///                 TriggerFulfillment = new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentArgs
///                 {
///                     Messages = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             Channel = "some-channel",
///                             Text = new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageTextArgs
///                             {
///                                 Texts = new[]
///                                 {
///                                     "information completed, navigating to page 2",
///                                 },
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             Payload = @"          {\""some-key\"": \""some-value\"", \""other-key\"": [\""other-value\""]}
/// ",
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             ConversationSuccess = new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccessArgs
///                             {
///                                 Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             OutputAudioText = new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs
///                             {
///                                 Text = "some output text",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             OutputAudioText = new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs
///                             {
///                                 Ssml = @"            <speak>Some example <say-as interpret-as=\""characters\"">SSML XML</say-as></speak>
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             LiveAgentHandoff = new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageLiveAgentHandoffArgs
///                             {
///                                 Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             PlayAudio = new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessagePlayAudioArgs
///                             {
///                                 AudioUri = "http://example.com/some-audio-file.mp3",
///                             },
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageArgs
///                         {
///                             TelephonyTransferCall = new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCallArgs
///                             {
///                                 PhoneNumber = "1-234-567-8901",
///                             },
///                         },
///                     },
///                     SetParameterActions = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentSetParameterActionArgs
///                         {
///                             Parameter = "some-param",
///                             Value = "123.45",
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentSetParameterActionArgs
///                         {
///                             Parameter = "another-param",
///                             Value = JsonSerializer.Serialize("abc"),
///                         },
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentSetParameterActionArgs
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
///                         new Gcp.Diagflow.Inputs.CxPageTransitionRouteTriggerFulfillmentConditionalCaseArgs
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
///                 TargetPage = myPage2.Id,
///             },
///         },
///         AdvancedSettings = new Gcp.Diagflow.Inputs.CxPageAdvancedSettingsArgs
///         {
///             DtmfSettings = new Gcp.Diagflow.Inputs.CxPageAdvancedSettingsDtmfSettingsArgs
///             {
///                 Enabled = true,
///                 MaxDigits = 1,
///                 FinishDigit = "#",
///             },
///         },
///         KnowledgeConnectorSettings = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsArgs
///         {
///             Enabled = true,
///             TriggerFulfillment = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentArgs
///             {
///                 Messages = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         Channel = "some-channel",
///                         KnowledgeInfoCard = null,
///                     },
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         Channel = "some-channel",
///                         Text = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTextArgs
///                         {
///                             Texts = new[]
///                             {
///                                 "information completed, navigating to page 2",
///                             },
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         Payload = @"          {\""some-key\"": \""some-value\"", \""other-key\"": [\""other-value\""]}
/// ",
///                     },
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         ConversationSuccess = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccessArgs
///                         {
///                             Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         OutputAudioText = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs
///                         {
///                             Text = "some output text",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         OutputAudioText = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs
///                         {
///                             Ssml = @"            <speak>Some example <say-as interpret-as=\""characters\"">SSML XML</say-as></speak>
/// ",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         LiveAgentHandoff = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoffArgs
///                         {
///                             Metadata = @"            {\""some-metadata-key\"": \""some-value\"", \""other-metadata-key\"": 1234}
/// ",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         PlayAudio = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagePlayAudioArgs
///                         {
///                             AudioUri = "http://example.com/some-audio-file.mp3",
///                         },
///                     },
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs
///                     {
///                         TelephonyTransferCall = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCallArgs
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
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActionArgs
///                     {
///                         Parameter = "some-param",
///                         Value = "123.45",
///                     },
///                 },
///                 ConditionalCases = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCaseArgs
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
///                 AdvancedSettings = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsArgs
///                 {
///                     SpeechSettings = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettingsArgs
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
///                     DtmfSettings = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettingsArgs
///                     {
///                         Enabled = true,
///                         MaxDigits = 1,
///                         FinishDigit = "#",
///                         InterdigitTimeoutDuration = "3.500s",
///                         EndpointingTimeoutDuration = "3.500s",
///                     },
///                     LoggingSettings = new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettingsArgs
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
///                 new Gcp.Diagflow.Inputs.CxPageKnowledgeConnectorSettingsDataStoreConnectionArgs
///                 {
///                     DataStoreType = "PUBLIC_WEB",
///                     DataStore = Output.Tuple(project, agent.Location).Apply(values =>
///                     {
///                         var project = values.Item1;
///                         var location = values.Item2;
///                         return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/{location}/collections/default_collection/dataStores/datastore-page-full";
///                     }),
///                     DocumentProcessingMode = "CHUNKS",
///                 },
///             },
///             TargetPage = myPage2.Id,
///         },
///     });
///
///     var myDatastore = new Gcp.DiscoveryEngine.DataStore("my_datastore", new()
///     {
///         Location = "global",
///         DataStoreId = "datastore-page-full",
///         DisplayName = "datastore-page-full",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
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
/// 		myPage2, err := diagflow.NewCxPage(ctx, "my_page2", &diagflow.CxPageArgs{
/// 			Parent:      agent.StartFlow,
/// 			DisplayName: pulumi.String("MyPage2"),
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
/// 		tmpJSON6, err := json.Marshal("2000-01-01")
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json6 := string(tmpJSON6)
/// 		tmpJSON7, err := json.Marshal("abc")
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json7 := string(tmpJSON7)
/// 		tmpJSON8, err := json.Marshal([]string{
/// 			"foo",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json8 := string(tmpJSON8)
/// 		tmpJSON9, err := json.Marshal([]interface{}{
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
/// 		json9 := string(tmpJSON9)
/// 		tmpJSON10, err := json.Marshal("abc")
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json10 := string(tmpJSON10)
/// 		tmpJSON11, err := json.Marshal([]string{
/// 			"foo",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json11 := string(tmpJSON11)
/// 		tmpJSON12, err := json.Marshal([]interface{}{
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
/// 		json12 := string(tmpJSON12)
/// 		tmpJSON13, err := json.Marshal("abc")
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json13 := string(tmpJSON13)
/// 		tmpJSON14, err := json.Marshal([]string{
/// 			"foo",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json14 := string(tmpJSON14)
/// 		tmpJSON15, err := json.Marshal([]interface{}{
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
/// 		json15 := string(tmpJSON15)
/// 		tmpJSON16, err := json.Marshal([]interface{}{
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
/// 		json16 := string(tmpJSON16)
/// 		_, err = diagflow.NewCxPage(ctx, "basic_page", &diagflow.CxPageArgs{
/// 			Parent:      agent.StartFlow,
/// 			DisplayName: pulumi.String("MyPage"),
/// 			EntryFulfillment: &diagflow.CxPageEntryFulfillmentArgs{
/// 				Messages: diagflow.CxPageEntryFulfillmentMessageArray{
/// 					&diagflow.CxPageEntryFulfillmentMessageArgs{
/// 						Channel: pulumi.String("some-channel"),
/// 						Text: &diagflow.CxPageEntryFulfillmentMessageTextArgs{
/// 							Texts: pulumi.StringArray{
/// 								pulumi.String("Welcome to page"),
/// 							},
/// 						},
/// 					},
/// 					&diagflow.CxPageEntryFulfillmentMessageArgs{
/// 						Payload: pulumi.String("        {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n"),
/// 					},
/// 					&diagflow.CxPageEntryFulfillmentMessageArgs{
/// 						ConversationSuccess: &diagflow.CxPageEntryFulfillmentMessageConversationSuccessArgs{
/// 							Metadata: pulumi.String("          {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 						},
/// 					},
/// 					&diagflow.CxPageEntryFulfillmentMessageArgs{
/// 						OutputAudioText: &diagflow.CxPageEntryFulfillmentMessageOutputAudioTextArgs{
/// 							Text: pulumi.String("some output text"),
/// 						},
/// 					},
/// 					&diagflow.CxPageEntryFulfillmentMessageArgs{
/// 						OutputAudioText: &diagflow.CxPageEntryFulfillmentMessageOutputAudioTextArgs{
/// 							Ssml: pulumi.String("          <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n"),
/// 						},
/// 					},
/// 					&diagflow.CxPageEntryFulfillmentMessageArgs{
/// 						LiveAgentHandoff: &diagflow.CxPageEntryFulfillmentMessageLiveAgentHandoffArgs{
/// 							Metadata: pulumi.String("          {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 						},
/// 					},
/// 					&diagflow.CxPageEntryFulfillmentMessageArgs{
/// 						PlayAudio: &diagflow.CxPageEntryFulfillmentMessagePlayAudioArgs{
/// 							AudioUri: pulumi.String("http://example.com/some-audio-file.mp3"),
/// 						},
/// 					},
/// 					&diagflow.CxPageEntryFulfillmentMessageArgs{
/// 						TelephonyTransferCall: &diagflow.CxPageEntryFulfillmentMessageTelephonyTransferCallArgs{
/// 							PhoneNumber: pulumi.String("1-234-567-8901"),
/// 						},
/// 					},
/// 				},
/// 				SetParameterActions: diagflow.CxPageEntryFulfillmentSetParameterActionArray{
/// 					&diagflow.CxPageEntryFulfillmentSetParameterActionArgs{
/// 						Parameter: pulumi.String("some-param"),
/// 						Value:     pulumi.String("123.45"),
/// 					},
/// 					&diagflow.CxPageEntryFulfillmentSetParameterActionArgs{
/// 						Parameter: pulumi.String("another-param"),
/// 						Value:     pulumi.String(json0),
/// 					},
/// 					&diagflow.CxPageEntryFulfillmentSetParameterActionArgs{
/// 						Parameter: pulumi.String("other-param"),
/// 						Value:     pulumi.String(json1),
/// 					},
/// 				},
/// 				ConditionalCases: diagflow.CxPageEntryFulfillmentConditionalCaseArray{
/// 					&diagflow.CxPageEntryFulfillmentConditionalCaseArgs{
/// 						Cases: pulumi.String(json2),
/// 					},
/// 				},
/// 			},
/// 			EventHandlers: diagflow.CxPageEventHandlerArray{
/// 				&diagflow.CxPageEventHandlerArgs{
/// 					Event: pulumi.String("some-event"),
/// 					TriggerFulfillment: &diagflow.CxPageEventHandlerTriggerFulfillmentArgs{
/// 						ReturnPartialResponses: pulumi.Bool(true),
/// 						Messages: diagflow.CxPageEventHandlerTriggerFulfillmentMessageArray{
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentMessageArgs{
/// 								Channel: pulumi.String("some-channel"),
/// 								Text: &diagflow.CxPageEventHandlerTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("Some text"),
/// 									},
/// 								},
/// 							},
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentMessageArgs{
/// 								Payload: pulumi.String("          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n"),
/// 							},
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentMessageArgs{
/// 								ConversationSuccess: &diagflow.CxPageEventHandlerTriggerFulfillmentMessageConversationSuccessArgs{
/// 									Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 								},
/// 							},
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentMessageArgs{
/// 								OutputAudioText: &diagflow.CxPageEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs{
/// 									Text: pulumi.String("some output text"),
/// 								},
/// 							},
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentMessageArgs{
/// 								OutputAudioText: &diagflow.CxPageEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs{
/// 									Ssml: pulumi.String("            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n"),
/// 								},
/// 							},
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentMessageArgs{
/// 								LiveAgentHandoff: &diagflow.CxPageEventHandlerTriggerFulfillmentMessageLiveAgentHandoffArgs{
/// 									Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 								},
/// 							},
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentMessageArgs{
/// 								PlayAudio: &diagflow.CxPageEventHandlerTriggerFulfillmentMessagePlayAudioArgs{
/// 									AudioUri: pulumi.String("http://example.com/some-audio-file.mp3"),
/// 								},
/// 							},
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentMessageArgs{
/// 								TelephonyTransferCall: &diagflow.CxPageEventHandlerTriggerFulfillmentMessageTelephonyTransferCallArgs{
/// 									PhoneNumber: pulumi.String("1-234-567-8901"),
/// 								},
/// 							},
/// 						},
/// 						SetParameterActions: diagflow.CxPageEventHandlerTriggerFulfillmentSetParameterActionArray{
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("some-param"),
/// 								Value:     pulumi.String("123.45"),
/// 							},
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("another-param"),
/// 								Value:     pulumi.String(json3),
/// 							},
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("other-param"),
/// 								Value:     pulumi.String(json4),
/// 							},
/// 						},
/// 						ConditionalCases: diagflow.CxPageEventHandlerTriggerFulfillmentConditionalCaseArray{
/// 							&diagflow.CxPageEventHandlerTriggerFulfillmentConditionalCaseArgs{
/// 								Cases: pulumi.String(json5),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Form: &diagflow.CxPageFormArgs{
/// 				Parameters: diagflow.CxPageFormParameterArray{
/// 					&diagflow.CxPageFormParameterArgs{
/// 						DisplayName:  pulumi.String("param1"),
/// 						EntityType:   pulumi.String("projects/-/locations/-/agents/-/entityTypes/sys.date"),
/// 						DefaultValue: pulumi.String(json6),
/// 						FillBehavior: &diagflow.CxPageFormParameterFillBehaviorArgs{
/// 							InitialPromptFulfillment: &diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentArgs{
/// 								Messages: diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArray{
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs{
/// 										Channel: pulumi.String("some-channel"),
/// 										Text: &diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTextArgs{
/// 											Texts: pulumi.StringArray{
/// 												pulumi.String("Please provide param1"),
/// 											},
/// 										},
/// 									},
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs{
/// 										Payload: pulumi.String("              {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n"),
/// 									},
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs{
/// 										ConversationSuccess: &diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageConversationSuccessArgs{
/// 											Metadata: pulumi.String("                {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 										},
/// 									},
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs{
/// 										OutputAudioText: &diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageOutputAudioTextArgs{
/// 											Text: pulumi.String("some output text"),
/// 										},
/// 									},
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs{
/// 										OutputAudioText: &diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageOutputAudioTextArgs{
/// 											Ssml: pulumi.String("                <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n"),
/// 										},
/// 									},
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs{
/// 										LiveAgentHandoff: &diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoffArgs{
/// 											Metadata: pulumi.String("                {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 										},
/// 									},
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs{
/// 										PlayAudio: &diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessagePlayAudioArgs{
/// 											AudioUri: pulumi.String("http://example.com/some-audio-file.mp3"),
/// 										},
/// 									},
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs{
/// 										TelephonyTransferCall: &diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTelephonyTransferCallArgs{
/// 											PhoneNumber: pulumi.String("1-234-567-8901"),
/// 										},
/// 									},
/// 								},
/// 								SetParameterActions: diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterActionArray{
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterActionArgs{
/// 										Parameter: pulumi.String("some-param"),
/// 										Value:     pulumi.String("123.45"),
/// 									},
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterActionArgs{
/// 										Parameter: pulumi.String("another-param"),
/// 										Value:     pulumi.String(json7),
/// 									},
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterActionArgs{
/// 										Parameter: pulumi.String("other-param"),
/// 										Value:     pulumi.String(json8),
/// 									},
/// 								},
/// 								ConditionalCases: diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCaseArray{
/// 									&diagflow.CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCaseArgs{
/// 										Cases: pulumi.String(json9),
/// 									},
/// 								},
/// 							},
/// 							RepromptEventHandlers: diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerArray{
/// 								&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerArgs{
/// 									Event: pulumi.String("sys.no-match-1"),
/// 									TriggerFulfillment: &diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentArgs{
/// 										ReturnPartialResponses: pulumi.Bool(true),
/// 										Webhook:                myWebhook.ID(),
/// 										Tag:                    pulumi.String("some-tag"),
/// 										Messages: diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArray{
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs{
/// 												Channel: pulumi.String("some-channel"),
/// 												Text: &diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTextArgs{
/// 													Texts: pulumi.StringArray{
/// 														pulumi.String("Please provide param1"),
/// 													},
/// 												},
/// 											},
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs{
/// 												Payload: pulumi.String("                {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n"),
/// 											},
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs{
/// 												ConversationSuccess: &diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageConversationSuccessArgs{
/// 													Metadata: pulumi.String("                  {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 												},
/// 											},
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs{
/// 												OutputAudioText: &diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs{
/// 													Text: pulumi.String("some output text"),
/// 												},
/// 											},
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs{
/// 												OutputAudioText: &diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs{
/// 													Ssml: pulumi.String("                  <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n"),
/// 												},
/// 											},
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs{
/// 												LiveAgentHandoff: &diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageLiveAgentHandoffArgs{
/// 													Metadata: pulumi.String("                  {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 												},
/// 											},
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs{
/// 												PlayAudio: &diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessagePlayAudioArgs{
/// 													AudioUri: pulumi.String("http://example.com/some-audio-file.mp3"),
/// 												},
/// 											},
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs{
/// 												TelephonyTransferCall: &diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTelephonyTransferCallArgs{
/// 													PhoneNumber: pulumi.String("1-234-567-8901"),
/// 												},
/// 											},
/// 										},
/// 										SetParameterActions: diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterActionArray{
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterActionArgs{
/// 												Parameter: pulumi.String("some-param"),
/// 												Value:     pulumi.String("123.45"),
/// 											},
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterActionArgs{
/// 												Parameter: pulumi.String("another-param"),
/// 												Value:     pulumi.String(json10),
/// 											},
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterActionArgs{
/// 												Parameter: pulumi.String("other-param"),
/// 												Value:     pulumi.String(json11),
/// 											},
/// 										},
/// 										ConditionalCases: diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentConditionalCaseArray{
/// 											&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentConditionalCaseArgs{
/// 												Cases: pulumi.String(json12),
/// 											},
/// 										},
/// 									},
/// 								},
/// 								&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerArgs{
/// 									Event:      pulumi.String("sys.no-match-2"),
/// 									TargetFlow: agent.StartFlow,
/// 								},
/// 								&diagflow.CxPageFormParameterFillBehaviorRepromptEventHandlerArgs{
/// 									Event:      pulumi.String("sys.no-match-3"),
/// 									TargetPage: myPage2.ID(),
/// 								},
/// 							},
/// 						},
/// 						Required: pulumi.Bool(true),
/// 						Redact:   pulumi.Bool(true),
/// 						AdvancedSettings: &diagflow.CxPageFormParameterAdvancedSettingsArgs{
/// 							DtmfSettings: &diagflow.CxPageFormParameterAdvancedSettingsDtmfSettingsArgs{
/// 								Enabled:     pulumi.Bool(true),
/// 								MaxDigits:   pulumi.Int(1),
/// 								FinishDigit: pulumi.String("#"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			TransitionRoutes: diagflow.CxPageTransitionRouteArray{
/// 				&diagflow.CxPageTransitionRouteArgs{
/// 					Condition: pulumi.String("$page.params.status = 'FINAL'"),
/// 					TriggerFulfillment: &diagflow.CxPageTransitionRouteTriggerFulfillmentArgs{
/// 						Messages: diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArray{
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArgs{
/// 								Channel: pulumi.String("some-channel"),
/// 								Text: &diagflow.CxPageTransitionRouteTriggerFulfillmentMessageTextArgs{
/// 									Texts: pulumi.StringArray{
/// 										pulumi.String("information completed, navigating to page 2"),
/// 									},
/// 								},
/// 							},
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArgs{
/// 								Payload: pulumi.String("          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n"),
/// 							},
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArgs{
/// 								ConversationSuccess: &diagflow.CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccessArgs{
/// 									Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 								},
/// 							},
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArgs{
/// 								OutputAudioText: &diagflow.CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs{
/// 									Text: pulumi.String("some output text"),
/// 								},
/// 							},
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArgs{
/// 								OutputAudioText: &diagflow.CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs{
/// 									Ssml: pulumi.String("            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n"),
/// 								},
/// 							},
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArgs{
/// 								LiveAgentHandoff: &diagflow.CxPageTransitionRouteTriggerFulfillmentMessageLiveAgentHandoffArgs{
/// 									Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 								},
/// 							},
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArgs{
/// 								PlayAudio: &diagflow.CxPageTransitionRouteTriggerFulfillmentMessagePlayAudioArgs{
/// 									AudioUri: pulumi.String("http://example.com/some-audio-file.mp3"),
/// 								},
/// 							},
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentMessageArgs{
/// 								TelephonyTransferCall: &diagflow.CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCallArgs{
/// 									PhoneNumber: pulumi.String("1-234-567-8901"),
/// 								},
/// 							},
/// 						},
/// 						SetParameterActions: diagflow.CxPageTransitionRouteTriggerFulfillmentSetParameterActionArray{
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("some-param"),
/// 								Value:     pulumi.String("123.45"),
/// 							},
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("another-param"),
/// 								Value:     pulumi.String(json13),
/// 							},
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentSetParameterActionArgs{
/// 								Parameter: pulumi.String("other-param"),
/// 								Value:     pulumi.String(json14),
/// 							},
/// 						},
/// 						ConditionalCases: diagflow.CxPageTransitionRouteTriggerFulfillmentConditionalCaseArray{
/// 							&diagflow.CxPageTransitionRouteTriggerFulfillmentConditionalCaseArgs{
/// 								Cases: pulumi.String(json15),
/// 							},
/// 						},
/// 					},
/// 					TargetPage: myPage2.ID(),
/// 				},
/// 			},
/// 			AdvancedSettings: &diagflow.CxPageAdvancedSettingsArgs{
/// 				DtmfSettings: &diagflow.CxPageAdvancedSettingsDtmfSettingsArgs{
/// 					Enabled:     pulumi.Bool(true),
/// 					MaxDigits:   pulumi.Int(1),
/// 					FinishDigit: pulumi.String("#"),
/// 				},
/// 			},
/// 			KnowledgeConnectorSettings: &diagflow.CxPageKnowledgeConnectorSettingsArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				TriggerFulfillment: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentArgs{
/// 					Messages: diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArray{
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							Channel:           pulumi.String("some-channel"),
/// 							KnowledgeInfoCard: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageKnowledgeInfoCardArgs{},
/// 						},
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							Channel: pulumi.String("some-channel"),
/// 							Text: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTextArgs{
/// 								Texts: pulumi.StringArray{
/// 									pulumi.String("information completed, navigating to page 2"),
/// 								},
/// 							},
/// 						},
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							Payload: pulumi.String("          {\\\"some-key\\\": \\\"some-value\\\", \\\"other-key\\\": [\\\"other-value\\\"]}\n"),
/// 						},
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							ConversationSuccess: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccessArgs{
/// 								Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 							},
/// 						},
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							OutputAudioText: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs{
/// 								Text: pulumi.String("some output text"),
/// 							},
/// 						},
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							OutputAudioText: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs{
/// 								Ssml: pulumi.String("            <speak>Some example <say-as interpret-as=\\\"characters\\\">SSML XML</say-as></speak>\n"),
/// 							},
/// 						},
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							LiveAgentHandoff: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoffArgs{
/// 								Metadata: pulumi.String("            {\\\"some-metadata-key\\\": \\\"some-value\\\", \\\"other-metadata-key\\\": 1234}\n"),
/// 							},
/// 						},
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							PlayAudio: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagePlayAudioArgs{
/// 								AudioUri: pulumi.String("http://example.com/some-audio-file.mp3"),
/// 							},
/// 						},
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs{
/// 							TelephonyTransferCall: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCallArgs{
/// 								PhoneNumber: pulumi.String("1-234-567-8902"),
/// 							},
/// 						},
/// 					},
/// 					Webhook:                myWebhook.ID(),
/// 					ReturnPartialResponses: pulumi.Bool(true),
/// 					Tag:                    pulumi.String("some-tag"),
/// 					SetParameterActions: diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActionArray{
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActionArgs{
/// 							Parameter: pulumi.String("some-param"),
/// 							Value:     pulumi.String("123.45"),
/// 						},
/// 					},
/// 					ConditionalCases: diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCaseArray{
/// 						&diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCaseArgs{
/// 							Cases: pulumi.String(json16),
/// 						},
/// 					},
/// 					AdvancedSettings: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsArgs{
/// 						SpeechSettings: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettingsArgs{
/// 							EndpointerSensitivity:      pulumi.Int(30),
/// 							NoSpeechTimeout:            pulumi.String("3.500s"),
/// 							UseTimeoutBasedEndpointing: pulumi.Bool(true),
/// 							Models: pulumi.StringMap{
/// 								"name":  pulumi.String("wrench"),
/// 								"mass":  pulumi.String("1.3kg"),
/// 								"count": pulumi.String("3"),
/// 							},
/// 						},
/// 						DtmfSettings: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettingsArgs{
/// 							Enabled:                    pulumi.Bool(true),
/// 							MaxDigits:                  pulumi.Int(1),
/// 							FinishDigit:                pulumi.String("#"),
/// 							InterdigitTimeoutDuration:  pulumi.String("3.500s"),
/// 							EndpointingTimeoutDuration: pulumi.String("3.500s"),
/// 						},
/// 						LoggingSettings: &diagflow.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettingsArgs{
/// 							EnableStackdriverLogging:    pulumi.Bool(true),
/// 							EnableInteractionLogging:    pulumi.Bool(true),
/// 							EnableConsentBasedRedaction: pulumi.Bool(true),
/// 						},
/// 					},
/// 					EnableGenerativeFallback: pulumi.Bool(true),
/// 				},
/// 				DataStoreConnections: diagflow.CxPageKnowledgeConnectorSettingsDataStoreConnectionArray{
/// 					&diagflow.CxPageKnowledgeConnectorSettingsDataStoreConnectionArgs{
/// 						DataStoreType: pulumi.String("PUBLIC_WEB"),
/// 						DataStore: agent.Location.ApplyT(func(location string) (string, error) {
/// 							return fmt.Sprintf("projects/%v/locations/%v/collections/default_collection/dataStores/datastore-page-full", project.Number, location), nil
/// 						}).(pulumi.StringOutput),
/// 						DocumentProcessingMode: pulumi.String("CHUNKS"),
/// 					},
/// 				},
/// 				TargetPage: myPage2.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewDataStore(ctx, "my_datastore", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("datastore-page-full"),
/// 			DisplayName:      pulumi.String("datastore-page-full"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
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
/// import com.pulumi.gcp.diagflow.CxPage;
/// import com.pulumi.gcp.diagflow.CxPageArgs;
/// import com.pulumi.gcp.diagflow.CxWebhook;
/// import com.pulumi.gcp.diagflow.CxWebhookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookGenericWebServiceArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageEntryFulfillmentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageEventHandlerArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageEventHandlerTriggerFulfillmentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageFormArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageTransitionRouteArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageTransitionRouteTriggerFulfillmentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageAdvancedSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageAdvancedSettingsDtmfSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageKnowledgeConnectorSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettingsArgs;
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
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
///         var myPage2 = new CxPage("myPage2", CxPageArgs.builder()
///             .parent(agent.startFlow())
///             .displayName("MyPage2")
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
///         var basicPage = new CxPage("basicPage", CxPageArgs.builder()
///             .parent(agent.startFlow())
///             .displayName("MyPage")
///             .entryFulfillment(CxPageEntryFulfillmentArgs.builder()
///                 .messages(
///                     CxPageEntryFulfillmentMessageArgs.builder()
///                         .channel("some-channel")
///                         .text(CxPageEntryFulfillmentMessageTextArgs.builder()
///                             .texts("Welcome to page")
///                             .build())
///                         .build(),
///                     CxPageEntryFulfillmentMessageArgs.builder()
///                         .payload("""
///         {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                         """)
///                         .build(),
///                     CxPageEntryFulfillmentMessageArgs.builder()
///                         .conversationSuccess(CxPageEntryFulfillmentMessageConversationSuccessArgs.builder()
///                             .metadata("""
///           {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                             """)
///                             .build())
///                         .build(),
///                     CxPageEntryFulfillmentMessageArgs.builder()
///                         .outputAudioText(CxPageEntryFulfillmentMessageOutputAudioTextArgs.builder()
///                             .text("some output text")
///                             .build())
///                         .build(),
///                     CxPageEntryFulfillmentMessageArgs.builder()
///                         .outputAudioText(CxPageEntryFulfillmentMessageOutputAudioTextArgs.builder()
///                             .ssml("""
///           <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                             """)
///                             .build())
///                         .build(),
///                     CxPageEntryFulfillmentMessageArgs.builder()
///                         .liveAgentHandoff(CxPageEntryFulfillmentMessageLiveAgentHandoffArgs.builder()
///                             .metadata("""
///           {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                             """)
///                             .build())
///                         .build(),
///                     CxPageEntryFulfillmentMessageArgs.builder()
///                         .playAudio(CxPageEntryFulfillmentMessagePlayAudioArgs.builder()
///                             .audioUri("http://example.com/some-audio-file.mp3")
///                             .build())
///                         .build(),
///                     CxPageEntryFulfillmentMessageArgs.builder()
///                         .telephonyTransferCall(CxPageEntryFulfillmentMessageTelephonyTransferCallArgs.builder()
///                             .phoneNumber("1-234-567-8901")
///                             .build())
///                         .build())
///                 .setParameterActions(
///                     CxPageEntryFulfillmentSetParameterActionArgs.builder()
///                         .parameter("some-param")
///                         .value("123.45")
///                         .build(),
///                     CxPageEntryFulfillmentSetParameterActionArgs.builder()
///                         .parameter("another-param")
///                         .value(serializeJson(
///                             "abc"))
///                         .build(),
///                     CxPageEntryFulfillmentSetParameterActionArgs.builder()
///                         .parameter("other-param")
///                         .value(serializeJson(
///                             jsonArray("foo")))
///                         .build())
///                 .conditionalCases(CxPageEntryFulfillmentConditionalCaseArgs.builder()
///                     .cases(serializeJson(
///                         jsonArray(
///                             jsonObject(
///                                 jsonProperty("condition", "$sys.func.RAND() < 0.5"),
///                                 jsonProperty("caseContent", jsonArray(
///                                     jsonObject(
///                                         jsonProperty("message", jsonObject(
///                                             jsonProperty("text", jsonObject(
///                                                 jsonProperty("text", jsonArray("First case"))
///                                             ))
///                                         ))
///                                     ),
///                                     jsonObject(
///                                         jsonProperty("additionalCases", jsonObject(
///                                             jsonProperty("cases", jsonArray(jsonObject(
///                                                 jsonProperty("condition", "$sys.func.RAND() < 0.2"),
///                                                 jsonProperty("caseContent", jsonArray(jsonObject(
///                                                     jsonProperty("message", jsonObject(
///                                                         jsonProperty("text", jsonObject(
///                                                             jsonProperty("text", jsonArray("Nested case"))
///                                                         ))
///                                                     ))
///                                                 )))
///                                             )))
///                                         ))
///                                     )
///                                 ))
///                             ),
///                             jsonObject(
///                                 jsonProperty("caseContent", jsonArray(jsonObject(
///                                     jsonProperty("message", jsonObject(
///                                         jsonProperty("text", jsonObject(
///                                             jsonProperty("text", jsonArray("Final case"))
///                                         ))
///                                     ))
///                                 )))
///                             )
///                         )))
///                     .build())
///                 .build())
///             .eventHandlers(CxPageEventHandlerArgs.builder()
///                 .event("some-event")
///                 .triggerFulfillment(CxPageEventHandlerTriggerFulfillmentArgs.builder()
///                     .returnPartialResponses(true)
///                     .messages(
///                         CxPageEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .channel("some-channel")
///                             .text(CxPageEventHandlerTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("Some text")
///                                 .build())
///                             .build(),
///                         CxPageEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .payload("""
///           {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                             """)
///                             .build(),
///                         CxPageEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .conversationSuccess(CxPageEventHandlerTriggerFulfillmentMessageConversationSuccessArgs.builder()
///                                 .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                 """)
///                                 .build())
///                             .build(),
///                         CxPageEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .outputAudioText(CxPageEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                 .text("some output text")
///                                 .build())
///                             .build(),
///                         CxPageEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .outputAudioText(CxPageEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                 .ssml("""
///             <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                                 """)
///                                 .build())
///                             .build(),
///                         CxPageEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .liveAgentHandoff(CxPageEventHandlerTriggerFulfillmentMessageLiveAgentHandoffArgs.builder()
///                                 .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                 """)
///                                 .build())
///                             .build(),
///                         CxPageEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .playAudio(CxPageEventHandlerTriggerFulfillmentMessagePlayAudioArgs.builder()
///                                 .audioUri("http://example.com/some-audio-file.mp3")
///                                 .build())
///                             .build(),
///                         CxPageEventHandlerTriggerFulfillmentMessageArgs.builder()
///                             .telephonyTransferCall(CxPageEventHandlerTriggerFulfillmentMessageTelephonyTransferCallArgs.builder()
///                                 .phoneNumber("1-234-567-8901")
///                                 .build())
///                             .build())
///                     .setParameterActions(
///                         CxPageEventHandlerTriggerFulfillmentSetParameterActionArgs.builder()
///                             .parameter("some-param")
///                             .value("123.45")
///                             .build(),
///                         CxPageEventHandlerTriggerFulfillmentSetParameterActionArgs.builder()
///                             .parameter("another-param")
///                             .value(serializeJson(
///                                 "abc"))
///                             .build(),
///                         CxPageEventHandlerTriggerFulfillmentSetParameterActionArgs.builder()
///                             .parameter("other-param")
///                             .value(serializeJson(
///                                 jsonArray("foo")))
///                             .build())
///                     .conditionalCases(CxPageEventHandlerTriggerFulfillmentConditionalCaseArgs.builder()
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
///                 .build())
///             .form(CxPageFormArgs.builder()
///                 .parameters(CxPageFormParameterArgs.builder()
///                     .displayName("param1")
///                     .entityType("projects/-/locations/-/agents/-/entityTypes/sys.date")
///                     .defaultValue(serializeJson(
///                         "2000-01-01"))
///                     .fillBehavior(CxPageFormParameterFillBehaviorArgs.builder()
///                         .initialPromptFulfillment(CxPageFormParameterFillBehaviorInitialPromptFulfillmentArgs.builder()
///                             .messages(
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs.builder()
///                                     .channel("some-channel")
///                                     .text(CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTextArgs.builder()
///                                         .texts("Please provide param1")
///                                         .build())
///                                     .build(),
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs.builder()
///                                     .payload("""
///               {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                                     """)
///                                     .build(),
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs.builder()
///                                     .conversationSuccess(CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageConversationSuccessArgs.builder()
///                                         .metadata("""
///                 {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                         """)
///                                         .build())
///                                     .build(),
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs.builder()
///                                     .outputAudioText(CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageOutputAudioTextArgs.builder()
///                                         .text("some output text")
///                                         .build())
///                                     .build(),
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs.builder()
///                                     .outputAudioText(CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageOutputAudioTextArgs.builder()
///                                         .ssml("""
///                 <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                                         """)
///                                         .build())
///                                     .build(),
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs.builder()
///                                     .liveAgentHandoff(CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoffArgs.builder()
///                                         .metadata("""
///                 {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                         """)
///                                         .build())
///                                     .build(),
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs.builder()
///                                     .playAudio(CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessagePlayAudioArgs.builder()
///                                         .audioUri("http://example.com/some-audio-file.mp3")
///                                         .build())
///                                     .build(),
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageArgs.builder()
///                                     .telephonyTransferCall(CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTelephonyTransferCallArgs.builder()
///                                         .phoneNumber("1-234-567-8901")
///                                         .build())
///                                     .build())
///                             .setParameterActions(
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterActionArgs.builder()
///                                     .parameter("some-param")
///                                     .value("123.45")
///                                     .build(),
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterActionArgs.builder()
///                                     .parameter("another-param")
///                                     .value(serializeJson(
///                                         "abc"))
///                                     .build(),
///                                 CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterActionArgs.builder()
///                                     .parameter("other-param")
///                                     .value(serializeJson(
///                                         jsonArray("foo")))
///                                     .build())
///                             .conditionalCases(CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCaseArgs.builder()
///                                 .cases(serializeJson(
///                                     jsonArray(
///                                         jsonObject(
///                                             jsonProperty("condition", "$sys.func.RAND() < 0.5"),
///                                             jsonProperty("caseContent", jsonArray(
///                                                 jsonObject(
///                                                     jsonProperty("message", jsonObject(
///                                                         jsonProperty("text", jsonObject(
///                                                             jsonProperty("text", jsonArray("First case"))
///                                                         ))
///                                                     ))
///                                                 ),
///                                                 jsonObject(
///                                                     jsonProperty("additionalCases", jsonObject(
///                                                         jsonProperty("cases", jsonArray(jsonObject(
///                                                             jsonProperty("condition", "$sys.func.RAND() < 0.2"),
///                                                             jsonProperty("caseContent", jsonArray(jsonObject(
///                                                                 jsonProperty("message", jsonObject(
///                                                                     jsonProperty("text", jsonObject(
///                                                                         jsonProperty("text", jsonArray("Nested case"))
///                                                                     ))
///                                                                 ))
///                                                             )))
///                                                         )))
///                                                     ))
///                                                 )
///                                             ))
///                                         ),
///                                         jsonObject(
///                                             jsonProperty("caseContent", jsonArray(jsonObject(
///                                                 jsonProperty("message", jsonObject(
///                                                     jsonProperty("text", jsonObject(
///                                                         jsonProperty("text", jsonArray("Final case"))
///                                                     ))
///                                                 ))
///                                             )))
///                                         )
///                                     )))
///                                 .build())
///                             .build())
///                         .repromptEventHandlers(
///                             CxPageFormParameterFillBehaviorRepromptEventHandlerArgs.builder()
///                                 .event("sys.no-match-1")
///                                 .triggerFulfillment(CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentArgs.builder()
///                                     .returnPartialResponses(true)
///                                     .webhook(myWebhook.id())
///                                     .tag("some-tag")
///                                     .messages(
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                             .channel("some-channel")
///                                             .text(CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTextArgs.builder()
///                                                 .texts("Please provide param1")
///                                                 .build())
///                                             .build(),
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                             .payload("""
///                 {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                                             """)
///                                             .build(),
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                             .conversationSuccess(CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageConversationSuccessArgs.builder()
///                                                 .metadata("""
///                   {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                                 """)
///                                                 .build())
///                                             .build(),
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                             .outputAudioText(CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                                 .text("some output text")
///                                                 .build())
///                                             .build(),
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                             .outputAudioText(CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                                 .ssml("""
///                   <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                                                 """)
///                                                 .build())
///                                             .build(),
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                             .liveAgentHandoff(CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageLiveAgentHandoffArgs.builder()
///                                                 .metadata("""
///                   {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                                 """)
///                                                 .build())
///                                             .build(),
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                             .playAudio(CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessagePlayAudioArgs.builder()
///                                                 .audioUri("http://example.com/some-audio-file.mp3")
///                                                 .build())
///                                             .build(),
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageArgs.builder()
///                                             .telephonyTransferCall(CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTelephonyTransferCallArgs.builder()
///                                                 .phoneNumber("1-234-567-8901")
///                                                 .build())
///                                             .build())
///                                     .setParameterActions(
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterActionArgs.builder()
///                                             .parameter("some-param")
///                                             .value("123.45")
///                                             .build(),
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterActionArgs.builder()
///                                             .parameter("another-param")
///                                             .value(serializeJson(
///                                                 "abc"))
///                                             .build(),
///                                         CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterActionArgs.builder()
///                                             .parameter("other-param")
///                                             .value(serializeJson(
///                                                 jsonArray("foo")))
///                                             .build())
///                                     .conditionalCases(CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentConditionalCaseArgs.builder()
///                                         .cases(serializeJson(
///                                             jsonArray(
///                                                 jsonObject(
///                                                     jsonProperty("condition", "$sys.func.RAND() < 0.5"),
///                                                     jsonProperty("caseContent", jsonArray(
///                                                         jsonObject(
///                                                             jsonProperty("message", jsonObject(
///                                                                 jsonProperty("text", jsonObject(
///                                                                     jsonProperty("text", jsonArray("First case"))
///                                                                 ))
///                                                             ))
///                                                         ),
///                                                         jsonObject(
///                                                             jsonProperty("additionalCases", jsonObject(
///                                                                 jsonProperty("cases", jsonArray(jsonObject(
///                                                                     jsonProperty("condition", "$sys.func.RAND() < 0.2"),
///                                                                     jsonProperty("caseContent", jsonArray(jsonObject(
///                                                                         jsonProperty("message", jsonObject(
///                                                                             jsonProperty("text", jsonObject(
///                                                                                 jsonProperty("text", jsonArray("Nested case"))
///                                                                             ))
///                                                                         ))
///                                                                     )))
///                                                                 )))
///                                                             ))
///                                                         )
///                                                     ))
///                                                 ),
///                                                 jsonObject(
///                                                     jsonProperty("caseContent", jsonArray(jsonObject(
///                                                         jsonProperty("message", jsonObject(
///                                                             jsonProperty("text", jsonObject(
///                                                                 jsonProperty("text", jsonArray("Final case"))
///                                                             ))
///                                                         ))
///                                                     )))
///                                                 )
///                                             )))
///                                         .build())
///                                     .build())
///                                 .build(),
///                             CxPageFormParameterFillBehaviorRepromptEventHandlerArgs.builder()
///                                 .event("sys.no-match-2")
///                                 .targetFlow(agent.startFlow())
///                                 .build(),
///                             CxPageFormParameterFillBehaviorRepromptEventHandlerArgs.builder()
///                                 .event("sys.no-match-3")
///                                 .targetPage(myPage2.id())
///                                 .build())
///                         .build())
///                     .required(true)
///                     .redact(true)
///                     .advancedSettings(CxPageFormParameterAdvancedSettingsArgs.builder()
///                         .dtmfSettings(CxPageFormParameterAdvancedSettingsDtmfSettingsArgs.builder()
///                             .enabled(true)
///                             .maxDigits(1)
///                             .finishDigit("#")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .transitionRoutes(CxPageTransitionRouteArgs.builder()
///                 .condition("$page.params.status = 'FINAL'")
///                 .triggerFulfillment(CxPageTransitionRouteTriggerFulfillmentArgs.builder()
///                     .messages(
///                         CxPageTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .channel("some-channel")
///                             .text(CxPageTransitionRouteTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("information completed, navigating to page 2")
///                                 .build())
///                             .build(),
///                         CxPageTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .payload("""
///           {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                             """)
///                             .build(),
///                         CxPageTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .conversationSuccess(CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccessArgs.builder()
///                                 .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                 """)
///                                 .build())
///                             .build(),
///                         CxPageTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .outputAudioText(CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                 .text("some output text")
///                                 .build())
///                             .build(),
///                         CxPageTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .outputAudioText(CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                 .ssml("""
///             <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                                 """)
///                                 .build())
///                             .build(),
///                         CxPageTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .liveAgentHandoff(CxPageTransitionRouteTriggerFulfillmentMessageLiveAgentHandoffArgs.builder()
///                                 .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                 """)
///                                 .build())
///                             .build(),
///                         CxPageTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .playAudio(CxPageTransitionRouteTriggerFulfillmentMessagePlayAudioArgs.builder()
///                                 .audioUri("http://example.com/some-audio-file.mp3")
///                                 .build())
///                             .build(),
///                         CxPageTransitionRouteTriggerFulfillmentMessageArgs.builder()
///                             .telephonyTransferCall(CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCallArgs.builder()
///                                 .phoneNumber("1-234-567-8901")
///                                 .build())
///                             .build())
///                     .setParameterActions(
///                         CxPageTransitionRouteTriggerFulfillmentSetParameterActionArgs.builder()
///                             .parameter("some-param")
///                             .value("123.45")
///                             .build(),
///                         CxPageTransitionRouteTriggerFulfillmentSetParameterActionArgs.builder()
///                             .parameter("another-param")
///                             .value(serializeJson(
///                                 "abc"))
///                             .build(),
///                         CxPageTransitionRouteTriggerFulfillmentSetParameterActionArgs.builder()
///                             .parameter("other-param")
///                             .value(serializeJson(
///                                 jsonArray("foo")))
///                             .build())
///                     .conditionalCases(CxPageTransitionRouteTriggerFulfillmentConditionalCaseArgs.builder()
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
///                 .targetPage(myPage2.id())
///                 .build())
///             .advancedSettings(CxPageAdvancedSettingsArgs.builder()
///                 .dtmfSettings(CxPageAdvancedSettingsDtmfSettingsArgs.builder()
///                     .enabled(true)
///                     .maxDigits(1)
///                     .finishDigit("#")
///                     .build())
///                 .build())
///             .knowledgeConnectorSettings(CxPageKnowledgeConnectorSettingsArgs.builder()
///                 .enabled(true)
///                 .triggerFulfillment(CxPageKnowledgeConnectorSettingsTriggerFulfillmentArgs.builder()
///                     .messages(
///                         CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .channel("some-channel")
///                             .knowledgeInfoCard(CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageKnowledgeInfoCardArgs.builder()
///                                 .build())
///                             .build(),
///                         CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .channel("some-channel")
///                             .text(CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTextArgs.builder()
///                                 .texts("information completed, navigating to page 2")
///                                 .build())
///                             .build(),
///                         CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .payload("""
///           {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                             """)
///                             .build(),
///                         CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .conversationSuccess(CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccessArgs.builder()
///                                 .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                 """)
///                                 .build())
///                             .build(),
///                         CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .outputAudioText(CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                 .text("some output text")
///                                 .build())
///                             .build(),
///                         CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .outputAudioText(CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageOutputAudioTextArgs.builder()
///                                 .ssml("""
///             <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                                 """)
///                                 .build())
///                             .build(),
///                         CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .liveAgentHandoff(CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoffArgs.builder()
///                                 .metadata("""
///             {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                                 """)
///                                 .build())
///                             .build(),
///                         CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .playAudio(CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagePlayAudioArgs.builder()
///                                 .audioUri("http://example.com/some-audio-file.mp3")
///                                 .build())
///                             .build(),
///                         CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageArgs.builder()
///                             .telephonyTransferCall(CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCallArgs.builder()
///                                 .phoneNumber("1-234-567-8902")
///                                 .build())
///                             .build())
///                     .webhook(myWebhook.id())
///                     .returnPartialResponses(true)
///                     .tag("some-tag")
///                     .setParameterActions(CxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActionArgs.builder()
///                         .parameter("some-param")
///                         .value("123.45")
///                         .build())
///                     .conditionalCases(CxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCaseArgs.builder()
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
///                     .advancedSettings(CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsArgs.builder()
///                         .speechSettings(CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettingsArgs.builder()
///                             .endpointerSensitivity(30)
///                             .noSpeechTimeout("3.500s")
///                             .useTimeoutBasedEndpointing(true)
///                             .models(Map.ofEntries(
///                                 Map.entry("name", "wrench"),
///                                 Map.entry("mass", "1.3kg"),
///                                 Map.entry("count", "3")
///                             ))
///                             .build())
///                         .dtmfSettings(CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettingsArgs.builder()
///                             .enabled(true)
///                             .maxDigits(1)
///                             .finishDigit("#")
///                             .interdigitTimeoutDuration("3.500s")
///                             .endpointingTimeoutDuration("3.500s")
///                             .build())
///                         .loggingSettings(CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettingsArgs.builder()
///                             .enableStackdriverLogging(true)
///                             .enableInteractionLogging(true)
///                             .enableConsentBasedRedaction(true)
///                             .build())
///                         .build())
///                     .enableGenerativeFallback(true)
///                     .build())
///                 .dataStoreConnections(CxPageKnowledgeConnectorSettingsDataStoreConnectionArgs.builder()
///                     .dataStoreType("PUBLIC_WEB")
///                     .dataStore(agent.location().applyValue(_location -> String.format("projects/%s/locations/%s/collections/default_collection/dataStores/datastore-page-full", project.number(),_location)))
///                     .documentProcessingMode("CHUNKS")
///                     .build())
///                 .targetPage(myPage2.id())
///                 .build())
///             .build());
///
///         var myDatastore = new DataStore("myDatastore", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("datastore-page-full")
///             .displayName("datastore-page-full")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
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
///   basicPage:
///     type: gcp:diagflow:CxPage
///     name: basic_page
///     properties:
///       parent: ${agent.startFlow}
///       displayName: MyPage
///       entryFulfillment:
///         messages:
///           - channel: some-channel
///             text:
///               texts:
///                 - Welcome to page
///           - payload: |2
///                       {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///           - conversationSuccess:
///               metadata: |2
///                           {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///           - outputAudioText:
///               text: some output text
///           - outputAudioText:
///               ssml: |2
///                           <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///           - liveAgentHandoff:
///               metadata: |2
///                           {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///           - playAudio:
///               audioUri: http://example.com/some-audio-file.mp3
///           - telephonyTransferCall:
///               phoneNumber: 1-234-567-8901
///         setParameterActions:
///           - parameter: some-param
///             value: '123.45'
///           - parameter: another-param
///             value:
///               fn::toJSON: abc
///           - parameter: other-param
///             value:
///               fn::toJSON:
///                 - foo
///         conditionalCases:
///           - cases:
///               fn::toJSON:
///                 - condition: $sys.func.RAND() < 0.5
///                   caseContent:
///                     - message:
///                         text:
///                           text:
///                             - First case
///                     - additionalCases:
///                         cases:
///                           - condition: $sys.func.RAND() < 0.2
///                             caseContent:
///                               - message:
///                                   text:
///                                     text:
///                                       - Nested case
///                 - caseContent:
///                     - message:
///                         text:
///                           text:
///                             - Final case
///       eventHandlers:
///         - event: some-event
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
///       form:
///         parameters:
///           - displayName: param1
///             entityType: projects/-/locations/-/agents/-/entityTypes/sys.date
///             defaultValue:
///               fn::toJSON: 2000-01-01
///             fillBehavior:
///               initialPromptFulfillment:
///                 messages:
///                   - channel: some-channel
///                     text:
///                       texts:
///                         - Please provide param1
///                   - payload: |2
///                                     {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                   - conversationSuccess:
///                       metadata: |2
///                                         {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                   - outputAudioText:
///                       text: some output text
///                   - outputAudioText:
///                       ssml: |2
///                                         <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                   - liveAgentHandoff:
///                       metadata: |2
///                                         {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                   - playAudio:
///                       audioUri: http://example.com/some-audio-file.mp3
///                   - telephonyTransferCall:
///                       phoneNumber: 1-234-567-8901
///                 setParameterActions:
///                   - parameter: some-param
///                     value: '123.45'
///                   - parameter: another-param
///                     value:
///                       fn::toJSON: abc
///                   - parameter: other-param
///                     value:
///                       fn::toJSON:
///                         - foo
///                 conditionalCases:
///                   - cases:
///                       fn::toJSON:
///                         - condition: $sys.func.RAND() < 0.5
///                           caseContent:
///                             - message:
///                                 text:
///                                   text:
///                                     - First case
///                             - additionalCases:
///                                 cases:
///                                   - condition: $sys.func.RAND() < 0.2
///                                     caseContent:
///                                       - message:
///                                           text:
///                                             text:
///                                               - Nested case
///                         - caseContent:
///                             - message:
///                                 text:
///                                   text:
///                                     - Final case
///               repromptEventHandlers:
///                 - event: sys.no-match-1
///                   triggerFulfillment:
///                     returnPartialResponses: true
///                     webhook: ${myWebhook.id}
///                     tag: some-tag
///                     messages:
///                       - channel: some-channel
///                         text:
///                           texts:
///                             - Please provide param1
///                       - payload: |2
///                                           {\"some-key\": \"some-value\", \"other-key\": [\"other-value\"]}
///                       - conversationSuccess:
///                           metadata: |2
///                                               {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                       - outputAudioText:
///                           text: some output text
///                       - outputAudioText:
///                           ssml: |2
///                                               <speak>Some example <say-as interpret-as=\"characters\">SSML XML</say-as></speak>
///                       - liveAgentHandoff:
///                           metadata: |2
///                                               {\"some-metadata-key\": \"some-value\", \"other-metadata-key\": 1234}
///                       - playAudio:
///                           audioUri: http://example.com/some-audio-file.mp3
///                       - telephonyTransferCall:
///                           phoneNumber: 1-234-567-8901
///                     setParameterActions:
///                       - parameter: some-param
///                         value: '123.45'
///                       - parameter: another-param
///                         value:
///                           fn::toJSON: abc
///                       - parameter: other-param
///                         value:
///                           fn::toJSON:
///                             - foo
///                     conditionalCases:
///                       - cases:
///                           fn::toJSON:
///                             - condition: $sys.func.RAND() < 0.5
///                               caseContent:
///                                 - message:
///                                     text:
///                                       text:
///                                         - First case
///                                 - additionalCases:
///                                     cases:
///                                       - condition: $sys.func.RAND() < 0.2
///                                         caseContent:
///                                           - message:
///                                               text:
///                                                 text:
///                                                   - Nested case
///                             - caseContent:
///                                 - message:
///                                     text:
///                                       text:
///                                         - Final case
///                 - event: sys.no-match-2
///                   targetFlow: ${agent.startFlow}
///                 - event: sys.no-match-3
///                   targetPage: ${myPage2.id}
///             required: 'true'
///             redact: 'true'
///             advancedSettings:
///               dtmfSettings:
///                 enabled: true
///                 maxDigits: 1
///                 finishDigit: '#'
///       transitionRoutes:
///         - condition: $page.params.status = 'FINAL'
///           triggerFulfillment:
///             messages:
///               - channel: some-channel
///                 text:
///                   texts:
///                     - information completed, navigating to page 2
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
///           targetPage: ${myPage2.id}
///       advancedSettings:
///         dtmfSettings:
///           enabled: true
///           maxDigits: 1
///           finishDigit: '#'
///       knowledgeConnectorSettings:
///         enabled: true
///         triggerFulfillment:
///           messages:
///             - channel: some-channel
///               knowledgeInfoCard: {}
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
///           - dataStoreType: PUBLIC_WEB
///             dataStore: projects/${project.number}/locations/${agent.location}/collections/default_collection/dataStores/datastore-page-full
///             documentProcessingMode: CHUNKS
///         targetPage: ${myPage2.id}
///   myPage2:
///     type: gcp:diagflow:CxPage
///     name: my_page2
///     properties:
///       parent: ${agent.startFlow}
///       displayName: MyPage2
///   myDatastore:
///     type: gcp:discoveryengine:DataStore
///     name: my_datastore
///     properties:
///       location: global
///       dataStoreId: datastore-page-full
///       displayName: datastore-page-full
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
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
/// Page can be imported using any of these accepted formats:
///
/// * `{{parent}}/pages/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Page can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxPage:CxPage default {{parent}}/pages/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxPage:CxPage default {{parent}}/{{name}}
/// ```
class CxPage extends pulumi.CustomResource {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  late final pulumi.Output<CxPageAdvancedSettings?> advancedSettings;

  /// The human-readable name of the page, unique within the agent.
  late final pulumi.Output<String> displayName;

  /// The fulfillment to call when the session is entering the page.
  /// Structure is documented below.
  late final pulumi.Output<CxPageEntryFulfillment?> entryFulfillment;

  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  /// Structure is documented below.
  late final pulumi.Output<List<CxPageEventHandler>?> eventHandlers;

  /// The form associated with the page, used for collecting parameters relevant to the page.
  /// Structure is documented below.
  late final pulumi.Output<CxPageForm?> form;

  /// Knowledge connector configuration.
  /// Structure is documented below.
  late final pulumi.Output<CxPageKnowledgeConnectorSettings?>
      knowledgeConnectorSettings;

  /// The language of the following fields in page:
  /// Page.entry_fulfillment.messages
  /// Page.entry_fulfillment.conditional_cases
  /// Page.event_handlers.trigger_fulfillment.messages
  /// Page.event_handlers.trigger_fulfillment.conditional_cases
  /// Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages
  /// Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases
  /// Page.form.parameters.fill_behavior.reprompt_event_handlers.messages
  /// Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases
  /// Page.transition_routes.trigger_fulfillment.messages
  /// Page.transition_routes.trigger_fulfillment.conditional_cases
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;

  /// The unique identifier of the page.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  late final pulumi.Output<String> name;

  /// The flow to create a page for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  late final pulumi.Output<String?> parent;

  /// Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.
  /// If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route > page's transition route group > flow's transition routes.
  /// If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence.
  /// Format:projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/transitionRouteGroups/<TransitionRouteGroup ID>.
  late final pulumi.Output<List<String>?> transitionRouteGroups;

  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow.
  /// When we are in a certain page, the TransitionRoutes are evalauted in the following order:
  /// TransitionRoutes defined in the page with intent specified.
  /// TransitionRoutes defined in the transition route groups with intent specified.
  /// TransitionRoutes defined in flow with intent specified.
  /// TransitionRoutes defined in the transition route groups with intent specified.
  /// TransitionRoutes defined in the page with only condition specified.
  /// TransitionRoutes defined in the transition route groups with only condition specified.
  /// Structure is documented below.
  late final pulumi.Output<List<CxPageTransitionRoute>?> transitionRoutes;

  /// Creates a new [CxPage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxPage]. {@macro pulumi_diagflow_cx_page_cx_page_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxPage(
    String name, {
    CxPageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxPage:CxPage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedSettings =
        registerOutput<CxPageAdvancedSettings?>('advancedSettings');
    this.displayName = registerOutput<String>('displayName');
    this.entryFulfillment =
        registerOutput<CxPageEntryFulfillment?>('entryFulfillment');
    this.eventHandlers =
        registerOutput<List<CxPageEventHandler>?>('eventHandlers');
    this.form = registerOutput<CxPageForm?>('form');
    this.knowledgeConnectorSettings =
        registerOutput<CxPageKnowledgeConnectorSettings?>(
            'knowledgeConnectorSettings');
    this.languageCode = registerOutput<String?>('languageCode');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.transitionRouteGroups =
        registerOutput<List<String>?>('transitionRouteGroups');
    this.transitionRoutes =
        registerOutput<List<CxPageTransitionRoute>?>('transitionRoutes');
  }
}
