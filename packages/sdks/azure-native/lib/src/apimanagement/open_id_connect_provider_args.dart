// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_open_id_connect_provider_args_doc}
/// The set of arguments for OpenIdConnectProvider.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_open_id_connect_provider_args_doc}
class OpenIdConnectProviderArgs {
  /// Client ID of developer console which is the client application.
  final pulumi.Input<String> clientId;
  /// Client Secret of developer console which is the client application.
  final pulumi.Input<String>? clientSecret;
  /// User-friendly description of OpenID Connect Provider.
  final pulumi.Input<String>? description;
  /// User-friendly OpenID Connect Provider name.
  final pulumi.Input<String> displayName;
  /// Metadata endpoint URI.
  final pulumi.Input<String> metadataEndpoint;
  /// Identifier of the OpenID Connect Provider.
  final pulumi.Input<String>? opid;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// If true, the Open ID Connect provider will be used in the API documentation in the developer portal. False by default if no value is provided.
  final pulumi.Input<bool>? useInApiDocumentation;
  /// If true, the Open ID Connect provider may be used in the developer portal test console. True by default if no value is provided.
  final pulumi.Input<bool>? useInTestConsole;

  /// Creates a new [OpenIdConnectProviderArgs].
  /// [clientId] Client ID of developer console which is the client application.
  /// [clientSecret] Client Secret of developer console which is the client application.
  /// [description] User-friendly description of OpenID Connect Provider.
  /// [displayName] User-friendly OpenID Connect Provider name.
  /// [metadataEndpoint] Metadata endpoint URI.
  /// [opid] Identifier of the OpenID Connect Provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [useInApiDocumentation] If true, the Open ID Connect provider will be used in the API documentation in the developer portal. False by default if no value is provided.
  /// [useInTestConsole] If true, the Open ID Connect provider may be used in the developer portal test console. True by default if no value is provided.
  OpenIdConnectProviderArgs({
    required this.clientId,
    this.clientSecret,
    this.description,
    required this.displayName,
    required this.metadataEndpoint,
    this.opid,
    required this.resourceGroupName,
    required this.serviceName,
    this.useInApiDocumentation,
    this.useInTestConsole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'description': ?description,
      'displayName': displayName,
      'metadataEndpoint': metadataEndpoint,
      'opid': ?opid,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'useInApiDocumentation': ?useInApiDocumentation,
      'useInTestConsole': ?useInTestConsole,
    };
  }

  factory OpenIdConnectProviderArgs.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectProviderArgs(
      clientId: (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      metadataEndpoint: (map['metadataEndpoint'] as String).input(),
      opid: map['opid'] == null ? null : (map['opid'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      useInApiDocumentation: map['useInApiDocumentation'] == null ? null : (map['useInApiDocumentation'] as bool).input(),
      useInTestConsole: map['useInTestConsole'] == null ? null : (map['useInTestConsole'] as bool).input(),
    );
  }
}

