// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../template_permission/template_permission.dart';
import '../template_source_entity/template_source_entity.dart';

/// The set of arguments for Template.
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

  TemplateArgs({
    this.awsAccountId,
    this.name,
    this.permissions,
    this.region,
    this.sourceEntity,
    this.tags,
    required this.templateId,
    required this.versionDescription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = pulumi.Input.mapOptionalInputValue<
              List<TemplatePermission>, List<Map<String, dynamic>>>(
          permissionsValue,
          (value) =>
              pulumi.Input.encodeList<TemplatePermission, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceEntityValue = sourceEntity;
    if (sourceEntityValue != null) {
      map['sourceEntity'] = pulumi.Input.mapOptionalInputValue<
          TemplateSourceEntity,
          Map<String, dynamic>>(sourceEntityValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['templateId'] = templateId;
    map['versionDescription'] = versionDescription;
    return map;
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      permissions: pulumi.Input.asOptionalInput<List<TemplatePermission>>(
          map['permissions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sourceEntity: pulumi.Input.asOptionalInput<TemplateSourceEntity>(
          map['sourceEntity']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      templateId: pulumi.Input.asInput<String>(map['templateId']),
      versionDescription:
          pulumi.Input.asInput<String>(map['versionDescription']),
    );
  }
}
