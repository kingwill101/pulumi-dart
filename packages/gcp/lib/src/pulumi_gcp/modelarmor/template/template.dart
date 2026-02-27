import 'package:pulumi/pulumi.dart' as pulumi;
import '../template_filter_config/template_filter_config.dart';
import '../template_template_metadata/template_template_metadata.dart';
import 'template_args.dart';

/// A `Template` is a resource of Model Armor that lets you configure how Model Armor screens prompts and responses.
/// It functions as sets of customized filters and thresholds for different safety and security confidence levels, allowing control over what content is flagged.
///
///
///
/// ## Example Usage
///
/// ### Modelarmor Template Basic
///
///
///
/// ## Import
///
/// Template can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/templates/{{template_id}}`
///
/// * `{{project}}/{{location}}/{{template_id}}`
///
/// * `{{location}}/{{template_id}}`
///
/// When using the `pulumi import` command, Template can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:modelarmor/template:Template default projects/{{project}}/locations/{{location}}/templates/{{template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:modelarmor/template:Template default {{project}}/{{location}}/{{template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:modelarmor/template:Template default {{location}}/{{template_id}}
/// ```
class Template extends pulumi.CustomResource {
  /// Create time stamp
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Filters configuration.
  /// Structure is documented below.
  late final pulumi.Output<TemplateFilterConfig> filterConfig;

  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. name of resource
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// template_id from the method_signature of Create RPC
  late final pulumi.Output<String> templateId;

  /// Message describing TemplateMetadata
  /// Structure is documented below.
  late final pulumi.Output<TemplateTemplateMetadata?> templateMetadata;

  /// Update time stamp
  late final pulumi.Output<String> updateTime;

  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:modelarmor/template:Template',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.filterConfig = registerOutput<TemplateFilterConfig>('filterConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.templateId = registerOutput<String>('templateId');
    this.templateMetadata =
        registerOutput<TemplateTemplateMetadata?>('templateMetadata');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
