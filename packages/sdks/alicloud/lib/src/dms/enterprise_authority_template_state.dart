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
    this.authorityTemplateId,
    this.authorityTemplateName,
    this.createTime,
    this.description,
    this.tid,
  });

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
      authorityTemplateId: map['authorityTemplateId'] == null ? null : (map['authorityTemplateId'] as int).input(),
      authorityTemplateName: map['authorityTemplateName'] == null ? null : (map['authorityTemplateName'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      tid: map['tid'] == null ? null : (map['tid'] as int).input(),
    );
  }
}

