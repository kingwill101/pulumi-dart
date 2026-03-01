import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_args.dart';
import 'stack_parameter.dart';
import 'stack_state.dart';

/// Provides a ROS Stack resource.
///
/// For information about ROS Stack and how to use it, see [What is Stack](https://www.alibabacloud.com/help/en/doc-detail/132086.htm).
///
/// > **NOTE:** Available since v1.106.0.
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
/// const example = new alicloud.ros.Stack("example", {
///     stackName: "tf-testaccstack",
///     templateBody: `    {
///     \\t\\"ROSTemplateFormatVersion\\": \\"2015-09-01\\"
///     }
/// `,
///     stackPolicyBody: `    {
///     \\t\\"Statement\\": [{
///     \\t\\t\\"Action\\": \\"Update:Delete\\",
///     \\t\\t\\"Resource\\": \\"*\\",
///     \\t\\t\\"Effect\\": \\"Allow\\",
///     \\t\\t\\"Principal\\": \\"*\\"
///     \\t}]
///     }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ros.Stack("example",
///     stack_name="tf-testaccstack",
///     template_body="""    {
///     \t\"ROSTemplateFormatVersion\": \"2015-09-01\"
///     }
/// """,
///     stack_policy_body="""    {
///     \t\"Statement\": [{
///     \t\t\"Action\": \"Update:Delete\",
///     \t\t\"Resource\": \"*\",
///     \t\t\"Effect\": \"Allow\",
///     \t\t\"Principal\": \"*\"
///     \t}]
///     }
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
///     var example = new AliCloud.Ros.Stack("example", new()
///     {
///         StackName = "tf-testaccstack",
///         TemplateBody = @"    {
///     \t\""ROSTemplateFormatVersion\"": \""2015-09-01\""
///     }
/// ",
///         StackPolicyBody = @"    {
///     \t\""Statement\"": [{
///     \t\t\""Action\"": \""Update:Delete\"",
///     \t\t\""Resource\"": \""*\"",
///     \t\t\""Effect\"": \""Allow\"",
///     \t\t\""Principal\"": \""*\""
///     \t}]
///     }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ros.NewStack(ctx, "example", &ros.StackArgs{
/// 			StackName:    pulumi.String("tf-testaccstack"),
/// 			TemplateBody: pulumi.String("    {\n    \\t\\\"ROSTemplateFormatVersion\\\": \\\"2015-09-01\\\"\n    }\n"),
/// 			StackPolicyBody: pulumi.String(`    {
///     \t\"Statement\": [{
///     \t\t\"Action\": \"Update:Delete\",
///     \t\t\"Resource\": \"*\",
///     \t\t\"Effect\": \"Allow\",
///     \t\t\"Principal\": \"*\"
///     \t}]
///     }
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
/// import com.pulumi.alicloud.ros.Stack;
/// import com.pulumi.alicloud.ros.StackArgs;
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
///         var example = new Stack("example", StackArgs.builder()
///             .stackName("tf-testaccstack")
///             .templateBody("""
///     {
///     \t\"ROSTemplateFormatVersion\": \"2015-09-01\"
///     }
///             """)
///             .stackPolicyBody("""
///     {
///     \t\"Statement\": [{
///     \t\t\"Action\": \"Update:Delete\",
///     \t\t\"Resource\": \"*\",
///     \t\t\"Effect\": \"Allow\",
///     \t\t\"Principal\": \"*\"
///     \t}]
///     }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ros:Stack
///     properties:
///       stackName: tf-testaccstack
///       templateBody: |2
///             {
///             \t\"ROSTemplateFormatVersion\": \"2015-09-01\"
///             }
///       stackPolicyBody: |2
///             {
///             \t\"Statement\": [{
///             \t\t\"Action\": \"Update:Delete\",
///             \t\t\"Resource\": \"*\",
///             \t\t\"Effect\": \"Allow\",
///             \t\t\"Principal\": \"*\"
///             \t}]
///             }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ROS Stack can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ros/stack:Stack example <stack_id>
/// ```
class Stack extends pulumi.CustomResource {
  /// Specifies whether to delete the stack after it is created.
  late final pulumi.Output<String?> createOption;
  /// Specifies whether to enable deletion protection on the stack. Valid values: `Disabled`, `Enabled`. Default to: `Disabled`
  late final pulumi.Output<String?> deletionProtection;
  /// Specifies whether to disable rollback on stack creation failure. Default to: `false`.
  late final pulumi.Output<bool?> disableRollback;
  /// The callback URL for receiving stack event N. Only HTTP POST is supported. Maximum value of N: 5.
  late final pulumi.Output<List<String>?> notificationUrls;
  /// The parameters. If the parameter name and value are not specified, ROS will use the default value specified in the template.
  late final pulumi.Output<List<StackParameter>?> parameters;
  /// The name of the RAM role. ROS assumes the specified RAM role to create the stack and call API operations by using the credentials of the role.
  late final pulumi.Output<String?> ramRoleName;
  /// Specifies whether to enable replacement update after a resource attribute that does not support modification update is changed. Modification update keeps the physical ID of the resource unchanged. However, the resource is deleted and then recreated, and its physical ID is changed if replacement update is enabled.
  late final pulumi.Output<String?> replacementOption;
  /// The retain all resources.
  late final pulumi.Output<bool?> retainAllResources;
  /// Specifies whether to retain the resources in the stack.
  late final pulumi.Output<List<String>?> retainResources;
  /// The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  late final pulumi.Output<String> stackName;
  /// The structure that contains the stack policy body. The stack policy body must be 1 to 16,384 bytes in length.
  late final pulumi.Output<String?> stackPolicyBody;
  /// The structure that contains the body of the temporary overriding stack policy. The stack policy body must be 1 to 16,384 bytes in length.
  late final pulumi.Output<String?> stackPolicyDuringUpdateBody;
  /// The URL of the file that contains the temporary overriding stack policy. The URL must point to a policy located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/stack-policy/demo and oss://ros/stack-policy/demo?RegionId=cn-hangzhou. The policy can be up to 16,384 bytes in length and the URL can be up to 1,350 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  late final pulumi.Output<String?> stackPolicyDuringUpdateUrl;
  /// The URL of the file that contains the stack policy. The URL must point to a policy located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/stack-policy/demo and oss://ros/stack-policy/demo?RegionId=cn-hangzhou. The policy can be up to 16,384 bytes in length and the URL can be up to 1,350 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  late final pulumi.Output<String?> stackPolicyUrl;
  /// The status of Stack.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The structure that contains the template body. The template body must be 1 to 524,288 bytes in length. If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.
  late final pulumi.Output<String?> templateBody;
  /// The URL of the file that contains the template body. The URL must point to a template located in an HTTP or HTTPS web server or an Alibaba Cloud OSS bucket. Examples: oss://ros/template/demo and oss://ros/template/demo?RegionId=cn-hangzhou. The template must be 1 to 524,288 bytes in length. If the region of the OSS bucket is not specified, the RegionId value is used by default.
  late final pulumi.Output<String?> templateUrl;
  /// The version of the template.
  late final pulumi.Output<String?> templateVersion;
  /// The timeout period that is specified for the stack creation request. Default to: `60`.
  late final pulumi.Output<int?> timeoutInMinutes;
  /// Specifies whether to use the values that were passed last time for the parameters that you do not specify in the current request.
  late final pulumi.Output<bool?> usePreviousParameters;

  /// Creates a new [Stack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stack]. {@macro pulumi_ros_stack_stack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stack(
    String name, {
    StackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ros/stack:Stack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createOption = registerOutput<String?>('createOption');
    this.deletionProtection = registerOutput<String?>('deletionProtection');
    this.disableRollback = registerOutput<bool?>('disableRollback');
    this.notificationUrls = registerOutput<List<String>?>('notificationUrls');
    this.parameters = registerOutput<List<StackParameter>?>('parameters');
    this.ramRoleName = registerOutput<String?>('ramRoleName');
    this.replacementOption = registerOutput<String?>('replacementOption');
    this.retainAllResources = registerOutput<bool?>('retainAllResources');
    this.retainResources = registerOutput<List<String>?>('retainResources');
    this.stackName = registerOutput<String>('stackName');
    this.stackPolicyBody = registerOutput<String?>('stackPolicyBody');
    this.stackPolicyDuringUpdateBody = registerOutput<String?>('stackPolicyDuringUpdateBody');
    this.stackPolicyDuringUpdateUrl = registerOutput<String?>('stackPolicyDuringUpdateUrl');
    this.stackPolicyUrl = registerOutput<String?>('stackPolicyUrl');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.templateBody = registerOutput<String?>('templateBody');
    this.templateUrl = registerOutput<String?>('templateUrl');
    this.templateVersion = registerOutput<String?>('templateVersion');
    this.timeoutInMinutes = registerOutput<int?>('timeoutInMinutes');
    this.usePreviousParameters = registerOutput<bool?>('usePreviousParameters');
  }

  /// Gets an existing [Stack] resource's state with the given [name] and [id].
  static Stack get(
    String name,
    pulumi.Input<String> id, {
    StackState? state,
  }) {
    return Stack._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Stack._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ros/stack:Stack',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createOption = registerOutput<String?>('createOption');
    this.deletionProtection = registerOutput<String?>('deletionProtection');
    this.disableRollback = registerOutput<bool?>('disableRollback');
    this.notificationUrls = registerOutput<List<String>?>('notificationUrls');
    this.parameters = registerOutput<List<StackParameter>?>('parameters');
    this.ramRoleName = registerOutput<String?>('ramRoleName');
    this.replacementOption = registerOutput<String?>('replacementOption');
    this.retainAllResources = registerOutput<bool?>('retainAllResources');
    this.retainResources = registerOutput<List<String>?>('retainResources');
    this.stackName = registerOutput<String>('stackName');
    this.stackPolicyBody = registerOutput<String?>('stackPolicyBody');
    this.stackPolicyDuringUpdateBody = registerOutput<String?>('stackPolicyDuringUpdateBody');
    this.stackPolicyDuringUpdateUrl = registerOutput<String?>('stackPolicyDuringUpdateUrl');
    this.stackPolicyUrl = registerOutput<String?>('stackPolicyUrl');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.templateBody = registerOutput<String?>('templateBody');
    this.templateUrl = registerOutput<String?>('templateUrl');
    this.templateVersion = registerOutput<String?>('templateVersion');
    this.timeoutInMinutes = registerOutput<int?>('timeoutInMinutes');
    this.usePreviousParameters = registerOutput<bool?>('usePreviousParameters');
  }
}
