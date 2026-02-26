import 'package:pulumi/pulumi.dart';
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tfentitlement = new gcp.privilegedaccessmanager.Entitlement("tfentitlement", {
/// entitlementId: "example-entitlement",
/// location: "global",
/// maxRequestDuration: "43200s",
/// parent: "projects/my-project-name",
/// requesterJustificationConfig: {
/// unstructured: {},
/// },
/// eligibleUsers: [{
/// principals: ["group:test@google.com"],
/// }],
/// privilegedAccess: {
/// gcpIamAccess: {
/// roleBindings: [{
/// role: "roles/storage.admin",
/// conditionExpression: "request.time < timestamp(\"2024-04-23T18:30:00.000Z\")",
/// }],
/// resource: "//cloudresourcemanager.googleapis.com/projects/my-project-name",
/// resourceType: "cloudresourcemanager.googleapis.com/Project",
/// },
/// },
/// additionalNotificationTargets: {
/// adminEmailRecipients: ["user@example.com"],
/// requesterEmailRecipients: ["user@example.com"],
/// },
/// approvalWorkflow: {
/// manualApprovals: {
/// requireApproverJustification: true,
/// steps: [{
/// approvalsNeeded: 1,
/// approverEmailRecipients: ["user@example.com"],
/// approvers: {
/// principals: ["group:test@google.com"],
/// },
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tfentitlement = gcp.privilegedaccessmanager.Entitlement("tfentitlement",
/// entitlement_id="example-entitlement",
/// location="global",
/// max_request_duration="43200s",
/// parent="projects/my-project-name",
/// requester_justification_config={
/// "unstructured": {},
/// },
/// eligible_users=[{
/// "principals": ["group:test@google.com"],
/// }],
/// privileged_access={
/// "gcp_iam_access": {
/// "role_bindings": [{
/// "role": "roles/storage.admin",
/// "condition_expression": "request.time < timestamp(\"2024-04-23T18:30:00.000Z\")",
/// }],
/// "resource": "//cloudresourcemanager.googleapis.com/projects/my-project-name",
/// "resource_type": "cloudresourcemanager.googleapis.com/Project",
/// },
/// },
/// additional_notification_targets={
/// "admin_email_recipients": ["user@example.com"],
/// "requester_email_recipients": ["user@example.com"],
/// },
/// approval_workflow={
/// "manual_approvals": {
/// "require_approver_justification": True,
/// "steps": [{
/// "approvals_needed": 1,
/// "approver_email_recipients": ["user@example.com"],
/// "approvers": {
/// "principals": ["group:test@google.com"],
/// },
/// }],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var tfentitlement = new Gcp.PrivilegedAccessManager.Entitlement("tfentitlement", new()
/// {
/// EntitlementId = "example-entitlement",
/// Location = "global",
/// MaxRequestDuration = "43200s",
/// Parent = "projects/my-project-name",
/// RequesterJustificationConfig = new Gcp.PrivilegedAccessManager.Inputs.EntitlementRequesterJustificationConfigArgs
/// {
/// Unstructured = null,
/// },
/// EligibleUsers = new[]
/// {
/// new Gcp.PrivilegedAccessManager.Inputs.EntitlementEligibleUserArgs
/// {
/// Principals = new[]
/// {
/// "group:test@google.com",
/// },
/// },
/// },
/// PrivilegedAccess = new Gcp.PrivilegedAccessManager.Inputs.EntitlementPrivilegedAccessArgs
/// {
/// GcpIamAccess = new Gcp.PrivilegedAccessManager.Inputs.EntitlementPrivilegedAccessGcpIamAccessArgs
/// {
/// RoleBindings = new[]
/// {
/// new Gcp.PrivilegedAccessManager.Inputs.EntitlementPrivilegedAccessGcpIamAccessRoleBindingArgs
/// {
/// Role = "roles/storage.admin",
/// ConditionExpression = "request.time < timestamp(\"2024-04-23T18:30:00.000Z\")",
/// },
/// },
/// Resource = "//cloudresourcemanager.googleapis.com/projects/my-project-name",
/// ResourceType = "cloudresourcemanager.googleapis.com/Project",
/// },
/// },
/// AdditionalNotificationTargets = new Gcp.PrivilegedAccessManager.Inputs.EntitlementAdditionalNotificationTargetsArgs
/// {
/// AdminEmailRecipients = new[]
/// {
/// "user@example.com",
/// },
/// RequesterEmailRecipients = new[]
/// {
/// "user@example.com",
/// },
/// },
/// ApprovalWorkflow = new Gcp.PrivilegedAccessManager.Inputs.EntitlementApprovalWorkflowArgs
/// {
/// ManualApprovals = new Gcp.PrivilegedAccessManager.Inputs.EntitlementApprovalWorkflowManualApprovalsArgs
/// {
/// RequireApproverJustification = true,
/// Steps = new[]
/// {
/// new Gcp.PrivilegedAccessManager.Inputs.EntitlementApprovalWorkflowManualApprovalsStepArgs
/// {
/// ApprovalsNeeded = 1,
/// ApproverEmailRecipients = new[]
/// {
/// "user@example.com",
/// },
/// Approvers = new Gcp.PrivilegedAccessManager.Inputs.EntitlementApprovalWorkflowManualApprovalsStepApproversArgs
/// {
/// Principals = new[]
/// {
/// "group:test@google.com",
/// },
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/privilegedaccessmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := privilegedaccessmanager.NewEntitlement(ctx, "tfentitlement", &privilegedaccessmanager.EntitlementArgs{
/// EntitlementId:      pulumi.String("example-entitlement"),
/// Location:           pulumi.String("global"),
/// MaxRequestDuration: pulumi.String("43200s"),
/// Parent:             pulumi.String("projects/my-project-name"),
/// RequesterJustificationConfig: &privilegedaccessmanager.EntitlementRequesterJustificationConfigArgs{
/// Unstructured: &privilegedaccessmanager.EntitlementRequesterJustificationConfigUnstructuredArgs{},
/// },
/// EligibleUsers: privilegedaccessmanager.EntitlementEligibleUserArray{
/// &privilegedaccessmanager.EntitlementEligibleUserArgs{
/// Principals: pulumi.StringArray{
/// pulumi.String("group:test@google.com"),
/// },
/// },
/// },
/// PrivilegedAccess: &privilegedaccessmanager.EntitlementPrivilegedAccessArgs{
/// GcpIamAccess: &privilegedaccessmanager.EntitlementPrivilegedAccessGcpIamAccessArgs{
/// RoleBindings: privilegedaccessmanager.EntitlementPrivilegedAccessGcpIamAccessRoleBindingArray{
/// &privilegedaccessmanager.EntitlementPrivilegedAccessGcpIamAccessRoleBindingArgs{
/// Role:                pulumi.String("roles/storage.admin"),
/// ConditionExpression: pulumi.String("request.time < timestamp(\"2024-04-23T18:30:00.000Z\")"),
/// },
/// },
/// Resource:     pulumi.String("//cloudresourcemanager.googleapis.com/projects/my-project-name"),
/// ResourceType: pulumi.String("cloudresourcemanager.googleapis.com/Project"),
/// },
/// },
/// AdditionalNotificationTargets: &privilegedaccessmanager.EntitlementAdditionalNotificationTargetsArgs{
/// AdminEmailRecipients: pulumi.StringArray{
/// pulumi.String("user@example.com"),
/// },
/// RequesterEmailRecipients: pulumi.StringArray{
/// pulumi.String("user@example.com"),
/// },
/// },
/// ApprovalWorkflow: &privilegedaccessmanager.EntitlementApprovalWorkflowArgs{
/// ManualApprovals: &privilegedaccessmanager.EntitlementApprovalWorkflowManualApprovalsArgs{
/// RequireApproverJustification: pulumi.Bool(true),
/// Steps: privilegedaccessmanager.EntitlementApprovalWorkflowManualApprovalsStepArray{
/// &privilegedaccessmanager.EntitlementApprovalWorkflowManualApprovalsStepArgs{
/// ApprovalsNeeded: pulumi.Int(1),
/// ApproverEmailRecipients: pulumi.StringArray{
/// pulumi.String("user@example.com"),
/// },
/// Approvers: &privilegedaccessmanager.EntitlementApprovalWorkflowManualApprovalsStepApproversArgs{
/// Principals: pulumi.StringArray{
/// pulumi.String("group:test@google.com"),
/// },
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.privilegedaccessmanager.entitlement;
/// import com.pulumi.gcp.privilegedaccessmanager.entitlementArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.EntitlementRequesterJustificationConfigArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.EntitlementRequesterJustificationConfigUnstructuredArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.EntitlementEligibleUserArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.EntitlementPrivilegedAccessArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.EntitlementPrivilegedAccessGcpIamAccessArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.EntitlementAdditionalNotificationTargetsArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.EntitlementApprovalWorkflowArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.EntitlementApprovalWorkflowManualApprovalsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var tfentitlement = new Entitlement("tfentitlement", EntitlementArgs.builder()
/// .entitlementId("example-entitlement")
/// .location("global")
/// .maxRequestDuration("43200s")
/// .parent("projects/my-project-name")
/// .requesterJustificationConfig(EntitlementRequesterJustificationConfigArgs.builder()
/// .unstructured(EntitlementRequesterJustificationConfigUnstructuredArgs.builder()
/// .build())
/// .build())
/// .eligibleUsers(EntitlementEligibleUserArgs.builder()
/// .principals("group:test@google.com")
/// .build())
/// .privilegedAccess(EntitlementPrivilegedAccessArgs.builder()
/// .gcpIamAccess(EntitlementPrivilegedAccessGcpIamAccessArgs.builder()
/// .roleBindings(EntitlementPrivilegedAccessGcpIamAccessRoleBindingArgs.builder()
/// .role("roles/storage.admin")
/// .conditionExpression("request.time < timestamp(\"2024-04-23T18:30:00.000Z\")")
/// .build())
/// .resource("//cloudresourcemanager.googleapis.com/projects/my-project-name")
/// .resourceType("cloudresourcemanager.googleapis.com/Project")
/// .build())
/// .build())
/// .additionalNotificationTargets(EntitlementAdditionalNotificationTargetsArgs.builder()
/// .adminEmailRecipients("user@example.com")
/// .requesterEmailRecipients("user@example.com")
/// .build())
/// .approvalWorkflow(EntitlementApprovalWorkflowArgs.builder()
/// .manualApprovals(EntitlementApprovalWorkflowManualApprovalsArgs.builder()
/// .requireApproverJustification(true)
/// .steps(EntitlementApprovalWorkflowManualApprovalsStepArgs.builder()
/// .approvalsNeeded(1)
/// .approverEmailRecipients("user@example.com")
/// .approvers(EntitlementApprovalWorkflowManualApprovalsStepApproversArgs.builder()
/// .principals("group:test@google.com")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// tfentitlement:
/// type: gcp:privilegedaccessmanager:entitlement
/// properties:
/// entitlementId: example-entitlement
/// location: global
/// maxRequestDuration: 43200s
/// parent: projects/my-project-name
/// requesterJustificationConfig:
/// unstructured: {}
/// eligibleUsers:
/// - principals:
/// - group:test@google.com
/// privilegedAccess:
/// gcpIamAccess:
/// roleBindings:
/// - role: roles/storage.admin
/// conditionExpression: request.time < timestamp("2024-04-23T18:30:00.000Z")
/// resource: //cloudresourcemanager.googleapis.com/projects/my-project-name
/// resourceType: cloudresourcemanager.googleapis.com/Project
/// additionalNotificationTargets:
/// adminEmailRecipients:
/// - user@example.com
/// requesterEmailRecipients:
/// - user@example.com
/// approvalWorkflow:
/// manualApprovals:
/// requireApproverJustification: true
/// steps:
/// - approvalsNeeded: 1
/// approverEmailRecipients:
/// - user@example.com
/// approvers:
/// principals:
/// - group:test@google.com
/// ```
/// <!--End PulumiCodeChooser -->
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
class Entitlement extends CustomResource {
  /// AdditionalNotificationTargets includes email addresses to be notified.
  /// Structure is documented below.
  late final Output<EntitlementAdditionalNotificationTargets?>
      additionalNotificationTargets;

  /// The approvals needed before access will be granted to a requester.
  /// No approvals will be needed if this field is null. Different types of approval workflows that can be used to gate privileged access granting.
  /// Structure is documented below.
  late final Output<EntitlementApprovalWorkflow?> approvalWorkflow;

  /// Output only. Create time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final Output<String> createTime;

  /// Who can create Grants using Entitlement. This list should contain at most one entry
  /// Structure is documented below.
  late final Output<List<EntitlementEligibleUser>> eligibleUsers;

  /// The ID to use for this Entitlement. This will become the last part of the resource name.
  /// This value should be 4-63 characters, and valid characters are "[a-z]", "[0-9]", and "-". The first character should be from [a-z].
  /// This value should be unique among all other Entitlements under the specified <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>.
  late final Output<String> entitlementId;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final Output<String> etag;

  /// The region of the Entitlement resource.
  late final Output<String> location;

  /// The maximum amount of time for which access would be granted for a request.
  /// A requester can choose to ask for access for less than this duration but never more.
  /// Format: calculate the time in seconds and concatenate it with 's' i.e. 2 hours = "7200s", 45 minutes = "2700s"
  late final Output<String> maxRequestDuration;

  /// Output Only. The entitlement's name follows a hierarchical structure, comprising the organization, folder, or project, alongside the region and a unique entitlement ID.
  /// Formats: organizations/{organization-number}/locations/{region}/entitlements/{entitlement-id}, folders/{folder-number}/locations/{region}/entitlements/{entitlement-id}, and projects/{project-id|project-number}/locations/{region}/entitlements/{entitlement-id}.
  late final Output<String> name;

  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  late final Output<String> parent;

  /// Privileged access that this service can be used to gate.
  /// Structure is documented below.
  late final Output<EntitlementPrivilegedAccess> privilegedAccess;

  /// Defines the ways in which a requester should provide the justification while requesting for access.
  /// Structure is documented below.
  late final Output<EntitlementRequesterJustificationConfig>
      requesterJustificationConfig;

  /// Output only. The current state of the Entitlement.
  late final Output<String> state;

  /// Output only. Update time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  Entitlement(
    String name, {
    EntitlementArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:privilegedaccessmanager/entitlement:entitlement',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
