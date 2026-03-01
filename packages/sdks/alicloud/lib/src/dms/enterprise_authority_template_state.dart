// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnterpriseAuthorityTemplate resources.
class EnterpriseAuthorityTemplateState {
  /// Permission template ID.
  final pulumi.Input<int>? authorityTemplateId;
  /// Permission Template name.
  final pulumi.Input<String>? authorityTemplateName;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Permission template description information.
  final pulumi.Input<String>? description;
  /// Tenant ID.
  final pulumi.Input<int>? tid;

  /// Creates a new [EnterpriseAuthorityTemplateState].
  /// [authorityTemplateId] Permission template ID.
  /// [authorityTemplateName] Permission Template name.
  /// [createTime] The creation time of the resource.
  /// [description] Permission template description information.
  /// [tid] Tenant ID.
  EnterpriseAuthorityTemplateState({
    pulumi.Output<int>? authorityTemplateId,
    pulumi.Output<String>? authorityTemplateName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<int>? tid,
  }) :
      authorityTemplateId = pulumi.Input.asOptionalInput<int>(authorityTemplateId),
      authorityTemplateName = pulumi.Input.asOptionalInput<String>(authorityTemplateName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      tid = pulumi.Input.asOptionalInput<int>(tid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityTemplateId': ?authorityTemplateId,
      'authorityTemplateName': ?authorityTemplateName,
      'createTime': ?createTime,
      'description': ?description,
      'tid': ?tid,
    };
  }

  factory EnterpriseAuthorityTemplateState.fromMap(Map<String, dynamic> map) {
    return EnterpriseAuthorityTemplateState(
      authorityTemplateId: map['authorityTemplateId'] == null ? null : pulumi.Output.create<int>(map['authorityTemplateId'] as int),
      authorityTemplateName: map['authorityTemplateName'] == null ? null : pulumi.Output.create<String>(map['authorityTemplateName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      tid: map['tid'] == null ? null : pulumi.Output.create<int>(map['tid'] as int),
    );
  }
}

