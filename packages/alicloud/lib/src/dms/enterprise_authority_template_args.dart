// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_enterprise_authority_template_enterprise_authority_template_args_doc}
/// The set of arguments for EnterpriseAuthorityTemplate.
/// {@endtemplate}
/// {@macro pulumi_dms_enterprise_authority_template_enterprise_authority_template_args_doc}
class EnterpriseAuthorityTemplateArgs {
  /// Permission Template name.
  final pulumi.Input<String> authorityTemplateName;
  /// Permission template description information.
  final pulumi.Input<String>? description;
  /// Tenant ID.
  final pulumi.Input<int> tid;

  /// Creates a new [EnterpriseAuthorityTemplateArgs].
  /// [authorityTemplateName] Permission Template name.
  /// [description] Permission template description information.
  /// [tid] Tenant ID.
  EnterpriseAuthorityTemplateArgs({
    required String authorityTemplateName,
    String? description,
    required int tid,
  }) :
      authorityTemplateName = pulumi.Input.asInput<String>(authorityTemplateName),
      description = pulumi.Input.asOptionalInput<String>(description),
      tid = pulumi.Input.asInput<int>(tid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityTemplateName': authorityTemplateName,
      'description': ?description,
      'tid': tid,
    };
  }

  factory EnterpriseAuthorityTemplateArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseAuthorityTemplateArgs(
      authorityTemplateName: map['authorityTemplateName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      tid: map['tid'] as int,
    );
  }
}

