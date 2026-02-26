import 'package:pulumi/pulumi.dart';
import '../gcp_user_access_binding_scoped_access_setting/gcp_user_access_binding_scoped_access_setting.dart';
import '../gcp_user_access_binding_session_settings/gcp_user_access_binding_session_settings.dart';
import 'gcp_user_access_binding_args.dart';

/// Restricts access to Cloud Console and Google Cloud APIs for a set of users using Context-Aware Access.
///
///
/// To get more information about GcpUserAccessBinding, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/organizations.gcpUserAccessBindings)
///
/// ## Example Usage
///
/// ### Access Context Manager Gcp User Access Binding Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const group = new gcp.cloudidentity.Group("group", {
/// displayName: "my-identity-group",
/// parent: "customers/A01b123xz",
/// groupKey: {
/// id: "my-identity-group@example.com",
/// },
/// labels: {
/// "cloudidentity.googleapis.com/groups.discussion_forum": "",
/// },
/// });
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
/// parent: "organizations/123456789",
/// title: "my policy",
/// });
/// const accessLevelIdForUserAccessBinding = new gcp.accesscontextmanager.AccessLevel("access_level_id_for_user_access_binding", {
/// parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
/// name: pulumi.interpolate`accessPolicies/${access_policy.name}/accessLevels/chromeos_no_lock`,
/// title: "chromeos_no_lock",
/// basic: {
/// conditions: [{
/// devicePolicy: {
/// requireScreenLock: true,
/// osConstraints: [{
/// osType: "DESKTOP_CHROME_OS",
/// }],
/// },
/// regions: ["US"],
/// }],
/// },
/// });
/// const gcpUserAccessBinding = new gcp.accesscontextmanager.GcpUserAccessBinding("gcp_user_access_binding", {
/// organizationId: "123456789",
/// groupKey: std.trimprefixOutput({
/// input: group.id,
/// prefix: "groups/",
/// }).apply(invoke => invoke.result),
/// accessLevels: accessLevelIdForUserAccessBinding.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// group = gcp.cloudidentity.Group("group",
/// display_name="my-identity-group",
/// parent="customers/A01b123xz",
/// group_key={
/// "id": "my-identity-group@example.com",
/// },
/// labels={
/// "cloudidentity.googleapis.com/groups.discussion_forum": "",
/// })
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
/// parent="organizations/123456789",
/// title="my policy")
/// access_level_id_for_user_access_binding = gcp.accesscontextmanager.AccessLevel("access_level_id_for_user_access_binding",
/// parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
/// name=access_policy.name.apply(lambda name: f"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
/// title="chromeos_no_lock",
/// basic={
/// "conditions": [{
/// "device_policy": {
/// "require_screen_lock": True,
/// "os_constraints": [{
/// "os_type": "DESKTOP_CHROME_OS",
/// }],
/// },
/// "regions": ["US"],
/// }],
/// })
/// gcp_user_access_binding = gcp.accesscontextmanager.GcpUserAccessBinding("gcp_user_access_binding",
/// organization_id="123456789",
/// group_key=std.trimprefix_output(input=group.id,
/// prefix="groups/").apply(lambda invoke: invoke.result),
/// access_levels=access_level_id_for_user_access_binding.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @group = new Gcp.CloudIdentity.Group("group", new()
/// {
/// DisplayName = "my-identity-group",
/// Parent = "customers/A01b123xz",
/// GroupKey = new Gcp.CloudIdentity.Inputs.GroupGroupKeyArgs
/// {
/// Id = "my-identity-group@example.com",
/// },
/// Labels =
/// {
/// { "cloudidentity.googleapis.com/groups.discussion_forum", "" },
/// },
/// });
///
/// var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
/// {
/// Parent = "organizations/123456789",
/// Title = "my policy",
/// });
///
/// var accessLevelIdForUserAccessBinding = new Gcp.AccessContextManager.AccessLevel("access_level_id_for_user_access_binding", new()
/// {
/// Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
/// Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
/// Title = "chromeos_no_lock",
/// Basic = new Gcp.AccessContextManager.Inputs.AccessLevelBasicArgs
/// {
/// Conditions = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionArgs
/// {
/// DevicePolicy = new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyArgs
/// {
/// RequireScreenLock = true,
/// OsConstraints = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyOsConstraintArgs
/// {
/// OsType = "DESKTOP_CHROME_OS",
/// },
/// },
/// },
/// Regions = new[]
/// {
/// "US",
/// },
/// },
/// },
/// },
/// });
///
/// var gcpUserAccessBinding = new Gcp.AccessContextManager.GcpUserAccessBinding("gcp_user_access_binding", new()
/// {
/// OrganizationId = "123456789",
/// GroupKey = Std.Trimprefix.Invoke(new()
/// {
/// Input = @group.Id,
/// Prefix = "groups/",
/// }).Apply(invoke => invoke.Result),
/// AccessLevels = accessLevelIdForUserAccessBinding.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// group, err := cloudidentity.NewGroup(ctx, "group", &cloudidentity.GroupArgs{
/// DisplayName: pulumi.String("my-identity-group"),
/// Parent:      pulumi.String("customers/A01b123xz"),
/// GroupKey: &cloudidentity.GroupGroupKeyArgs{
/// Id: pulumi.String("my-identity-group@example.com"),
/// },
/// Labels: pulumi.StringMap{
/// "cloudidentity.googleapis.com/groups.discussion_forum": pulumi.String(""),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// Parent: pulumi.String("organizations/123456789"),
/// Title:  pulumi.String("my policy"),
/// })
/// if err != nil {
/// return err
/// }
/// accessLevelIdForUserAccessBinding, err := accesscontextmanager.NewAccessLevel(ctx, "access_level_id_for_user_access_binding", &accesscontextmanager.AccessLevelArgs{
/// Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v", name), nil
/// }).(pulumi.StringOutput),
/// Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v/accessLevels/chromeos_no_lock", name), nil
/// }).(pulumi.StringOutput),
/// Title: pulumi.String("chromeos_no_lock"),
/// Basic: &accesscontextmanager.AccessLevelBasicArgs{
/// Conditions: accesscontextmanager.AccessLevelBasicConditionArray{
/// &accesscontextmanager.AccessLevelBasicConditionArgs{
/// DevicePolicy: &accesscontextmanager.AccessLevelBasicConditionDevicePolicyArgs{
/// RequireScreenLock: pulumi.Bool(true),
/// OsConstraints: accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArray{
/// &accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArgs{
/// OsType: pulumi.String("DESKTOP_CHROME_OS"),
/// },
/// },
/// },
/// Regions: pulumi.StringArray{
/// pulumi.String("US"),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewGcpUserAccessBinding(ctx, "gcp_user_access_binding", &accesscontextmanager.GcpUserAccessBindingArgs{
/// OrganizationId: pulumi.String("123456789"),
/// GroupKey: pulumi.String(std.TrimprefixOutput(ctx, std.TrimprefixOutputArgs{
/// Input:  group.ID(),
/// Prefix: pulumi.String("groups/"),
/// }, nil).ApplyT(func(invoke std.TrimprefixResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// AccessLevels: accessLevelIdForUserAccessBinding.Name,
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
/// import com.pulumi.gcp.cloudidentity.Group;
/// import com.pulumi.gcp.cloudidentity.GroupArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.GroupGroupKeyArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevel;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevelArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.AccessLevelBasicArgs;
/// import com.pulumi.gcp.accesscontextmanager.GcpUserAccessBinding;
/// import com.pulumi.gcp.accesscontextmanager.GcpUserAccessBindingArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.TrimprefixArgs;
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
/// var group = new Group("group", GroupArgs.builder()
/// .displayName("my-identity-group")
/// .parent("customers/A01b123xz")
/// .groupKey(GroupGroupKeyArgs.builder()
/// .id("my-identity-group@example.com")
/// .build())
/// .labels(Map.of("cloudidentity.googleapis.com/groups.discussion_forum", ""))
/// .build());
///
/// var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
/// .parent("organizations/123456789")
/// .title("my policy")
/// .build());
///
/// var accessLevelIdForUserAccessBinding = new AccessLevel("accessLevelIdForUserAccessBinding", AccessLevelArgs.builder()
/// .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
/// .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/accessLevels/chromeos_no_lock", _name)))
/// .title("chromeos_no_lock")
/// .basic(AccessLevelBasicArgs.builder()
/// .conditions(AccessLevelBasicConditionArgs.builder()
/// .devicePolicy(AccessLevelBasicConditionDevicePolicyArgs.builder()
/// .requireScreenLock(true)
/// .osConstraints(AccessLevelBasicConditionDevicePolicyOsConstraintArgs.builder()
/// .osType("DESKTOP_CHROME_OS")
/// .build())
/// .build())
/// .regions("US")
/// .build())
/// .build())
/// .build());
///
/// var gcpUserAccessBinding = new GcpUserAccessBinding("gcpUserAccessBinding", GcpUserAccessBindingArgs.builder()
/// .organizationId("123456789")
/// .groupKey(StdFunctions.trimprefix(TrimprefixArgs.builder()
/// .input(group.id())
/// .prefix("groups/")
/// .build()).applyValue(_invoke -> _invoke.result()))
/// .accessLevels(accessLevelIdForUserAccessBinding.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// group:
/// type: gcp:cloudidentity:Group
/// properties:
/// displayName: my-identity-group
/// parent: customers/A01b123xz
/// groupKey:
/// id: my-identity-group@example.com
/// labels:
/// cloudidentity.googleapis.com/groups.discussion_forum: ""
/// accessLevelIdForUserAccessBinding:
/// type: gcp:accesscontextmanager:AccessLevel
/// name: access_level_id_for_user_access_binding
/// properties:
/// parent: accessPolicies/${["access-policy"].name}
/// name: accessPolicies/${["access-policy"].name}/accessLevels/chromeos_no_lock
/// title: chromeos_no_lock
/// basic:
/// conditions:
/// - devicePolicy:
/// requireScreenLock: true
/// osConstraints:
/// - osType: DESKTOP_CHROME_OS
/// regions:
/// - US
/// access-policy:
/// type: gcp:accesscontextmanager:AccessPolicy
/// properties:
/// parent: organizations/123456789
/// title: my policy
/// gcpUserAccessBinding:
/// type: gcp:accesscontextmanager:GcpUserAccessBinding
/// name: gcp_user_access_binding
/// properties:
/// organizationId: '123456789'
/// groupKey:
/// fn::invoke:
/// function: std:trimprefix
/// arguments:
/// input: ${group.id}
/// prefix: groups/
/// return: result
/// accessLevels: ${accessLevelIdForUserAccessBinding.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// GcpUserAccessBinding can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, GcpUserAccessBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/gcpUserAccessBinding:GcpUserAccessBinding default {{name}}
/// ```
class GcpUserAccessBinding extends CustomResource {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  late final Output<String?> accessLevels;

  /// Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the G Suite Directory API's Groups resource. If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  late final Output<String> groupKey;

  /// Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by RFC 3986 Section 2.3). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  late final Output<String> name;

  /// Required. ID of the parent organization.
  late final Output<String> organizationId;

  /// Optional. A list of scoped access settings that set this binding's restrictions on a subset of applications.
  /// Structure is documented below.
  late final Output<List<GcpUserAccessBindingScopedAccessSetting>?>
      scopedAccessSettings;

  /// Optional. The Google Cloud session length (GCSL) policy for the group key.
  /// Structure is documented below.
  late final Output<GcpUserAccessBindingSessionSettings?> sessionSettings;

  GcpUserAccessBinding(
    String name, {
    GcpUserAccessBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/gcpUserAccessBinding:GcpUserAccessBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessLevels = registerOutput<String?>('accessLevels');
    this.groupKey = registerOutput<String>('groupKey');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.scopedAccessSettings =
        registerOutput<List<GcpUserAccessBindingScopedAccessSetting>?>(
            'scopedAccessSettings');
    this.sessionSettings =
        registerOutput<GcpUserAccessBindingSessionSettings?>('sessionSettings');
  }
}
