import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_flow_args.dart';

/// Provides an Amazon Connect Contact Flow resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// This resource embeds or references Contact Flows specified in Amazon Connect Contact Flow Language. For more information see
/// [Amazon Connect Flow language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html)
///
/// !> **WARN:** Contact Flows exported from the Console [Contact Flow import/export](https://docs.aws.amazon.com/connect/latest/adminguide/contact-flow-import-export.html) are not in the Amazon Connect Contact Flow Language and can not be used with this resource. Instead, the recommendation is to use the AWS CLI [`describe-contact-flow`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/connect/describe-contact-flow.html).
/// See example below which uses `jq` to extract the `Content` attribute and saves it to a local file.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.ContactFlow("test", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Test",
///     description: "Test Contact Flow Description",
///     type: "CONTACT_FLOW",
///     content: JSON.stringify({
///         Version: "2019-10-30",
///         StartAction: "12345678-1234-1234-1234-123456789012",
///         Actions: [
///             {
///                 Identifier: "12345678-1234-1234-1234-123456789012",
///                 Type: "MessageParticipant",
///                 Transitions: {
///                     NextAction: "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                     Errors: [],
///                     Conditions: [],
///                 },
///                 Parameters: {
///                     Text: "Thanks for calling the sample flow!",
///                 },
///             },
///             {
///                 Identifier: "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                 Type: "DisconnectParticipant",
///                 Transitions: {},
///                 Parameters: {},
///             },
///         ],
///     }),
///     tags: {
///         Name: "Test Contact Flow",
///         Application: "Example",
///         Method: "Create",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test = aws.connect.ContactFlow("test",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Test",
///     description="Test Contact Flow Description",
///     type="CONTACT_FLOW",
///     content=json.dumps({
///         "Version": "2019-10-30",
///         "StartAction": "12345678-1234-1234-1234-123456789012",
///         "Actions": [
///             {
///                 "Identifier": "12345678-1234-1234-1234-123456789012",
///                 "Type": "MessageParticipant",
///                 "Transitions": {
///                     "NextAction": "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                     "Errors": [],
///                     "Conditions": [],
///                 },
///                 "Parameters": {
///                     "Text": "Thanks for calling the sample flow!",
///                 },
///             },
///             {
///                 "Identifier": "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                 "Type": "DisconnectParticipant",
///                 "Transitions": {},
///                 "Parameters": {},
///             },
///         ],
///     }),
///     tags={
///         "Name": "Test Contact Flow",
///         "Application": "Example",
///         "Method": "Create",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Connect.ContactFlow("test", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Test",
///         Description = "Test Contact Flow Description",
///         Type = "CONTACT_FLOW",
///         Content = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2019-10-30",
///             ["StartAction"] = "12345678-1234-1234-1234-123456789012",
///             ["Actions"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Identifier"] = "12345678-1234-1234-1234-123456789012",
///                     ["Type"] = "MessageParticipant",
///                     ["Transitions"] = new Dictionary<string, object?>
///                     {
///                         ["NextAction"] = "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                         ["Errors"] = new[]
///                         {
///                         },
///                         ["Conditions"] = new[]
///                         {
///                         },
///                     },
///                     ["Parameters"] = new Dictionary<string, object?>
///                     {
///                         ["Text"] = "Thanks for calling the sample flow!",
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Identifier"] = "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                     ["Type"] = "DisconnectParticipant",
///                     ["Transitions"] = new Dictionary<string, object?>
///                     {
///                     },
///                     ["Parameters"] = new Dictionary<string, object?>
///                     {
///                     },
///                 },
///             },
///         }),
///         Tags =
///         {
///             { "Name", "Test Contact Flow" },
///             { "Application", "Example" },
///             { "Method", "Create" },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version":     "2019-10-30",
/// 			"StartAction": "12345678-1234-1234-1234-123456789012",
/// 			"Actions": []interface{}{
/// 				map[string]interface{}{
/// 					"Identifier": "12345678-1234-1234-1234-123456789012",
/// 					"Type":       "MessageParticipant",
/// 					"Transitions": map[string]interface{}{
/// 						"NextAction": "abcdef-abcd-abcd-abcd-abcdefghijkl",
/// 						"Errors":     []interface{}{},
/// 						"Conditions": []interface{}{},
/// 					},
/// 					"Parameters": map[string]interface{}{
/// 						"Text": "Thanks for calling the sample flow!",
/// 					},
/// 				},
/// 				map[string]interface{}{
/// 					"Identifier":  "abcdef-abcd-abcd-abcd-abcdefghijkl",
/// 					"Type":        "DisconnectParticipant",
/// 					"Transitions": map[string]interface{}{},
/// 					"Parameters":  map[string]interface{}{},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = connect.NewContactFlow(ctx, "test", &connect.ContactFlowArgs{
/// 			InstanceId:  pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:        pulumi.String("Test"),
/// 			Description: pulumi.String("Test Contact Flow Description"),
/// 			Type:        pulumi.String("CONTACT_FLOW"),
/// 			Content:     pulumi.String(json0),
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("Test Contact Flow"),
/// 				"Application": pulumi.String("Example"),
/// 				"Method":      pulumi.String("Create"),
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
/// import com.pulumi.aws.connect.ContactFlow;
/// import com.pulumi.aws.connect.ContactFlowArgs;
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
///         var test = new ContactFlow("test", ContactFlowArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Test")
///             .description("Test Contact Flow Description")
///             .type("CONTACT_FLOW")
///             .content(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2019-10-30"),
///                     jsonProperty("StartAction", "12345678-1234-1234-1234-123456789012"),
///                     jsonProperty("Actions", jsonArray(
///                         jsonObject(
///                             jsonProperty("Identifier", "12345678-1234-1234-1234-123456789012"),
///                             jsonProperty("Type", "MessageParticipant"),
///                             jsonProperty("Transitions", jsonObject(
///                                 jsonProperty("NextAction", "abcdef-abcd-abcd-abcd-abcdefghijkl"),
///                                 jsonProperty("Errors", jsonArray(
///                                 )),
///                                 jsonProperty("Conditions", jsonArray(
///                                 ))
///                             )),
///                             jsonProperty("Parameters", jsonObject(
///                                 jsonProperty("Text", "Thanks for calling the sample flow!")
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("Identifier", "abcdef-abcd-abcd-abcd-abcdefghijkl"),
///                             jsonProperty("Type", "DisconnectParticipant"),
///                             jsonProperty("Transitions", jsonObject(
///
///                             )),
///                             jsonProperty("Parameters", jsonObject(
///
///                             ))
///                         )
///                     ))
///                 )))
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "Test Contact Flow"),
///                 Map.entry("Application", "Example"),
///                 Map.entry("Method", "Create")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:connect:ContactFlow
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: Test
///       description: Test Contact Flow Description
///       type: CONTACT_FLOW
///       content:
///         fn::toJSON:
///           Version: 2019-10-30
///           StartAction: 12345678-1234-1234-1234-123456789012
///           Actions:
///             - Identifier: 12345678-1234-1234-1234-123456789012
///               Type: MessageParticipant
///               Transitions:
///                 NextAction: abcdef-abcd-abcd-abcd-abcdefghijkl
///                 Errors: []
///                 Conditions: []
///               Parameters:
///                 Text: Thanks for calling the sample flow!
///             - Identifier: abcdef-abcd-abcd-abcd-abcdefghijkl
///               Type: DisconnectParticipant
///               Transitions: {}
///               Parameters: {}
///       tags:
///         Name: Test Contact Flow
///         Application: Example
///         Method: Create
/// ```
///
///
/// ### With External Content
///
/// Use the AWS CLI to extract Contact Flow Content:
///
/// ```console
/// % aws connect describe-contact-flow --instance-id 1b3c5d8-1b3c-1b3c-1b3c-1b3c5d81b3c5 --contact-flow-id c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5 --region us-west-2 | jq '.ContactFlow.Content | fromjson' > contact_flow.json
/// ```
///
/// Use the generated file as input:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const test = new aws.connect.ContactFlow("test", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Test",
///     description: "Test Contact Flow Description",
///     type: "CONTACT_FLOW",
///     filename: "contact_flow.json",
///     contentHash: std.filebase64sha256({
///         input: "contact_flow.json",
///     }).then(invoke => invoke.result),
///     tags: {
///         Name: "Test Contact Flow",
///         Application: "Example",
///         Method: "Create",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// test = aws.connect.ContactFlow("test",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Test",
///     description="Test Contact Flow Description",
///     type="CONTACT_FLOW",
///     filename="contact_flow.json",
///     content_hash=std.filebase64sha256(input="contact_flow.json").result,
///     tags={
///         "Name": "Test Contact Flow",
///         "Application": "Example",
///         "Method": "Create",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Connect.ContactFlow("test", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Test",
///         Description = "Test Contact Flow Description",
///         Type = "CONTACT_FLOW",
///         Filename = "contact_flow.json",
///         ContentHash = Std.Filebase64sha256.Invoke(new()
///         {
///             Input = "contact_flow.json",
///         }).Apply(invoke => invoke.Result),
///         Tags =
///         {
///             { "Name", "Test Contact Flow" },
///             { "Application", "Example" },
///             { "Method", "Create" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilebase64sha256, err := std.Filebase64sha256(ctx, &std.Filebase64sha256Args{
/// 			Input: "contact_flow.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = connect.NewContactFlow(ctx, "test", &connect.ContactFlowArgs{
/// 			InstanceId:  pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:        pulumi.String("Test"),
/// 			Description: pulumi.String("Test Contact Flow Description"),
/// 			Type:        pulumi.String("CONTACT_FLOW"),
/// 			Filename:    pulumi.String("contact_flow.json"),
/// 			ContentHash: pulumi.String(invokeFilebase64sha256.Result),
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("Test Contact Flow"),
/// 				"Application": pulumi.String("Example"),
/// 				"Method":      pulumi.String("Create"),
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
/// import com.pulumi.aws.connect.ContactFlow;
/// import com.pulumi.aws.connect.ContactFlowArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64sha256Args;
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
///         var test = new ContactFlow("test", ContactFlowArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Test")
///             .description("Test Contact Flow Description")
///             .type("CONTACT_FLOW")
///             .filename("contact_flow.json")
///             .contentHash(StdFunctions.filebase64sha256(Filebase64sha256Args.builder()
///                 .input("contact_flow.json")
///                 .build()).result())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "Test Contact Flow"),
///                 Map.entry("Application", "Example"),
///                 Map.entry("Method", "Create")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:connect:ContactFlow
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: Test
///       description: Test Contact Flow Description
///       type: CONTACT_FLOW
///       filename: contact_flow.json
///       contentHash:
///         fn::invoke:
///           function: std:filebase64sha256
///           arguments:
///             input: contact_flow.json
///           return: result
///       tags:
///         Name: Test Contact Flow
///         Application: Example
///         Method: Create
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Contact Flows using the `instance_id` and `contact_flow_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/contactFlow:ContactFlow example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class ContactFlow extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Contact Flow.
  late final pulumi.Output<String> arn;
  /// The identifier of the Contact Flow.
  late final pulumi.Output<String> contactFlowId;
  /// Specifies the content of the Contact Flow, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  late final pulumi.Output<String> content;
  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow source specified with `filename`.
  late final pulumi.Output<String?> contentHash;
  /// Specifies the description of the Contact Flow.
  late final pulumi.Output<String?> description;
  /// The path to the Contact Flow source within the local filesystem. Conflicts with `content`.
  late final pulumi.Output<String?> filename;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;
  /// Specifies the name of the Contact Flow.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Tags to apply to the Contact Flow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Specifies the type of the Contact Flow. Defaults to `CONTACT_FLOW`. Allowed Values are: `CONTACT_FLOW`, `CUSTOMER_QUEUE`, `CUSTOMER_HOLD`, `CUSTOMER_WHISPER`, `AGENT_HOLD`, `AGENT_WHISPER`, `OUTBOUND_WHISPER`, `AGENT_TRANSFER`, `QUEUE_TRANSFER`.
  late final pulumi.Output<String?> type;

  /// Creates a new [ContactFlow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContactFlow]. {@macro pulumi_connect_contact_flow_contact_flow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContactFlow(
    String name, {
    ContactFlowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/contactFlow:ContactFlow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.contactFlowId = registerOutput<String>('contactFlowId');
    this.content = registerOutput<String>('content');
    this.contentHash = registerOutput<String?>('contentHash');
    this.description = registerOutput<String?>('description');
    this.filename = registerOutput<String?>('filename');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
  }
}
