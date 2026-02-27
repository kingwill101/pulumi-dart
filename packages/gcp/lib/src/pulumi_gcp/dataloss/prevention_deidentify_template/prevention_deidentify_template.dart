import 'package:pulumi/pulumi.dart';
import '../prevention_deidentify_template_deidentify_config/prevention_deidentify_template_deidentify_config.dart';
import 'prevention_deidentify_template_args.dart';

/// Allows creation of templates to de-identify content.
///
///
/// To get more information about DeidentifyTemplate, see:
///
/// * [API documentation](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.deidentifyTemplates)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dlp/docs/concepts-templates)
///
///
///
/// ## Example Usage
///
/// ### Dlp Deidentify Template Basic
///
///
///
/// ### Dlp Deidentify Template Image Transformations
///
///
///
///
/// ## Import
///
/// DeidentifyTemplate can be imported using any of these accepted formats:
///
/// * `{{parent}}/deidentifyTemplates/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, DeidentifyTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionDeidentifyTemplate:PreventionDeidentifyTemplate default {{parent}}/deidentifyTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionDeidentifyTemplate:PreventionDeidentifyTemplate default {{parent}}/{{name}}
/// ```
class PreventionDeidentifyTemplate extends CustomResource {
  /// The creation timestamp of an deidentifyTemplate. Set by the server.
  late final Output<String> createTime;

  /// Configuration of the deidentify template
  /// Structure is documented below.
  late final Output<PreventionDeidentifyTemplateDeidentifyConfig>
      deidentifyConfig;

  /// A description of the template.
  late final Output<String?> description;

  /// User set display name of the template.
  late final Output<String?> displayName;

  /// The resource name of the template. Set by the server.
  late final Output<String> name;

  /// The parent of the template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  late final Output<String> parent;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  late final Output<String> templateId;

  /// The last update timestamp of an deidentifyTemplate. Set by the server.
  late final Output<String> updateTime;

  PreventionDeidentifyTemplate(
    String name, {
    PreventionDeidentifyTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionDeidentifyTemplate:PreventionDeidentifyTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deidentifyConfig =
        registerOutput<PreventionDeidentifyTemplateDeidentifyConfig>(
            'deidentifyConfig');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.templateId = registerOutput<String>('templateId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
