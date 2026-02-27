import 'package:pulumi/pulumi.dart';
import '../template_permission/template_permission.dart';
import '../template_source_entity/template_source_entity.dart';
import 'template_args.dart';

/// Resource for managing a QuickSight Template.
///
/// ## Example Usage
///
/// ### From Source Template
///
///
///
/// ### With Definition
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Template using the AWS account ID and template ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/template:Template example 123456789012,example-id
/// ```
class Template extends CustomResource {
  /// ARN of the template.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// The time that the template was created.
  late final Output<String> createdTime;

  /// The time that the template was last updated.
  late final Output<String> lastUpdatedTime;

  /// Display name for the template.
  late final Output<String> name;

  /// A set of resource permissions on the template. Maximum of 64 items. See permissions.
  late final Output<List<TemplatePermission>?> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The entity that you are using as a source when you create the template (analysis or template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  late final Output<TemplateSourceEntity?> sourceEntity;

  /// Amazon Resource Name (ARN) of an analysis or template that was used to create this template.
  late final Output<String> sourceEntityArn;

  /// The template creation status.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifier for the template.
  late final Output<String> templateId;

  /// A description of the current template version being created/updated.
  ///
  /// The following arguments are optional:
  late final Output<String> versionDescription;

  /// The version number of the template version.
  late final Output<int> versionNumber;

  Template(
    String name, {
    TemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/template:Template',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.createdTime = registerOutput<String>('createdTime');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    this.permissions = registerOutput<List<TemplatePermission>?>('permissions');
    this.region = registerOutput<String>('region');
    this.sourceEntity = registerOutput<TemplateSourceEntity?>('sourceEntity');
    this.sourceEntityArn = registerOutput<String>('sourceEntityArn');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateId = registerOutput<String>('templateId');
    this.versionDescription = registerOutput<String>('versionDescription');
    this.versionNumber = registerOutput<int>('versionNumber');
  }
}
