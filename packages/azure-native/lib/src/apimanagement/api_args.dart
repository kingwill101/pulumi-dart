// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_contact_information.dart';
import 'api_create_or_update_properties_wsdl_selector.dart';
import 'api_license_information.dart';
import 'api_version_set_contract_details.dart';
import 'authentication_settings_contract.dart';
import 'subscription_key_parameter_names_contract.dart';

/// {@template pulumi_apimanagement_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_args_doc}
class ApiArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String>? apiId;
  /// Describes the revision of the API. If no value is provided, default revision 1 is created
  final pulumi.Input<String>? apiRevision;
  /// Description of the API Revision.
  final pulumi.Input<String>? apiRevisionDescription;
  /// Type of API.
  final pulumi.Input<String>? apiType;
  /// Indicates the version identifier of the API if the API is versioned
  final pulumi.Input<String>? apiVersion;
  /// Description of the API Version.
  final pulumi.Input<String>? apiVersionDescription;
  /// Version set details
  final pulumi.Input<ApiVersionSetContractDetails>? apiVersionSet;
  /// A resource identifier for the related ApiVersionSet.
  final pulumi.Input<String>? apiVersionSetId;
  /// Collection of authentication settings included into this API.
  final pulumi.Input<AuthenticationSettingsContract>? authenticationSettings;
  /// Contact information for the API.
  final pulumi.Input<ApiContactInformation>? contact;
  /// Description of the API. May include HTML formatting tags.
  final pulumi.Input<String>? description;
  /// API name. Must be 1 to 300 characters long.
  final pulumi.Input<String>? displayName;
  /// Format of the Content in which the API is getting imported.
  final pulumi.Input<String>? format;
  /// Indicates if API revision is current api revision.
  final pulumi.Input<bool>? isCurrent;
  /// License information for the API.
  final pulumi.Input<ApiLicenseInformation>? license;
  /// Relative URL uniquely identifying this API and all of its resource paths within the API Management service instance. It is appended to the API endpoint base URL specified during the service instance creation to form a public URL for this API.
  final pulumi.Input<String> path;
  /// Describes on which protocols the operations in this API can be invoked.
  final pulumi.Input<List<String>>? protocols;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Absolute URL of the backend service implementing this API. Cannot be more than 2000 characters long.
  final pulumi.Input<String>? serviceUrl;
  /// Type of API to create.
  /// * `http` creates a REST API
  /// * `soap` creates a SOAP pass-through API
  /// * `websocket` creates websocket API
  /// * `graphql` creates GraphQL API.
  final pulumi.Input<String>? soapApiType;
  /// API identifier of the source API.
  final pulumi.Input<String>? sourceApiId;
  /// Protocols over which API is made available.
  final pulumi.Input<SubscriptionKeyParameterNamesContract>? subscriptionKeyParameterNames;
  /// Specifies whether an API or Product subscription is required for accessing the API.
  final pulumi.Input<bool>? subscriptionRequired;
  /// A URL to the Terms of Service for the API. MUST be in the format of a URL.
  final pulumi.Input<String>? termsOfServiceUrl;
  /// Strategy of translating required query parameters to template ones. By default has value 'template'. Possible values: 'template', 'query'
  final pulumi.Input<String>? translateRequiredQueryParametersConduct;
  /// Content value when Importing an API.
  final pulumi.Input<String>? value;
  /// Criteria to limit import of WSDL to a subset of the document.
  final pulumi.Input<ApiCreateOrUpdatePropertiesWsdlSelector>? wsdlSelector;

  /// Creates a new [ApiArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [apiRevision] Describes the revision of the API. If no value is provided, default revision 1 is created
  /// [apiRevisionDescription] Description of the API Revision.
  /// [apiType] Type of API.
  /// [apiVersion] Indicates the version identifier of the API if the API is versioned
  /// [apiVersionDescription] Description of the API Version.
  /// [apiVersionSet] Version set details
  /// [apiVersionSetId] A resource identifier for the related ApiVersionSet.
  /// [authenticationSettings] Collection of authentication settings included into this API.
  /// [contact] Contact information for the API.
  /// [description] Description of the API. May include HTML formatting tags.
  /// [displayName] API name. Must be 1 to 300 characters long.
  /// [format] Format of the Content in which the API is getting imported.
  /// [isCurrent] Indicates if API revision is current api revision.
  /// [license] License information for the API.
  /// [path] Relative URL uniquely identifying this API and all of its resource paths within the API Management service instance. It is appended to the API endpoint base URL specified during the service instance creation to form a public URL for this API.
  /// [protocols] Describes on which protocols the operations in this API can be invoked.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [serviceUrl] Absolute URL of the backend service implementing this API. Cannot be more than 2000 characters long.
  /// [soapApiType] Type of API to create.
  /// [sourceApiId] API identifier of the source API.
  /// [subscriptionKeyParameterNames] Protocols over which API is made available.
  /// [subscriptionRequired] Specifies whether an API or Product subscription is required for accessing the API.
  /// [termsOfServiceUrl] A URL to the Terms of Service for the API. MUST be in the format of a URL.
  /// [translateRequiredQueryParametersConduct] Strategy of translating required query parameters to template ones. By default has value 'template'. Possible values: 'template', 'query'
  /// [value] Content value when Importing an API.
  /// [wsdlSelector] Criteria to limit import of WSDL to a subset of the document.
  ApiArgs({
    String? apiId,
    String? apiRevision,
    String? apiRevisionDescription,
    String? apiType,
    String? apiVersion,
    String? apiVersionDescription,
    ApiVersionSetContractDetails? apiVersionSet,
    String? apiVersionSetId,
    AuthenticationSettingsContract? authenticationSettings,
    ApiContactInformation? contact,
    String? description,
    String? displayName,
    String? format,
    bool? isCurrent,
    ApiLicenseInformation? license,
    required String path,
    List<String>? protocols,
    required String resourceGroupName,
    required String serviceName,
    String? serviceUrl,
    String? soapApiType,
    String? sourceApiId,
    SubscriptionKeyParameterNamesContract? subscriptionKeyParameterNames,
    bool? subscriptionRequired,
    String? termsOfServiceUrl,
    String? translateRequiredQueryParametersConduct,
    String? value,
    ApiCreateOrUpdatePropertiesWsdlSelector? wsdlSelector,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      apiRevision = pulumi.Input.asOptionalInput<String>(apiRevision),
      apiRevisionDescription = pulumi.Input.asOptionalInput<String>(apiRevisionDescription),
      apiType = pulumi.Input.asOptionalInput<String>(apiType),
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      apiVersionDescription = pulumi.Input.asOptionalInput<String>(apiVersionDescription),
      apiVersionSet = pulumi.Input.asOptionalInput<ApiVersionSetContractDetails>(apiVersionSet),
      apiVersionSetId = pulumi.Input.asOptionalInput<String>(apiVersionSetId),
      authenticationSettings = pulumi.Input.asOptionalInput<AuthenticationSettingsContract>(authenticationSettings),
      contact = pulumi.Input.asOptionalInput<ApiContactInformation>(contact),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      format = pulumi.Input.asOptionalInput<String>(format),
      isCurrent = pulumi.Input.asOptionalInput<bool>(isCurrent),
      license = pulumi.Input.asOptionalInput<ApiLicenseInformation>(license),
      path = pulumi.Input.asInput<String>(path),
      protocols = pulumi.Input.asOptionalInput<List<String>>(protocols),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      serviceUrl = pulumi.Input.asOptionalInput<String>(serviceUrl),
      soapApiType = pulumi.Input.asOptionalInput<String>(soapApiType),
      sourceApiId = pulumi.Input.asOptionalInput<String>(sourceApiId),
      subscriptionKeyParameterNames = pulumi.Input.asOptionalInput<SubscriptionKeyParameterNamesContract>(subscriptionKeyParameterNames),
      subscriptionRequired = pulumi.Input.asOptionalInput<bool>(subscriptionRequired),
      termsOfServiceUrl = pulumi.Input.asOptionalInput<String>(termsOfServiceUrl),
      translateRequiredQueryParametersConduct = pulumi.Input.asOptionalInput<String>(translateRequiredQueryParametersConduct),
      value = pulumi.Input.asOptionalInput<String>(value),
      wsdlSelector = pulumi.Input.asOptionalInput<ApiCreateOrUpdatePropertiesWsdlSelector>(wsdlSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'apiRevision': ?apiRevision,
      'apiRevisionDescription': ?apiRevisionDescription,
      'apiType': ?apiType,
      'apiVersion': ?apiVersion,
      'apiVersionDescription': ?apiVersionDescription,
      'apiVersionSet': ?pulumi.Input.mapOptionalInputValue<ApiVersionSetContractDetails, Map<String, dynamic>>(apiVersionSet, (value) => value.toMap()),
      'apiVersionSetId': ?apiVersionSetId,
      'authenticationSettings': ?pulumi.Input.mapOptionalInputValue<AuthenticationSettingsContract, Map<String, dynamic>>(authenticationSettings, (value) => value.toMap()),
      'contact': ?pulumi.Input.mapOptionalInputValue<ApiContactInformation, Map<String, dynamic>>(contact, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'format': ?format,
      'isCurrent': ?isCurrent,
      'license': ?pulumi.Input.mapOptionalInputValue<ApiLicenseInformation, Map<String, dynamic>>(license, (value) => value.toMap()),
      'path': path,
      'protocols': ?protocols,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'serviceUrl': ?serviceUrl,
      'soapApiType': ?soapApiType,
      'sourceApiId': ?sourceApiId,
      'subscriptionKeyParameterNames': ?pulumi.Input.mapOptionalInputValue<SubscriptionKeyParameterNamesContract, Map<String, dynamic>>(subscriptionKeyParameterNames, (value) => value.toMap()),
      'subscriptionRequired': ?subscriptionRequired,
      'termsOfServiceUrl': ?termsOfServiceUrl,
      'translateRequiredQueryParametersConduct': ?translateRequiredQueryParametersConduct,
      'value': ?value,
      'wsdlSelector': ?pulumi.Input.mapOptionalInputValue<ApiCreateOrUpdatePropertiesWsdlSelector, Map<String, dynamic>>(wsdlSelector, (value) => value.toMap()),
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      apiId: map['apiId'] == null ? null : map['apiId'] as String,
      apiRevision: map['apiRevision'] == null ? null : map['apiRevision'] as String,
      apiRevisionDescription: map['apiRevisionDescription'] == null ? null : map['apiRevisionDescription'] as String,
      apiType: map['apiType'] == null ? null : map['apiType'] as String,
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      apiVersionDescription: map['apiVersionDescription'] == null ? null : map['apiVersionDescription'] as String,
      apiVersionSet: map['apiVersionSet'] == null ? null : ApiVersionSetContractDetails.fromMap((map['apiVersionSet'] as Map).cast<String, dynamic>()),
      apiVersionSetId: map['apiVersionSetId'] == null ? null : map['apiVersionSetId'] as String,
      authenticationSettings: map['authenticationSettings'] == null ? null : AuthenticationSettingsContract.fromMap((map['authenticationSettings'] as Map).cast<String, dynamic>()),
      contact: map['contact'] == null ? null : ApiContactInformation.fromMap((map['contact'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      isCurrent: map['isCurrent'] == null ? null : map['isCurrent'] as bool,
      license: map['license'] == null ? null : ApiLicenseInformation.fromMap((map['license'] as Map).cast<String, dynamic>()),
      path: map['path'] as String,
      protocols: map['protocols'] == null ? null : (map['protocols'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      serviceUrl: map['serviceUrl'] == null ? null : map['serviceUrl'] as String,
      soapApiType: map['soapApiType'] == null ? null : map['soapApiType'] as String,
      sourceApiId: map['sourceApiId'] == null ? null : map['sourceApiId'] as String,
      subscriptionKeyParameterNames: map['subscriptionKeyParameterNames'] == null ? null : SubscriptionKeyParameterNamesContract.fromMap((map['subscriptionKeyParameterNames'] as Map).cast<String, dynamic>()),
      subscriptionRequired: map['subscriptionRequired'] == null ? null : map['subscriptionRequired'] as bool,
      termsOfServiceUrl: map['termsOfServiceUrl'] == null ? null : map['termsOfServiceUrl'] as String,
      translateRequiredQueryParametersConduct: map['translateRequiredQueryParametersConduct'] == null ? null : map['translateRequiredQueryParametersConduct'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      wsdlSelector: map['wsdlSelector'] == null ? null : ApiCreateOrUpdatePropertiesWsdlSelector.fromMap((map['wsdlSelector'] as Map).cast<String, dynamic>()),
    );
  }
}

