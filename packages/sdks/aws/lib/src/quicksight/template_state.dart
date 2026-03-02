// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_permission.dart';
import 'template_source_entity.dart';

/// Input properties used for looking up and filtering Template resources.
class TemplateState {
  /// ARN of the template.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// The time that the template was created.
  final pulumi.Input<String>? createdTime;
  /// The time that the template was last updated.
  final pulumi.Input<String>? lastUpdatedTime;
  /// Display name for the template.
  final pulumi.Input<String>? name;
  /// A set of resource permissions on the template. Maximum of 64 items. See permissions.
  final pulumi.Input<List<TemplatePermission>>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The entity that you are using as a source when you create the template (analysis or template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  final pulumi.Input<TemplateSourceEntity>? sourceEntity;
  /// Amazon Resource Name (ARN) of an analysis or template that was used to create this template.
  final pulumi.Input<String>? sourceEntityArn;
  /// The template creation status.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Identifier for the template.
  final pulumi.Input<String>? templateId;
  /// A description of the current template version being created/updated.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? versionDescription;
  /// The version number of the template version.
  final pulumi.Input<int>? versionNumber;

  /// Creates a new [TemplateState].
  /// [arn] ARN of the template.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [createdTime] The time that the template was created.
  /// [lastUpdatedTime] The time that the template was last updated.
  /// [name] Display name for the template.
  /// [permissions] A set of resource permissions on the template. Maximum of 64 items. See permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceEntity] The entity that you are using as a source when you create the template (analysis or template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  /// [sourceEntityArn] Amazon Resource Name (ARN) of an analysis or template that was used to create this template.
  /// [status] The template creation status.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [templateId] Identifier for the template.
  /// [versionDescription] A description of the current template version being created/updated.
  /// [versionNumber] The version number of the template version.
  TemplateState({
    this.arn,
    this.awsAccountId,
    this.createdTime,
    this.lastUpdatedTime,
    this.name,
    this.permissions,
    this.region,
    this.sourceEntity,
    this.sourceEntityArn,
    this.status,
    this.tags,
    this.tagsAll,
    this.templateId,
    this.versionDescription,
    this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'createdTime': ?createdTime,
      'lastUpdatedTime': ?lastUpdatedTime,
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<TemplatePermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<TemplatePermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'sourceEntity': ?pulumi.Input.mapOptionalInputValue<TemplateSourceEntity, Map<String, dynamic>>(sourceEntity, (value) => value.toMap()),
      'sourceEntityArn': ?sourceEntityArn,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'templateId': ?templateId,
      'versionDescription': ?versionDescription,
      'versionNumber': ?versionNumber,
    };
  }

  factory TemplateState.fromMap(Map<String, dynamic> map) {
    return TemplateState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      createdTime: map['createdTime'] == null ? null : ((map['createdTime'] as String).input()).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : ((map['lastUpdatedTime'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      permissions: map['permissions'] == null ? null : ((pulumi.Input.decodeList<TemplatePermission>(map['permissions']!, (value) => TemplatePermission.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sourceEntity: map['sourceEntity'] == null ? null : ((TemplateSourceEntity.fromMap((map['sourceEntity']! as Map).cast<String, dynamic>())).input()).input(),
      sourceEntityArn: map['sourceEntityArn'] == null ? null : ((map['sourceEntityArn'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      templateId: map['templateId'] == null ? null : ((map['templateId'] as String).input()).input(),
      versionDescription: map['versionDescription'] == null ? null : ((map['versionDescription'] as String).input()).input(),
      versionNumber: map['versionNumber'] == null ? null : ((map['versionNumber'] as int).input()).input(),
    );
  }
}

