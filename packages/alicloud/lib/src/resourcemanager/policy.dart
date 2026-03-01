import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';

/// Provides a Resource Manager Policy resource.
/// For information about Resource Manager Policy and how to use it, see [What is Resource Manager Policy](https://www.alibabacloud.com/help/en/doc-detail/93732.htm).
///
/// > **NOTE:** Available since v1.83.0.
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
/// 		_, err := resourcemanager.NewPolicy(ctx, "example", &resourcemanager.PolicyArgs{
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/policy:Policy example abc12345
/// ```
class Policy extends pulumi.CustomResource {
  /// The version of the policy. Default to v1.
  late final pulumi.Output<String> defaultVersion;
  /// The description of the policy. The description must be 1 to 1,024 characters in length.
  late final pulumi.Output<String?> description;
  /// The content of the policy. The content must be 1 to 2,048 characters in length.
  late final pulumi.Output<String> policyDocument;
  /// The name of the policy. name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  late final pulumi.Output<String> policyName;
  /// The type of the policy. Valid values: `Custom`, `System`.
  late final pulumi.Output<String> policyType;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_resourcemanager_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultVersion = registerOutput<String>('defaultVersion');
    this.description = registerOutput<String?>('description');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyName = registerOutput<String>('policyName');
    this.policyType = registerOutput<String>('policyType');
  }
}
