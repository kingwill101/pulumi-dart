// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'automation_resource_selector.dart';
import 'automation_rule.dart';

/// The set of arguments for Automation.
class AutomationArgs {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  final Input<Map<String, String>>? annotations;

  /// Required. ID of the `Automation`.
  final Input<String> automationId;
  final Input<String> deliveryPipelineId;

  /// Optional. Description of the `Automation`. Max length is 255 characters.
  final Input<String>? description;

  /// Optional. The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  final Input<List<AutomationRule>> rules;

  /// Selected resources to which the automation will be applied.
  final Input<AutomationResourceSelector> selector;

  /// Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  final Input<String> serviceAccount;

  /// Optional. When Suspended, automation is deactivated from execution.
  final Input<bool>? suspended;

  AutomationArgs({
    this.annotations,
    required this.automationId,
    required this.deliveryPipelineId,
    this.description,
    this.etag,
    this.labels,
    this.location,
    this.project,
    this.requestId,
    required this.rules,
    required this.selector,
    required this.serviceAccount,
    this.suspended,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['automationId'] = automationId;
    map['deliveryPipelineId'] = deliveryPipelineId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['rules'] =
        Input.mapInputValue<List<AutomationRule>, List<Map<String, dynamic>>>(
            rules,
            (value) => Input.encodeList<AutomationRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['selector'] =
        Input.mapInputValue<AutomationResourceSelector, Map<String, dynamic>>(
            selector, (value) => value.toMap());
    map['serviceAccount'] = serviceAccount;
    final suspendedValue = suspended;
    if (suspendedValue != null) {
      map['suspended'] = suspendedValue;
    }
    return map;
  }

  factory AutomationArgs.fromMap(Map<String, dynamic> map) {
    return AutomationArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      automationId: Input.asInput<String>(map['automationId']),
      deliveryPipelineId: Input.asInput<String>(map['deliveryPipelineId']),
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      rules: Input.asInput<List<AutomationRule>>(map['rules']),
      selector: Input.asInput<AutomationResourceSelector>(map['selector']),
      serviceAccount: Input.asInput<String>(map['serviceAccount']),
      suspended: Input.asOptionalInput<bool>(map['suspended']),
    );
  }
}
