import 'package:pulumi/pulumi.dart';
import 'approval_rule_template_association_args.dart';

/// Associates a CodeCommit Approval Rule Template with a Repository.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codecommit.ApprovalRuleTemplateAssociation("example", {
/// approvalRuleTemplateName: exampleAwsCodecommitApprovalRuleTemplate.name,
/// repositoryName: exampleAwsCodecommitRepository.repositoryName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codecommit.ApprovalRuleTemplateAssociation("example",
/// approval_rule_template_name=example_aws_codecommit_approval_rule_template["name"],
/// repository_name=example_aws_codecommit_repository["repositoryName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CodeCommit.ApprovalRuleTemplateAssociation("example", new()
/// {
/// ApprovalRuleTemplateName = exampleAwsCodecommitApprovalRuleTemplate.Name,
/// RepositoryName = exampleAwsCodecommitRepository.RepositoryName,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecommit"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codecommit.NewApprovalRuleTemplateAssociation(ctx, "example", &codecommit.ApprovalRuleTemplateAssociationArgs{
/// ApprovalRuleTemplateName: pulumi.Any(exampleAwsCodecommitApprovalRuleTemplate.Name),
/// RepositoryName:           pulumi.Any(exampleAwsCodecommitRepository.RepositoryName),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ApprovalRuleTemplateAssociation("example", ApprovalRuleTemplateAssociationArgs.builder()
/// .approvalRuleTemplateName(exampleAwsCodecommitApprovalRuleTemplate.name())
/// .repositoryName(exampleAwsCodecommitRepository.repositoryName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:codecommit:ApprovalRuleTemplateAssociation
/// properties:
/// approvalRuleTemplateName: ${exampleAwsCodecommitApprovalRuleTemplate.name}
/// repositoryName: ${exampleAwsCodecommitRepository.repositoryName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CodeCommit approval rule template associations using the <span pulumi-lang-nodejs="`approvalRuleTemplateName`" pulumi-lang-dotnet="`ApprovalRuleTemplateName`" pulumi-lang-go="`approvalRuleTemplateName`" pulumi-lang-python="`approval_rule_template_name`" pulumi-lang-yaml="`approvalRuleTemplateName`" pulumi-lang-java="`approvalRuleTemplateName`">`approval_rule_template_name`</span> and <span pulumi-lang-nodejs="`repositoryName`" pulumi-lang-dotnet="`RepositoryName`" pulumi-lang-go="`repositoryName`" pulumi-lang-python="`repository_name`" pulumi-lang-yaml="`repositoryName`" pulumi-lang-java="`repositoryName`">`repository_name`</span> separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:codecommit/approvalRuleTemplateAssociation:ApprovalRuleTemplateAssociation example approver-rule-for-example,MyExampleRepo
/// ```
class ApprovalRuleTemplateAssociation extends CustomResource {
  /// The name for the approval rule template.
  late final Output<String> approvalRuleTemplateName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the repository that you want to associate with the template.
  late final Output<String> repositoryName;

  ApprovalRuleTemplateAssociation(
    String name, {
    ApprovalRuleTemplateAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codecommit/approvalRuleTemplateAssociation:ApprovalRuleTemplateAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.approvalRuleTemplateName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.repositoryName = Output.createUnknown<String>();
  }
}
