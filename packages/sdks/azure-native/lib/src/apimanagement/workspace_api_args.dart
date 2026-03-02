// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_contact_information.dart';
import 'api_create_or_update_properties_wsdl_selector.dart';
import 'api_license_information.dart';
import 'api_version_set_contract_details.dart';
import 'authentication_settings_contract.dart';
import 'subscription_key_parameter_names_contract.dart';

/// {@template pulumi_apimanagement_workspace_api_args_doc}
/// The set of arguments for WorkspaceApi.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_api_args_doc}
class WorkspaceApiArgs {
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
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;
  /// Criteria to limit import of WSDL to a subset of the document.
  final pulumi.Input<ApiCreateOrUpdatePropertiesWsdlSelector>? wsdlSelector;

  /// Creates a new [WorkspaceApiArgs].
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
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  /// [wsdlSelector] Criteria to limit import of WSDL to a subset of the document.
  WorkspaceApiArgs({
    this.apiId,
    this.apiRevision,
    this.apiRevisionDescription,
    this.apiType,
    this.apiVersion,
    this.apiVersionDescription,
    this.apiVersionSet,
    this.apiVersionSetId,
    this.authenticationSettings,
    this.contact,
    this.description,
    this.displayName,
    this.format,
    this.isCurrent,
    this.license,
    required this.path,
    this.protocols,
    required this.resourceGroupName,
    required this.serviceName,
    this.serviceUrl,
    this.soapApiType,
    this.sourceApiId,
    this.subscriptionKeyParameterNames,
    this.subscriptionRequired,
    this.termsOfServiceUrl,
    this.translateRequiredQueryParametersConduct,
    this.value,
    required this.workspaceId,
    this.wsdlSelector,
  });

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
      'workspaceId': workspaceId,
      'wsdlSelector': ?pulumi.Input.mapOptionalInputValue<ApiCreateOrUpdatePropertiesWsdlSelector, Map<String, dynamic>>(wsdlSelector, (value) => value.toMap()),
    };
  }

  factory WorkspaceApiArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiArgs(
      apiId: map['apiId'] == null ? null : (map['apiId'] as String).input(),
      apiRevision: map['apiRevision'] == null ? null : (map['apiRevision'] as String).input(),
      apiRevisionDescription: map['apiRevisionDescription'] == null ? null : (map['apiRevisionDescription'] as String).input(),
      apiType: map['apiType'] == null ? null : (map['apiType'] as String).input(),
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      apiVersionDescription: map['apiVersionDescription'] == null ? null : (map['apiVersionDescription'] as String).input(),
      apiVersionSet: map['apiVersionSet'] == null ? null : (ApiVersionSetContractDetails.fromMap((map['apiVersionSet'] as Map).cast<String, dynamic>())).input(),
      apiVersionSetId: map['apiVersionSetId'] == null ? null : (map['apiVersionSetId'] as String).input(),
      authenticationSettings: map['authenticationSettings'] == null ? null : (AuthenticationSettingsContract.fromMap((map['authenticationSettings'] as Map).cast<String, dynamic>())).input(),
      contact: map['contact'] == null ? null : (ApiContactInformation.fromMap((map['contact'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      isCurrent: map['isCurrent'] == null ? null : (map['isCurrent'] as bool).input(),
      license: map['license'] == null ? null : (ApiLicenseInformation.fromMap((map['license'] as Map).cast<String, dynamic>())).input(),
      path: (map['path'] as String).input(),
      protocols: map['protocols'] == null ? null : ((map['protocols'] as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      serviceUrl: map['serviceUrl'] == null ? null : (map['serviceUrl'] as String).input(),
      soapApiType: map['soapApiType'] == null ? null : (map['soapApiType'] as String).input(),
      sourceApiId: map['sourceApiId'] == null ? null : (map['sourceApiId'] as String).input(),
      subscriptionKeyParameterNames: map['subscriptionKeyParameterNames'] == null ? null : (SubscriptionKeyParameterNamesContract.fromMap((map['subscriptionKeyParameterNames'] as Map).cast<String, dynamic>())).input(),
      subscriptionRequired: map['subscriptionRequired'] == null ? null : (map['subscriptionRequired'] as bool).input(),
      termsOfServiceUrl: map['termsOfServiceUrl'] == null ? null : (map['termsOfServiceUrl'] as String).input(),
      translateRequiredQueryParametersConduct: map['translateRequiredQueryParametersConduct'] == null ? null : (map['translateRequiredQueryParametersConduct'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
      wsdlSelector: map['wsdlSelector'] == null ? null : (ApiCreateOrUpdatePropertiesWsdlSelector.fromMap((map['wsdlSelector'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

