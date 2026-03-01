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
  final pulumi.Input<String>? apiName;
  /// The set of contacts
  final pulumi.Input<List<Contact>>? contacts;
  /// The custom metadata defined for API catalog entities.
  final pulumi.Input<dynamic>? customProperties;
  /// Description of the API.
  final pulumi.Input<String>? description;
  /// The set of external documentation
  final pulumi.Input<List<ExternalDocumentation>>? externalDocumentation;
  /// Kind of API. For example, REST or GraphQL.
  final pulumi.Input<String> kind;
  /// The license information for the API.
  final pulumi.Input<License>? license;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// Short description of the API.
  final pulumi.Input<String>? summary;
  /// Terms of service for the API.
  final pulumi.Input<TermsOfService>? termsOfService;
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
  ApiArgs({
    String? apiName,
    List<Contact>? contacts,
    dynamic customProperties,
    String? description,
    List<ExternalDocumentation>? externalDocumentation,
    required String kind,
    License? license,
    required String resourceGroupName,
    required String serviceName,
    String? summary,
    TermsOfService? termsOfService,
    required String title,
    required String workspaceName,
  }) :
      apiName = pulumi.Input.asOptionalInput<String>(apiName),
      contacts = pulumi.Input.asOptionalInput<List<Contact>>(contacts),
      customProperties = pulumi.Input.asOptionalInput<dynamic>(customProperties),
      description = pulumi.Input.asOptionalInput<String>(description),
      externalDocumentation = pulumi.Input.asOptionalInput<List<ExternalDocumentation>>(externalDocumentation),
      kind = pulumi.Input.asInput<String>(kind),
      license = pulumi.Input.asOptionalInput<License>(license),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      summary = pulumi.Input.asOptionalInput<String>(summary),
      termsOfService = pulumi.Input.asOptionalInput<TermsOfService>(termsOfService),
      title = pulumi.Input.asInput<String>(title),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      apiName: map['apiName'] == null ? null : map['apiName'] as String,
      contacts: map['contacts'] == null ? null : pulumi.Input.decodeList<Contact>(map['contacts'], (value) => Contact.fromMap((value as Map).cast<String, dynamic>())),
      customProperties: map['customProperties'] == null ? null : map['customProperties'],
      description: map['description'] == null ? null : map['description'] as String,
      externalDocumentation: map['externalDocumentation'] == null ? null : pulumi.Input.decodeList<ExternalDocumentation>(map['externalDocumentation'], (value) => ExternalDocumentation.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      license: map['license'] == null ? null : License.fromMap((map['license'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      summary: map['summary'] == null ? null : map['summary'] as String,
      termsOfService: map['termsOfService'] == null ? null : TermsOfService.fromMap((map['termsOfService'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

