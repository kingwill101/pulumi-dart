// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_permission.dart';
import 'template_source_entity.dart';

/// {@template pulumi_quicksight_template_template_args_doc}
/// The set of arguments for Template.
/// {@endtemplate}
/// {@macro pulumi_quicksight_template_template_args_doc}
class TemplateArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Display name for the template.
  final pulumi.Input<String>? name;
  /// A set of resource permissions on the template. Maximum of 64 items. See permissions.
  final pulumi.Input<List<TemplatePermission>>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The entity that you are using as a source when you create the template (analysis or template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  final pulumi.Input<TemplateSourceEntity>? sourceEntity;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Identifier for the template.
  final pulumi.Input<String> templateId;
  /// A description of the current template version being created/updated.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> versionDescription;

  /// Creates a new [TemplateArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [name] Display name for the template.
  /// [permissions] A set of resource permissions on the template. Maximum of 64 items. See permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceEntity] The entity that you are using as a source when you create the template (analysis or template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [templateId] Identifier for the template.
  /// [versionDescription] A description of the current template version being created/updated.
  TemplateArgs({
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? name,
    pulumi.Output<List<TemplatePermission>>? permissions,
    pulumi.Output<String>? region,
    pulumi.Output<TemplateSourceEntity>? sourceEntity,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> templateId,
    required pulumi.Output<String> versionDescription,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      name = pulumi.Input.asOptionalInput<String>(name),
      permissions = pulumi.Input.asOptionalInput<List<TemplatePermission>>(permissions),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceEntity = pulumi.Input.asOptionalInput<TemplateSourceEntity>(sourceEntity),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateId = pulumi.Input.asInput<String>(templateId),
      versionDescription = pulumi.Input.asInput<String>(versionDescription);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<TemplatePermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<TemplatePermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'sourceEntity': ?pulumi.Input.mapOptionalInputValue<TemplateSourceEntity, Map<String, dynamic>>(sourceEntity, (value) => value.toMap()),
      'tags': ?tags,
      'templateId': templateId,
      'versionDescription': versionDescription,
    };
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<TemplatePermission>>(pulumi.Input.decodeList<TemplatePermission>(map['permissions'], (value) => TemplatePermission.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceEntity: map['sourceEntity'] == null ? null : pulumi.Output.create<TemplateSourceEntity>(TemplateSourceEntity.fromMap((map['sourceEntity'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateId: pulumi.Output.create<String>(map['templateId'] as String),
      versionDescription: pulumi.Output.create<String>(map['versionDescription'] as String),
    );
  }
}

