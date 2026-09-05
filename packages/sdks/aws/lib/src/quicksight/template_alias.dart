import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_alias_args.dart';
import 'template_alias_state.dart';

/// Resource for managing an AWS QuickSight Template Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.TemplateAlias("example", {
///     aliasName: "example-alias",
///     templateId: test.templateId,
///     templateVersionNumber: Number(test.versionNumber),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.TemplateAlias("example",
///     alias_name="example-alias",
///     template_id=test["templateId"],
///     template_version_number=int(test["versionNumber"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.TemplateAlias("example", new()
///     {
///         AliasName = "example-alias",
///         TemplateId = test.TemplateId,
///         TemplateVersionNumber = test.VersionNumber,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewTemplateAlias(ctx, "example", &quicksight.TemplateAliasArgs{
/// 			AliasName:             pulumi.String("example-alias"),
/// 			TemplateId:            pulumi.Any(test.TemplateId),
/// 			TemplateVersionNumber: pulumi.Any(test.VersionNumber),
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
/// resource "aws_quicksight_templatealias" "example" {
///   alias_name              = "example-alias"
///   template_id             = test.templateId
///   template_version_number = test.versionNumber
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
///         var example = new TemplateAlias("example", TemplateAliasArgs.builder()
///             .aliasName("example-alias")
///             .templateId(test.templateId())
///             .templateVersionNumber(test.versionNumber())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:TemplateAlias
///     properties:
///       aliasName: example-alias
///       templateId: ${test.templateId}
///       templateVersionNumber: ${test.versionNumber}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Template Alias using the AWS account ID, template ID, and alias name separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/templateAlias:TemplateAlias example 123456789012,example-id,example-alias
/// ```
class TemplateAlias extends pulumi.CustomResource {
  /// Display name of the template alias.
  late final pulumi.Output<String> aliasName;
  /// ARN of the template alias.
  late final pulumi.Output<String> arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the template.
  late final pulumi.Output<String> templateId;
  /// Version number of the template.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> templateVersionNumber;

  /// Creates a new [TemplateAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TemplateAlias]. {@macro pulumi_quicksight_template_alias_template_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TemplateAlias(
    String name, {
    TemplateAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/templateAlias:TemplateAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    aliasName = registerOutput<String>('aliasName');
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    region = registerOutput<String>('region');
    templateId = registerOutput<String>('templateId');
    templateVersionNumber = registerOutput<int>('templateVersionNumber');
  }

  /// Gets an existing [TemplateAlias] resource's state with the given [name] and [id].
  static TemplateAlias get(
    String name,
    pulumi.Input<String> id, {
    TemplateAliasState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TemplateAlias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TemplateAlias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/templateAlias:TemplateAlias',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliasName = registerOutput<String>('aliasName');
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    region = registerOutput<String>('region');
    templateId = registerOutput<String>('templateId');
    templateVersionNumber = registerOutput<int>('templateVersionNumber');
  }

  /// Creates a typed reference to an existing [TemplateAlias] resource.
  TemplateAlias.reference(String urn)
    : super(
        'aws:quicksight/templateAlias:TemplateAlias',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aliasName = registerOutput<String>('aliasName');
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    region = registerOutput<String>('region');
    templateId = registerOutput<String>('templateId');
    templateVersionNumber = registerOutput<int>('templateVersionNumber');
  }
}
