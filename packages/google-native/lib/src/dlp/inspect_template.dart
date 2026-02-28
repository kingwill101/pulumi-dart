import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_config_response.dart';
import 'inspect_template_args.dart';

/// Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates to learn more.
/// Auto-naming is currently not supported for this resource.
class InspectTemplate extends pulumi.CustomResource {
  /// The creation timestamp of an inspectTemplate.
  late final pulumi.Output<String> createTime;
  /// Short description (max 256 chars).
  late final pulumi.Output<String> description;
  /// Display name (max 256 chars).
  late final pulumi.Output<String> displayName;
  /// The core content of the template. Configuration of the scanning process.
  late final pulumi.Output<GooglePrivacyDlpV2InspectConfigResponse> inspectConfig;
  late final pulumi.Output<String> location;
  /// The template name. The template will have one of the following formats: `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The last update timestamp of an inspectTemplate.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [InspectTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InspectTemplate]. {@macro pulumi_dlp_v2_inspect_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InspectTemplate(
    String name, {
    InspectTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:InspectTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.inspectConfig = registerOutput<GooglePrivacyDlpV2InspectConfigResponse>('inspectConfig');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
