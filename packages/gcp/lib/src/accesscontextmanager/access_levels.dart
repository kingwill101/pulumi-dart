import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_levels_access_level.dart';
import 'access_levels_args.dart';

/// ## Example Usage
///
/// ### Access Context Manager Access Levels Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
///     parent: "organizations/123456789",
///     title: "my policy",
/// });
/// const access_levels = new gcp.accesscontextmanager.AccessLevels("access-levels", {
///     parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
///     accessLevels: [
///         {
///             name: pulumi.interpolate`accessPolicies/${access_policy.name}/accessLevels/chromeos_no_lock`,
///             title: "chromeos_no_lock",
///             basic: {
///                 conditions: [{
///                     devicePolicy: {
///                         requireScreenLock: true,
///                         osConstraints: [{
///                             osType: "DESKTOP_CHROME_OS",
///                         }],
///                     },
///                     regions: [
///                         "CH",
///                         "IT",
///                         "US",
///                     ],
///                 }],
///             },
///         },
///         {
///             name: pulumi.interpolate`accessPolicies/${access_policy.name}/accessLevels/mac_no_lock`,
///             title: "mac_no_lock",
///             basic: {
///                 conditions: [{
///                     devicePolicy: {
///                         requireScreenLock: true,
///                         osConstraints: [{
///                             osType: "DESKTOP_MAC",
///                         }],
///                     },
///                     regions: [
///                         "CH",
///                         "IT",
///                         "US",
///                     ],
///                 }],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
///     parent="organizations/123456789",
///     title="my policy")
/// access_levels = gcp.accesscontextmanager.AccessLevels("access-levels",
///     parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
///     access_levels=[
///         {
///             "name": access_policy.name.apply(lambda name: f"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
///             "title": "chromeos_no_lock",
///             "basic": {
///                 "conditions": [{
///                     "device_policy": {
///                         "require_screen_lock": True,
///                         "os_constraints": [{
///                             "os_type": "DESKTOP_CHROME_OS",
///                         }],
///                     },
///                     "regions": [
///                         "CH",
///                         "IT",
///                         "US",
///                     ],
///                 }],
///             },
///         },
///         {
///             "name": access_policy.name.apply(lambda name: f"accessPolicies/{name}/accessLevels/mac_no_lock"),
///             "title": "mac_no_lock",
///             "basic": {
///                 "conditions": [{
///                     "device_policy": {
///                         "require_screen_lock": True,
///                         "os_constraints": [{
///                             "os_type": "DESKTOP_MAC",
///                         }],
///                     },
///                     "regions": [
///                         "CH",
///                         "IT",
///                         "US",
///                     ],
///                 }],
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
///     {
///         Parent = "organizations/123456789",
///         Title = "my policy",
///     });
///
///     var access_levels = new Gcp.AccessContextManager.AccessLevels("access-levels", new()
///     {
///         Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
///         AccessLevelDetails = new[]
///         {
///             new Gcp.AccessContextManager.Inputs.AccessLevelsAccessLevelArgs
///             {
///                 Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
///                 Title = "chromeos_no_lock",
///                 Basic = new Gcp.AccessContextManager.Inputs.AccessLevelsAccessLevelBasicArgs
///                 {
///                     Conditions = new[]
///                     {
///                         new Gcp.AccessContextManager.Inputs.AccessLevelsAccessLevelBasicConditionArgs
///                         {
///                             DevicePolicy = new Gcp.AccessContextManager.Inputs.AccessLevelsAccessLevelBasicConditionDevicePolicyArgs
///                             {
///                                 RequireScreenLock = true,
///                                 OsConstraints = new[]
///                                 {
///                                     new Gcp.AccessContextManager.Inputs.AccessLevelsAccessLevelBasicConditionDevicePolicyOsConstraintArgs
///                                     {
///                                         OsType = "DESKTOP_CHROME_OS",
///                                     },
///                                 },
///                             },
///                             Regions = new[]
///                             {
///                                 "CH",
///                                 "IT",
///                                 "US",
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.AccessContextManager.Inputs.AccessLevelsAccessLevelArgs
///             {
///                 Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/accessLevels/mac_no_lock"),
///                 Title = "mac_no_lock",
///                 Basic = new Gcp.AccessContextManager.Inputs.AccessLevelsAccessLevelBasicArgs
///                 {
///                     Conditions = new[]
///                     {
///                         new Gcp.AccessContextManager.Inputs.AccessLevelsAccessLevelBasicConditionArgs
///                         {
///                             DevicePolicy = new Gcp.AccessContextManager.Inputs.AccessLevelsAccessLevelBasicConditionDevicePolicyArgs
///                             {
///                                 RequireScreenLock = true,
///                                 OsConstraints = new[]
///                                 {
///                                     new Gcp.AccessContextManager.Inputs.AccessLevelsAccessLevelBasicConditionDevicePolicyOsConstraintArgs
///                                     {
///                                         OsType = "DESKTOP_MAC",
///                                     },
///                                 },
///                             },
///                             Regions = new[]
///                             {
///                                 "CH",
///                                 "IT",
///                                 "US",
///                             },
///                         },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// 			Parent: pulumi.String("organizations/123456789"),
/// 			Title:  pulumi.String("my policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = accesscontextmanager.NewAccessLevels(ctx, "access-levels", &accesscontextmanager.AccessLevelsArgs{
/// 			Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			AccessLevels: accesscontextmanager.AccessLevelsAccessLevelArray{
/// 				&accesscontextmanager.AccessLevelsAccessLevelArgs{
/// 					Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("accessPolicies/%v/accessLevels/chromeos_no_lock", name), nil
/// 					}).(pulumi.StringOutput),
/// 					Title: pulumi.String("chromeos_no_lock"),
/// 					Basic: &accesscontextmanager.AccessLevelsAccessLevelBasicArgs{
/// 						Conditions: accesscontextmanager.AccessLevelsAccessLevelBasicConditionArray{
/// 							&accesscontextmanager.AccessLevelsAccessLevelBasicConditionArgs{
/// 								DevicePolicy: &accesscontextmanager.AccessLevelsAccessLevelBasicConditionDevicePolicyArgs{
/// 									RequireScreenLock: pulumi.Bool(true),
/// 									OsConstraints: accesscontextmanager.AccessLevelsAccessLevelBasicConditionDevicePolicyOsConstraintArray{
/// 										&accesscontextmanager.AccessLevelsAccessLevelBasicConditionDevicePolicyOsConstraintArgs{
/// 											OsType: pulumi.String("DESKTOP_CHROME_OS"),
/// 										},
/// 									},
/// 								},
/// 								Regions: pulumi.StringArray{
/// 									pulumi.String("CH"),
/// 									pulumi.String("IT"),
/// 									pulumi.String("US"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&accesscontextmanager.AccessLevelsAccessLevelArgs{
/// 					Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("accessPolicies/%v/accessLevels/mac_no_lock", name), nil
/// 					}).(pulumi.StringOutput),
/// 					Title: pulumi.String("mac_no_lock"),
/// 					Basic: &accesscontextmanager.AccessLevelsAccessLevelBasicArgs{
/// 						Conditions: accesscontextmanager.AccessLevelsAccessLevelBasicConditionArray{
/// 							&accesscontextmanager.AccessLevelsAccessLevelBasicConditionArgs{
/// 								DevicePolicy: &accesscontextmanager.AccessLevelsAccessLevelBasicConditionDevicePolicyArgs{
/// 									RequireScreenLock: pulumi.Bool(true),
/// 									OsConstraints: accesscontextmanager.AccessLevelsAccessLevelBasicConditionDevicePolicyOsConstraintArray{
/// 										&accesscontextmanager.AccessLevelsAccessLevelBasicConditionDevicePolicyOsConstraintArgs{
/// 											OsType: pulumi.String("DESKTOP_MAC"),
/// 										},
/// 									},
/// 								},
/// 								Regions: pulumi.StringArray{
/// 									pulumi.String("CH"),
/// 									pulumi.String("IT"),
/// 									pulumi.String("US"),
/// 								},
/// 							},
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevels;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevelsArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.AccessLevelsAccessLevelArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.AccessLevelsAccessLevelBasicArgs;
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
///         var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
///             .parent("organizations/123456789")
///             .title("my policy")
///             .build());
///
///         var access_levels = new AccessLevels("access-levels", AccessLevelsArgs.builder()
///             .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
///             .accessLevels(
///                 AccessLevelsAccessLevelArgs.builder()
///                     .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/accessLevels/chromeos_no_lock", _name)))
///                     .title("chromeos_no_lock")
///                     .basic(AccessLevelsAccessLevelBasicArgs.builder()
///                         .conditions(AccessLevelsAccessLevelBasicConditionArgs.builder()
///                             .devicePolicy(AccessLevelsAccessLevelBasicConditionDevicePolicyArgs.builder()
///                                 .requireScreenLock(true)
///                                 .osConstraints(AccessLevelsAccessLevelBasicConditionDevicePolicyOsConstraintArgs.builder()
///                                     .osType("DESKTOP_CHROME_OS")
///                                     .build())
///                                 .build())
///                             .regions(
///                                 "CH",
///                                 "IT",
///                                 "US")
///                             .build())
///                         .build())
///                     .build(),
///                 AccessLevelsAccessLevelArgs.builder()
///                     .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/accessLevels/mac_no_lock", _name)))
///                     .title("mac_no_lock")
///                     .basic(AccessLevelsAccessLevelBasicArgs.builder()
///                         .conditions(AccessLevelsAccessLevelBasicConditionArgs.builder()
///                             .devicePolicy(AccessLevelsAccessLevelBasicConditionDevicePolicyArgs.builder()
///                                 .requireScreenLock(true)
///                                 .osConstraints(AccessLevelsAccessLevelBasicConditionDevicePolicyOsConstraintArgs.builder()
///                                     .osType("DESKTOP_MAC")
///                                     .build())
///                                 .build())
///                             .regions(
///                                 "CH",
///                                 "IT",
///                                 "US")
///                             .build())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   access-levels:
///     type: gcp:accesscontextmanager:AccessLevels
///     properties:
///       parent: accessPolicies/${["access-policy"].name}
///       accessLevels:
///         - name: accessPolicies/${["access-policy"].name}/accessLevels/chromeos_no_lock
///           title: chromeos_no_lock
///           basic:
///             conditions:
///               - devicePolicy:
///                   requireScreenLock: true
///                   osConstraints:
///                     - osType: DESKTOP_CHROME_OS
///                 regions:
///                   - CH
///                   - IT
///                   - US
///         - name: accessPolicies/${["access-policy"].name}/accessLevels/mac_no_lock
///           title: mac_no_lock
///           basic:
///             conditions:
///               - devicePolicy:
///                   requireScreenLock: true
///                   osConstraints:
///                     - osType: DESKTOP_MAC
///                 regions:
///                   - CH
///                   - IT
///                   - US
///   access-policy:
///     type: gcp:accesscontextmanager:AccessPolicy
///     properties:
///       parent: organizations/123456789
///       title: my policy
/// ```
///
///
/// ## Import
///
/// AccessLevels can be imported using any of these accepted formats:
///
/// * `{{parent}}/accessLevels`
///
/// * `{{parent}}`
///
/// When using the `pulumi import` command, AccessLevels can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessLevels:AccessLevels default {{parent}}/accessLevels
/// ```
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessLevels:AccessLevels default {{parent}}
/// ```
class AccessLevels extends pulumi.CustomResource {
  /// The desired Access Levels that should replace all existing Access Levels in the Access Policy.
  /// Structure is documented below.
  late final pulumi.Output<List<AccessLevelsAccessLevel>?> accessLevels;

  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  late final pulumi.Output<String> parent;

  /// Creates a new [AccessLevels].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessLevels]. {@macro pulumi_accesscontextmanager_access_levels_access_levels_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessLevels(
    String name, {
    AccessLevelsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:accesscontextmanager/accessLevels:AccessLevels',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accessLevels = registerOutput<List<AccessLevelsAccessLevel>?>(
      'accessLevels',
    );
    this.parent = registerOutput<String>('parent');
  }
}
