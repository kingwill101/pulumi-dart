import 'package:pulumi/pulumi.dart' as pulumi;
import '../automation_rule/automation_rule.dart';
import '../automation_selector/automation_selector.dart';
import 'automation_args.dart';

/// An `Automation` enables the automation of manually driven actions for a Delivery Pipeline, which includes Release promotion amongst Targets, Rollout repair and Rollout deployment strategy advancement.
///
///
/// To get more information about Automation, see:
///
/// * [API documentation](https://cloud.google.com/deploy/docs/api/reference/rest/v1/projects.locations.deliveryPipelines.automations)
/// * How-to Guides
/// * [Automate your deployment](https://cloud.google.com/deploy/docs/automation)
///
/// ## Example Usage
///
/// ### Clouddeploy Automation Basic
///
///
///
/// ### Clouddeploy Automation Full
///
///
///
///
/// ## Import
///
/// Automation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/deliveryPipelines/{{delivery_pipeline}}/automations/{{name}}`
///
/// * `{{project}}/{{location}}/{{delivery_pipeline}}/{{name}}`
///
/// * `{{location}}/{{delivery_pipeline}}/{{name}}`
///
/// When using the `pulumi import` command, Automation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/automation:Automation default projects/{{project}}/locations/{{location}}/deliveryPipelines/{{delivery_pipeline}}/automations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/automation:Automation default {{project}}/{{location}}/{{delivery_pipeline}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/automation:Automation default {{location}}/{{delivery_pipeline}}/{{name}}
/// ```
class Automation extends pulumi.CustomResource {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Output only. Time at which the automation was created.
  late final pulumi.Output<String> createTime;

  /// The delivery_pipeline for the resource
  late final pulumi.Output<String> deliveryPipeline;

  /// Optional. Description of the `Automation`. Max length is 255 characters.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Name of the `Automation`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  /// Structure is documented below.
  late final pulumi.Output<List<AutomationRule>> rules;

  /// Required. Selected resources to which the automation will be applied.
  /// Structure is documented below.
  late final pulumi.Output<AutomationSelector> selector;

  /// Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  late final pulumi.Output<String> serviceAccount;

  /// Optional. When Suspended, automation is deactivated from execution.
  late final pulumi.Output<bool?> suspended;

  /// Output only. Unique identifier of the `Automation`.
  late final pulumi.Output<String> uid;

  /// Output only. Time at which the automation was updated.
  late final pulumi.Output<String> updateTime;

  Automation(
    String name, {
    AutomationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/automation:Automation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.deliveryPipeline = registerOutput<String>('deliveryPipeline');
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
    this.rules = registerOutput<List<AutomationRule>>('rules');
    this.selector = registerOutput<AutomationSelector>('selector');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.suspended = registerOutput<bool?>('suspended');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
