// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact.dart';
import 'external_documentation.dart';
import 'license.dart';
import 'terms_of_service.dart';

/// {@template pulumi_apicenter_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apicenter_api_args_doc}
class ApiArgs {
  /// The name of the API.
  final pulumi.Input<String?>? apiName;
  /// The set of contacts
  final pulumi.Input<List<Contact>?>? contacts;
  /// The custom metadata defined for API catalog entities.
  final pulumi.Input<dynamic>? customProperties;
  /// Description of the API.
  final pulumi.Input<String?>? description;
  /// The set of external documentation
  final pulumi.Input<List<ExternalDocumentation>?>? externalDocumentation;
  /// Kind of API. For example, REST or GraphQL.
  final pulumi.Input<dynamic> kind;
  /// The license information for the API.
  final pulumi.Input<License?>? license;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// Short description of the API.
  final pulumi.Input<String?>? summary;
  /// Terms of service for the API.
  final pulumi.Input<TermsOfService?>? termsOfService;
  /// API title.
  final pulumi.Input<String> title;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ApiArgs].
  /// [apiName] The name of the API.
  /// [contacts] The set of contacts
  /// [customProperties] The custom metadata defined for API catalog entities.
  /// [description] Description of the API.
  /// [externalDocumentation] The set of external documentation
  /// [kind] Kind of API. For example, REST or GraphQL.
  /// [license] The license information for the API.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of Azure API Center service.
  /// [summary] Short description of the API.
  /// [termsOfService] Terms of service for the API.
  /// [title] API title.
  /// [workspaceName] The name of the workspace.
  const ApiArgs({
    this.apiName,
    this.contacts,
    this.customProperties,
    this.description,
    this.externalDocumentation,
    required this.kind,
    this.license,
    required this.resourceGroupName,
    required this.serviceName,
    this.summary,
    this.termsOfService,
    required this.title,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': ?apiName,
      'contacts': ?pulumi.Input.mapOptionalInputValue<List<Contact>, List<Map<String, dynamic>>>(contacts, (value) => pulumi.Input.encodeList<Contact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customProperties': ?customProperties,
      'description': ?description,
      'externalDocumentation': ?pulumi.Input.mapOptionalInputValue<List<ExternalDocumentation>, List<Map<String, dynamic>>>(externalDocumentation, (value) => pulumi.Input.encodeList<ExternalDocumentation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
      'license': ?pulumi.Input.mapOptionalInputValue<License, Map<String, dynamic>>(license, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'summary': ?summary,
      'termsOfService': ?pulumi.Input.mapOptionalInputValue<TermsOfService, Map<String, dynamic>>(termsOfService, (value) => value.toMap()),
      'title': title,
      'workspaceName': workspaceName,
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      apiName: (() { final guardedValue = map['apiName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contacts: (() { final guardedValue = map['contacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Contact>(guardedValue, (value) => Contact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalDocumentation: (() { final guardedValue = map['externalDocumentation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExternalDocumentation>(guardedValue, (value) => ExternalDocumentation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: pulumi.Input.fromValue(map['kind']),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(License.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termsOfService: (() { final guardedValue = map['termsOfService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TermsOfService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
