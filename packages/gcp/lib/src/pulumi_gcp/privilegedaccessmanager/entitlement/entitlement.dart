import 'package:pulumi/pulumi.dart' as pulumi;
import '../entitlement_additional_notification_targets/entitlement_additional_notification_targets.dart';
import '../entitlement_approval_workflow/entitlement_approval_workflow.dart';
import '../entitlement_eligible_user/entitlement_eligible_user.dart';
import '../entitlement_privileged_access/entitlement_privileged_access.dart';
import '../entitlement_requester_justification_config/entitlement_requester_justification_config.dart';
import 'entitlement_args.dart';

/// An Entitlement defines the eligibility of a set of users to obtain a predefined access for some time possibly after going through an approval workflow.
///
///
/// To get more information about Entitlement, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/pam/rest)
/// * How-to Guides
/// * [How to create an Entitlement](https://cloud.google.com/iam/docs/pam-create-entitlements)
/// * [Official Documentation](https://cloud.google.com/iam/docs/pam-overview)
///
/// ## Example Usage
///
/// ### Privileged Access Manager Entitlement Basic
///
///
///
///
/// ## Import
///
/// Entitlement can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/entitlements/{{entitlement_id}}`
///
/// When using the `pulumi import` command, Entitlement can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:privilegedaccessmanager/entitlement:entitlement default {{parent}}/locations/{{location}}/entitlements/{{entitlement_id}}
/// ```
class Entitlement extends pulumi.CustomResource {
  /// AdditionalNotificationTargets includes email addresses to be notified.
  /// Structure is documented below.
  late final pulumi.Output<EntitlementAdditionalNotificationTargets?>
      additionalNotificationTargets;

  /// The approvals needed before access will be granted to a requester.
  /// No approvals will be needed if this field is null. Different types of approval workflows that can be used to gate privileged access granting.
  /// Structure is documented below.
  late final pulumi.Output<EntitlementApprovalWorkflow?> approvalWorkflow;

  /// Output only. Create time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final pulumi.Output<String> createTime;

  /// Who can create Grants using Entitlement. This list should contain at most one entry
  /// Structure is documented below.
  late final pulumi.Output<List<EntitlementEligibleUser>> eligibleUsers;

  /// The ID to use for this Entitlement. This will become the last part of the resource name.
  /// This value should be 4-63 characters, and valid characters are "[a-z]", "[0-9]", and "-". The first character should be from [a-z].
  /// This value should be unique among all other Entitlements under the specified `parent`.
  late final pulumi.Output<String> entitlementId;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final pulumi.Output<String> etag;

  /// The region of the Entitlement resource.
  late final pulumi.Output<String> location;

  /// The maximum amount of time for which access would be granted for a request.
  /// A requester can choose to ask for access for less than this duration but never more.
  /// Format: calculate the time in seconds and concatenate it with 's' i.e. 2 hours = "7200s", 45 minutes = "2700s"
  late final pulumi.Output<String> maxRequestDuration;

  /// Output Only. The entitlement's name follows a hierarchical structure, comprising the organization, folder, or project, alongside the region and a unique entitlement ID.
  /// Formats: organizations/{organization-number}/locations/{region}/entitlements/{entitlement-id}, folders/{folder-number}/locations/{region}/entitlements/{entitlement-id}, and projects/{project-id|project-number}/locations/{region}/entitlements/{entitlement-id}.
  late final pulumi.Output<String> name;

  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  late final pulumi.Output<String> parent;

  /// Privileged access that this service can be used to gate.
  /// Structure is documented below.
  late final pulumi.Output<EntitlementPrivilegedAccess> privilegedAccess;

  /// Defines the ways in which a requester should provide the justification while requesting for access.
  /// Structure is documented below.
  late final pulumi.Output<EntitlementRequesterJustificationConfig>
      requesterJustificationConfig;

  /// Output only. The current state of the Entitlement.
  late final pulumi.Output<String> state;

  /// Output only. Update time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  Entitlement(
    String name, {
    EntitlementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:privilegedaccessmanager/entitlement:entitlement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalNotificationTargets =
        registerOutput<EntitlementAdditionalNotificationTargets?>(
            'additionalNotificationTargets');
    this.approvalWorkflow =
        registerOutput<EntitlementApprovalWorkflow?>('approvalWorkflow');
    this.createTime = registerOutput<String>('createTime');
    this.eligibleUsers =
        registerOutput<List<EntitlementEligibleUser>>('eligibleUsers');
    this.entitlementId = registerOutput<String>('entitlementId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.maxRequestDuration = registerOutput<String>('maxRequestDuration');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.privilegedAccess =
        registerOutput<EntitlementPrivilegedAccess>('privilegedAccess');
    this.requesterJustificationConfig =
        registerOutput<EntitlementRequesterJustificationConfig>(
            'requesterJustificationConfig');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
