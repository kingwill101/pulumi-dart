import 'package:pulumi/pulumi.dart';
import '../access_level_basic/access_level_basic.dart';
import '../access_level_custom/access_level_custom.dart';
import 'access_level_args.dart';

/// An AccessLevel is a label that can be applied to requests to GCP services,
/// along with a list of requirements necessary for the label to be applied.
///
///
/// To get more information about AccessLevel, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.accessLevels)
/// * How-to Guides
/// * [Access Policy Quickstart](https://cloud.google.com/access-context-manager/docs/quickstart)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a <span pulumi-lang-nodejs="`billingProject`" pulumi-lang-dotnet="`BillingProject`" pulumi-lang-go="`billingProject`" pulumi-lang-python="`billing_project`" pulumi-lang-yaml="`billingProject`" pulumi-lang-java="`billingProject`">`billing_project`</span> and set <span pulumi-lang-nodejs="`userProjectOverride`" pulumi-lang-dotnet="`UserProjectOverride`" pulumi-lang-go="`userProjectOverride`" pulumi-lang-python="`user_project_override`" pulumi-lang-yaml="`userProjectOverride`" pulumi-lang-java="`userProjectOverride`">`user_project_override`</span> to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// <span pulumi-lang-nodejs="`billingProject`" pulumi-lang-dotnet="`BillingProject`" pulumi-lang-go="`billingProject`" pulumi-lang-python="`billing_project`" pulumi-lang-yaml="`billingProject`" pulumi-lang-java="`billingProject`">`billing_project`</span> you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Access Level Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
/// parent: "organizations/123456789",
/// title: "my policy",
/// });
/// const access_level = new gcp.accesscontextmanager.AccessLevel("access-level", {
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
/// regions: [
/// "CH",
/// "IT",
/// "US",
/// ],
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
/// parent="organizations/123456789",
/// title="my policy")
/// access_level = gcp.accesscontextmanager.AccessLevel("access-level",
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
/// "regions": [
/// "CH",
/// "IT",
/// "US",
/// ],
/// }],
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
/// var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
/// {
/// Parent = "organizations/123456789",
/// Title = "my policy",
/// });
///
/// var access_level = new Gcp.AccessContextManager.AccessLevel("access-level", new()
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
/// "CH",
/// "IT",
/// "US",
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// Parent: pulumi.String("organizations/123456789"),
/// Title:  pulumi.String("my policy"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewAccessLevel(ctx, "access-level", &accesscontextmanager.AccessLevelArgs{
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
/// pulumi.String("CH"),
/// pulumi.String("IT"),
/// pulumi.String("US"),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevel;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevelArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.AccessLevelBasicArgs;
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
/// var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
/// .parent("organizations/123456789")
/// .title("my policy")
/// .build());
///
/// var access_level = new AccessLevel("access-level", AccessLevelArgs.builder()
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
/// .regions(
/// "CH",
/// "IT",
/// "US")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// access-level:
/// type: gcp:accesscontextmanager:AccessLevel
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
/// - CH
/// - IT
/// - US
/// access-policy:
/// type: gcp:accesscontextmanager:AccessPolicy
/// properties:
/// parent: organizations/123456789
/// title: my policy
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// AccessLevel can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AccessLevel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessLevel:AccessLevel default {{name}}
/// ```
class AccessLevel extends CustomResource {
  /// A set of predefined conditions for the access level and a combining function.
  /// Structure is documented below.
  late final Output<AccessLevelBasic?> basic;

  /// Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// See CEL spec at: https://github.com/google/cel-spec.
  /// Structure is documented below.
  late final Output<AccessLevelCustom?> custom;

  /// Description of the AccessLevel and its use. Does not affect behavior.
  late final Output<String?> description;

  /// Resource name for the Access Level. The<span pulumi-lang-nodejs=" shortName " pulumi-lang-dotnet=" ShortName " pulumi-lang-go=" shortName " pulumi-lang-python=" short_name " pulumi-lang-yaml=" shortName " pulumi-lang-java=" shortName "> short_name </span>component must begin
  /// with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  late final Output<String> name;

  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  late final Output<String> parent;

  /// Human readable title. Must be unique within the Policy.
  late final Output<String> title;

  AccessLevel(
    String name, {
    AccessLevelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/accessLevel:AccessLevel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.basic = Output.createUnknown<AccessLevelBasic?>();
    this.custom = Output.createUnknown<AccessLevelCustom?>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.parent = Output.createUnknown<String>();
    this.title = Output.createUnknown<String>();
  }
}
