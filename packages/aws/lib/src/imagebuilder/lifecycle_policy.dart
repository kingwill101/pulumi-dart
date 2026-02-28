import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_args.dart';
import 'lifecycle_policy_policy_detail.dart';
import 'lifecycle_policy_resource_selection.dart';

/// Manages an Image Builder Lifecycle Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const currentGetPartition = aws.getPartition({});
/// const example = new aws.iam.Role("example", {
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: currentGetPartition.then(currentGetPartition => `imagebuilder.${currentGetPartition.dnsSuffix}`),
///             },
///         }],
///     }),
///     name: "example",
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     policyArn: currentGetPartition.then(currentGetPartition => `arn:${currentGetPartition.partition}:iam::aws:policy/service-role/EC2ImageBuilderLifecycleExecutionPolicy`),
///     role: example.name,
/// });
/// const exampleLifecyclePolicy = new aws.imagebuilder.LifecyclePolicy("example", {
///     name: "name",
///     description: "Example description",
///     executionRole: example.arn,
///     resourceType: "AMI_IMAGE",
///     policyDetails: [{
///         action: {
///             type: "DELETE",
///         },
///         filter: {
///             type: "AGE",
///             value: 6,
///             retainAtLeast: 10,
///             unit: "YEARS",
///         },
///     }],
///     resourceSelection: {
///         tagMap: {
///             key1: "value1",
///             key2: "value2",
///         },
///     },
/// }, {
///     dependsOn: [exampleRolePolicyAttachment],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// current_get_partition = aws.get_partition()
/// example = aws.iam.Role("example",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": f"imagebuilder.{current_get_partition.dns_suffix}",
///             },
///         }],
///     }),
///     name="example")
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     policy_arn=f"arn:{current_get_partition.partition}:iam::aws:policy/service-role/EC2ImageBuilderLifecycleExecutionPolicy",
///     role=example.name)
/// example_lifecycle_policy = aws.imagebuilder.LifecyclePolicy("example",
///     name="name",
///     description="Example description",
///     execution_role=example.arn,
///     resource_type="AMI_IMAGE",
///     policy_details=[{
///         "action": {
///             "type": "DELETE",
///         },
///         "filter": {
///             "type": "AGE",
///             "value": 6,
///             "retain_at_least": 10,
///             "unit": "YEARS",
///         },
///     }],
///     resource_selection={
///         "tag_map": {
///             "key1": "value1",
///             "key2": "value2",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_role_policy_attachment]))
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
///     var current = Aws.GetRegion.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = $"imagebuilder.{currentGetPartition.Apply(getPartitionResult => getPartitionResult.DnsSuffix)}",
///                     },
///                 },
///             },
///         }),
///         Name = "example",
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         PolicyArn = $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::aws:policy/service-role/EC2ImageBuilderLifecycleExecutionPolicy",
///         Role = example.Name,
///     });
///
///     var exampleLifecyclePolicy = new Aws.ImageBuilder.LifecyclePolicy("example", new()
///     {
///         Name = "name",
///         Description = "Example description",
///         ExecutionRole = example.Arn,
///         ResourceType = "AMI_IMAGE",
///         PolicyDetails = new[]
///         {
///             new Aws.ImageBuilder.Inputs.LifecyclePolicyPolicyDetailArgs
///             {
///                 Action = new Aws.ImageBuilder.Inputs.LifecyclePolicyPolicyDetailActionArgs
///                 {
///                     Type = "DELETE",
///                 },
///                 Filter = new Aws.ImageBuilder.Inputs.LifecyclePolicyPolicyDetailFilterArgs
///                 {
///                     Type = "AGE",
///                     Value = 6,
///                     RetainAtLeast = 10,
///                     Unit = "YEARS",
///                 },
///             },
///         },
///         ResourceSelection = new Aws.ImageBuilder.Inputs.LifecyclePolicyResourceSelectionArgs
///         {
///             TagMap =
///             {
///                 { "key1", "value1" },
///                 { "key2", "value2" },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleRolePolicyAttachment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"Service": fmt.Sprintf("imagebuilder.%v", currentGetPartition.DnsSuffix),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 			Name:             pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRolePolicyAttachment, err := iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.Sprintf("arn:%v:iam::aws:policy/service-role/EC2ImageBuilderLifecycleExecutionPolicy", currentGetPartition.Partition),
/// 			Role:      example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = imagebuilder.NewLifecyclePolicy(ctx, "example", &imagebuilder.LifecyclePolicyArgs{
/// 			Name:          pulumi.String("name"),
/// 			Description:   pulumi.String("Example description"),
/// 			ExecutionRole: example.Arn,
/// 			ResourceType:  pulumi.String("AMI_IMAGE"),
/// 			PolicyDetails: imagebuilder.LifecyclePolicyPolicyDetailArray{
/// 				&imagebuilder.LifecyclePolicyPolicyDetailArgs{
/// 					Action: &imagebuilder.LifecyclePolicyPolicyDetailActionArgs{
/// 						Type: pulumi.String("DELETE"),
/// 					},
/// 					Filter: &imagebuilder.LifecyclePolicyPolicyDetailFilterArgs{
/// 						Type:          pulumi.String("AGE"),
/// 						Value:         pulumi.Int(6),
/// 						RetainAtLeast: pulumi.Int(10),
/// 						Unit:          pulumi.String("YEARS"),
/// 					},
/// 				},
/// 			},
/// 			ResourceSelection: &imagebuilder.LifecyclePolicyResourceSelectionArgs{
/// 				TagMap: pulumi.StringMap{
/// 					"key1": pulumi.String("value1"),
/// 					"key2": pulumi.String("value2"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleRolePolicyAttachment,
/// 		}))
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.imagebuilder.LifecyclePolicy;
/// import com.pulumi.aws.imagebuilder.LifecyclePolicyArgs;
/// import com.pulumi.aws.imagebuilder.inputs.LifecyclePolicyPolicyDetailArgs;
/// import com.pulumi.aws.imagebuilder.inputs.LifecyclePolicyPolicyDetailActionArgs;
/// import com.pulumi.aws.imagebuilder.inputs.LifecyclePolicyPolicyDetailFilterArgs;
/// import com.pulumi.aws.imagebuilder.inputs.LifecyclePolicyResourceSelectionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", String.format("imagebuilder.%s", currentGetPartition.dnsSuffix()))
///                         ))
///                     )))
///                 )))
///             .name("example")
///             .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .policyArn(String.format("arn:%s:iam::aws:policy/service-role/EC2ImageBuilderLifecycleExecutionPolicy", currentGetPartition.partition()))
///             .role(example.name())
///             .build());
///
///         var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
///             .name("name")
///             .description("Example description")
///             .executionRole(example.arn())
///             .resourceType("AMI_IMAGE")
///             .policyDetails(LifecyclePolicyPolicyDetailArgs.builder()
///                 .action(LifecyclePolicyPolicyDetailActionArgs.builder()
///                     .type("DELETE")
///                     .build())
///                 .filter(LifecyclePolicyPolicyDetailFilterArgs.builder()
///                     .type("AGE")
///                     .value(6)
///                     .retainAtLeast(10)
///                     .unit("YEARS")
///                     .build())
///                 .build())
///             .resourceSelection(LifecyclePolicyResourceSelectionArgs.builder()
///                 .tagMap(Map.ofEntries(
///                     Map.entry("key1", "value1"),
///                     Map.entry("key2", "value2")
///                 ))
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleRolePolicyAttachment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: imagebuilder.${currentGetPartition.dnsSuffix}
///       name: example
///   exampleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: example
///     properties:
///       policyArn: arn:${currentGetPartition.partition}:iam::aws:policy/service-role/EC2ImageBuilderLifecycleExecutionPolicy
///       role: ${example.name}
///   exampleLifecyclePolicy:
///     type: aws:imagebuilder:LifecyclePolicy
///     name: example
///     properties:
///       name: name
///       description: Example description
///       executionRole: ${example.arn}
///       resourceType: AMI_IMAGE
///       policyDetails:
///         - action:
///             type: DELETE
///           filter:
///             type: AGE
///             value: 6
///             retainAtLeast: 10
///             unit: YEARS
///       resourceSelection:
///         tagMap:
///           key1: value1
///           key2: value2
///     options:
///       dependsOn:
///         - ${exampleRolePolicyAttachment}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder lifecycle policy.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.LifecyclePolicy` using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/lifecyclePolicy:LifecyclePolicy example arn:aws:imagebuilder:us-east-1:123456789012:lifecycle-policy/example
/// ```
class LifecyclePolicy extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the lifecycle policy.
  late final pulumi.Output<String> arn;

  /// description for the lifecycle policy.
  late final pulumi.Output<String?> description;

  /// The Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access to run lifecycle actions. More information about this role can be found [`here`](https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-lifecycle-prerequisites.html#image-lifecycle-prereq-role).
  late final pulumi.Output<String> executionRole;

  /// The name of the lifecycle policy to create.
  late final pulumi.Output<String> name;

  /// Configuration block with policy details. Detailed below.
  late final pulumi.Output<List<LifecyclePolicyPolicyDetail>> policyDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Selection criteria for the resources that the lifecycle policy applies to. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<LifecyclePolicyResourceSelection> resourceSelection;

  /// The type of Image Builder resource that the lifecycle policy applies to. Valid values: `AMI_IMAGE` or `CONTAINER_IMAGE`.
  late final pulumi.Output<String> resourceType;

  /// The status of the lifecycle policy.
  late final pulumi.Output<String> status;

  /// Key-value map of resource tags for the Image Builder Lifecycle Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LifecyclePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LifecyclePolicy]. {@macro pulumi_imagebuilder_lifecycle_policy_lifecycle_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LifecyclePolicy(
    String name, {
    LifecyclePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/lifecyclePolicy:LifecyclePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.executionRole = registerOutput<String>('executionRole');
    this.name = registerOutput<String>('name');
    this.policyDetails =
        registerOutput<List<LifecyclePolicyPolicyDetail>>('policyDetails');
    this.region = registerOutput<String>('region');
    this.resourceSelection =
        registerOutput<LifecyclePolicyResourceSelection>('resourceSelection');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
