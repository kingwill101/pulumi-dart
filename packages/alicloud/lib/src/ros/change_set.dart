import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_set_args.dart';
import 'change_set_parameter.dart';

/// Provides a ROS Change Set resource.
///
/// For information about ROS Change Set and how to use it, see [What is Change Set](https://www.alibabacloud.com/help/doc-detail/131051.htm).
///
/// > **NOTE:** Available since v1.105.0.
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
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const example = new alicloud.ros.ChangeSet("example", {
///     changeSetName: "example_value",
///     stackName: `tf-example-${_default.result}`,
///     changeSetType: "CREATE",
///     description: "Test From Terraform",
///     templateBody: "{\"ROSTemplateFormatVersion\":\"2015-09-01\"}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example = alicloud.ros.ChangeSet("example",
///     change_set_name="example_value",
///     stack_name=f"tf-example-{default['result']}",
///     change_set_type="CREATE",
///     description="Test From Terraform",
///     template_body="{\"ROSTemplateFormatVersion\":\"2015-09-01\"}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var example = new AliCloud.Ros.ChangeSet("example", new()
///     {
///         ChangeSetName = "example_value",
///         StackName = $"tf-example-{@default.Result}",
///         ChangeSetType = "CREATE",
///         Description = "Test From Terraform",
///         TemplateBody = "{\"ROSTemplateFormatVersion\":\"2015-09-01\"}",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ros.NewChangeSet(ctx, "example", &ros.ChangeSetArgs{
/// 			ChangeSetName: pulumi.String("example_value"),
/// 			StackName:     pulumi.Sprintf("tf-example-%v", _default.Result),
/// 			ChangeSetType: pulumi.String("CREATE"),
/// 			Description:   pulumi.String("Test From Terraform"),
/// 			TemplateBody:  pulumi.String("{\"ROSTemplateFormatVersion\":\"2015-09-01\"}"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ros.ChangeSet;
/// import com.pulumi.alicloud.ros.ChangeSetArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var example = new ChangeSet("example", ChangeSetArgs.builder()
///             .changeSetName("example_value")
///             .stackName(String.format("tf-example-%s", default_.result()))
///             .changeSetType("CREATE")
///             .description("Test From Terraform")
///             .templateBody("{\"ROSTemplateFormatVersion\":\"2015-09-01\"}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   example:
///     type: alicloud:ros:ChangeSet
///     properties:
///       changeSetName: example_value
///       stackName: tf-example-${default.result}
///       changeSetType: CREATE
///       description: Test From Terraform
///       templateBody: '{"ROSTemplateFormatVersion":"2015-09-01"}'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ROS Change Set can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ros/changeSet:ChangeSet example <change_set_id>
/// ```
class ChangeSet extends pulumi.CustomResource {
  /// The name of the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  late final pulumi.Output<String> changeSetName;
  /// The type of the change set. Valid values:  CREATE: creates a change set for a new stack. UPDATE: creates a change set for an existing stack. IMPORT: creates a change set for a new stack or an existing stack to import non-ROS-managed resources. If you create a change set for a new stack, ROS creates a stack that has a unique stack ID. The stack is in the REVIEW_IN_PROGRESS state until you execute the change set.  You cannot use the UPDATE type to create a change set for a new stack or the CREATE type to create a change set for an existing stack.
  late final pulumi.Output<String?> changeSetType;
  /// The description of the change set. The description can be up to 1,024 bytes in length.
  late final pulumi.Output<String?> description;
  /// Specifies whether to disable rollback on stack creation failure. Default value: false.  Valid values:  true: disables rollback on stack creation failure. false: enables rollback on stack creation failure. Note This parameter takes effect only when ChangeSetType is set to CREATE or IMPORT.
  late final pulumi.Output<bool?> disableRollback;
  /// The notification urls.
  late final pulumi.Output<List<String>?> notificationUrls;
  /// Parameters.
  late final pulumi.Output<List<ChangeSetParameter>> parameters;
  /// The ram role name.
  late final pulumi.Output<String?> ramRoleName;
  /// The replacement option.
  late final pulumi.Output<String?> replacementOption;
  /// The ID of the stack for which you want to create the change set. ROS generates the change set by comparing the stack information with the information that you submit, such as a modified template or different inputs.
  late final pulumi.Output<String> stackId;
  /// The name of the stack for which you want to create the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.  Note This parameter takes effect only when ChangeSetType is set to CREATE or IMPORT.
  late final pulumi.Output<String?> stackName;
  /// The stack policy body.
  late final pulumi.Output<String?> stackPolicyBody;
  /// The stack policy during update body.
  late final pulumi.Output<String?> stackPolicyDuringUpdateBody;
  /// The stack policy during update url.
  late final pulumi.Output<String?> stackPolicyDuringUpdateUrl;
  /// The stack policy url.
  late final pulumi.Output<String?> stackPolicyUrl;
  /// The status of the change set.
  late final pulumi.Output<String> status;
  /// The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You can specify one of TemplateBody or TemplateURL parameters, but you cannot specify both of them.
  late final pulumi.Output<String?> templateBody;
  /// The template url.
  late final pulumi.Output<String?> templateUrl;
  /// Timeout In Minutes.
  late final pulumi.Output<int> timeoutInMinutes;
  /// The use previous parameters.
  late final pulumi.Output<bool?> usePreviousParameters;

  /// Creates a new [ChangeSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChangeSet]. {@macro pulumi_ros_change_set_change_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChangeSet(
    String name, {
    ChangeSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ros/changeSet:ChangeSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.changeSetName = registerOutput<String>('changeSetName');
    this.changeSetType = registerOutput<String?>('changeSetType');
    this.description = registerOutput<String?>('description');
    this.disableRollback = registerOutput<bool?>('disableRollback');
    this.notificationUrls = registerOutput<List<String>?>('notificationUrls');
    this.parameters = registerOutput<List<ChangeSetParameter>>('parameters');
    this.ramRoleName = registerOutput<String?>('ramRoleName');
    this.replacementOption = registerOutput<String?>('replacementOption');
    this.stackId = registerOutput<String>('stackId');
    this.stackName = registerOutput<String?>('stackName');
    this.stackPolicyBody = registerOutput<String?>('stackPolicyBody');
    this.stackPolicyDuringUpdateBody = registerOutput<String?>('stackPolicyDuringUpdateBody');
    this.stackPolicyDuringUpdateUrl = registerOutput<String?>('stackPolicyDuringUpdateUrl');
    this.stackPolicyUrl = registerOutput<String?>('stackPolicyUrl');
    this.status = registerOutput<String>('status');
    this.templateBody = registerOutput<String?>('templateBody');
    this.templateUrl = registerOutput<String?>('templateUrl');
    this.timeoutInMinutes = registerOutput<int>('timeoutInMinutes');
    this.usePreviousParameters = registerOutput<bool?>('usePreviousParameters');
  }
}
