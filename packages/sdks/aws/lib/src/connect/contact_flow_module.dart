import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_flow_module_args.dart';
import 'contact_flow_module_state.dart';

/// Provides an Amazon Connect Contact Flow Module resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// This resource embeds or references Contact Flows Modules specified in Amazon Connect Contact Flow Language. For more information see
/// [Amazon Connect Flow language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html)
///
/// !&gt; **WARN:** Contact Flow Modules exported from the Console [See Contact Flow import/export which is the same for Contact Flow Modules](https://docs.aws.amazon.com/connect/latest/adminguide/contact-flow-import-export.html) are not in the Amazon Connect Contact Flow Language and can not be used with this resource. Instead, the recommendation is to use the AWS CLI [`describe-contact-flow-module`](https://docs.aws.amazon.com/cli/latest/reference/connect/describe-contact-flow-module.html).
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
/// const example = new aws.connect.ContactFlowModule("example", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example",
///     description: "Example Contact Flow Module Description",
///     content: JSON.stringify({
///         Version: "2019-10-30",
///         StartAction: "12345678-1234-1234-1234-123456789012",
///         Actions: [
///             {
///                 Identifier: "12345678-1234-1234-1234-123456789012",
///                 Parameters: {
///                     Text: "Hello contact flow module",
///                 },
///                 Transitions: {
///                     NextAction: "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                     Errors: [],
///                     Conditions: [],
///                 },
///                 Type: "MessageParticipant",
///             },
///             {
///                 Identifier: "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                 Type: "DisconnectParticipant",
///                 Parameters: {},
///                 Transitions: {},
///             },
///         ],
///         Settings: {
///             InputParameters: [],
///             OutputParameters: [],
///             Transitions: [
///                 {
///                     DisplayName: "Success",
///                     ReferenceName: "Success",
///                     Description: "",
///                 },
///                 {
///                     DisplayName: "Error",
///                     ReferenceName: "Error",
///                     Description: "",
///                 },
///             ],
///         },
///     }),
///     tags: {
///         Name: "Example Contact Flow Module",
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
/// example = aws.connect.ContactFlowModule("example",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example",
///     description="Example Contact Flow Module Description",
///     content=json.dumps({
///         "Version": "2019-10-30",
///         "StartAction": "12345678-1234-1234-1234-123456789012",
///         "Actions": [
///             {
///                 "Identifier": "12345678-1234-1234-1234-123456789012",
///                 "Parameters": {
///                     "Text": "Hello contact flow module",
///                 },
///                 "Transitions": {
///                     "NextAction": "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                     "Errors": [],
///                     "Conditions": [],
///                 },
///                 "Type": "MessageParticipant",
///             },
///             {
///                 "Identifier": "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                 "Type": "DisconnectParticipant",
///                 "Parameters": {},
///                 "Transitions": {},
///             },
///         ],
///         "Settings": {
///             "InputParameters": [],
///             "OutputParameters": [],
///             "Transitions": [
///                 {
///                     "DisplayName": "Success",
///                     "ReferenceName": "Success",
///                     "Description": "",
///                 },
///                 {
///                     "DisplayName": "Error",
///                     "ReferenceName": "Error",
///                     "Description": "",
///                 },
///             ],
///         },
///     }),
///     tags={
///         "Name": "Example Contact Flow Module",
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
///     var example = new Aws.Connect.ContactFlowModule("example", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example",
///         Description = "Example Contact Flow Module Description",
///         Content = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2019-10-30",
///             ["StartAction"] = "12345678-1234-1234-1234-123456789012",
///             ["Actions"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Identifier"] = "12345678-1234-1234-1234-123456789012",
///                     ["Parameters"] = new Dictionary<string, object?>
///                     {
///                         ["Text"] = "Hello contact flow module",
///                     },
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
///                     ["Type"] = "MessageParticipant",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Identifier"] = "abcdef-abcd-abcd-abcd-abcdefghijkl",
///                     ["Type"] = "DisconnectParticipant",
///                     ["Parameters"] = new Dictionary<string, object?>
///                     {
///                     },
///                     ["Transitions"] = new Dictionary<string, object?>
///                     {
///                     },
///                 },
///             },
///             ["Settings"] = new Dictionary<string, object?>
///             {
///                 ["InputParameters"] = new[]
///                 {
///                 },
///                 ["OutputParameters"] = new[]
///                 {
///                 },
///                 ["Transitions"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["DisplayName"] = "Success",
///                         ["ReferenceName"] = "Success",
///                         ["Description"] = "",
///                     },
///                     new Dictionary<string, object?>
///                     {
///                         ["DisplayName"] = "Error",
///                         ["ReferenceName"] = "Error",
///                         ["Description"] = "",
///                     },
///                 },
///             },
///         }),
///         Tags =
///         {
///             { "Name", "Example Contact Flow Module" },
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
/// 					"Parameters": map[string]interface{}{
/// 						"Text": "Hello contact flow module",
/// 					},
/// 					"Transitions": map[string]interface{}{
/// 						"NextAction": "abcdef-abcd-abcd-abcd-abcdefghijkl",
/// 						"Errors":     []interface{}{},
/// 						"Conditions": []interface{}{},
/// 					},
/// 					"Type": "MessageParticipant",
/// 				},
/// 				map[string]interface{}{
/// 					"Identifier":  "abcdef-abcd-abcd-abcd-abcdefghijkl",
/// 					"Type":        "DisconnectParticipant",
/// 					"Parameters":  map[string]interface{}{},
/// 					"Transitions": map[string]interface{}{},
/// 				},
/// 			},
/// 			"Settings": map[string]interface{}{
/// 				"InputParameters":  []interface{}{},
/// 				"OutputParameters": []interface{}{},
/// 				"Transitions": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"DisplayName":   "Success",
/// 						"ReferenceName": "Success",
/// 						"Description":   "",
/// 					},
/// 					map[string]interface{}{
/// 						"DisplayName":   "Error",
/// 						"ReferenceName": "Error",
/// 						"Description":   "",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = connect.NewContactFlowModule(ctx, "example", &connect.ContactFlowModuleArgs{
/// 			InstanceId:  pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:        pulumi.String("Example"),
/// 			Description: pulumi.String("Example Contact Flow Module Description"),
/// 			Content:     pulumi.String(json0),
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("Example Contact Flow Module"),
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
/// import com.pulumi.aws.connect.ContactFlowModule;
/// import com.pulumi.aws.connect.ContactFlowModuleArgs;
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
///         var example = new ContactFlowModule("example", ContactFlowModuleArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example")
///             .description("Example Contact Flow Module Description")
///             .content(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2019-10-30"),
///                     jsonProperty("StartAction", "12345678-1234-1234-1234-123456789012"),
///                     jsonProperty("Actions", jsonArray(
///                         jsonObject(
///                             jsonProperty("Identifier", "12345678-1234-1234-1234-123456789012"),
///                             jsonProperty("Parameters", jsonObject(
///                                 jsonProperty("Text", "Hello contact flow module")
///                             )),
///                             jsonProperty("Transitions", jsonObject(
///                                 jsonProperty("NextAction", "abcdef-abcd-abcd-abcd-abcdefghijkl"),
///                                 jsonProperty("Errors", jsonArray(
///                                 )),
///                                 jsonProperty("Conditions", jsonArray(
///                                 ))
///                             )),
///                             jsonProperty("Type", "MessageParticipant")
///                         ),
///                         jsonObject(
///                             jsonProperty("Identifier", "abcdef-abcd-abcd-abcd-abcdefghijkl"),
///                             jsonProperty("Type", "DisconnectParticipant"),
///                             jsonProperty("Parameters", jsonObject(
///
///                             )),
///                             jsonProperty("Transitions", jsonObject(
///
///                             ))
///                         )
///                     )),
///                     jsonProperty("Settings", jsonObject(
///                         jsonProperty("InputParameters", jsonArray(
///                         )),
///                         jsonProperty("OutputParameters", jsonArray(
///                         )),
///                         jsonProperty("Transitions", jsonArray(
///                             jsonObject(
///                                 jsonProperty("DisplayName", "Success"),
///                                 jsonProperty("ReferenceName", "Success"),
///                                 jsonProperty("Description", "")
///                             ),
///                             jsonObject(
///                                 jsonProperty("DisplayName", "Error"),
///                                 jsonProperty("ReferenceName", "Error"),
///                                 jsonProperty("Description", "")
///                             )
///                         ))
///                     ))
///                 )))
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "Example Contact Flow Module"),
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
///   example:
///     type: aws:connect:ContactFlowModule
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: Example
///       description: Example Contact Flow Module Description
///       content:
///         fn::toJSON:
///           Version: 2019-10-30
///           StartAction: 12345678-1234-1234-1234-123456789012
///           Actions:
///             - Identifier: 12345678-1234-1234-1234-123456789012
///               Parameters:
///                 Text: Hello contact flow module
///               Transitions:
///                 NextAction: abcdef-abcd-abcd-abcd-abcdefghijkl
///                 Errors: []
///                 Conditions: []
///               Type: MessageParticipant
///             - Identifier: abcdef-abcd-abcd-abcd-abcdefghijkl
///               Type: DisconnectParticipant
///               Parameters: {}
///               Transitions: {}
///           Settings:
///             InputParameters: []
///             OutputParameters: []
///             Transitions:
///               - DisplayName: Success
///                 ReferenceName: Success
///                 Description: ""
///               - DisplayName: Error
///                 ReferenceName: Error
///                 Description: ""
///       tags:
///         Name: Example Contact Flow Module
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
/// % aws connect describe-contact-flow-module --instance-id 1b3c5d8-1b3c-1b3c-1b3c-1b3c5d81b3c5 --contact-flow-module-id c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5 --region us-west-2 | jq '.ContactFlowModule.Content | fromjson' > contact_flow_module.json
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
/// const example = new aws.connect.ContactFlowModule("example", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example",
///     description: "Example Contact Flow Module Description",
///     filename: "contact_flow_module.json",
///     contentHash: std.filebase64sha256({
///         input: "contact_flow_module.json",
///     }).then(invoke => invoke.result),
///     tags: {
///         Name: "Example Contact Flow Module",
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
/// example = aws.connect.ContactFlowModule("example",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example",
///     description="Example Contact Flow Module Description",
///     filename="contact_flow_module.json",
///     content_hash=std.filebase64sha256(input="contact_flow_module.json").result,
///     tags={
///         "Name": "Example Contact Flow Module",
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
///     var example = new Aws.Connect.ContactFlowModule("example", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example",
///         Description = "Example Contact Flow Module Description",
///         Filename = "contact_flow_module.json",
///         ContentHash = Std.Filebase64sha256.Invoke(new()
///         {
///             Input = "contact_flow_module.json",
///         }).Apply(invoke => invoke.Result),
///         Tags =
///         {
///             { "Name", "Example Contact Flow Module" },
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
/// 			Input: "contact_flow_module.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = connect.NewContactFlowModule(ctx, "example", &connect.ContactFlowModuleArgs{
/// 			InstanceId:  pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:        pulumi.String("Example"),
/// 			Description: pulumi.String("Example Contact Flow Module Description"),
/// 			Filename:    pulumi.String("contact_flow_module.json"),
/// 			ContentHash: pulumi.String(invokeFilebase64sha256.Result),
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("Example Contact Flow Module"),
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
/// import com.pulumi.aws.connect.ContactFlowModule;
/// import com.pulumi.aws.connect.ContactFlowModuleArgs;
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
///         var example = new ContactFlowModule("example", ContactFlowModuleArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example")
///             .description("Example Contact Flow Module Description")
///             .filename("contact_flow_module.json")
///             .contentHash(StdFunctions.filebase64sha256(Filebase64sha256Args.builder()
///                 .input("contact_flow_module.json")
///                 .build()).result())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "Example Contact Flow Module"),
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
///   example:
///     type: aws:connect:ContactFlowModule
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: Example
///       description: Example Contact Flow Module Description
///       filename: contact_flow_module.json
///       contentHash:
///         fn::invoke:
///           function: std:filebase64sha256
///           arguments:
///             input: contact_flow_module.json
///           return: result
///       tags:
///         Name: Example Contact Flow Module
///         Application: Example
///         Method: Create
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Contact Flow Modules using the `instance_id` and `contact_flow_module_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/contactFlowModule:ContactFlowModule example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class ContactFlowModule extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Contact Flow Module.
  late final pulumi.Output<String> arn;

  /// The identifier of the Contact Flow Module.
  late final pulumi.Output<String> contactFlowModuleId;

  /// Specifies the content of the Contact Flow Module, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  late final pulumi.Output<String> content;

  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow Module source specified with `filename`.
  late final pulumi.Output<String?> contentHash;

  /// Specifies the description of the Contact Flow Module.
  late final pulumi.Output<String?> description;

  /// The path to the Contact Flow Module source within the local filesystem. Conflicts with `content`.
  late final pulumi.Output<String?> filename;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;

  /// Specifies the name of the Contact Flow Module.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Tags to apply to the Contact Flow Module. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ContactFlowModule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContactFlowModule]. {@macro pulumi_connect_contact_flow_module_contact_flow_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContactFlowModule(
    String name, {
    ContactFlowModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:connect/contactFlowModule:ContactFlowModule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    contactFlowModuleId = registerOutput<String>('contactFlowModuleId');
    content = registerOutput<String>('content');
    contentHash = registerOutput<String?>('contentHash');
    description = registerOutput<String?>('description');
    filename = registerOutput<String?>('filename');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ContactFlowModule] resource's state with the given [name] and [id].
  static ContactFlowModule get(
    String name,
    pulumi.Input<String> id, {
    ContactFlowModuleState? state,
  }) {
    return ContactFlowModule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContactFlowModule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:connect/contactFlowModule:ContactFlowModule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    contactFlowModuleId = registerOutput<String>('contactFlowModuleId');
    content = registerOutput<String>('content');
    contentHash = registerOutput<String?>('contentHash');
    description = registerOutput<String?>('description');
    filename = registerOutput<String?>('filename');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
