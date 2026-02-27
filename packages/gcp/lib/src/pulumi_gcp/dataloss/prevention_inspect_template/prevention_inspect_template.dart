import 'package:pulumi/pulumi.dart';
import '../prevention_inspect_template_inspect_config/prevention_inspect_template_inspect_config.dart';
import 'prevention_inspect_template_args.dart';

/// An inspect job template.
///
///
/// To get more information about InspectTemplate, see:
///
/// * [API documentation](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.inspectTemplates)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dlp/docs/creating-templates-inspect)
///
/// ## Example Usage
///
/// ### Dlp Inspect Template Basic
///
///
///
/// ### Dlp Inspect Template Custom Type
///
///
///
/// ### Dlp Inspect Template Custom Type Surrogate
///
///
///
/// ### Dlp Inspect Template Max Infotype Per Finding Default
///
///
///
///
/// ## Import
///
/// InspectTemplate can be imported using any of these accepted formats:
///
/// * `{{parent}}/inspectTemplates/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, InspectTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionInspectTemplate:PreventionInspectTemplate default {{parent}}/inspectTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionInspectTemplate:PreventionInspectTemplate default {{parent}}/{{name}}
/// ```
class PreventionInspectTemplate extends CustomResource {
  /// A description of the inspect template.
  late final Output<String?> description;

  /// User set display name of the inspect template.
  late final Output<String?> displayName;

  /// The core content of the template.
  /// Structure is documented below.
  late final Output<PreventionInspectTemplateInspectConfig?> inspectConfig;

  /// The resource name of the inspect template. Set by the server.
  late final Output<String> name;

  /// The parent of the inspect template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  late final Output<String> parent;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  late final Output<String> templateId;

  PreventionInspectTemplate(
    String name, {
    PreventionInspectTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionInspectTemplate:PreventionInspectTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.inspectConfig =
        registerOutput<PreventionInspectTemplateInspectConfig?>(
            'inspectConfig');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.templateId = registerOutput<String>('templateId');
  }
}
