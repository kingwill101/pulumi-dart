import 'package:pulumi/pulumi.dart' hide Config;
import 'automation_args.dart';
import 'automation_resource_selector_response.dart';
import 'automation_rule_response.dart';

/// Creates a new Automation in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Automation extends CustomResource {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  late final Output<Map<String, String>> annotations;

  /// Required. ID of the `Automation`.
  late final Output<String> automationId;

  /// Time at which the automation was created.
  late final Output<String> createTime;
  late final Output<String> deliveryPipelineId;

  /// Optional. Description of the `Automation`. Max length is 255 characters.
  late final Output<String> description;

  /// Optional. The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Name of the `Automation`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{delivery_pipeline}/automations/{automation}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  late final Output<List<AutomationRuleResponse>> rules;

  /// Selected resources to which the automation will be applied.
  late final Output<AutomationResourceSelectorResponse> selector;

  /// Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  late final Output<String> serviceAccount;

  /// Optional. When Suspended, automation is deactivated from execution.
  late final Output<bool> suspended;

  /// Unique identifier of the `Automation`.
  late final Output<String> uid;

  /// Time at which the automation was updated.
  late final Output<String> updateTime;

  Automation(
    String name, {
    AutomationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:clouddeploy/v1:Automation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.automationId = registerOutput<String>('automationId');
    this.createTime = registerOutput<String>('createTime');
    this.deliveryPipelineId = registerOutput<String>('deliveryPipelineId');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.rules = registerOutput<List<AutomationRuleResponse>>('rules');
    this.selector =
        registerOutput<AutomationResourceSelectorResponse>('selector');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.suspended = registerOutput<bool>('suspended');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
