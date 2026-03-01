// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_application_template_get_application_template_args_doc}
/// Arguments for getApplicationTemplate.
/// {@endtemplate}
/// {@macro pulumi_index_get_application_template_get_application_template_args_doc}
class GetApplicationTemplateArgs {
  /// Specifies the display name of the templated application.
  final pulumi.Input<String>? displayName;
  /// Specifies the ID of the templated application.
  ///
  /// > One of `template_id` or `display_name` must be specified.
  final pulumi.Input<String>? templateId;

  /// Creates a new [GetApplicationTemplateArgs].
  /// [displayName] Specifies the display name of the templated application.
  /// [templateId] Specifies the ID of the templated application.
  GetApplicationTemplateArgs({
    String? displayName,
    String? templateId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      templateId = pulumi.Input.asOptionalInput<String>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'templateId': ?templateId,
    };
  }

  factory GetApplicationTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationTemplateArgs(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
    );
  }
}

