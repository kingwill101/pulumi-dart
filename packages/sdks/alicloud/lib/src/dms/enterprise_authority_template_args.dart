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
    required pulumi.Output<String> authorityTemplateName,
    pulumi.Output<String>? description,
    required pulumi.Output<int> tid,
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
      authorityTemplateName: pulumi.Output.create<String>(map['authorityTemplateName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      tid: pulumi.Output.create<int>(map['tid'] as int),
    );
  }
}

