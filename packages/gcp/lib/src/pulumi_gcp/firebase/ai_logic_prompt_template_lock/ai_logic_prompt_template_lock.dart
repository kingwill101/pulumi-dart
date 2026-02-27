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
