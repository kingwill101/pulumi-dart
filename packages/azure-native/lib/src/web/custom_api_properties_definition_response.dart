// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_resource_backend_service_response.dart';
import 'api_resource_definitions_response.dart';
import 'connection_parameter_response.dart';
import 'wsdl_definition_response.dart';

/// Custom API properties
class CustomApiPropertiesDefinitionResponse {
  /// API Definitions
  final ApiResourceDefinitionsResponse? apiDefinitions;
  /// The API type
  final String? apiType;
  /// The API backend service
  final ApiResourceBackendServiceResponse? backendService;
  /// Brand color
  final String? brandColor;
  /// The custom API capabilities
  final List<String>? capabilities;
  /// Connection parameters
  final Map<String, ConnectionParameterResponse>? connectionParameters;
  /// The custom API description
  final String? description;
  /// The display name
  final String? displayName;
  /// The icon URI
  final String? iconUri;
  /// Runtime URLs
  final List<String>? runtimeUrls;
  /// The JSON representation of the swagger
  final dynamic swagger;
  /// The WSDL definition
  final WsdlDefinitionResponse? wsdlDefinition;

  /// Creates a new [CustomApiPropertiesDefinitionResponse].
  /// [apiDefinitions] API Definitions
  /// [apiType] The API type
  /// [backendService] The API backend service
  /// [brandColor] Brand color
  /// [capabilities] The custom API capabilities
  /// [connectionParameters] Connection parameters
  /// [description] The custom API description
  /// [displayName] The display name
  /// [iconUri] The icon URI
  /// [runtimeUrls] Runtime URLs
  /// [swagger] The JSON representation of the swagger
  /// [wsdlDefinition] The WSDL definition
  CustomApiPropertiesDefinitionResponse({
    this.apiDefinitions,
    this.apiType,
    this.backendService,
    this.brandColor,
    this.capabilities,
    this.connectionParameters,
    this.description,
    this.displayName,
    this.iconUri,
    this.runtimeUrls,
    this.swagger,
    this.wsdlDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiDefinitions': ?apiDefinitions == null ? null : apiDefinitions!.toMap(),
      'apiType': ?apiType,
      'backendService': ?backendService == null ? null : backendService!.toMap(),
      'brandColor': ?brandColor,
      'capabilities': ?capabilities,
      'connectionParameters': ?connectionParameters == null ? null : pulumi.Input.encodeMapValues<ConnectionParameterResponse, Map<String, dynamic>>(connectionParameters!, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'iconUri': ?iconUri,
      'runtimeUrls': ?runtimeUrls,
      'swagger': ?swagger,
      'wsdlDefinition': ?wsdlDefinition == null ? null : wsdlDefinition!.toMap(),
    };
  }

  factory CustomApiPropertiesDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return CustomApiPropertiesDefinitionResponse(
      apiDefinitions: map['apiDefinitions'] == null ? null : ApiResourceDefinitionsResponse.fromMap((map['apiDefinitions'] as Map).cast<String, dynamic>()),
      apiType: map['apiType'] == null ? null : map['apiType'] as String,
      backendService: map['backendService'] == null ? null : ApiResourceBackendServiceResponse.fromMap((map['backendService'] as Map).cast<String, dynamic>()),
      brandColor: map['brandColor'] == null ? null : map['brandColor'] as String,
      capabilities: map['capabilities'] == null ? null : (map['capabilities'] as List).cast<String>(),
      connectionParameters: map['connectionParameters'] == null ? null : pulumi.Input.decodeMapValues<ConnectionParameterResponse>(map['connectionParameters'], (value) => ConnectionParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      iconUri: map['iconUri'] == null ? null : map['iconUri'] as String,
      runtimeUrls: map['runtimeUrls'] == null ? null : (map['runtimeUrls'] as List).cast<String>(),
      swagger: map['swagger'] == null ? null : map['swagger'],
      wsdlDefinition: map['wsdlDefinition'] == null ? null : WsdlDefinitionResponse.fromMap((map['wsdlDefinition'] as Map).cast<String, dynamic>()),
    );
  }
}

