import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_alias_args.dart';

/// Resource for managing an AWS QuickSight Template Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
///
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

  /// Amazon Resource Name (ARN) of the template alias.
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

  TemplateAlias(
    String name, {
    TemplateAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/templateAlias:TemplateAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliasName = registerOutput<String>('aliasName');
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.region = registerOutput<String>('region');
    this.templateId = registerOutput<String>('templateId');
    this.templateVersionNumber = registerOutput<int>('templateVersionNumber');
  }
}
