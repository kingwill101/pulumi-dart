import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_rule_template_args.dart';

/// Provides a CodeCommit Approval Rule Template Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codecommit.ApprovalRuleTemplate("example", {
///     name: "MyExampleApprovalRuleTemplate",
///     description: "This is an example approval rule template",
///     content: JSON.stringify({
///         Version: "2018-11-08",
///         DestinationReferences: ["refs/heads/master"],
///         Statements: [{
///             Type: "Approvers",
///             NumberOfApprovalsNeeded: 2,
///             ApprovalPoolMembers: ["arn:aws:sts::123456789012:assumed-role/CodeCommitReview/*"],
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.codecommit.ApprovalRuleTemplate("example",
///     name="MyExampleApprovalRuleTemplate",
///     description="This is an example approval rule template",
///     content=json.dumps({
///         "Version": "2018-11-08",
///         "DestinationReferences": ["refs/heads/master"],
///         "Statements": [{
///             "Type": "Approvers",
///             "NumberOfApprovalsNeeded": 2,
///             "ApprovalPoolMembers": ["arn:aws:sts::123456789012:assumed-role/CodeCommitReview/*"],
///         }],
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
///     var example = new Aws.CodeCommit.ApprovalRuleTemplate("example", new()
///     {
///         Name = "MyExampleApprovalRuleTemplate",
///         Description = "This is an example approval rule template",
///         Content = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2018-11-08",
///             ["DestinationReferences"] = new[]
///             {
///                 "refs/heads/master",
///             },
///             ["Statements"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Type"] = "Approvers",
///                     ["NumberOfApprovalsNeeded"] = 2,
///                     ["ApprovalPoolMembers"] = new[]
///                     {
///                         "arn:aws:sts::123456789012:assumed-role/CodeCommitReview/*",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecommit"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2018-11-08",
/// 			"DestinationReferences": []string{
/// 				"refs/heads/master",
/// 			},
/// 			"Statements": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Type":                    "Approvers",
/// 					"NumberOfApprovalsNeeded": 2,
/// 					"ApprovalPoolMembers": []string{
/// 						"arn:aws:sts::123456789012:assumed-role/CodeCommitReview/*",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = codecommit.NewApprovalRuleTemplate(ctx, "example", &codecommit.ApprovalRuleTemplateArgs{
/// 			Name:        pulumi.String("MyExampleApprovalRuleTemplate"),
/// 			Description: pulumi.String("This is an example approval rule template"),
/// 			Content:     pulumi.String(json0),
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
/// import com.pulumi.aws.codecommit.ApprovalRuleTemplate;
/// import com.pulumi.aws.codecommit.ApprovalRuleTemplateArgs;
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
///         var example = new ApprovalRuleTemplate("example", ApprovalRuleTemplateArgs.builder()
///             .name("MyExampleApprovalRuleTemplate")
///             .description("This is an example approval rule template")
///             .content(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2018-11-08"),
///                     jsonProperty("DestinationReferences", jsonArray("refs/heads/master")),
///                     jsonProperty("Statements", jsonArray(jsonObject(
///                         jsonProperty("Type", "Approvers"),
///                         jsonProperty("NumberOfApprovalsNeeded", 2),
///                         jsonProperty("ApprovalPoolMembers", jsonArray("arn:aws:sts::123456789012:assumed-role/CodeCommitReview/*"))
///                     )))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codecommit:ApprovalRuleTemplate
///     properties:
///       name: MyExampleApprovalRuleTemplate
///       description: This is an example approval rule template
///       content:
///         fn::toJSON:
///           Version: 2018-11-08
///           DestinationReferences:
///             - refs/heads/master
///           Statements:
///             - Type: Approvers
///               NumberOfApprovalsNeeded: 2
///               ApprovalPoolMembers:
///                 - arn:aws:sts::123456789012:assumed-role/CodeCommitReview/*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeCommit approval rule templates using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:codecommit/approvalRuleTemplate:ApprovalRuleTemplate imported ExistingApprovalRuleTemplateName
/// ```
class ApprovalRuleTemplate extends pulumi.CustomResource {
  /// The ID of the approval rule template
  late final pulumi.Output<String> approvalRuleTemplateId;

  /// The content of the approval rule template. Maximum of 3000 characters.
  late final pulumi.Output<String> content;

  /// The date the approval rule template was created, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> creationDate;

  /// The description of the approval rule template. Maximum of 1000 characters.
  late final pulumi.Output<String?> description;

  /// The date the approval rule template was most recently changed, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> lastModifiedDate;

  /// The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.
  late final pulumi.Output<String> lastModifiedUser;

  /// The name for the approval rule template. Maximum of 100 characters.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The SHA-256 hash signature for the content of the approval rule template.
  late final pulumi.Output<String> ruleContentSha256;

  /// Creates a new [ApprovalRuleTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApprovalRuleTemplate]. {@macro pulumi_codecommit_approval_rule_template_approval_rule_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApprovalRuleTemplate(
    String name, {
    ApprovalRuleTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codecommit/approvalRuleTemplate:ApprovalRuleTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.approvalRuleTemplateId =
        registerOutput<String>('approvalRuleTemplateId');
    this.content = registerOutput<String>('content');
    this.creationDate = registerOutput<String>('creationDate');
    this.description = registerOutput<String?>('description');
    this.lastModifiedDate = registerOutput<String>('lastModifiedDate');
    this.lastModifiedUser = registerOutput<String>('lastModifiedUser');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.ruleContentSha256 = registerOutput<String>('ruleContentSha256');
  }
}
