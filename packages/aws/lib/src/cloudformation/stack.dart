import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_args.dart';

/// Provides a CloudFormation Stack resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const network = new aws.cloudformation.Stack("network", {
///     name: "networking-stack",
///     parameters: {
///         VPCCidr: "10.0.0.0/16",
///     },
///     templateBody: JSON.stringify({
///         Parameters: {
///             VPCCidr: {
///                 Type: "String",
///                 Default: "10.0.0.0/16",
///                 Description: "Enter the CIDR block for the VPC. Default is 10.0.0.0/16.",
///             },
///         },
///         Resources: {
///             myVpc: {
///                 Type: "AWS::EC2::VPC",
///                 Properties: {
///                     CidrBlock: {
///                         Ref: "VPCCidr",
///                     },
///                     Tags: [{
///                         Key: "Name",
///                         Value: "Primary_CF_VPC",
///                     }],
///                 },
///             },
///         },
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// network = aws.cloudformation.Stack("network",
///     name="networking-stack",
///     parameters={
///         "VPCCidr": "10.0.0.0/16",
///     },
///     template_body=json.dumps({
///         "Parameters": {
///             "VPCCidr": {
///                 "Type": "String",
///                 "Default": "10.0.0.0/16",
///                 "Description": "Enter the CIDR block for the VPC. Default is 10.0.0.0/16.",
///             },
///         },
///         "Resources": {
///             "myVpc": {
///                 "Type": "AWS::EC2::VPC",
///                 "Properties": {
///                     "CidrBlock": {
///                         "Ref": "VPCCidr",
///                     },
///                     "Tags": [{
///                         "Key": "Name",
///                         "Value": "Primary_CF_VPC",
///                     }],
///                 },
///             },
///         },
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Aws.CloudFormation.Stack("network", new()
///     {
///         Name = "networking-stack",
///         Parameters =
///         {
///             { "VPCCidr", "10.0.0.0/16" },
///         },
///         TemplateBody = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Parameters"] = new Dictionary<string, object?>
///             {
///                 ["VPCCidr"] = new Dictionary<string, object?>
///                 {
///                     ["Type"] = "String",
///                     ["Default"] = "10.0.0.0/16",
///                     ["Description"] = "Enter the CIDR block for the VPC. Default is 10.0.0.0/16.",
///                 },
///             },
///             ["Resources"] = new Dictionary<string, object?>
///             {
///                 ["myVpc"] = new Dictionary<string, object?>
///                 {
///                     ["Type"] = "AWS::EC2::VPC",
///                     ["Properties"] = new Dictionary<string, object?>
///                     {
///                         ["CidrBlock"] = new Dictionary<string, object?>
///                         {
///                             ["Ref"] = "VPCCidr",
///                         },
///                         ["Tags"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["Key"] = "Name",
///                                 ["Value"] = "Primary_CF_VPC",
///                             },
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Parameters": map[string]interface{}{
/// 				"VPCCidr": map[string]interface{}{
/// 					"Type":        "String",
/// 					"Default":     "10.0.0.0/16",
/// 					"Description": "Enter the CIDR block for the VPC. Default is 10.0.0.0/16.",
/// 				},
/// 			},
/// 			"Resources": map[string]interface{}{
/// 				"myVpc": map[string]interface{}{
/// 					"Type": "AWS::EC2::VPC",
/// 					"Properties": map[string]interface{}{
/// 						"CidrBlock": map[string]interface{}{
/// 							"Ref": "VPCCidr",
/// 						},
/// 						"Tags": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"Key":   "Name",
/// 								"Value": "Primary_CF_VPC",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudformation.NewStack(ctx, "network", &cloudformation.StackArgs{
/// 			Name: pulumi.String("networking-stack"),
/// 			Parameters: pulumi.StringMap{
/// 				"VPCCidr": pulumi.String("10.0.0.0/16"),
/// 			},
/// 			TemplateBody: pulumi.String(json0),
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
/// import com.pulumi.aws.cloudformation.Stack;
/// import com.pulumi.aws.cloudformation.StackArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var network = new Stack("network", StackArgs.builder()
///             .name("networking-stack")
///             .parameters(Map.of("VPCCidr", "10.0.0.0/16"))
///             .templateBody(serializeJson(
///                 jsonObject(
///                     jsonProperty("Parameters", jsonObject(
///                         jsonProperty("VPCCidr", jsonObject(
///                             jsonProperty("Type", "String"),
///                             jsonProperty("Default", "10.0.0.0/16"),
///                             jsonProperty("Description", "Enter the CIDR block for the VPC. Default is 10.0.0.0/16.")
///                         ))
///                     )),
///                     jsonProperty("Resources", jsonObject(
///                         jsonProperty("myVpc", jsonObject(
///                             jsonProperty("Type", "AWS::EC2::VPC"),
///                             jsonProperty("Properties", jsonObject(
///                                 jsonProperty("CidrBlock", jsonObject(
///                                     jsonProperty("Ref", "VPCCidr")
///                                 )),
///                                 jsonProperty("Tags", jsonArray(jsonObject(
///                                     jsonProperty("Key", "Name"),
///                                     jsonProperty("Value", "Primary_CF_VPC")
///                                 )))
///                             ))
///                         ))
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: aws:cloudformation:Stack
///     properties:
///       name: networking-stack
///       parameters:
///         VPCCidr: 10.0.0.0/16
///       templateBody:
///         fn::toJSON:
///           Parameters:
///             VPCCidr:
///               Type: String
///               Default: 10.0.0.0/16
///               Description: Enter the CIDR block for the VPC. Default is 10.0.0.0/16.
///           Resources:
///             myVpc:
///               Type: AWS::EC2::VPC
///               Properties:
///                 CidrBlock:
///                   Ref: VPCCidr
///                 Tags:
///                   - Key: Name
///                     Value: Primary_CF_VPC
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudformation Stacks using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stack:Stack stack networking-stack
/// ```
class Stack extends pulumi.CustomResource {
  /// A list of capabilities.
  /// Valid values: `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, or `CAPABILITY_AUTO_EXPAND`
  late final pulumi.Output<List<String>?> capabilities;
  /// Set to true to disable rollback of the stack if stack creation failed.
  /// Conflicts with `on_failure`.
  late final pulumi.Output<bool?> disableRollback;
  /// The ARN of an IAM role that AWS CloudFormation assumes to create the stack. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
  late final pulumi.Output<String?> iamRoleArn;
  /// Stack name.
  late final pulumi.Output<String> name;
  /// A list of SNS topic ARNs to publish stack related events.
  late final pulumi.Output<List<String>?> notificationArns;
  /// Action to be taken if stack creation fails. This must be
  /// one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`. Conflicts with `disable_rollback`.
  late final pulumi.Output<String?> onFailure;
  /// A map of outputs from the stack.
  late final pulumi.Output<Map<String, String>> outputs;
  /// A map of Parameter structures that specify input parameters for the stack.
  late final pulumi.Output<Map<String, String>> parameters;
  /// Structure containing the stack policy body.
  /// Conflicts w/ `policy_url`.
  late final pulumi.Output<String> policyBody;
  /// Location of a file containing the stack policy.
  /// Conflicts w/ `policy_body`.
  late final pulumi.Output<String?> policyUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of resource tags to associate with this stack. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Structure containing the template body (max size: 51,200 bytes).
  late final pulumi.Output<String> templateBody;
  /// Location of a file containing the template body (max size: 460,800 bytes).
  late final pulumi.Output<String?> templateUrl;
  /// The amount of time that can pass before the stack status becomes `CREATE_FAILED`.
  late final pulumi.Output<int?> timeoutInMinutes;

  /// Creates a new [Stack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stack]. {@macro pulumi_cloudformation_stack_stack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stack(
    String name, {
    StackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudformation/stack:Stack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capabilities = registerOutput<List<String>?>('capabilities');
    this.disableRollback = registerOutput<bool?>('disableRollback');
    this.iamRoleArn = registerOutput<String?>('iamRoleArn');
    this.name = registerOutput<String>('name');
    this.notificationArns = registerOutput<List<String>?>('notificationArns');
    this.onFailure = registerOutput<String?>('onFailure');
    this.outputs = registerOutput<Map<String, String>>('outputs');
    this.parameters = registerOutput<Map<String, String>>('parameters');
    this.policyBody = registerOutput<String>('policyBody');
    this.policyUrl = registerOutput<String?>('policyUrl');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateBody = registerOutput<String>('templateBody');
    this.templateUrl = registerOutput<String?>('templateUrl');
    this.timeoutInMinutes = registerOutput<int?>('timeoutInMinutes');
  }
}
