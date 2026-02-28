import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_logic_prompt_template_args.dart';

/// The PromptTemplate resource for Firebase AI Logic.
///
/// To get more information about PromptTemplate, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/ai-logic/rest/v1beta/projects.locations.templates)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/ai-logic)
///
/// ## Example Usage
///
/// ### Firebaseailogic Prompt Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.firebase.AiLogicPromptTemplate("basic", {
///     location: "global",
///     templateId: "basic-template",
///     templateString: `---
/// model: gemini-2.5-flash
/// ---
/// Hello world!
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.firebase.AiLogicPromptTemplate("basic",
///     location="global",
///     template_id="basic-template",
///     template_string="""---
/// model: gemini-2.5-flash
/// ---
/// Hello world!
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Firebase.AiLogicPromptTemplate("basic", new()
///     {
///         Location = "global",
///         TemplateId = "basic-template",
///         TemplateString = @"---
/// model: gemini-2.5-flash
/// ---
/// Hello world!
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firebase.NewAiLogicPromptTemplate(ctx, "basic", &firebase.AiLogicPromptTemplateArgs{
/// 			Location:       pulumi.String("global"),
/// 			TemplateId:     pulumi.String("basic-template"),
/// 			TemplateString: pulumi.String("---\nmodel: gemini-2.5-flash\n---\nHello world!\n"),
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
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplate;
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplateArgs;
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
///         var basic = new AiLogicPromptTemplate("basic", AiLogicPromptTemplateArgs.builder()
///             .location("global")
///             .templateId("basic-template")
///             .templateString("""
/// ---
/// model: gemini-2.5-flash
/// ---
/// Hello world!
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:firebase:AiLogicPromptTemplate
///     properties:
///       location: global
///       templateId: basic-template
///       templateString: |
///         ---
///         model: gemini-2.5-flash
///         ---
///         Hello world!
/// ```
///
///
/// ## Import
///
/// PromptTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/templates/{{template_id}}`
///
/// * `{{project}}/{{location}}/{{template_id}}`
///
/// * `{{location}}/{{template_id}}`
///
/// When using the `pulumi import` command, PromptTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicPromptTemplate:AiLogicPromptTemplate default projects/{{project}}/locations/{{location}}/templates/{{template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicPromptTemplate:AiLogicPromptTemplate default {{project}}/{{location}}/{{template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicPromptTemplate:AiLogicPromptTemplate default {{location}}/{{template_id}}
/// ```
class AiLogicPromptTemplate extends pulumi.CustomResource {
  /// Timestamp when the PromptTemplate was created.
  late final pulumi.Output<String> createTime;

  /// The display name of the PromptTemplate.
  late final pulumi.Output<String?> displayName;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Indicates if the PromptTemplate has been locked for mutations.  It is
  /// strongly recommended that PromptTemplates used in production Apps be
  /// locked to avoid accidental distruption to live apps.
  /// To modify a PromptTemplate that has been locked, a call to ModifyLock with
  /// lock=false is required first.
  late final pulumi.Output<bool> locked;

  /// The model name parsed from the template_string.
  late final pulumi.Output<String> model;

  /// Identifier. The resource name of the PromptTemplate.
  /// Format:
  /// projects/{project}/locations/{location}/templates/{prompt_template}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Timestamp when the PromptTemplate state was last changed.
  late final pulumi.Output<String> stateChangeTime;

  /// The unique ID of the PromptTemplate, which is the final component of the
  /// PromptTemplate's resource name.
  late final pulumi.Output<String> templateId;

  /// The DotPrompt raw template string.
  late final pulumi.Output<String> templateString;

  /// Timestamp when the PromptTemplate was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiLogicPromptTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiLogicPromptTemplate]. {@macro pulumi_firebase_ai_logic_prompt_template_ai_logic_prompt_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiLogicPromptTemplate(
    String name, {
    AiLogicPromptTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/aiLogicPromptTemplate:AiLogicPromptTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.locked = registerOutput<bool>('locked');
    this.model = registerOutput<String>('model');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.stateChangeTime = registerOutput<String>('stateChangeTime');
    this.templateId = registerOutput<String>('templateId');
    this.templateString = registerOutput<String>('templateString');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
