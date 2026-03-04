import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_version_args.dart';
import 'policy_version_state.dart';

/// Provides a Resource Manager Policy Version resource.
/// For information about Resource Manager Policy Version and how to use it, see [What is Resource Manager Policy Version](https://www.alibabacloud.com/help/en/doc-detail/116817.htm).
///
/// &gt; **NOTE:** Available since v1.84.0.
///
/// &gt; **NOTE:** It is not recommended to use this resource management policy version, it is recommended to directly use the policy resource to manage your policy. Please refer to the link for usage resource_manager_policy.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tfexample";
/// const example = new alicloud.resourcemanager.Policy("example", {
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
/// const examplePolicyVersion = new alicloud.resourcemanager.PolicyVersion("example", {
///     policyName: example.policyName,
///     policyDocument: `\\t\\t{
/// \\t\\t\\t\\"Statement\\": [{
/// \\t\\t\\t\\t\\"Action\\": [\\"oss:*\\"],
/// \\t\\t\\t\\t\\"Effect\\": \\"Allow\\",
/// \\t\\t\\t\\t\\"Resource\\": [\\"acs:oss:*:*:myphotos\\"]
/// \\t\\t\\t}],
/// \\t\\t\\t\\"Version\\": \\"1\\"
/// \\t\\t}
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// example = alicloud.resourcemanager.Policy("example",
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
/// example_policy_version = alicloud.resourcemanager.PolicyVersion("example",
///     policy_name=example.policy_name,
///     policy_document="""\t\t{
/// \t\t\t\"Statement\": [{
/// \t\t\t\t\"Action\": [\"oss:*\"],
/// \t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\"Resource\": [\"acs:oss:*:*:myphotos\"]
/// \t\t\t}],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tfexample";
///     var example = new AliCloud.ResourceManager.Policy("example", new()
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
///     var examplePolicyVersion = new AliCloud.ResourceManager.PolicyVersion("example", new()
///     {
///         PolicyName = example.PolicyName,
///         PolicyDocument = @"\t\t{
/// \t\t\t\""Statement\"": [{
/// \t\t\t\t\""Action\"": [\""oss:*\""],
/// \t\t\t\t\""Effect\"": \""Allow\"",
/// \t\t\t\t\""Resource\"": [\""acs:oss:*:*:myphotos\""]
/// \t\t\t}],
/// \t\t\t\""Version\"": \""1\""
/// \t\t}
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		example, err := resourcemanager.NewPolicy(ctx, "example", &resourcemanager.PolicyArgs{
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
/// 		_, err = resourcemanager.NewPolicyVersion(ctx, "example", &resourcemanager.PolicyVersionArgs{
/// 			PolicyName: example.PolicyName,
/// 			PolicyDocument: pulumi.String(`\t\t{
/// \t\t\t\"Statement\": [{
/// \t\t\t\t\"Action\": [\"oss:*\"],
/// \t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\"Resource\": [\"acs:oss:*:*:myphotos\"]
/// \t\t\t}],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
/// `),
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
/// import com.pulumi.alicloud.resourcemanager.Policy;
/// import com.pulumi.alicloud.resourcemanager.PolicyArgs;
/// import com.pulumi.alicloud.resourcemanager.PolicyVersion;
/// import com.pulumi.alicloud.resourcemanager.PolicyVersionArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         var example = new Policy("example", PolicyArgs.builder()
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
///         var examplePolicyVersion = new PolicyVersion("examplePolicyVersion", PolicyVersionArgs.builder()
///             .policyName(example.policyName())
///             .policyDocument("""
/// \t\t{
/// \t\t\t\"Statement\": [{
/// \t\t\t\t\"Action\": [\"oss:*\"],
/// \t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\"Resource\": [\"acs:oss:*:*:myphotos\"]
/// \t\t\t}],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   example:
///     type: alicloud:resourcemanager:Policy
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
///   examplePolicyVersion:
///     type: alicloud:resourcemanager:PolicyVersion
///     name: example
///     properties:
///       policyName: ${example.policyName}
///       policyDocument: |
///         \t\t{
///         \t\t\t\"Statement\": [{
///         \t\t\t\t\"Action\": [\"oss:*\"],
///         \t\t\t\t\"Effect\": \"Allow\",
///         \t\t\t\t\"Resource\": [\"acs:oss:*:*:myphotos\"]
///         \t\t\t}],
///         \t\t\t\"Version\": \"1\"
///         \t\t}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Policy Version can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/policyVersion:PolicyVersion example tftest:v2
/// ```
class PolicyVersion extends pulumi.CustomResource {
  /// Specifies whether to set the policy version as the default version. Default to `false`.
  late final pulumi.Output<bool?> isDefaultVersion;

  /// The content of the policy. The content must be 1 to 2,048 characters in length.
  late final pulumi.Output<String> policyDocument;

  /// The name of the policy. Name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  late final pulumi.Output<String> policyName;

  /// Creates a new [PolicyVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyVersion]. {@macro pulumi_resourcemanager_policy_version_policy_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyVersion(
    String name, {
    PolicyVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/policyVersion:PolicyVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    isDefaultVersion = registerOutput<bool?>('isDefaultVersion');
    policyDocument = registerOutput<String>('policyDocument');
    policyName = registerOutput<String>('policyName');
  }

  /// Gets an existing [PolicyVersion] resource's state with the given [name] and [id].
  static PolicyVersion get(
    String name,
    pulumi.Input<String> id, {
    PolicyVersionState? state,
  }) {
    return PolicyVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolicyVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/policyVersion:PolicyVersion',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    isDefaultVersion = registerOutput<bool?>('isDefaultVersion');
    policyDocument = registerOutput<String>('policyDocument');
    policyName = registerOutput<String>('policyName');
  }
}
