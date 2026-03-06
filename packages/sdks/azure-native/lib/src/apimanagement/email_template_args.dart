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
  const EmailTemplateArgs({
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
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailTemplateParametersContractProperties>(guardedValue, (value) => EmailTemplateParametersContractProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

