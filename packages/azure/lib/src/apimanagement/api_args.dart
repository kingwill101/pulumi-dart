// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_contact.dart';
import 'api_import.dart';
import 'api_license.dart';
import 'api_oauth2_authorization.dart';
import 'api_openid_authentication.dart';
import 'api_subscription_key_parameter_names.dart';

/// {@template pulumi_apimanagement_api_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_api_args_doc}
class ApiArgs {
  /// The Name of the API Management Service where this API should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// Type of API. Possible values are `graphql`, `http`, `soap`, and `websocket`. Defaults to `http`.
  final pulumi.Input<String>? apiType;
  /// A `contact` block as documented below.
  final pulumi.Input<ApiContact>? contact;
  /// A description of the API Management API, which may include HTML formatting tags.
  final pulumi.Input<String>? description;
  /// The display name of the API.
  final pulumi.Input<String>? displayName;
  /// A `import` block as documented below.
  ///
  /// > **Note:** The `display_name`, `description`, `contact`, and `license` fields can be imported by the `import` block, which might cause a drift if these fields are set along with the `import` block.
  final pulumi.Input<ApiImport>? import;
  /// A `license` block as documented below.
  final pulumi.Input<ApiLicense>? license;
  /// The name of the API Management API. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// An `oauth2_authorization` block as documented below.
  final pulumi.Input<ApiOauth2Authorization>? oauth2Authorization;
  /// An `openid_authentication` block as documented below.
  final pulumi.Input<ApiOpenidAuthentication>? openidAuthentication;
  /// The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service.
  final pulumi.Input<String>? path;
  /// A list of protocols the operations in this API can be invoked. Possible values are `http`, `https`, `ws`, and `wss`.
  ///
  /// > **Note:** `display_name`, `path` and `protocols` are required when `source_api_id` is not set.
  final pulumi.Input<List<String>>? protocols;
  /// The Name of the Resource Group where the API Management API exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Revision which used for this API. Changing this forces a new resource to be created.
  final pulumi.Input<String> revision;
  /// The description of the API Revision of the API Management API.
  final pulumi.Input<String>? revisionDescription;
  /// Absolute URL of the backend service implementing this API.
  ///
  /// > **Note:** The `service_url` is required when `api_type` is specified as `websocket`.
  final pulumi.Input<String>? serviceUrl;
  /// The API id of the source API, which could be in format `azurerm_api_management_api.example.id` or in format `azurerm_api_management_api.example.id;rev=1`
  final pulumi.Input<String>? sourceApiId;
  /// A `subscription_key_parameter_names` block as documented below.
  final pulumi.Input<ApiSubscriptionKeyParameterNames>? subscriptionKeyParameterNames;
  /// Should this API require a subscription key? Defaults to `true`.
  final pulumi.Input<bool>? subscriptionRequired;
  /// Absolute URL of the Terms of Service for the API.
  final pulumi.Input<String>? termsOfServiceUrl;
  /// The Version number of this API, if this API is versioned.
  final pulumi.Input<String>? version;
  /// The description of the API Version of the API Management API.
  final pulumi.Input<String>? versionDescription;
  /// The ID of the Version Set which this API is associated with.
  ///
  /// > **Note:** When `version` is set, `version_set_id` must also be specified
  final pulumi.Input<String>? versionSetId;

  /// Creates a new [ApiArgs].
  /// [apiManagementName] The Name of the API Management Service where this API should be created. Changing this forces a new resource to be created.
  /// [apiType] Type of API. Possible values are `graphql`, `http`, `soap`, and `websocket`. Defaults to `http`.
  /// [contact] A `contact` block as documented below.
  /// [description] A description of the API Management API, which may include HTML formatting tags.
  /// [displayName] The display name of the API.
  /// [import] A `import` block as documented below.
  /// [license] A `license` block as documented below.
  /// [name] The name of the API Management API. Changing this forces a new resource to be created.
  /// [oauth2Authorization] An `oauth2_authorization` block as documented below.
  /// [openidAuthentication] An `openid_authentication` block as documented below.
  /// [path] The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service.
  /// [protocols] A list of protocols the operations in this API can be invoked. Possible values are `http`, `https`, `ws`, and `wss`.
  /// [resourceGroupName] The Name of the Resource Group where the API Management API exists. Changing this forces a new resource to be created.
  /// [revision] The Revision which used for this API. Changing this forces a new resource to be created.
  /// [revisionDescription] The description of the API Revision of the API Management API.
  /// [serviceUrl] Absolute URL of the backend service implementing this API.
  /// [sourceApiId] The API id of the source API, which could be in format `azurerm_api_management_api.example.id` or in format `azurerm_api_management_api.example.id;rev=1`
  /// [subscriptionKeyParameterNames] A `subscription_key_parameter_names` block as documented below.
  /// [subscriptionRequired] Should this API require a subscription key? Defaults to `true`.
  /// [termsOfServiceUrl] Absolute URL of the Terms of Service for the API.
  /// [version] The Version number of this API, if this API is versioned.
  /// [versionDescription] The description of the API Version of the API Management API.
  /// [versionSetId] The ID of the Version Set which this API is associated with.
  ApiArgs({
    required String apiManagementName,
    String? apiType,
    ApiContact? contact,
    String? description,
    String? displayName,
    ApiImport? import,
    ApiLicense? license,
    String? name,
    ApiOauth2Authorization? oauth2Authorization,
    ApiOpenidAuthentication? openidAuthentication,
    String? path,
    List<String>? protocols,
    required String resourceGroupName,
    required String revision,
    String? revisionDescription,
    String? serviceUrl,
    String? sourceApiId,
    ApiSubscriptionKeyParameterNames? subscriptionKeyParameterNames,
    bool? subscriptionRequired,
    String? termsOfServiceUrl,
    String? version,
    String? versionDescription,
    String? versionSetId,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      apiType = pulumi.Input.asOptionalInput<String>(apiType),
      contact = pulumi.Input.asOptionalInput<ApiContact>(contact),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      import = pulumi.Input.asOptionalInput<ApiImport>(import),
      license = pulumi.Input.asOptionalInput<ApiLicense>(license),
      name = pulumi.Input.asOptionalInput<String>(name),
      oauth2Authorization = pulumi.Input.asOptionalInput<ApiOauth2Authorization>(oauth2Authorization),
      openidAuthentication = pulumi.Input.asOptionalInput<ApiOpenidAuthentication>(openidAuthentication),
      path = pulumi.Input.asOptionalInput<String>(path),
      protocols = pulumi.Input.asOptionalInput<List<String>>(protocols),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      revision = pulumi.Input.asInput<String>(revision),
      revisionDescription = pulumi.Input.asOptionalInput<String>(revisionDescription),
      serviceUrl = pulumi.Input.asOptionalInput<String>(serviceUrl),
      sourceApiId = pulumi.Input.asOptionalInput<String>(sourceApiId),
      subscriptionKeyParameterNames = pulumi.Input.asOptionalInput<ApiSubscriptionKeyParameterNames>(subscriptionKeyParameterNames),
      subscriptionRequired = pulumi.Input.asOptionalInput<bool>(subscriptionRequired),
      termsOfServiceUrl = pulumi.Input.asOptionalInput<String>(termsOfServiceUrl),
      version = pulumi.Input.asOptionalInput<String>(version),
      versionDescription = pulumi.Input.asOptionalInput<String>(versionDescription),
      versionSetId = pulumi.Input.asOptionalInput<String>(versionSetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'apiType': ?apiType,
      'contact': ?pulumi.Input.mapOptionalInputValue<ApiContact, Map<String, dynamic>>(contact, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'import': ?pulumi.Input.mapOptionalInputValue<ApiImport, Map<String, dynamic>>(import, (value) => value.toMap()),
      'license': ?pulumi.Input.mapOptionalInputValue<ApiLicense, Map<String, dynamic>>(license, (value) => value.toMap()),
      'name': ?name,
      'oauth2Authorization': ?pulumi.Input.mapOptionalInputValue<ApiOauth2Authorization, Map<String, dynamic>>(oauth2Authorization, (value) => value.toMap()),
      'openidAuthentication': ?pulumi.Input.mapOptionalInputValue<ApiOpenidAuthentication, Map<String, dynamic>>(openidAuthentication, (value) => value.toMap()),
      'path': ?path,
      'protocols': ?protocols,
      'resourceGroupName': resourceGroupName,
      'revision': revision,
      'revisionDescription': ?revisionDescription,
      'serviceUrl': ?serviceUrl,
      'sourceApiId': ?sourceApiId,
      'subscriptionKeyParameterNames': ?pulumi.Input.mapOptionalInputValue<ApiSubscriptionKeyParameterNames, Map<String, dynamic>>(subscriptionKeyParameterNames, (value) => value.toMap()),
      'subscriptionRequired': ?subscriptionRequired,
      'termsOfServiceUrl': ?termsOfServiceUrl,
      'version': ?version,
      'versionDescription': ?versionDescription,
      'versionSetId': ?versionSetId,
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      apiManagementName: map['apiManagementName'] as String,
      apiType: map['apiType'] == null ? null : map['apiType'] as String,
      contact: map['contact'] == null ? null : ApiContact.fromMap((map['contact'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      import: map['import'] == null ? null : ApiImport.fromMap((map['import'] as Map).cast<String, dynamic>()),
      license: map['license'] == null ? null : ApiLicense.fromMap((map['license'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      oauth2Authorization: map['oauth2Authorization'] == null ? null : ApiOauth2Authorization.fromMap((map['oauth2Authorization'] as Map).cast<String, dynamic>()),
      openidAuthentication: map['openidAuthentication'] == null ? null : ApiOpenidAuthentication.fromMap((map['openidAuthentication'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
      protocols: map['protocols'] == null ? null : (map['protocols'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      revision: map['revision'] as String,
      revisionDescription: map['revisionDescription'] == null ? null : map['revisionDescription'] as String,
      serviceUrl: map['serviceUrl'] == null ? null : map['serviceUrl'] as String,
      sourceApiId: map['sourceApiId'] == null ? null : map['sourceApiId'] as String,
      subscriptionKeyParameterNames: map['subscriptionKeyParameterNames'] == null ? null : ApiSubscriptionKeyParameterNames.fromMap((map['subscriptionKeyParameterNames'] as Map).cast<String, dynamic>()),
      subscriptionRequired: map['subscriptionRequired'] == null ? null : map['subscriptionRequired'] as bool,
      termsOfServiceUrl: map['termsOfServiceUrl'] == null ? null : map['termsOfServiceUrl'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      versionDescription: map['versionDescription'] == null ? null : map['versionDescription'] as String,
      versionSetId: map['versionSetId'] == null ? null : map['versionSetId'] as String,
    );
  }
}

