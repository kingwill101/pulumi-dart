// ignore_for_file: unused_element, unnecessary_cast

import 'api_contact_information_response.dart';
import 'api_license_information_response.dart';
import 'api_version_set_contract_details_response.dart';
import 'authentication_settings_contract_response.dart';
import 'subscription_key_parameter_names_contract_response.dart';

/// Result data returned by getApi.
class GetApiResult {
  /// Describes the revision of the API. If no value is provided, default revision 1 is created
  final String? apiRevision;
  /// Description of the API Revision.
  final String? apiRevisionDescription;
  /// Type of API.
  final String? apiType;
  /// Indicates the version identifier of the API if the API is versioned
  final String? apiVersion;
  /// Description of the API Version.
  final String? apiVersionDescription;
  /// Version set details
  final ApiVersionSetContractDetailsResponse? apiVersionSet;
  /// A resource identifier for the related ApiVersionSet.
  final String? apiVersionSetId;
  /// Collection of authentication settings included into this API.
  final AuthenticationSettingsContractResponse? authenticationSettings;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Contact information for the API.
  final ApiContactInformationResponse? contact;
  /// Description of the API. May include HTML formatting tags.
  final String? description;
  /// API name. Must be 1 to 300 characters long.
  final String? displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Indicates if API revision is current api revision.
  final bool? isCurrent;
  /// Indicates if API revision is accessible via the gateway.
  final bool isOnline;
  /// License information for the API.
  final ApiLicenseInformationResponse? license;
  /// The name of the resource
  final String name;
  /// Relative URL uniquely identifying this API and all of its resource paths within the API Management service instance. It is appended to the API endpoint base URL specified during the service instance creation to form a public URL for this API.
  final String path;
  /// Describes on which protocols the operations in this API can be invoked.
  final List<String>? protocols;
  /// Absolute URL of the backend service implementing this API. Cannot be more than 2000 characters long.
  final String? serviceUrl;
  /// API identifier of the source API.
  final String? sourceApiId;
  /// Protocols over which API is made available.
  final SubscriptionKeyParameterNamesContractResponse? subscriptionKeyParameterNames;
  /// Specifies whether an API or Product subscription is required for accessing the API.
  final bool? subscriptionRequired;
  /// A URL to the Terms of Service for the API. MUST be in the format of a URL.
  final String? termsOfServiceUrl;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApiResult].
  /// [apiRevision] Describes the revision of the API. If no value is provided, default revision 1 is created
  /// [apiRevisionDescription] Description of the API Revision.
  /// [apiType] Type of API.
  /// [apiVersion] Indicates the version identifier of the API if the API is versioned
  /// [apiVersionDescription] Description of the API Version.
  /// [apiVersionSet] Version set details
  /// [apiVersionSetId] A resource identifier for the related ApiVersionSet.
  /// [authenticationSettings] Collection of authentication settings included into this API.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contact] Contact information for the API.
  /// [description] Description of the API. May include HTML formatting tags.
  /// [displayName] API name. Must be 1 to 300 characters long.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isCurrent] Indicates if API revision is current api revision.
  /// [isOnline] Indicates if API revision is accessible via the gateway.
  /// [license] License information for the API.
  /// [name] The name of the resource
  /// [path] Relative URL uniquely identifying this API and all of its resource paths within the API Management service instance. It is appended to the API endpoint base URL specified during the service instance creation to form a public URL for this API.
  /// [protocols] Describes on which protocols the operations in this API can be invoked.
  /// [serviceUrl] Absolute URL of the backend service implementing this API. Cannot be more than 2000 characters long.
  /// [sourceApiId] API identifier of the source API.
  /// [subscriptionKeyParameterNames] Protocols over which API is made available.
  /// [subscriptionRequired] Specifies whether an API or Product subscription is required for accessing the API.
  /// [termsOfServiceUrl] A URL to the Terms of Service for the API. MUST be in the format of a URL.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetApiResult({
    this.apiRevision,
    this.apiRevisionDescription,
    this.apiType,
    this.apiVersion,
    this.apiVersionDescription,
    this.apiVersionSet,
    this.apiVersionSetId,
    this.authenticationSettings,
    required this.azureApiVersion,
    this.contact,
    this.description,
    this.displayName,
    required this.id,
    this.isCurrent,
    required this.isOnline,
    this.license,
    required this.name,
    required this.path,
    this.protocols,
    this.serviceUrl,
    this.sourceApiId,
    this.subscriptionKeyParameterNames,
    this.subscriptionRequired,
    this.termsOfServiceUrl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiRevision': ?apiRevision,
      'apiRevisionDescription': ?apiRevisionDescription,
      'apiType': ?apiType,
      'apiVersion': ?apiVersion,
      'apiVersionDescription': ?apiVersionDescription,
      'apiVersionSet': ?apiVersionSet == null ? null : apiVersionSet!.toMap(),
      'apiVersionSetId': ?apiVersionSetId,
      'authenticationSettings': ?authenticationSettings == null ? null : authenticationSettings!.toMap(),
      'azureApiVersion': azureApiVersion,
      'contact': ?contact == null ? null : contact!.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'isCurrent': ?isCurrent,
      'isOnline': isOnline,
      'license': ?license == null ? null : license!.toMap(),
      'name': name,
      'path': path,
      'protocols': ?protocols,
      'serviceUrl': ?serviceUrl,
      'sourceApiId': ?sourceApiId,
      'subscriptionKeyParameterNames': ?subscriptionKeyParameterNames == null ? null : subscriptionKeyParameterNames!.toMap(),
      'subscriptionRequired': ?subscriptionRequired,
      'termsOfServiceUrl': ?termsOfServiceUrl,
      'type': type,
    };
  }

  factory GetApiResult.fromMap(Map<String, dynamic> map) {
    return GetApiResult(
      apiRevision: map['apiRevision'] == null ? null : map['apiRevision'] as String,
      apiRevisionDescription: map['apiRevisionDescription'] == null ? null : map['apiRevisionDescription'] as String,
      apiType: map['apiType'] == null ? null : map['apiType'] as String,
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      apiVersionDescription: map['apiVersionDescription'] == null ? null : map['apiVersionDescription'] as String,
      apiVersionSet: map['apiVersionSet'] == null ? null : ApiVersionSetContractDetailsResponse.fromMap((map['apiVersionSet'] as Map).cast<String, dynamic>()),
      apiVersionSetId: map['apiVersionSetId'] == null ? null : map['apiVersionSetId'] as String,
      authenticationSettings: map['authenticationSettings'] == null ? null : AuthenticationSettingsContractResponse.fromMap((map['authenticationSettings'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      contact: map['contact'] == null ? null : ApiContactInformationResponse.fromMap((map['contact'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      isCurrent: map['isCurrent'] == null ? null : map['isCurrent'] as bool,
      isOnline: map['isOnline'] as bool,
      license: map['license'] == null ? null : ApiLicenseInformationResponse.fromMap((map['license'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      path: map['path'] as String,
      protocols: map['protocols'] == null ? null : (map['protocols'] as List).cast<String>(),
      serviceUrl: map['serviceUrl'] == null ? null : map['serviceUrl'] as String,
      sourceApiId: map['sourceApiId'] == null ? null : map['sourceApiId'] as String,
      subscriptionKeyParameterNames: map['subscriptionKeyParameterNames'] == null ? null : SubscriptionKeyParameterNamesContractResponse.fromMap((map['subscriptionKeyParameterNames'] as Map).cast<String, dynamic>()),
      subscriptionRequired: map['subscriptionRequired'] == null ? null : map['subscriptionRequired'] as bool,
      termsOfServiceUrl: map['termsOfServiceUrl'] == null ? null : map['termsOfServiceUrl'] as String,
      type: map['type'] as String,
    );
  }
}

