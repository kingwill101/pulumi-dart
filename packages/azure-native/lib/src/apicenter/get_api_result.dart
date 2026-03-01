// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_response.dart';
import 'external_documentation_response.dart';
import 'license_response.dart';
import 'system_data_response.dart';
import 'terms_of_service_response.dart';

/// Result data returned by getApi.
class GetApiResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The set of contacts
  final List<ContactResponse>? contacts;
  /// The custom metadata defined for API catalog entities.
  final dynamic customProperties;
  /// Description of the API.
  final String? description;
  /// The set of external documentation
  final List<ExternalDocumentationResponse>? externalDocumentation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Kind of API. For example, REST or GraphQL.
  final String kind;
  /// The license information for the API.
  final LicenseResponse? license;
  /// Current lifecycle stage of the API.
  final String lifecycleStage;
  /// The name of the resource
  final String name;
  /// Short description of the API.
  final String? summary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Terms of service for the API.
  final TermsOfServiceResponse? termsOfService;
  /// API title.
  final String title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApiResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contacts] The set of contacts
  /// [customProperties] The custom metadata defined for API catalog entities.
  /// [description] Description of the API.
  /// [externalDocumentation] The set of external documentation
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of API. For example, REST or GraphQL.
  /// [license] The license information for the API.
  /// [lifecycleStage] Current lifecycle stage of the API.
  /// [name] The name of the resource
  /// [summary] Short description of the API.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [termsOfService] Terms of service for the API.
  /// [title] API title.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetApiResult({
    required this.azureApiVersion,
    this.contacts,
    this.customProperties,
    this.description,
    this.externalDocumentation,
    required this.id,
    required this.kind,
    this.license,
    required this.lifecycleStage,
    required this.name,
    this.summary,
    required this.systemData,
    this.termsOfService,
    required this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'contacts': ?contacts == null ? null : pulumi.Input.encodeList<ContactResponse, Map<String, dynamic>>(contacts!, (value) => value.toMap()),
      'customProperties': ?customProperties,
      'description': ?description,
      'externalDocumentation': ?externalDocumentation == null ? null : pulumi.Input.encodeList<ExternalDocumentationResponse, Map<String, dynamic>>(externalDocumentation!, (value) => value.toMap()),
      'id': id,
      'kind': kind,
      'license': ?license == null ? null : license!.toMap(),
      'lifecycleStage': lifecycleStage,
      'name': name,
      'summary': ?summary,
      'systemData': systemData.toMap(),
      'termsOfService': ?termsOfService == null ? null : termsOfService!.toMap(),
      'title': title,
      'type': type,
    };
  }

  factory GetApiResult.fromMap(Map<String, dynamic> map) {
    return GetApiResult(
      azureApiVersion: map['azureApiVersion'] as String,
      contacts: map['contacts'] == null ? null : pulumi.Input.decodeList<ContactResponse>(map['contacts'], (value) => ContactResponse.fromMap((value as Map).cast<String, dynamic>())),
      customProperties: map['customProperties'] == null ? null : map['customProperties'],
      description: map['description'] == null ? null : map['description'] as String,
      externalDocumentation: map['externalDocumentation'] == null ? null : pulumi.Input.decodeList<ExternalDocumentationResponse>(map['externalDocumentation'], (value) => ExternalDocumentationResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      kind: map['kind'] as String,
      license: map['license'] == null ? null : LicenseResponse.fromMap((map['license'] as Map).cast<String, dynamic>()),
      lifecycleStage: map['lifecycleStage'] as String,
      name: map['name'] as String,
      summary: map['summary'] == null ? null : map['summary'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      termsOfService: map['termsOfService'] == null ? null : TermsOfServiceResponse.fromMap((map['termsOfService'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
      type: map['type'] as String,
    );
  }
}

