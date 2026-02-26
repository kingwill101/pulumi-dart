import 'package:pulumi/pulumi.dart';
import 'template_alias_args.dart';

/// Resource for managing an AWS QuickSight Template Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.TemplateAlias("example", {
/// aliasName: "example-alias",
/// templateId: test.templateId,
/// templateVersionNumber: test.versionNumber,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.TemplateAlias("example",
/// alias_name="example-alias",
/// template_id=test["templateId"],
/// template_version_number=test["versionNumber"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Quicksight.TemplateAlias("example", new()
/// {
/// AliasName = "example-alias",
/// TemplateId = test.TemplateId,
/// TemplateVersionNumber = test.VersionNumber,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewTemplateAlias(ctx, "example", &quicksight.TemplateAliasArgs{
/// AliasName:             pulumi.String("example-alias"),
/// TemplateId:            pulumi.Any(test.TemplateId),
/// TemplateVersionNumber: pulumi.Any(test.VersionNumber),
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
/// import com.pulumi.aws.quicksight.TemplateAlias;
/// import com.pulumi.aws.quicksight.TemplateAliasArgs;
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
/// var example = new TemplateAlias("example", TemplateAliasArgs.builder()
/// .aliasName("example-alias")
/// .templateId(test.templateId())
/// .templateVersionNumber(test.versionNumber())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:quicksight:TemplateAlias
/// properties:
/// aliasName: example-alias
/// templateId: ${test.templateId}
/// templateVersionNumber: ${test.versionNumber}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Template Alias using the AWS account ID, template ID, and alias name separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/templateAlias:TemplateAlias example 123456789012,example-id,example-alias
/// ```
class TemplateAlias extends CustomResource {
  /// Display name of the template alias.
  late final Output<String> aliasName;

  /// Amazon Resource Name (ARN) of the template alias.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the template.
  late final Output<String> templateId;

  /// Version number of the template.
  ///
  /// The following arguments are optional:
  late final Output<int> templateVersionNumber;

  TemplateAlias(
    String name, {
    TemplateAliasArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/templateAlias:TemplateAlias',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aliasName = registerOutput<String>('aliasName');
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.region = registerOutput<String>('region');
    this.templateId = registerOutput<String>('templateId');
    this.templateVersionNumber = registerOutput<int>('templateVersionNumber');
  }
}
