import 'package:pulumi/pulumi.dart' as pulumi;
import '../sac_attachment_symantec_options/sac_attachment_symantec_options.dart';
import 'sac_attachment_args.dart';

/// Represents a Secure Access Connect (SAC) attachment resource
///
/// To get more information about SacAttachment, see:
///
/// * [API documentation](https://cloud.google.com/secure-access-connect/docs/reference/network-security/rest/v1beta1/projects.locations.sacAttachments)
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://cloud.google.com/secure-access-connect/docs/overview)
///
/// ## Example Usage
///
/// ### Sac Attachment Prisma Access
///
///
///
///
/// ## Import
///
/// SacAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/sacAttachments/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, SacAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/sacAttachment:SacAttachment default projects/{{project}}/locations/{{location}}/sacAttachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/sacAttachment:SacAttachment default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/sacAttachment:SacAttachment default {{location}}/{{name}}
/// ```
class SacAttachment extends pulumi.CustomResource {
  /// Case-insensitive ISO-3166 alpha-2 country code used for localization. Only valid for Symantec attachments.
  late final pulumi.Output<String?> country;

  /// Timestamp when the realm was created.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the SACAttachment resource. eg us-central1
  late final pulumi.Output<String> location;

  /// Identifier. Resource name
  late final pulumi.Output<String> name;

  /// NCC Gateway associated with the attachment. This can be input as an ID or a full resource name.
  late final pulumi.Output<String> nccGateway;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// SAC Realm which owns the attachment. This can be input as an ID or a full resource name.
  late final pulumi.Output<String> sacRealm;

  /// State of the attachment.
  late final pulumi.Output<String> state;

  /// Configuration required for Symantec attachments.
  /// Structure is documented below.
  late final pulumi.Output<SacAttachmentSymantecOptions?> symantecOptions;

  /// Case-sensitive tzinfo identifier used for localization. Only valid for Symantec attachments.
  late final pulumi.Output<String?> timeZone;

  /// Timestamp when the realm was last updated.
  late final pulumi.Output<String> updateTime;

  SacAttachment(
    String name, {
    SacAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/sacAttachment:SacAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.country = registerOutput<String?>('country');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nccGateway = registerOutput<String>('nccGateway');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.sacRealm = registerOutput<String>('sacRealm');
    this.state = registerOutput<String>('state');
    this.symantecOptions =
        registerOutput<SacAttachmentSymantecOptions?>('symantecOptions');
    this.timeZone = registerOutput<String?>('timeZone');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
