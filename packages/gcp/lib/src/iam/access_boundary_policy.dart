import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_boundary_policy_args.dart';
import 'access_boundary_policy_rule.dart';

/// Represents a collection of access boundary policies to apply to a given resource.
/// **NOTE**: This is a private feature and users should contact GCP support
/// if they would like to test it.
///
///
///
/// ## Example Usage
///
/// ### Iam Access Boundary Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
///     parent: project.orgId.apply(orgId => `organizations/${orgId}`),
///     title: "my policy",
/// });
/// const test_access = new gcp.accesscontextmanager.AccessLevel("test-access", {
///     parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
///     name: pulumi.interpolate`accessPolicies/${access_policy.name}/accessLevels/chromeos_no_lock`,
///     title: "chromeos_no_lock",
///     basic: {
///         conditions: [{
///             devicePolicy: {
///                 requireScreenLock: true,
///                 osConstraints: [{
///                     osType: "DESKTOP_CHROME_OS",
///                 }],
///             },
///             regions: [
///                 "CH",
///                 "IT",
///                 "US",
///             ],
///         }],
///     },
/// });
/// const example = new gcp.iam.AccessBoundaryPolicy("example", {
///     parent: std.urlencodeOutput({
///         input: pulumi.interpolate`cloudresourcemanager.googleapis.com/projects/${project.projectId}`,
///     }).apply(invoke => invoke.result),
///     name: "my-ab-policy",
///     displayName: "My AB policy",
///     rules: [{
///         description: "AB rule",
///         accessBoundaryRule: {
///             availableResource: "*",
///             availablePermissions: ["*"],
///             availabilityCondition: {
///                 title: "Access level expr",
///                 expression: pulumi.all([project.orgId, test_access.name]).apply(([orgId, name]) => `request.matchAccessLevels('${orgId}', ['${name}'])`),
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// project = gcp.organizations.Project("project",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
///     parent=project.org_id.apply(lambda org_id: f"organizations/{org_id}"),
///     title="my policy")
/// test_access = gcp.accesscontextmanager.AccessLevel("test-access",
///     parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
///     name=access_policy.name.apply(lambda name: f"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
///     title="chromeos_no_lock",
///     basic={
///         "conditions": [{
///             "device_policy": {
///                 "require_screen_lock": True,
///                 "os_constraints": [{
///                     "os_type": "DESKTOP_CHROME_OS",
///                 }],
///             },
///             "regions": [
///                 "CH",
///                 "IT",
///                 "US",
///             ],
///         }],
///     })
/// example = gcp.iam.AccessBoundaryPolicy("example",
///     parent=std.urlencode_output(input=project.project_id.apply(lambda project_id: f"cloudresourcemanager.googleapis.com/projects/{project_id}")).apply(lambda invoke: invoke.result),
///     name="my-ab-policy",
///     display_name="My AB policy",
///     rules=[{
///         "description": "AB rule",
///         "access_boundary_rule": {
///             "available_resource": "*",
///             "available_permissions": ["*"],
///             "availability_condition": {
///                 "title": "Access level expr",
///                 "expression": pulumi.Output.all(
///                     org_id=project.org_id,
///                     name=test_access.name
/// ).apply(lambda resolved_outputs: f"request.matchAccessLevels('{resolved_outputs['org_id']}', ['{resolved_outputs['name']}'])")
/// ,
///             },
///         },
///     }])
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
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
///     {
///         Parent = project.OrgId.Apply(orgId => $"organizations/{orgId}"),
///         Title = "my policy",
///     });
///
///     var test_access = new Gcp.AccessContextManager.AccessLevel("test-access", new()
///     {
///         Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
///         Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
///         Title = "chromeos_no_lock",
///         Basic = new Gcp.AccessContextManager.Inputs.AccessLevelBasicArgs
///         {
///             Conditions = new[]
///             {
///                 new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionArgs
///                 {
///                     DevicePolicy = new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyArgs
///                     {
///                         RequireScreenLock = true,
///                         OsConstraints = new[]
///                         {
///                             new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyOsConstraintArgs
///                             {
///                                 OsType = "DESKTOP_CHROME_OS",
///                             },
///                         },
///                     },
///                     Regions = new[]
///                     {
///                         "CH",
///                         "IT",
///                         "US",
///                     },
///                 },
///             },
///         },
///     });
///
///     var example = new Gcp.Iam.AccessBoundaryPolicy("example", new()
///     {
///         Parent = Std.Urlencode.Invoke(new()
///         {
///             Input = project.ProjectId.Apply(projectId => $"cloudresourcemanager.googleapis.com/projects/{projectId}"),
///         }).Apply(invoke => invoke.Result),
///         Name = "my-ab-policy",
///         DisplayName = "My AB policy",
///         Rules = new[]
///         {
///             new Gcp.Iam.Inputs.AccessBoundaryPolicyRuleArgs
///             {
///                 Description = "AB rule",
///                 AccessBoundaryRule = new Gcp.Iam.Inputs.AccessBoundaryPolicyRuleAccessBoundaryRuleArgs
///                 {
///                     AvailableResource = "*",
///                     AvailablePermissions = new[]
///                     {
///                         "*",
///                     },
///                     AvailabilityCondition = new Gcp.Iam.Inputs.AccessBoundaryPolicyRuleAccessBoundaryRuleAvailabilityConditionArgs
///                     {
///                         Title = "Access level expr",
///                         Expression = Output.Tuple(project.OrgId, test_access.Name).Apply(values =>
///                         {
///                             var orgId = values.Item1;
///                             var name = values.Item2;
///                             return $"request.matchAccessLevels('{orgId}', ['{name}'])";
///                         }),
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// 			Parent: project.OrgId.ApplyT(func(orgId *string) (string, error) {
/// 				return fmt.Sprintf("organizations/%v", orgId), nil
/// 			}).(pulumi.StringOutput),
/// 			Title: pulumi.String("my policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test_access, err := accesscontextmanager.NewAccessLevel(ctx, "test-access", &accesscontextmanager.AccessLevelArgs{
/// 			Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v/accessLevels/chromeos_no_lock", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Title: pulumi.String("chromeos_no_lock"),
/// 			Basic: &accesscontextmanager.AccessLevelBasicArgs{
/// 				Conditions: accesscontextmanager.AccessLevelBasicConditionArray{
/// 					&accesscontextmanager.AccessLevelBasicConditionArgs{
/// 						DevicePolicy: &accesscontextmanager.AccessLevelBasicConditionDevicePolicyArgs{
/// 							RequireScreenLock: pulumi.Bool(true),
/// 							OsConstraints: accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArray{
/// 								&accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArgs{
/// 									OsType: pulumi.String("DESKTOP_CHROME_OS"),
/// 								},
/// 							},
/// 						},
/// 						Regions: pulumi.StringArray{
/// 							pulumi.String("CH"),
/// 							pulumi.String("IT"),
/// 							pulumi.String("US"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewAccessBoundaryPolicy(ctx, "example", &iam.AccessBoundaryPolicyArgs{
/// 			Parent: pulumi.String(std.UrlencodeOutput(ctx, std.UrlencodeOutputArgs{
/// 				Input: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 					return fmt.Sprintf("cloudresourcemanager.googleapis.com/projects/%v", projectId), nil
/// 				}).(pulumi.StringOutput),
/// 			}, nil).ApplyT(func(invoke std.UrlencodeResult) (*string, error) {
/// 				return invoke.Result, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Name:        pulumi.String("my-ab-policy"),
/// 			DisplayName: pulumi.String("My AB policy"),
/// 			Rules: iam.AccessBoundaryPolicyRuleArray{
/// 				&iam.AccessBoundaryPolicyRuleArgs{
/// 					Description: pulumi.String("AB rule"),
/// 					AccessBoundaryRule: &iam.AccessBoundaryPolicyRuleAccessBoundaryRuleArgs{
/// 						AvailableResource: pulumi.String("*"),
/// 						AvailablePermissions: pulumi.StringArray{
/// 							pulumi.String("*"),
/// 						},
/// 						AvailabilityCondition: &iam.AccessBoundaryPolicyRuleAccessBoundaryRuleAvailabilityConditionArgs{
/// 							Title: pulumi.String("Access level expr"),
/// 							Expression: pulumi.All(project.OrgId, test_access.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 								orgId := _args[0].(*string)
/// 								name := _args[1].(string)
/// 								return fmt.Sprintf("request.matchAccessLevels('%v', ['%v'])", orgId, name), nil
/// 							}).(pulumi.StringOutput),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevel;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevelArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.AccessLevelBasicArgs;
/// import com.pulumi.gcp.iam.AccessBoundaryPolicy;
/// import com.pulumi.gcp.iam.AccessBoundaryPolicyArgs;
/// import com.pulumi.gcp.iam.inputs.AccessBoundaryPolicyRuleArgs;
/// import com.pulumi.gcp.iam.inputs.AccessBoundaryPolicyRuleAccessBoundaryRuleArgs;
/// import com.pulumi.gcp.iam.inputs.AccessBoundaryPolicyRuleAccessBoundaryRuleAvailabilityConditionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.UrlencodeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
///             .parent(project.orgId().applyValue(_orgId -> String.format("organizations/%s", _orgId)))
///             .title("my policy")
///             .build());
///
///         var test_access = new AccessLevel("test-access", AccessLevelArgs.builder()
///             .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
///             .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/accessLevels/chromeos_no_lock", _name)))
///             .title("chromeos_no_lock")
///             .basic(AccessLevelBasicArgs.builder()
///                 .conditions(AccessLevelBasicConditionArgs.builder()
///                     .devicePolicy(AccessLevelBasicConditionDevicePolicyArgs.builder()
///                         .requireScreenLock(true)
///                         .osConstraints(AccessLevelBasicConditionDevicePolicyOsConstraintArgs.builder()
///                             .osType("DESKTOP_CHROME_OS")
///                             .build())
///                         .build())
///                     .regions(
///                         "CH",
///                         "IT",
///                         "US")
///                     .build())
///                 .build())
///             .build());
///
///         var example = new AccessBoundaryPolicy("example", AccessBoundaryPolicyArgs.builder()
///             .parent(StdFunctions.urlencode(UrlencodeArgs.builder()
///                 .input(project.projectId().applyValue(_projectId -> String.format("cloudresourcemanager.googleapis.com/projects/%s", _projectId)))
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .name("my-ab-policy")
///             .displayName("My AB policy")
///             .rules(AccessBoundaryPolicyRuleArgs.builder()
///                 .description("AB rule")
///                 .accessBoundaryRule(AccessBoundaryPolicyRuleAccessBoundaryRuleArgs.builder()
///                     .availableResource("*")
///                     .availablePermissions("*")
///                     .availabilityCondition(AccessBoundaryPolicyRuleAccessBoundaryRuleAvailabilityConditionArgs.builder()
///                         .title("Access level expr")
///                         .expression(Output.tuple(project.orgId(), test_access.name()).applyValue(values -> {
///                             var orgId = values.t1;
///                             var name = values.t2;
///                             return String.format("request.matchAccessLevels('%s', ['%s'])", orgId,name);
///                         }))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   test-access:
///     type: gcp:accesscontextmanager:AccessLevel
///     properties:
///       parent: accessPolicies/${["access-policy"].name}
///       name: accessPolicies/${["access-policy"].name}/accessLevels/chromeos_no_lock
///       title: chromeos_no_lock
///       basic:
///         conditions:
///           - devicePolicy:
///               requireScreenLock: true
///               osConstraints:
///                 - osType: DESKTOP_CHROME_OS
///             regions:
///               - CH
///               - IT
///               - US
///   access-policy:
///     type: gcp:accesscontextmanager:AccessPolicy
///     properties:
///       parent: organizations/${project.orgId}
///       title: my policy
///   example:
///     type: gcp:iam:AccessBoundaryPolicy
///     properties:
///       parent:
///         fn::invoke:
///           function: std:urlencode
///           arguments:
///             input: cloudresourcemanager.googleapis.com/projects/${project.projectId}
///           return: result
///       name: my-ab-policy
///       displayName: My AB policy
///       rules:
///         - description: AB rule
///           accessBoundaryRule:
///             availableResource: '*'
///             availablePermissions:
///               - '*'
///             availabilityCondition:
///               title: Access level expr
///               expression: request.matchAccessLevels('${project.orgId}', ['${["test-access"].name}'])
/// ```
///
///
/// ## Import
///
/// AccessBoundaryPolicy can be imported using any of these accepted formats:
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, AccessBoundaryPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/accessBoundaryPolicy:AccessBoundaryPolicy default {{parent}}/{{name}}
/// ```
class AccessBoundaryPolicy extends pulumi.CustomResource {
  /// The display name of the rule.
  late final pulumi.Output<String?> displayName;
  /// The hash of the resource. Used internally during updates.
  late final pulumi.Output<String> etag;
  /// The name of the policy.
  late final pulumi.Output<String> name;
  /// The attachment point is identified by its URL-encoded full resource name.
  late final pulumi.Output<String> parent;
  /// Rules to be applied.
  /// Structure is documented below.
  late final pulumi.Output<List<AccessBoundaryPolicyRule>> rules;

  /// Creates a new [AccessBoundaryPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessBoundaryPolicy]. {@macro pulumi_iam_access_boundary_policy_access_boundary_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessBoundaryPolicy(
    String name, {
    AccessBoundaryPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/accessBoundaryPolicy:AccessBoundaryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String?>('displayName');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.rules = registerOutput<List<AccessBoundaryPolicyRule>>('rules');
  }
}
