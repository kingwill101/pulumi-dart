// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_parameters_contract_properties.dart';

/// {@template pulumi_apimanagement_email_template_args_doc}
/// The set of arguments for EmailTemplate.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_email_template_args_doc}
class EmailTemplateArgs {
  /// Email Template Body. This should be a valid XDocument
  final pulumi.Input<String>? body;
  /// Description of the Email Template.
  final pulumi.Input<String>? description;
  /// Email Template Parameter values.
  final pulumi.Input<List<EmailTemplateParametersContractProperties>>? parameters;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Subject of the Template.
  final pulumi.Input<String>? subject;
  /// Email Template Name Identifier.
  final pulumi.Input<String>? templateName;
  /// Title of the Template.
  final pulumi.Input<String>? title;

  /// Creates a new [EmailTemplateArgs].
  /// [body] Email Template Body. This should be a valid XDocument
  /// [description] Description of the Email Template.
  /// [parameters] Email Template Parameter values.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [subject] Subject of the Template.
  /// [templateName] Email Template Name Identifier.
  /// [title] Title of the Template.
  EmailTemplateArgs({
    String? body,
    String? description,
    List<EmailTemplateParametersContractProperties>? parameters,
    required String resourceGroupName,
    required String serviceName,
    String? subject,
    String? templateName,
    String? title,
  }) :
      body = pulumi.Input.asOptionalInput<String>(body),
      description = pulumi.Input.asOptionalInput<String>(description),
      parameters = pulumi.Input.asOptionalInput<List<EmailTemplateParametersContractProperties>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      subject = pulumi.Input.asOptionalInput<String>(subject),
      templateName = pulumi.Input.asOptionalInput<String>(templateName),
      title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'description': ?description,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<EmailTemplateParametersContractProperties>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<EmailTemplateParametersContractProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'subject': ?subject,
      'templateName': ?templateName,
      'title': ?title,
    };
  }

  factory EmailTemplateArgs.fromMap(Map<String, dynamic> map) {
    return EmailTemplateArgs(
      body: map['body'] == null ? null : map['body'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<EmailTemplateParametersContractProperties>(map['parameters'], (value) => EmailTemplateParametersContractProperties.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      templateName: map['templateName'] == null ? null : map['templateName'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

