import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_logic_prompt_template_lock_args.dart';

/// A resource that manages the lock state of a PromptTemplate.
/// When this resource is created, the template is locked.
/// When this resource is deleted, the template is unlocked.
///
///
/// ## Example Usage
///
/// ### Firebaseailogic Prompt Template Lock Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.firebase.AiLogicPromptTemplate("basic", {
///     location: "global",
///     templateId: "lock-template",
///     templateString: `---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
/// `,
/// });
/// const basicLock = new gcp.firebase.AiLogicPromptTemplateLock("basic_lock", {
///     location: basic.location,
///     templateId: basic.templateId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.firebase.AiLogicPromptTemplate("basic",
///     location="global",
///     template_id="lock-template",
///     template_string="""---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
/// """)
/// basic_lock = gcp.firebase.AiLogicPromptTemplateLock("basic_lock",
///     location=basic.location,
///     template_id=basic.template_id)
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
///         TemplateId = "lock-template",
///         TemplateString = @"---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
/// ",
///     });
///
///     var basicLock = new Gcp.Firebase.AiLogicPromptTemplateLock("basic_lock", new()
///     {
///         Location = basic.Location,
///         TemplateId = basic.TemplateId,
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
/// 		basic, err := firebase.NewAiLogicPromptTemplate(ctx, "basic", &firebase.AiLogicPromptTemplateArgs{
/// 			Location:       pulumi.String("global"),
/// 			TemplateId:     pulumi.String("lock-template"),
/// 			TemplateString: pulumi.String("---\nmodel: googleai/gemini-1.5-flash\n---\nHello World\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAiLogicPromptTemplateLock(ctx, "basic_lock", &firebase.AiLogicPromptTemplateLockArgs{
/// 			Location:   basic.Location,
/// 			TemplateId: basic.TemplateId,
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
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplateLock;
/// import com.pulumi.gcp.firebase.AiLogicPromptTemplateLockArgs;
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
///             .templateId("lock-template")
///             .templateString("""
/// ---
/// model: googleai/gemini-1.5-flash
/// ---
/// Hello World
///             """)
///             .build());
///
///         var basicLock = new AiLogicPromptTemplateLock("basicLock", AiLogicPromptTemplateLockArgs.builder()
///             .location(basic.location())
///             .templateId(basic.templateId())
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
///       templateId: lock-template
///       templateString: |
///         ---
///         model: googleai/gemini-1.5-flash
///         ---
///         Hello World
///   basicLock:
///     type: gcp:firebase:AiLogicPromptTemplateLock
///     name: basic_lock
///     properties:
///       location: ${basic.location}
///       templateId: ${basic.templateId}
/// ```
///
///
/// ## Import
///
/// PromptTemplateLock can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/templates/{{template_id}}`
///
/// * `{{project}}/{{location}}/{{template_id}}`
///
/// * `{{location}}/{{template_id}}`
///
/// When using the `pulumi import` command, PromptTemplateLock can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicPromptTemplateLock:AiLogicPromptTemplateLock default projects/{{project}}/locations/{{location}}/templates/{{template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicPromptTemplateLock:AiLogicPromptTemplateLock default {{project}}/{{location}}/{{template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicPromptTemplateLock:AiLogicPromptTemplateLock default {{location}}/{{template_id}}
/// ```
class AiLogicPromptTemplateLock extends pulumi.CustomResource {
  /// The location of the prompt template.
  late final pulumi.Output<String> location;
  /// Indicates if the prompt template is currently locked.
  /// This is verified against the server-side PromptTemplate resource.
  late final pulumi.Output<bool> locked;
  /// The resource name of the prompt template.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The ID of the prompt template.
  late final pulumi.Output<String> templateId;

  /// Creates a new [AiLogicPromptTemplateLock].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiLogicPromptTemplateLock]. {@macro pulumi_firebase_ai_logic_prompt_template_lock_ai_logic_prompt_template_lock_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiLogicPromptTemplateLock(
    String name, {
    AiLogicPromptTemplateLockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/aiLogicPromptTemplateLock:AiLogicPromptTemplateLock',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.locked = registerOutput<bool>('locked');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.templateId = registerOutput<String>('templateId');
  }
}
