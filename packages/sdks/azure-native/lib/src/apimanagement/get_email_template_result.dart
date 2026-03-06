// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_parameters_contract_properties_response.dart';

/// Result data returned by getEmailTemplate.
class GetEmailTemplateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Email Template Body. This should be a valid XDocument
  final String body;
  /// Description of the Email Template.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Whether the template is the default template provided by API Management or has been edited.
  final bool isDefault;
  /// The name of the resource
  final String name;
  /// Email Template Parameter values.
  final List<EmailTemplateParametersContractPropertiesResponse>? parameters;
  /// Subject of the Template.
  final String subject;
  /// Title of the Template.
  final String? title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEmailTemplateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [body] Email Template Body. This should be a valid XDocument
  /// [description] Description of the Email Template.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isDefault] Whether the template is the default template provided by API Management or has been edited.
  /// [name] The name of the resource
  /// [parameters] Email Template Parameter values.
  /// [subject] Subject of the Template.
  /// [title] Title of the Template.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetEmailTemplateResult({
    required this.azureApiVersion,
    required this.body,
    this.description,
    required this.id,
    required this.isDefault,
    required this.name,
    this.parameters,
    required this.subject,
    this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'body': body,
      'description': ?description,
      'id': id,
      'isDefault': isDefault,
      'name': name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<EmailTemplateParametersContractPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subject': subject,
      'title': ?title,
      'type': type,
    };
  }

  factory GetEmailTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetEmailTemplateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      body: map['body'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isDefault: map['isDefault'] as bool,
      name: map['name'] as String,
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailTemplateParametersContractPropertiesResponse>(guardedValue, (value) => EmailTemplateParametersContractPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      subject: map['subject'] as String,
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

