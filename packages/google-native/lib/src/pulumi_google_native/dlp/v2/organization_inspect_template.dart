import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_inspect_config_response.dart';
import 'organization_inspect_template_args.dart';

/// Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates to learn more.
/// Auto-naming is currently not supported for this resource.
class OrganizationInspectTemplate extends CustomResource {
  /// The creation timestamp of an inspectTemplate.
  late final Output<String> createTime;

  /// Short description (max 256 chars).
  late final Output<String> description;

  /// Display name (max 256 chars).
  late final Output<String> displayName;

  /// The core content of the template. Configuration of the scanning process.
  late final Output<GooglePrivacyDlpV2InspectConfigResponse> inspectConfig;
  late final Output<String> location;

  /// The template name. The template will have one of the following formats: `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;
  late final Output<String> name;
  late final Output<String> organizationId;

  /// The last update timestamp of an inspectTemplate.
  late final Output<String> updateTime;

  OrganizationInspectTemplate(
    String name, {
    OrganizationInspectTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:OrganizationInspectTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.inspectConfig =
        registerOutput<GooglePrivacyDlpV2InspectConfigResponse>(
            'inspectConfig');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
