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
    this.body,
    this.description,
    this.parameters,
    required this.resourceGroupName,
    required this.serviceName,
    this.subject,
    this.templateName,
    this.title,
  });

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
      body: map['body'] == null ? null : (map['body'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<EmailTemplateParametersContractProperties>(map['parameters'], (value) => EmailTemplateParametersContractProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      subject: map['subject'] == null ? null : (map['subject'] as String).input(),
      templateName: map['templateName'] == null ? null : (map['templateName'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

