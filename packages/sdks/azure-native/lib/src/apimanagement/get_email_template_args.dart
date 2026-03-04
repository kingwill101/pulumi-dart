// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_email_template_args_doc}
/// Arguments for getEmailTemplate.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_email_template_args_doc}
class GetEmailTemplateArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Email Template Name Identifier.
  final pulumi.Input<String> templateName;

  /// Creates a new [GetEmailTemplateArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [templateName] Email Template Name Identifier.
  GetEmailTemplateArgs({
    required this.resourceGroupName,
    required this.serviceName,
    required this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'templateName': templateName,
    };
  }

  factory GetEmailTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailTemplateArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
    );
  }
}
