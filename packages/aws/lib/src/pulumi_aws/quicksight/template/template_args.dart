// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../template_permission/template_permission.dart';
import '../template_source_entity/template_source_entity.dart';

/// The set of arguments for Template.
class TemplateArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Display name for the template.
  final Input<String>? name;

  /// A set of resource permissions on the template. Maximum of 64 items. See permissions.
  final Input<List<TemplatePermission>>? permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The entity that you are using as a source when you create the template (analysis or template). Only one of <span pulumi-lang-nodejs="`definition`" pulumi-lang-dotnet="`Definition`" pulumi-lang-go="`definition`" pulumi-lang-python="`definition`" pulumi-lang-yaml="`definition`" pulumi-lang-java="`definition`">`definition`</span> or <span pulumi-lang-nodejs="`sourceEntity`" pulumi-lang-dotnet="`SourceEntity`" pulumi-lang-go="`sourceEntity`" pulumi-lang-python="`source_entity`" pulumi-lang-yaml="`sourceEntity`" pulumi-lang-java="`sourceEntity`">`source_entity`</span> should be configured. See source_entity.
  final Input<TemplateSourceEntity>? sourceEntity;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Identifier for the template.
  final Input<String> templateId;

  /// A description of the current template version being created/updated.
  ///
  /// The following arguments are optional:
  final Input<String> versionDescription;

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
      map['permissions'] = Input.mapOptionalInputValue<List<TemplatePermission>,
              List<Map<String, dynamic>>>(
          permissionsValue,
          (value) => Input.encodeList<TemplatePermission, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceEntityValue = sourceEntity;
    if (sourceEntityValue != null) {
      map['sourceEntity'] = Input.mapOptionalInputValue<TemplateSourceEntity,
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
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      name: Input.asOptionalInput<String>(map['name']),
      permissions:
          Input.asOptionalInput<List<TemplatePermission>>(map['permissions']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceEntity:
          Input.asOptionalInput<TemplateSourceEntity>(map['sourceEntity']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      templateId: Input.asInput<String>(map['templateId']),
      versionDescription: Input.asInput<String>(map['versionDescription']),
    );
  }
}
