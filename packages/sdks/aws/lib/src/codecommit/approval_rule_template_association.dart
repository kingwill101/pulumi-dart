import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_rule_template_association_args.dart';
import 'approval_rule_template_association_state.dart';

/// Associates a CodeCommit Approval Rule Template with a Repository.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codecommit.ApprovalRuleTemplateAssociation("example", {
///     approvalRuleTemplateName: exampleAwsCodecommitApprovalRuleTemplate.name,
///     repositoryName: exampleAwsCodecommitRepository.repositoryName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codecommit.ApprovalRuleTemplateAssociation("example",
///     approval_rule_template_name=example_aws_codecommit_approval_rule_template["name"],
///     repository_name=example_aws_codecommit_repository["repositoryName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeCommit.ApprovalRuleTemplateAssociation("example", new()
///     {
///         ApprovalRuleTemplateName = exampleAwsCodecommitApprovalRuleTemplate.Name,
///         RepositoryName = exampleAwsCodecommitRepository.RepositoryName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecommit"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codecommit.NewApprovalRuleTemplateAssociation(ctx, "example", &codecommit.ApprovalRuleTemplateAssociationArgs{
/// 			ApprovalRuleTemplateName: pulumi.Any(exampleAwsCodecommitApprovalRuleTemplate.Name),
/// 			RepositoryName:           pulumi.Any(exampleAwsCodecommitRepository.RepositoryName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_codecommit_approvalruletemplateassociation" "example" {
///   approval_rule_template_name = exampleAwsCodecommitApprovalRuleTemplate.name
///   repository_name             = exampleAwsCodecommitRepository.repositoryName
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codecommit.ApprovalRuleTemplateAssociation;
/// import com.pulumi.aws.codecommit.ApprovalRuleTemplateAssociationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new ApprovalRuleTemplateAssociation("example", ApprovalRuleTemplateAssociationArgs.builder()
///             .approvalRuleTemplateName(exampleAwsCodecommitApprovalRuleTemplate.name())
///             .repositoryName(exampleAwsCodecommitRepository.repositoryName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codecommit:ApprovalRuleTemplateAssociation
///     properties:
///       approvalRuleTemplateName: ${exampleAwsCodecommitApprovalRuleTemplate.name}
///       repositoryName: ${exampleAwsCodecommitRepository.repositoryName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeCommit approval rule template associations using the `approvalRuleTemplateName` and `repositoryName` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:codecommit/approvalRuleTemplateAssociation:ApprovalRuleTemplateAssociation example approver-rule-for-example,MyExampleRepo
/// ```
class ApprovalRuleTemplateAssociation extends pulumi.CustomResource {
  /// The name for the approval rule template.
  late final pulumi.Output<String> approvalRuleTemplateName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the repository that you want to associate with the template.
  late final pulumi.Output<String> repositoryName;

  /// Creates a new [ApprovalRuleTemplateAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApprovalRuleTemplateAssociation]. {@macro pulumi_codecommit_approval_rule_template_association_approval_rule_template_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApprovalRuleTemplateAssociation(
    String name, {
    ApprovalRuleTemplateAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codecommit/approvalRuleTemplateAssociation:ApprovalRuleTemplateAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approvalRuleTemplateName = registerOutput<String>('approvalRuleTemplateName');
    region = registerOutput<String>('region');
    repositoryName = registerOutput<String>('repositoryName');
  }

  /// Gets an existing [ApprovalRuleTemplateAssociation] resource's state with the given [name] and [id].
  static ApprovalRuleTemplateAssociation get(
    String name,
    pulumi.Input<String> id, {
    ApprovalRuleTemplateAssociationState? state,
  }) {
    return ApprovalRuleTemplateAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApprovalRuleTemplateAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codecommit/approvalRuleTemplateAssociation:ApprovalRuleTemplateAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approvalRuleTemplateName = registerOutput<String>('approvalRuleTemplateName');
    region = registerOutput<String>('region');
    repositoryName = registerOutput<String>('repositoryName');
  }
}
