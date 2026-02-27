import 'package:pulumi/pulumi.dart' as pulumi;
import '../custom_target_type_custom_actions/custom_target_type_custom_actions.dart';
import 'custom_target_type_args.dart';

/// A Cloud Deploy `CustomTargetType` defines a type of custom target that can be referenced in a
/// Cloud Deploy `Target` in order to facilitate deploying to other systems besides the supported runtimes.
///
///
/// To get more information about CustomTargetType, see:
///
/// * [API documentation](https://cloud.google.com/deploy/docs/api/reference/rest/v1/projects.locations.customTargetTypes)
/// * How-to Guides
/// * [Define and use a custom target type](https://cloud.google.com/deploy/docs/deploy-app-custom-target)
///
/// ## Example Usage
///
/// ### Clouddeploy Custom Target Type Basic
///
///
///
/// ### Clouddeploy Custom Target Type Git Skaffold Modules
///
///
///
/// ### Clouddeploy Custom Target Type Gcs Skaffold Modules
///
///
///
/// ### Clouddeploy Custom Target Type Gcb Repo Skaffold Modules
///
///
///
///
/// ## Import
///
/// CustomTargetType can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/customTargetTypes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, CustomTargetType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/customTargetType:CustomTargetType default projects/{{project}}/locations/{{location}}/customTargetTypes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/customTargetType:CustomTargetType default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/customTargetType:CustomTargetType default {{location}}/{{name}}
/// ```
class CustomTargetType extends pulumi.CustomResource {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Time at which the `CustomTargetType` was created.
  late final pulumi.Output<String> createTime;

  /// Configures render and deploy for the `CustomTargetType` using Skaffold custom actions.
  /// Structure is documented below.
  late final pulumi.Output<CustomTargetTypeCustomActions?> customActions;

  /// Resource id of the `CustomTargetType`.
  late final pulumi.Output<String> customTargetTypeId;

  /// Description of the `CustomTargetType`. Max length is 255 characters.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The weak etag of the `CustomTargetType` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the source.
  late final pulumi.Output<String> location;

  /// Name of the `CustomTargetType`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Unique identifier of the `CustomTargetType`.
  late final pulumi.Output<String> uid;

  /// Time at which the `CustomTargetType` was updated.
  late final pulumi.Output<String> updateTime;

  CustomTargetType(
    String name, {
    CustomTargetTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetType:CustomTargetType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.customActions =
        registerOutput<CustomTargetTypeCustomActions?>('customActions');
    this.customTargetTypeId = registerOutput<String>('customTargetTypeId');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
