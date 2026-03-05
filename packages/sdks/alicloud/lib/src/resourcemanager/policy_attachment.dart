import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_attachment_args.dart';
import 'policy_attachment_state.dart';

/// Provides a Resource Manager Policy Attachment resource to attaches a policy to an object. After you attach a policy to an object, the object has the operation permissions on the current resource group or the resources under the current account.
/// For information about Resource Manager Policy Attachment and how to use it, see [How to authorize and manage resource groups](https://www.alibabacloud.com/help/en/doc-detail/94490.htm).
///
/// &gt; **NOTE:** Available since v1.93.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tfexamplename";
/// const exampleUser = new alicloud.ram.User("example", {name: name});
/// const examplePolicy = new alicloud.resourcemanager.Policy("example", {
///     policyName: name,
///     policyDocument: `\\t\\t{
/// \\t\\t\\t\\"Statement\\": [{
/// \\t\\t\\t\\t\\"Action\\": [\\"oss:*\\"],
/// \\t\\t\\t\\t\\"Effect\\": \\"Allow\\",
/// \\t\\t\\t\\t\\"Resource\\": [\\"acs:oss:*:*:*\\"]
/// \\t\\t\\t}],
/// \\t\\t\\t\\"Version\\": \\"1\\"
/// \\t\\t}
/// `,
/// });
/// const example = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// // Get Alicloud Account Id
/// const exampleGetAccount = alicloud.getAccount({});
/// // Attach the custom policy to resource group
/// const examplePolicyAttachment = new alicloud.resourcemanager.PolicyAttachment("example", {
///     policyName: examplePolicy.policyName,
///     policyType: "Custom",
///     principalName: std.format({
///         input: "%s@%s.onaliyun.com",
///         args: [
///             exampleUser.name,
///             exampleGetAccount.then(exampleGetAccount => exampleGetAccount.id),
///         ],
///     }).then(invoke => invoke.result),
///     principalType: "IMSUser",
///     resourceGroupId: example.then(example => example.ids?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexamplename"
/// example_user = alicloud.ram.User("example", name=name)
/// example_policy = alicloud.resourcemanager.Policy("example",
///     policy_name=name,
///     policy_document="""\t\t{
/// \t\t\t\"Statement\": [{
/// \t\t\t\t\"Action\": [\"oss:*\"],
/// \t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\"Resource\": [\"acs:oss:*:*:*\"]
/// \t\t\t}],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
/// """)
/// example = alicloud.resourcemanager.get_resource_groups(status="OK")
/// # Get Alicloud Account Id
/// example_get_account = alicloud.get_account()
/// # Attach the custom policy to resource group
/// example_policy_attachment = alicloud.resourcemanager.PolicyAttachment("example",
///     policy_name=example_policy.policy_name,
///     policy_type="Custom",
///     principal_name=std.format(input="%s@%s.onaliyun.com",
///         args=[
///             example_user.name,
///             example_get_account.id,
///         ]).result,
///     principal_type="IMSUser",
///     resource_group_id=example.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tfexamplename";
///     var exampleUser = new AliCloud.Ram.User("example", new()
///     {
///         Name = name,
///     });
///
///     var examplePolicy = new AliCloud.ResourceManager.Policy("example", new()
///     {
///         PolicyName = name,
///         PolicyDocument = @"\t\t{
/// \t\t\t\""Statement\"": [{
/// \t\t\t\t\""Action\"": [\""oss:*\""],
/// \t\t\t\t\""Effect\"": \""Allow\"",
/// \t\t\t\t\""Resource\"": [\""acs:oss:*:*:*\""]
/// \t\t\t}],
/// \t\t\t\""Version\"": \""1\""
/// \t\t}
/// ",
///     });
///
///     var example = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     // Get Alicloud Account Id
///     var exampleGetAccount = AliCloud.GetAccount.Invoke();
///
///     // Attach the custom policy to resource group
///     var examplePolicyAttachment = new AliCloud.ResourceManager.PolicyAttachment("example", new()
///     {
///         PolicyName = examplePolicy.PolicyName,
///         PolicyType = "Custom",
///         PrincipalName = Std.Format.Invoke(new()
///         {
///             Input = "%s@%s.onaliyun.com",
///             Args = new[]
///             {
///                 exampleUser.Name,
///                 exampleGetAccount.Apply(getAccountResult => getAccountResult.Id),
///             },
///         }).Apply(invoke => invoke.Result),
///         PrincipalType = "IMSUser",
///         ResourceGroupId = example.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexamplename"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		exampleUser, err := ram.NewUser(ctx, "example", &ram.UserArgs{
/// 			Name: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePolicy, err := resourcemanager.NewPolicy(ctx, "example", &resourcemanager.PolicyArgs{
/// 			PolicyName: pulumi.String(name),
/// 			PolicyDocument: pulumi.String(`\t\t{
/// \t\t\t\"Statement\": [{
/// \t\t\t\t\"Action\": [\"oss:*\"],
/// \t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\"Resource\": [\"acs:oss:*:*:*\"]
/// \t\t\t}],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Get Alicloud Account Id
/// 		exampleGetAccount, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s@%s.onaliyun.com",
/// 			Args: []interface{}{
/// 				exampleUser.Name,
/// 				exampleGetAccount.Id,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Attach the custom policy to resource group
/// 		_, err = resourcemanager.NewPolicyAttachment(ctx, "example", &resourcemanager.PolicyAttachmentArgs{
/// 			PolicyName:      examplePolicy.PolicyName,
/// 			PolicyType:      pulumi.String("Custom"),
/// 			PrincipalName:   pulumi.String(invokeFormat.Result),
/// 			PrincipalType:   pulumi.String("IMSUser"),
/// 			ResourceGroupId: pulumi.String(example.Ids[0]),
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
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.resourcemanager.Policy;
/// import com.pulumi.alicloud.resourcemanager.PolicyArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.resourcemanager.PolicyAttachment;
/// import com.pulumi.alicloud.resourcemanager.PolicyAttachmentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tfexamplename");
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .name(name)
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .policyName(name)
///             .policyDocument("""
/// \t\t{
/// \t\t\t\"Statement\": [{
/// \t\t\t\t\"Action\": [\"oss:*\"],
/// \t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\"Resource\": [\"acs:oss:*:*:*\"]
/// \t\t\t}],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
///             """)
///             .build());
///
///         final var example = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         // Get Alicloud Account Id
///         final var exampleGetAccount = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         // Attach the custom policy to resource group
///         var examplePolicyAttachment = new PolicyAttachment("examplePolicyAttachment", PolicyAttachmentArgs.builder()
///             .policyName(examplePolicy.policyName())
///             .policyType("Custom")
///             .principalName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s@%s.onaliyun.com")
///                 .args(
///                     exampleUser.name(),
///                     exampleGetAccount.id())
///                 .build()).result())
///             .principalType("IMSUser")
///             .resourceGroupId(example.ids()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexamplename
/// resources:
///   exampleUser:
///     type: alicloud:ram:User
///     name: example
///     properties:
///       name: ${name}
///   examplePolicy:
///     type: alicloud:resourcemanager:Policy
///     name: example
///     properties:
///       policyName: ${name}
///       policyDocument: |
///         \t\t{
///         \t\t\t\"Statement\": [{
///         \t\t\t\t\"Action\": [\"oss:*\"],
///         \t\t\t\t\"Effect\": \"Allow\",
///         \t\t\t\t\"Resource\": [\"acs:oss:*:*:*\"]
///         \t\t\t}],
///         \t\t\t\"Version\": \"1\"
///         \t\t}
///   # Attach the custom policy to resource group
///   examplePolicyAttachment:
///     type: alicloud:resourcemanager:PolicyAttachment
///     name: example
///     properties:
///       policyName: ${examplePolicy.policyName}
///       policyType: Custom
///       principalName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s@%s.onaliyun.com'
///             args:
///               - ${exampleUser.name}
///               - ${exampleGetAccount.id}
///           return: result
///       principalType: IMSUser
///       resourceGroupId: ${example.ids[0]}
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
///   # Get Alicloud Account Id
///   exampleGetAccount:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Policy Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/policyAttachment:PolicyAttachment example tf-testaccrdpolicy:Custom:tf-testaccrdpolicy@11827252********.onaliyun.com:IMSUser:rg******
/// ```
class PolicyAttachment extends pulumi.CustomResource {
  /// The name of the policy. name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  late final pulumi.Output<String> policyName;
  /// The type of the policy. Valid values: `Custom`, `System`.
  late final pulumi.Output<String> policyType;
  /// The name of the object to which you want to attach the policy.
  late final pulumi.Output<String> principalName;
  /// The type of the object to which you want to attach the policy. Valid values: `IMSUser`: RAM user, `IMSGroup`: RAM user group, `ServiceRole`: RAM role.
  late final pulumi.Output<String> principalType;
  /// The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs.
  late final pulumi.Output<String> resourceGroupId;

  /// Creates a new [PolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyAttachment]. {@macro pulumi_resourcemanager_policy_attachment_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyAttachment(
    String name, {
    PolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/policyAttachment:PolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyName = registerOutput<String>('policyName');
    policyType = registerOutput<String>('policyType');
    principalName = registerOutput<String>('principalName');
    principalType = registerOutput<String>('principalType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
  }

  /// Gets an existing [PolicyAttachment] resource's state with the given [name] and [id].
  static PolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    PolicyAttachmentState? state,
  }) {
    return PolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/policyAttachment:PolicyAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyName = registerOutput<String>('policyName');
    policyType = registerOutput<String>('policyType');
    principalName = registerOutput<String>('principalName');
    principalType = registerOutput<String>('principalType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
  }
}
